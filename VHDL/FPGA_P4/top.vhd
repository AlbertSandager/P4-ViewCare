--FPGA code for P4 Viewcare project
--Gr. 415
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity top is
generic (
    d_width : integer := 24 --defines the data width of the vectors for send and receive. (must also be changed in SPI_slave)
	 );
	 
port (
	--ECG ports
	ecg_sclk, ecg_ss_n, ecg_mosi, ecg_rx_req, ecg_st_load_en, ecg_st_load_trdy, ecg_st_load_rrdy, ecg_st_load_roe, ecg_tx_load_en : in std_logic;
	ecg_tx_load_data : in std_logic_vector(d_width-1 downto 0);
	ecg_trdy, ecg_rrdy, ecg_roe : buffer std_logic := '0';
   ecg_busy : out std_logic := '0';
   ecg_miso : out std_logic := 'Z';
	
	--Receiver ports
	rec_sclk, rec_ss_n, rec_mosi, rec_rx_req, rec_st_load_en, rec_st_load_trdy, rec_st_load_rrdy, rec_st_load_roe, rec_tx_load_en : in std_logic;
	rec_trdy, rec_rrdy, rec_roe : buffer std_logic := '0';
	rec_rx_data      : out std_logic_vector(d_width-1 downto 0) := (others => '0');
   rec_busy         : out std_logic := '0';
   rec_miso         : out std_logic := 'Z'
	);

end top;


architecture Behavorial of top is
--send and receive vectors are defined
signal ecg_rx_data : std_logic_vector(d_width-1 downto 0) := (others => '0');
signal rec_tx_load_data : std_logic_vector(d_width-1 downto 0);
signal ecg_reset_n : std_logic := '1';
signal rec_reset_n : std_logic := '1';

component SPI_slave
port(
	sclk, reset_n, ss_n, mosi, rx_req, st_load_en, st_load_trdy, st_load_rrdy, st_load_roe, tx_load_en : in std_logic;
	tx_load_data : in std_logic_vector(d_width-1 downto 0);
	trdy, rrdy, roe : buffer std_logic := '0';
	rx_data : out std_logic_vector(d_width-1 downto 0) := (others => '0');
   busy : out std_logic := '0';
   miso : out std_logic := 'Z'
	);
end component;
  
begin

--Setup for SPI slave for ECG
ecg_spi: SPI_slave port map (
	sclk=>ecg_sclk,
	reset_n=>ecg_reset_n,
	ss_n=>ecg_ss_n,
	mosi=>ecg_mosi,
	rx_req=>ecg_rx_req,
	st_load_en=>ecg_tx_load_en,
	st_load_trdy=>ecg_st_load_trdy,
	st_load_rrdy=>ecg_st_load_rrdy,
	st_load_roe=>ecg_st_load_roe,
	tx_load_en=>ecg_tx_load_en,
	tx_load_data=>ecg_tx_load_data,
	trdy=>ecg_trdy,
	rrdy=>ecg_rrdy,
	roe=>ecg_roe,
	rx_data=>ecg_rx_data,
	busy=>ecg_busy,
	miso=>ecg_miso
	);

--Setup for SPI slave for receiver
rec_spi: SPI_slave port map (
	sclk=>rec_sclk,
	reset_n=>rec_reset_n,
	ss_n=>rec_ss_n,
	mosi=>rec_mosi,
	rx_req=>rec_rx_req,
	st_load_en=>rec_tx_load_en,
	st_load_trdy=>rec_st_load_trdy,
	st_load_rrdy=>rec_st_load_rrdy,
	st_load_roe=>rec_st_load_roe,
	tx_load_en=>rec_tx_load_en,
	tx_load_data=>rec_tx_load_data,
	trdy=>rec_trdy,
	rrdy=>rec_rrdy,
	roe=>rec_roe,
	rx_data=>rec_rx_data,
	busy=>rec_busy,
	miso=>rec_miso
	);

	
	--Code starts here!
	
	rec_tx_load_data <= ecg_rx_data;


end Behavorial;