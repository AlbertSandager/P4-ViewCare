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
    m_slaves  : INTEGER := 1;  --number of spi slaves
    m_d_width : INTEGER := 8); --data bus width	 


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
	 spi_led : OUT STD_LOGIC_VECTOR(s_d_width-1 DOWNTO 0) := (OTHERS => '0'); 
	 ena_led : OUT STD_LOGIC;
    m_clock   : IN     STD_LOGIC;                             --system clock
	 m_reset_n : IN STD_LOGIC;                             --asynchronous reset

    m_cpol    : IN     STD_LOGIC;                             --spi clock polarity
    m_cpha    : IN     STD_LOGIC;                             --spi clock phase
    m_cont    : IN     STD_LOGIC;                             --continuous mode command
    m_clk_div : IN     INTEGER;                               --system clock cycles per 1/2 period of sclk
    m_addr    : IN     INTEGER;                               --m_address of slave
    m_miso    : IN     STD_LOGIC;                             --master in, slave out
    m_sclk    : BUFFER STD_LOGIC;                             --spi clock
    m_ss_n    : BUFFER STD_LOGIC_VECTOR(m_slaves-1 DOWNTO 0);   --slave select
    m_mosi    : OUT    STD_LOGIC;                             --master out, slave in
    m_busy    : OUT    STD_LOGIC;                             --busy / data ready signal
    m_rx_data : OUT    STD_LOGIC_VECTOR(m_d_width-1 DOWNTO 0)); --data received
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
  SIGNAL m_enable : STD_LOGIC;                             --initiate transaction
  SIGNAL m_tx_data : STD_LOGIC_VECTOR(m_d_width-1 DOWNTO 0);  --data to transmit

  TYPE machine IS(ready, execute);                           --m_state machine data type
  SIGNAL m_state       : machine;                              --current m_state
  SIGNAL m_slave       : INTEGER;                              --m_slave selected for current transaction
  SIGNAL m_clk_ratio   : INTEGER;                              --current m_clk_div
  SIGNAL m_count       : INTEGER;                              --m_counter to trigger m_sclk from system m_clock
  SIGNAL m_clk_toggles : INTEGER RANGE 0 TO m_d_width*2 + 1;     --m_count spi m_clock toggles
  SIGNAL m_assert_data : STD_LOGIC;                            --'1' is tx m_sclk toggle, '0' is rx m_sclk toggle
  SIGNAL m_continue    : STD_LOGIC;                            --flag to m_continue transaction
  SIGNAL m_rx_buffer   : STD_LOGIC_VECTOR(m_d_width-1 DOWNTO 0); --receive data buffer
  SIGNAL m_tx_buffer   : STD_LOGIC_VECTOR(m_d_width-1 DOWNTO 0); --transmit data buffer
  SIGNAL m_last_bit_rx : INTEGER RANGE 0 TO m_d_width*2;         --last rx data bit location
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
spi_led <= m_tx_data;
m_tx_data <= s_rx_data;
ena_led <= s_busy;
--m_enable <= s_busy;



    PROCESS(m_clock, m_reset_n)
  BEGIN

    IF(m_reset_n = '0') THEN        --reset system
      m_busy <= '1';                --set m_busy signal
      m_ss_n <= (OTHERS => '1');    --deassert all m_slave select lines
      m_mosi <= 'Z';                --set master out to high impedance
      m_rx_data <= (OTHERS => '0'); --clear receive data port
      m_state <= ready;             --go to ready m_state when reset is exited

    ELSIF(m_clock'EVENT AND m_clock = '1') THEN
      CASE m_state IS               --m_state machine

        WHEN ready =>
          m_busy <= '0';             --m_clock out not m_busy signal
          m_ss_n <= (OTHERS => '1'); --set all m_slave select outputs high
          m_mosi <= 'Z';             --set m_mosi output high impedance
          m_continue <= '0';         --clear m_continue flag

          --user input to initiate transaction
          IF(m_enable = '1') THEN       
            m_busy <= '1';             --set m_busy signal
            IF(m_addr < m_slaves) THEN   --check for valid m_slave m_address
              m_slave <= m_addr;         --m_clock in current m_slave selection if valid
            ELSE
              m_slave <= 0;            --set to first m_slave if not valid
            END IF;
            IF(m_clk_div = 0) THEN     --check for valid spi speed
              m_clk_ratio <= 1;        --set to maximum speed if zero
              m_count <= 1;            --initiate system-to-spi m_clock m_counter
            ELSE
              m_clk_ratio <= m_clk_div;  --set to input selection if valid
              m_count <= m_clk_div;      --initiate system-to-spi m_clock m_counter
            END IF;
            m_sclk <= m_cpol;            --set spi m_clock polarity
            m_assert_data <= NOT m_cpha; --set spi m_clock phase
            m_tx_buffer <= m_tx_data;    --m_clock in data for transmit into buffer
            m_clk_toggles <= 0;        --initiate m_clock toggle m_counter
            m_last_bit_rx <= m_d_width*2 + conv_integer(m_cpha) - 1; --set last rx data bit
            m_state <= execute;        --proceed to execute m_state
          ELSE
            m_state <= ready;          --remain in ready m_state
          END IF;

        WHEN execute =>
          m_busy <= '1';        --set m_busy signal
          m_ss_n(m_slave) <= '0'; --set proper m_slave select output
          
          --system m_clock to m_sclk ratio is met
          IF(m_count = m_clk_ratio) THEN        
            m_count <= 1;                     --reset system-to-spi m_clock m_counter
            m_assert_data <= NOT m_assert_data; --switch transmit/receive indicator
            IF(m_clk_toggles = m_d_width*2 + 1) THEN
              m_clk_toggles <= 0;               --reset spi m_clock toggles m_counter
            ELSE
              m_clk_toggles <= m_clk_toggles + 1; --increment spi m_clock toggles m_counter
            END IF;
            
            --spi m_clock toggle needed
            IF(m_clk_toggles <= m_d_width*2 AND m_ss_n(m_slave) = '0') THEN 
              m_sclk <= NOT m_sclk; --toggle spi m_clock
            END IF;
            
            --receive spi m_clock toggle
            IF(m_assert_data = '0' AND m_clk_toggles < m_last_bit_rx + 1 AND m_ss_n(m_slave) = '0') THEN 
              m_rx_buffer <= m_rx_buffer(m_d_width-2 DOWNTO 0) & m_miso; --shift in received bit
            END IF;
            
            --transmit spi m_clock toggle
            IF(m_assert_data = '1' AND m_clk_toggles < m_last_bit_rx) THEN 
              m_mosi <= m_tx_buffer(m_d_width-1);                     --m_clock out data bit
              m_tx_buffer <= m_tx_buffer(m_d_width-2 DOWNTO 0) & '0'; --shift data transmit buffer
            END IF;
            
            --last data receive, but m_continue
            IF(m_clk_toggles = m_last_bit_rx AND m_cont = '1') THEN 
              m_tx_buffer <= m_tx_data;                       --reload transmit buffer
              m_clk_toggles <= m_last_bit_rx - m_d_width*2 + 1; --reset spi m_clock toggle m_counter
              m_continue <= '1';                            --set m_continue flag
            END IF;
            
            --normal end of transaction, but m_continue
            IF(m_continue = '1') THEN  
              m_continue <= '0';      --clear m_continue flag
              m_busy <= '0';          --m_clock out signal that first receive data is ready
              m_rx_data <= m_rx_buffer; --m_clock out received data to output port    
            END IF;
            
            --end of transaction
            IF((m_clk_toggles = m_d_width*2 + 1) AND m_cont = '0') THEN   
              m_busy <= '0';             --m_clock out not m_busy signal
              m_ss_n <= (OTHERS => '1'); --set all m_slave selects high
              m_mosi <= 'Z';             --set m_mosi output high impedance
              m_rx_data <= m_rx_buffer;    --m_clock out received data to output port
              m_state <= ready;          --return to ready m_state
            ELSE                       --not end of transaction
              m_state <= execute;        --remain in execute m_state
            END IF;
          
          ELSE        --system m_clock to m_sclk ratio not met
            m_count <= m_count + 1; --increment m_counter
            m_state <= execute;   --remain in execute m_state
          END IF;

      END CASE;
    END IF;
  END PROCESS; 
END logic;
