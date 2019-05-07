LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY FPGA IS
  GENERIC(
    cpol    : STD_LOGIC := '1';  --spi clock polarity ecg_mode
    cpha    : STD_LOGIC := '0';  --spi clock phase ecg_mode
    d_width : INTEGER := 8);     --data width in bits
  PORT(
	--Values for both
	reset_n      : IN     STD_LOGIC;  --active low reset
  
	--ECG values
   ecg_sclk         : IN     STD_LOGIC;  --spi ecg_clk from master
   ecg_ss_n         : IN     STD_LOGIC;  --active low slave select
   ecg_mosi         : IN     STD_LOGIC;  --master out, slave in
   ecg_rx_req       : IN     STD_LOGIC;  --'1' while ecg_busy = '0' moves data to the ecg_rx_data output
   ecg_st_load_en   : IN     STD_LOGIC;  --asynchronous load enable
   ecg_st_load_ecg_trdy : IN     STD_LOGIC;  --asynchronous ecg_trdy load input
   ecg_st_load_ecg_rrdy : IN     STD_LOGIC;  --asynchronous ecg_rrdy load input
   ecg_st_load_ecg_roe  : IN     STD_LOGIC;  --asynchronous ecg_roe load input
   ecg_tx_load_en   : IN     STD_LOGIC;  --asynchronous transmit buffer load enable
	ecg_tx_load_data : IN	  STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --asynchronous tx data to load
   ecg_trdy         : BUFFER STD_LOGIC := '0';  --transmit ready bit
   ecg_rrdy         : BUFFER STD_LOGIC := '0';  --receive ready bit
   ecg_roe          : BUFFER STD_LOGIC := '0';  --receive overrun error bit
   ecg_busy         : OUT    STD_LOGIC := '0';  --ecg_busy signal to logic ('1' during transaction)
   ecg_miso         : OUT    STD_LOGIC := 'Z'; --master in, slave out
	
	--Receiver values
	rec_sclk         : IN     STD_LOGIC;  --spi rec_clk from master
   rec_ss_n         : IN     STD_LOGIC;  --active low slave select
   rec_mosi         : IN     STD_LOGIC;  --master out, slave in
   rec_rx_req       : IN     STD_LOGIC;  --'1' while rec_busy = '0' moves data to the rec_rx_data output
   rec_st_load_en   : IN     STD_LOGIC;  --asynchronous load enable
   rec_st_load_rec_trdy : IN     STD_LOGIC;  --asynchronous rec_trdy load input
   rec_st_load_rec_rrdy : IN     STD_LOGIC;  --asynchronous rec_rrdy load input
   rec_st_load_rec_roe  : IN     STD_LOGIC;  --asynchronous rec_roe load input
   rec_tx_load_en   : IN     STD_LOGIC;  --asynchronous transmit buffer load enable
   rec_trdy         : BUFFER STD_LOGIC := '0';  --transmit ready bit
   rec_rrdy         : BUFFER STD_LOGIC := '0';  --receive ready bit
   rec_roe          : BUFFER STD_LOGIC := '0';  --receive overrun error bit
   rec_rx_data      : OUT    STD_LOGIC_VECTOR(d_width-1 DOWNTO 0) := (OTHERS => '0');  --receive register output to logic
   rec_busy         : OUT    STD_LOGIC := '0';  --rec_busy signal to logic ('1' during transaction)
   rec_miso         : OUT    STD_LOGIC := 'Z'); --master in, slave out
	
END FPGA;

ARCHITECTURE logic OF FPGA IS
	--ECG values
   SIGNAL ecg_rx_data : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0) := (OTHERS => '0');  --receive register output to logic
	SIGNAL ecg_mode    : STD_LOGIC;  --groups ecg_modes by clock polarity relation to data
	SIGNAL ecg_clk     : STD_LOGIC;  --clock
	SIGNAL ecg_bit_cnt : STD_LOGIC_VECTOR(d_width+8 DOWNTO 0);  --'1' for active transaction bit
	SIGNAL ecg_wr_add  : STD_LOGIC;  --address of register to write ('0' = receive, '1' = status)
	SIGNAL ecg_rd_add  : STD_LOGIC;  --address of register to read ('0' = transmit, '1' = status)
	SIGNAL ecg_rx_buf  : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0) := (OTHERS => '0');  --receiver buffer
	SIGNAL ecg_tx_buf  : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0) := (OTHERS => '0');  --transmit buffer
  
	--Receiver values
	SIGNAL rec_tx_load_data : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --asynchronous tx data to load
	SIGNAL rec_mode    : STD_LOGIC;  --groups rec_modes by clock polarity relation to data
	SIGNAL rec_clk     : STD_LOGIC;  --clock
	SIGNAL rec_bit_cnt : STD_LOGIC_VECTOR(d_width+8 DOWNTO 0);  --'1' for active transaction bit
	SIGNAL rec_wr_add  : STD_LOGIC;  --address of register to write ('0' = receive, '1' = status)
	SIGNAL rec_rd_add  : STD_LOGIC;  --address of register to read ('0' = transmit, '1' = status)
	SIGNAL rec_rx_buf  : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0) := (OTHERS => '0');  --receiver buffer
	SIGNAL rec_tx_buf  : STD_LOGIC_VECTOR(d_width-1 DOWNTO 0) := (OTHERS => '0');  --transmit buffer
  
BEGIN



--ECG starts here!!!

  ecg_busy <= NOT ecg_ss_n;  --high during transactions
  
  --adjust clock so writes are on rising edge and reads on falling edge
  ecg_mode <= cpol XOR cpha;  --'1' for ecg_modes that write on rising edge
  WITH ecg_mode SELECT
    ecg_clk <= ecg_sclk WHEN '1',
           NOT ecg_sclk WHEN OTHERS;

  --keep track of ecg_miso/ecg_mosi bit counts for data alignmnet
  PROCESS(ecg_ss_n, ecg_clk)
  BEGIN
    IF(ecg_ss_n = '1' OR reset_n = '0') THEN                         --this slave is not selected or being reset
	   ecg_bit_cnt <= (conv_integer(NOT cpha) => '1', OTHERS => '0'); --reset ecg_miso/ecg_mosi bit count
    ELSE                                                         --this slave is selected
      IF(rising_edge(ecg_clk)) THEN                                  --new bit on ecg_miso/ecg_mosi
        ecg_bit_cnt <= ecg_bit_cnt(d_width+8-1 DOWNTO 0) & '0';          --shift active bit indicator
      END IF;
    END IF;
  END PROCESS;

  PROCESS(ecg_ss_n, ecg_clk, ecg_st_load_en, ecg_tx_load_en, ecg_rx_req)
  BEGIN
  
    --write address register ('0' for receive, '1' for status)
    IF(ecg_bit_cnt(1) = '1' AND falling_edge(ecg_clk)) THEN
      ecg_wr_add <= ecg_mosi;
    END IF;

    --read address register ('0' for transmit, '1' for status)
    IF(ecg_bit_cnt(2) = '1' AND falling_edge(ecg_clk)) THEN
      ecg_rd_add <= ecg_mosi;
    END IF;
    
    --ecg_trdy register
    IF((ecg_ss_n = '1' AND ecg_st_load_en = '1' AND ecg_st_load_ecg_trdy = '0') OR reset_n = '0') THEN  
      ecg_trdy <= '0';   --cleared by user logic or reset
    ELSIF(ecg_ss_n = '1' AND ((ecg_st_load_en = '1' AND ecg_st_load_ecg_trdy = '1') OR ecg_tx_load_en = '1')) THEN
      ecg_trdy <= '1';   --set when tx buffer written or set by user logic                                  
    ELSIF(ecg_wr_add = '1' AND ecg_bit_cnt(9) = '1' AND falling_edge(ecg_clk)) THEN
      ecg_trdy <= ecg_mosi;  --new value written over spi bus
    ELSIF(ecg_rd_add = '0' AND ecg_bit_cnt(d_width+8) = '1' AND falling_edge(ecg_clk)) THEN
      ecg_trdy <= '0';   --clear when transmit buffer read
    END IF;
    
    --ecg_rrdy register
    IF((ecg_ss_n = '1' AND ((ecg_st_load_en = '1' AND ecg_st_load_ecg_rrdy = '0') OR ecg_rx_req = '1')) OR reset_n = '0') THEN
      ecg_rrdy <= '0';   --cleared by user logic or ecg_rx_data has been requested or reset
    ELSIF(ecg_ss_n = '1' AND ecg_st_load_en = '1' AND ecg_st_load_ecg_rrdy = '1') THEN
      ecg_rrdy <= '1';   --set when set by user logic
    ELSIF(ecg_wr_add = '1' AND ecg_bit_cnt(10) = '1' AND falling_edge(ecg_clk)) THEN
      ecg_rrdy <= ecg_mosi;  --new value written over spi bus
    ELSIF(ecg_wr_add = '0' AND ecg_bit_cnt(d_width+8) = '1' AND falling_edge(ecg_clk)) THEN
      ecg_rrdy <= '1';   --set when new data received
    END IF;
    
    --ecg_roe register
    IF((ecg_ss_n = '1' AND ecg_st_load_en = '1' AND ecg_st_load_ecg_roe = '0') OR reset_n = '0') THEN
      ecg_roe <= '0';   --cleared by user logic or reset
    ELSIF(ecg_ss_n = '1' AND ecg_st_load_en = '1' AND ecg_st_load_ecg_roe = '1') THEN
      ecg_roe <= '1';   --set by user logic
    ELSIF(ecg_rrdy = '1' AND ecg_wr_add = '0' AND ecg_bit_cnt(d_width+8) = '1' AND falling_edge(ecg_clk)) THEN
      ecg_roe <= '1';   --set by actual overrun
    ELSIF(ecg_wr_add = '1' AND ecg_bit_cnt(11) = '1' AND falling_edge(ecg_clk)) THEN
      ecg_roe <= ecg_mosi;  --new value written by spi bus
    END IF;
    
    --receive registers
    --write to the receive register from master
    IF(reset_n = '0') THEN
      ecg_rx_buf <= (OTHERS => '0');
    ELSE
      FOR i IN 0 TO d_width-1 LOOP          
        IF(ecg_wr_add = '0' AND ecg_bit_cnt(i+9) = '1' AND falling_edge(ecg_clk)) THEN
          ecg_rx_buf(d_width-1-i) <= ecg_mosi;
        END IF;
      END LOOP;
    END IF;
    --fulfill user logic request for receive data
    IF(reset_n = '0') THEN
      ecg_rx_data <= (OTHERS => '0');
    ELSIF(ecg_ss_n = '1' AND ecg_rx_req = '1') THEN  
      ecg_rx_data <= ecg_rx_buf;
    END IF;

    --transmit registers
    IF(reset_n = '0') THEN
      ecg_tx_buf <= (OTHERS => '0');
    ELSIF(ecg_ss_n = '1' AND ecg_tx_load_en = '1') THEN  --load transmit register from user logic
      ecg_tx_buf <= ecg_tx_load_data;
    ELSIF(ecg_rd_add = '0' AND ecg_bit_cnt(7 DOWNTO 0) = "00000000" AND ecg_bit_cnt(d_width+8) = '0' AND rising_edge(ecg_clk)) THEN
      ecg_tx_buf(d_width-1 DOWNTO 0) <= ecg_tx_buf(d_width-2 DOWNTO 0) & ecg_tx_buf(d_width-1);  --shift through tx data
    END IF;

    --ecg_miso output register
    IF(ecg_ss_n = '1' OR reset_n = '0') THEN           --no transaction occuring or reset
      ecg_miso <= 'Z';
    ELSIF(ecg_rd_add = '1' AND rising_edge(ecg_clk)) THEN  --write status register to master
      CASE ecg_bit_cnt(10 DOWNTO 8) IS
        WHEN "001" => ecg_miso <= ecg_trdy;
        WHEN "010" => ecg_miso <= ecg_rrdy;
        WHEN "100" => ecg_miso <= ecg_roe;
        WHEN OTHERS => NULL;
      END CASE;
    ELSIF(ecg_rd_add = '0' AND ecg_bit_cnt(7 DOWNTO 0) = "00000000" AND ecg_bit_cnt(d_width+8) = '0' AND rising_edge(ecg_clk)) THEN
      ecg_miso <= ecg_tx_buf(d_width-1);                  --send transmit register data to master
    END IF;
    
  END PROCESS;
  
  
  
  --Receiver starts here!!!
  
  rec_tx_load_data <= ecg_rx_data;
  

  rec_busy <= NOT rec_ss_n;  --high during transactions
  
  --adjust clock so writes are on rising edge and reads on falling edge
  rec_mode <= cpol XOR cpha;  --'1' for rec_modes that write on rising edge
  WITH rec_mode SELECT
    rec_clk <= rec_sclk WHEN '1',
           NOT rec_sclk WHEN OTHERS;

  --keep track of rec_miso/rec_mosi bit counts for data alignmnet
  PROCESS(rec_ss_n, rec_clk)
  BEGIN
    IF(rec_ss_n = '1' OR reset_n = '0') THEN                         --this slave is not selected or being reset
	   rec_bit_cnt <= (conv_integer(NOT cpha) => '1', OTHERS => '0'); --reset rec_miso/rec_mosi bit count
    ELSE                                                         --this slave is selected
      IF(rising_edge(rec_clk)) THEN                                  --new bit on rec_miso/rec_mosi
        rec_bit_cnt <= rec_bit_cnt(d_width+8-1 DOWNTO 0) & '0';          --shift active bit indicator
      END IF;
    END IF;
  END PROCESS;

  PROCESS(rec_ss_n, rec_clk, rec_st_load_en, rec_tx_load_en, rec_rx_req)
  BEGIN
  
    --write address register ('0' for receive, '1' for status)
    IF(rec_bit_cnt(1) = '1' AND falling_edge(rec_clk)) THEN
      rec_wr_add <= rec_mosi;
    END IF;

    --read address register ('0' for transmit, '1' for status)
    IF(rec_bit_cnt(2) = '1' AND falling_edge(rec_clk)) THEN
      rec_rd_add <= rec_mosi;
    END IF;
    
    --rec_trdy register
    IF((rec_ss_n = '1' AND rec_st_load_en = '1' AND rec_st_load_rec_trdy = '0') OR reset_n = '0') THEN  
      rec_trdy <= '0';   --cleared by user logic or reset
    ELSIF(rec_ss_n = '1' AND ((rec_st_load_en = '1' AND rec_st_load_rec_trdy = '1') OR rec_tx_load_en = '1')) THEN
      rec_trdy <= '1';   --set when tx buffer written or set by user logic                                  
    ELSIF(rec_wr_add = '1' AND rec_bit_cnt(9) = '1' AND falling_edge(rec_clk)) THEN
      rec_trdy <= rec_mosi;  --new value written over spi bus
    ELSIF(rec_rd_add = '0' AND rec_bit_cnt(d_width+8) = '1' AND falling_edge(rec_clk)) THEN
      rec_trdy <= '0';   --clear when transmit buffer read
    END IF;
    
    --rec_rrdy register
    IF((rec_ss_n = '1' AND ((rec_st_load_en = '1' AND rec_st_load_rec_rrdy = '0') OR rec_rx_req = '1')) OR reset_n = '0') THEN
      rec_rrdy <= '0';   --cleared by user logic or rec_rx_data has been requested or reset
    ELSIF(rec_ss_n = '1' AND rec_st_load_en = '1' AND rec_st_load_rec_rrdy = '1') THEN
      rec_rrdy <= '1';   --set when set by user logic
    ELSIF(rec_wr_add = '1' AND rec_bit_cnt(10) = '1' AND falling_edge(rec_clk)) THEN
      rec_rrdy <= rec_mosi;  --new value written over spi bus
    ELSIF(rec_wr_add = '0' AND rec_bit_cnt(d_width+8) = '1' AND falling_edge(rec_clk)) THEN
      rec_rrdy <= '1';   --set when new data received
    END IF;
    
    --rec_roe register
    IF((rec_ss_n = '1' AND rec_st_load_en = '1' AND rec_st_load_rec_roe = '0') OR reset_n = '0') THEN
      rec_roe <= '0';   --cleared by user logic or reset
    ELSIF(rec_ss_n = '1' AND rec_st_load_en = '1' AND rec_st_load_rec_roe = '1') THEN
      rec_roe <= '1';   --set by user logic
    ELSIF(rec_rrdy = '1' AND rec_wr_add = '0' AND rec_bit_cnt(d_width+8) = '1' AND falling_edge(rec_clk)) THEN
      rec_roe <= '1';   --set by actual overrun
    ELSIF(rec_wr_add = '1' AND rec_bit_cnt(11) = '1' AND falling_edge(rec_clk)) THEN
      rec_roe <= rec_mosi;  --new value written by spi bus
    END IF;
    
    --receive registers
    --write to the receive register from master
    IF(reset_n = '0') THEN
      rec_rx_buf <= (OTHERS => '0');
    ELSE
      FOR i IN 0 TO d_width-1 LOOP          
        IF(rec_wr_add = '0' AND rec_bit_cnt(i+9) = '1' AND falling_edge(rec_clk)) THEN
          rec_rx_buf(d_width-1-i) <= rec_mosi;
        END IF;
      END LOOP;
    END IF;
    --fulfill user logic request for receive data
    IF(reset_n = '0') THEN
      rec_rx_data <= (OTHERS => '0');
    ELSIF(rec_ss_n = '1' AND rec_rx_req = '1') THEN  
      rec_rx_data <= rec_rx_buf;
    END IF;

    --transmit registers
    IF(reset_n = '0') THEN
      rec_tx_buf <= (OTHERS => '0');
    ELSIF(rec_ss_n = '1' AND rec_tx_load_en = '1') THEN  --load transmit register from user logic
      rec_tx_buf <= rec_tx_load_data;
    ELSIF(rec_rd_add = '0' AND rec_bit_cnt(7 DOWNTO 0) = "00000000" AND rec_bit_cnt(d_width+8) = '0' AND rising_edge(rec_clk)) THEN
      rec_tx_buf(d_width-1 DOWNTO 0) <= rec_tx_buf(d_width-2 DOWNTO 0) & rec_tx_buf(d_width-1);  --shift through tx data
    END IF;

    --rec_miso output register
    IF(rec_ss_n = '1' OR reset_n = '0') THEN           --no transaction occuring or reset
      rec_miso <= 'Z';
    ELSIF(rec_rd_add = '1' AND rising_edge(rec_clk)) THEN  --write status register to master
      CASE rec_bit_cnt(10 DOWNTO 8) IS
        WHEN "001" => rec_miso <= rec_trdy;
        WHEN "010" => rec_miso <= rec_rrdy;
        WHEN "100" => rec_miso <= rec_roe;
        WHEN OTHERS => NULL;
      END CASE;
    ELSIF(rec_rd_add = '0' AND rec_bit_cnt(7 DOWNTO 0) = "00000000" AND rec_bit_cnt(d_width+8) = '0' AND rising_edge(rec_clk)) THEN
      rec_miso <= rec_tx_buf(d_width-1);                  --send transmit register data to master
    END IF;
    
  END PROCESS;
END logic;