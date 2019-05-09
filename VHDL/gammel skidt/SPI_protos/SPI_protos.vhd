LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY SPI_protos IS
  GENERIC(
    --SPI Slave values
    s_cpol    : STD_LOGIC := '0';  --spi clock polarity s_mode
    s_cpha    : STD_LOGIC := '1';  --spi clock phase s_mode
    s_d_width : INTEGER := 8;     --data width in bits
	 
    --SPI Master values
  N                     : integer := 8;      -- number of bit to serialize
  CLK_DIV               : integer := 100 );  -- input clock divider to generate output serial clock; o_sclk frequency = i_clk/(2*CLK_DIV) 


	 PORT(
	 --SPI Slave values
    s_ss_clk         : IN     STD_LOGIC;  --spi clk from master
    s_reset_n      : IN     STD_LOGIC;  --active low reset
    s_ss_n         : IN     STD_LOGIC;  --active low slave select
    s_mosi         : IN     STD_LOGIC;  --master out, slave in
    s_rx_req       : IN     STD_LOGIC;  --'1' while busy = '0' moves data to the rx_data output
    s_st_load_en   : IN     STD_LOGIC;  --asynchronous load enable
    s_st_load_s_trdy : IN     STD_LOGIC;  --asynchronous trdy load input
    s_st_load_s_rrdy : IN     STD_LOGIC;  --asynchronous rrdy load input
    s_st_load_s_roe  : IN     STD_LOGIC;  --asynchronous roe load input
    s_tx_load_en   : IN     STD_LOGIC;  --asynchronous transmit buffer load enable
    s_tx_load_data : IN     STD_LOGIC_VECTOR(s_d_width-1 DOWNTO 0);  --asynchronous tx data to load
    s_trdy         : BUFFER STD_LOGIC := '0';  --transmit ready bit
    s_rrdy         : BUFFER STD_LOGIC := '0';  --receive ready bit
    s_roe          : BUFFER STD_LOGIC := '0';  --receive overrun error bit

    s_miso         : OUT    STD_LOGIC := 'Z'; --master in, slave out
	 
	 --SPI Master values
  i_clk                       : in  std_logic;
  i_rstb                      : in  std_logic;
  i_tx_start                  : in  std_logic;  -- start TX on serial line
  o_tx_end                    : out std_logic;  -- TX data completed; o_data_parallel available

  o_data_parallel             : out std_logic_vector(N-1 downto 0);  -- received data
  o_sclk                      : out std_logic;
  o_ss                        : out std_logic;
  o_mosi                      : out std_logic;
  i_miso                      : in  std_logic);
END SPI_protos;

ARCHITECTURE logic OF SPI_protos IS
  --SPI Slave values
  SIGNAL s_busy : STD_LOGIC := '0';  --busy signal to logic ('1' during transaction)
  SIGNAL s_rx_data : STD_LOGIC_VECTOR(s_d_width-1 DOWNTO 0) := (OTHERS => '0');  --receive register output to logic
  SIGNAL s_mode    : STD_LOGIC;  --groups s_modes by clock polarity relation to data
  SIGNAL s_clk     : STD_LOGIC;  --clock
  SIGNAL s_bit_cnt : STD_LOGIC_VECTOR(s_d_width+8 DOWNTO 0);  --'1' for active transaction bit
  SIGNAL s_wr_add  : STD_LOGIC;  --address of register to write ('0' = receive, '1' = status)
  SIGNAL s_rd_add  : STD_LOGIC;  --address of register to read ('0' = transmit, '1' = status)
  SIGNAL s_rx_buf  : STD_LOGIC_VECTOR(s_d_width-1 DOWNTO 0) := (OTHERS => '0');  --receiver buffer
  SIGNAL s_tx_buf  : STD_LOGIC_VECTOR(s_d_width-1 DOWNTO 0) := (OTHERS => '0');  --transmit buffer
  
  --SPI Master values
signal i_data_parallel : std_logic_vector(N-1 downto 0);  -- data to sent
type t_spi_controller_fsm is (
                          ST_RESET   ,
                          ST_TX_RX   ,
                          ST_END     );
signal r_counter_clock        : integer range 0 to CLK_DIV*2;
signal r_sclk_rise            : std_logic;
signal r_sclk_fall            : std_logic;
signal r_counter_clock_ena    : std_logic;
signal r_counter_data         : integer range 0 to N;
signal w_tc_counter_data      : std_logic;
signal r_st_present           : t_spi_controller_fsm;
signal w_st_next              : t_spi_controller_fsm;
signal r_tx_start             : std_logic;  -- start TX on serial line
signal r_tx_data              : std_logic_vector(N-1 downto 0);  -- data to sent
signal r_rx_data              : std_logic_vector(N-1 downto 0);  -- received data

BEGIN

-- SPI Slave starts here!!!

  s_busy <= NOT s_ss_n;  --high during transactions
  
  --adjust clock so writes are on rising edge and reads on falling edge
  s_mode <= s_cpol XOR s_cpha;  --'1' for s_modes that write on rising edge
  WITH s_mode SELECT
    s_clk <= s_ss_clk WHEN '1',
           NOT s_ss_clk WHEN OTHERS;

  --keep track of s_miso/s_mosi bit counts for data alignmnet
  PROCESS(s_ss_n, s_clk)
  BEGIN
    IF(s_ss_n = '1' OR s_reset_n = '0') THEN                         --this slave is not selected or being reset
	   s_bit_cnt <= (conv_integer(NOT s_cpha) => '1', OTHERS => '0'); --reset s_miso/s_mosi bit count
    ELSE                                                         --this slave is selected
      IF(rising_edge(s_clk)) THEN                                  --new bit on s_miso/s_mosi
        s_bit_cnt <= s_bit_cnt(s_d_width+8-1 DOWNTO 0) & '0';          --shift active bit indicator
      END IF;
    END IF;
  END PROCESS;

  PROCESS(s_ss_n, s_clk, s_st_load_en, s_tx_load_en, s_rx_req)
  BEGIN
  
    --write address register ('0' for receive, '1' for status)
    IF(s_bit_cnt(1) = '1' AND falling_edge(s_clk)) THEN
      s_wr_add <= s_mosi;
    END IF;

    --read address register ('0' for transmit, '1' for status)
    IF(s_bit_cnt(2) = '1' AND falling_edge(s_clk)) THEN
      s_rd_add <= s_mosi;
    END IF;
    
    --s_trdy register
    IF((s_ss_n = '1' AND s_st_load_en = '1' AND s_st_load_s_trdy = '0') OR s_reset_n = '0') THEN  
      s_trdy <= '0';   --cleared by user logic or reset
    ELSIF(s_ss_n = '1' AND ((s_st_load_en = '1' AND s_st_load_s_trdy = '1') OR s_tx_load_en = '1')) THEN
      s_trdy <= '1';   --set when tx buffer written or set by user logic                                  
    ELSIF(s_wr_add = '1' AND s_bit_cnt(9) = '1' AND falling_edge(s_clk)) THEN
      s_trdy <= s_mosi;  --new value written over spi bus
    ELSIF(s_rd_add = '0' AND s_bit_cnt(s_d_width+8) = '1' AND falling_edge(s_clk)) THEN
      s_trdy <= '0';   --clear when transmit buffer read
    END IF;
    
    --s_rrdy register
    IF((s_ss_n = '1' AND ((s_st_load_en = '1' AND s_st_load_s_rrdy = '0') OR s_rx_req = '1')) OR s_reset_n = '0') THEN
      s_rrdy <= '0';   --cleared by user logic or s_rx_data has been requested or reset
    ELSIF(s_ss_n = '1' AND s_st_load_en = '1' AND s_st_load_s_rrdy = '1') THEN
      s_rrdy <= '1';   --set when set by user logic
    ELSIF(s_wr_add = '1' AND s_bit_cnt(10) = '1' AND falling_edge(s_clk)) THEN
      s_rrdy <= s_mosi;  --new value written over spi bus
    ELSIF(s_wr_add = '0' AND s_bit_cnt(s_d_width+8) = '1' AND falling_edge(s_clk)) THEN
      s_rrdy <= '1';   --set when new data received
    END IF;
    
    --s_roe register
    IF((s_ss_n = '1' AND s_st_load_en = '1' AND s_st_load_s_roe = '0') OR s_reset_n = '0') THEN
      s_roe <= '0';   --cleared by user logic or reset
    ELSIF(s_ss_n = '1' AND s_st_load_en = '1' AND s_st_load_s_roe = '1') THEN
      s_roe <= '1';   --set by user logic
    ELSIF(s_rrdy = '1' AND s_wr_add = '0' AND s_bit_cnt(s_d_width+8) = '1' AND falling_edge(s_clk)) THEN
      s_roe <= '1';   --set by actual overrun
    ELSIF(s_wr_add = '1' AND s_bit_cnt(11) = '1' AND falling_edge(s_clk)) THEN
      s_roe <= s_mosi;  --new value written by spi bus
    END IF;
    
    --receive registers
    --write to the receive register from master
    IF(s_reset_n = '0') THEN
      s_rx_buf <= (OTHERS => '0');
    ELSE
      FOR i IN 0 TO s_d_width-1 LOOP          
        IF(s_wr_add = '0' AND s_bit_cnt(i+9) = '1' AND falling_edge(s_clk)) THEN
          s_rx_buf(s_d_width-1-i) <= s_mosi;
        END IF;
      END LOOP;
    END IF;
    --fulfill user logic request for receive data
    IF(s_reset_n = '0') THEN
      s_rx_data <= (OTHERS => '0');
    ELSIF(s_ss_n = '1' AND s_rx_req = '1') THEN  
      s_rx_data <= s_rx_buf;
    END IF;

    --transmit registers
    IF(s_reset_n = '0') THEN
      s_tx_buf <= (OTHERS => '0');
    ELSIF(s_ss_n = '1' AND s_tx_load_en = '1') THEN  --load transmit register from user logic
      s_tx_buf <= s_tx_load_data;
    ELSIF(s_rd_add = '0' AND s_bit_cnt(7 DOWNTO 0) = "00000000" AND s_bit_cnt(s_d_width+8) = '0' AND rising_edge(s_clk)) THEN
      s_tx_buf(s_d_width-1 DOWNTO 0) <= s_tx_buf(s_d_width-2 DOWNTO 0) & s_tx_buf(s_d_width-1);  --shift through tx data
    END IF;

    --s_miso output register
    IF(s_ss_n = '1' OR s_reset_n = '0') THEN           --no transaction occuring or reset
      s_miso <= 'Z';
    ELSIF(s_rd_add = '1' AND rising_edge(s_clk)) THEN  --write status register to master
      CASE s_bit_cnt(10 DOWNTO 8) IS
        WHEN "001" => s_miso <= s_trdy;
        WHEN "010" => s_miso <= s_rrdy;
        WHEN "100" => s_miso <= s_roe;
        WHEN OTHERS => NULL;
      END CASE;
    ELSIF(s_rd_add = '0' AND s_bit_cnt(7 DOWNTO 0) = "00000000" AND s_bit_cnt(s_d_width+8) = '0' AND rising_edge(s_clk)) THEN
      s_miso <= s_tx_buf(s_d_width-1);                  --send transmit register data to master
    END IF;
    
  END PROCESS;
  
  
  -- SPI Master starts here!!!
  i_data_parallel <= s_rx_data;
  
  
  
w_tc_counter_data  <= '0' when(r_counter_data>0) else '1';
--------------------------------------------------------------------
-- FSM
p_state : process(i_clk,i_rstb)
begin
  if(i_rstb='0') then
    r_st_present            <= ST_RESET;
  elsif(rising_edge(i_clk)) then
    r_st_present            <= w_st_next;
  end if;
end process p_state;
p_comb : process(
                 r_st_present                       ,
                 w_tc_counter_data                  ,
                 r_tx_start                         ,
                 r_sclk_rise                        ,
                 r_sclk_fall                         )
begin
  case r_st_present is
    when  ST_TX_RX      => 
      if       (w_tc_counter_data='1') and (r_sclk_rise='1') then  w_st_next  <= ST_END       ;
      else                                                         w_st_next  <= ST_TX_RX     ;
      end if;
    when  ST_END      => 
      if(r_sclk_fall='1') then
        w_st_next  <= ST_RESET    ;  
      else
        w_st_next  <= ST_END    ;  
      end if;
    when  others            =>  -- ST_RESET
      if(r_tx_start='1') then   w_st_next  <= ST_TX_RX ;
      else                      w_st_next  <= ST_RESET ;
      end if;
  end case;
end process p_comb;
p_state_out : process(i_clk,i_rstb)
begin
  if(i_rstb='0') then
    r_tx_start           <= '0';
    r_tx_data            <= (others=>'0');
    r_rx_data            <= (others=>'0');
    o_tx_end             <= '0';
    o_data_parallel      <= (others=>'0');
    
    r_counter_data       <= N-1;
    r_counter_clock_ena  <= '0';
    o_sclk               <= '1';
    o_ss                 <= '1';
    o_mosi               <= '1';
  elsif(rising_edge(i_clk)) then
    r_tx_start           <= i_tx_start;
    case r_st_present is
      when ST_TX_RX         =>
        o_tx_end             <= '0';
        r_counter_clock_ena  <= '1';
        if(r_sclk_rise='1') then
          o_sclk               <= '1';
          r_rx_data            <= r_rx_data(N-2 downto 0)&i_miso;
          if(r_counter_data>0) then
            r_counter_data       <= r_counter_data - 1;
          end if;
        elsif(r_sclk_fall='1') then
          o_sclk               <= '0';
          o_mosi               <= r_tx_data(N-1);
          r_tx_data            <= r_tx_data(N-2 downto 0)&'1';
        end if;
        o_ss                 <= '0';
      when ST_END          =>
        o_tx_end             <= r_sclk_fall;
        o_data_parallel      <= r_rx_data;
        r_counter_data       <= N-1;
        r_counter_clock_ena  <= '1';
        o_ss                 <= '0';
      
      when others               =>  -- ST_RESET
        r_tx_data            <= i_data_parallel;
        o_tx_end             <= '0';
        r_counter_data       <= N-1;
        r_counter_clock_ena  <= '0';
        o_sclk               <= '1';
        o_ss                 <= '1';
        o_mosi               <= '1';
    end case;
  end if;
end process p_state_out;
p_counter_clock : process(i_clk,i_rstb)
begin
  if(i_rstb='0') then
    r_counter_clock            <= 0;
    r_sclk_rise                <= '0';
    r_sclk_fall                <= '0';
  elsif(rising_edge(i_clk)) then
    if(r_counter_clock_ena='1') then  -- sclk = '1' by default 
      if(r_counter_clock=CLK_DIV-1) then  -- firse edge = fall
        r_counter_clock            <= r_counter_clock + 1;
        r_sclk_rise                <= '0';
        r_sclk_fall                <= '1';
      elsif(r_counter_clock=(CLK_DIV*2)-1) then
        r_counter_clock            <= 0;
        r_sclk_rise                <= '1';
        r_sclk_fall                <= '0';
      else
        r_counter_clock            <= r_counter_clock + 1;
        r_sclk_rise                <= '0';
        r_sclk_fall                <= '0';
      end if;
    else
      r_counter_clock            <= 0;
      r_sclk_rise                <= '0';
      r_sclk_fall                <= '0';
    end if;
  end if;
end process p_counter_clock;
END logic;
