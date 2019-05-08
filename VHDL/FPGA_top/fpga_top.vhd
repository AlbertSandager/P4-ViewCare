LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity fpga_top is
	Port(
	 reset_n_ex   :  IN   STD_LOGIC;                             --asynchronous active low reset
    mclk_ex      :  IN   STD_LOGIC;                             --master clock
    sclk_ex      :  OUT  STD_LOGIC;                             --serial clock (or bit clock)
    ws_ex        :  OUT  STD_LOGIC;                             --word select (or left-right clock))
	 sd_rx_ex     :  IN   STD_LOGIC;                             --serial data receive
	 MX_OUT_ex	  :  OUT 	STD_LOGIC_VECTOR(23 downto 0);          --Data out 
	 SEL_ex    	  :  IN STD_LOGIC_vector(1 downto 0)					 --Select setting from	
);
end fpga_top;
--Architecture
architecture fpga_top_arc of fpga_top is
	
	--i2s component--
  COMPONENT i2s_transceiver IS
   GENERIC(
    mclk_sclk_ratio  :  INTEGER := 12;    --number of mclk periods per sclk period
    sclk_ws_ratio    :  INTEGER := 64;   --number of sclk periods per word select period
    d_width          :  INTEGER := 24);  --data width
   PORT(
    reset_n    :  IN   STD_LOGIC;                             --asynchronous active low reset
    mclk       :  IN   STD_LOGIC;                             --master clock
    sclk       :  OUT  STD_LOGIC;                             --serial clock (or bit clock)
    ws         :  OUT  STD_LOGIC;                             --word select (or left-right clock)
    sd_tx      :  OUT  STD_LOGIC;                             --serial data transmit
    sd_rx      :  IN   STD_LOGIC;                             --serial data receive
   -- l_data_tx  :  IN   STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --left channel data to transmit
   -- r_data_tx  :  IN   STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --right channel data to transmit
    l_data_rx  :  OUT  STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --left channel data received
    r_data_rx  :  OUT  STD_LOGIC_VECTOR(d_width-1 DOWNTO 0)); --right channel data received
	END COMPONENT;
	--Mux4to1 component--
	component mux4to1 is 
	
	port( 
	D1, D2    : IN     STD_LOGIC_vector(23 downto 0); 
	MX_OUT				: OUT 	STD_LOGIC_VECTOR(23 downto 0);
	SEL					: IN 		STD_LOGIC_vector(1 downto 0));
	
	end component;
	
	signal l_rx_2_D1, r_rx_2_D2 : std_logic_vector(23 downto 0);
begin
	w1: i2s_transceiver  port map (reset_n		=> reset_n_ex,
									 		 mclk			=> mclk_ex,
											 sclk			=> sclk_ex,
											 ws			=> ws_ex,
											 sd_rx		=> sd_rx_ex,
											 l_data_rx	=> l_rx_2_D1,
											 r_data_rx	=> r_rx_2_D2);
											 
	w2: mux4to1 			port map (SEL 			=> SEL_ex,
											 MX_OUT		=> MX_OUT_ex,
											 D1			=> l_rx_2_D1,
											 D2			=> r_rx_2_D2);
end fpga_top_arc;
											
	