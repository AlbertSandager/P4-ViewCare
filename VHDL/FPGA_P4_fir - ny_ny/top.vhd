--FPGA code for P4 Viewcare project
--Gr. 415
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity top is
generic (
    spi_d_width : integer := 24; --defines the data width of the vectors for send and receive. (must also be changed in SPI_slave)
	 i2s_d_width : integer := 32 --defines the data width for i2s
	 );
	 
port (
	--ECG ports
	ecg_sclk, ecg_ss_n, ecg_mosi, ecg_rx_req, ecg_st_load_en, ecg_st_load_trdy, ecg_st_load_rrdy, ecg_st_load_roe, ecg_tx_load_en : in std_logic;
	ecg_tx_load_data : in std_logic_vector(spi_d_width-1 downto 0);
	ecg_trdy, ecg_rrdy, ecg_roe : buffer std_logic := '0';
   ecg_busy : out std_logic := '0';
   ecg_miso : out std_logic := 'Z';
	--FIR ECG
	fir_clk : in  std_logic := '0';             --                     clk.clk
	ecg_fir_ast_sink_error : in std_logic_vector(1 downto 0) := (others => '0'); --                        .error
	ecg_fir_ast_source_valid : out std_logic;                                        --                        .valid
	ecg_fir_ast_source_error : out std_logic_vector(1 downto 0);                      --                        .error
	
	
	--Receiver ports
	rec_sclk, rec_ss_n, rec_mosi, rec_rx_req, rec_st_load_en, rec_st_load_trdy, rec_st_load_rrdy, rec_st_load_roe : in std_logic;
	rec_trdy, rec_rrdy, rec_roe : buffer std_logic := '0';
	rec_rx_data : out std_logic_vector(spi_d_width-1 downto 0) := (others => '0');
   rec_busy : out std_logic := '0';
   rec_miso : out std_logic := 'Z';
	rec_ch1, rec_ch2 : buffer std_logic := '0';
	
	-- I2S ports
	i2s_clk, i2s_bclk, i2s_lrclk, i2s_adc_data : in std_logic;
	i2s_l_led_out : out std_logic_vector(i2s_d_width - 1 downto 0);
	i2s_r_led_out : out std_logic_vector(i2s_d_width - 1 downto 0);
	--FIR left
	i2s_l_fir_ast_sink_error : in std_logic_vector(1 downto 0) := (others => '0'); --                        .error
	i2s_l_fir_ast_source_valid : out std_logic;                                        --                        .valid
	i2s_l_fir_ast_source_error : out std_logic_vector(1 downto 0);   
	--FIR right
	i2s_r_fir_ast_sink_error : in std_logic_vector(1 downto 0) := (others => '0'); --                        .error
	i2s_r_fir_ast_source_valid : out std_logic;                                        --                        .valid
	i2s_r_fir_ast_source_error : out std_logic_vector(1 downto 0)
	);

end top;


architecture Behavorial of top is
--send and receive vectors are defined
signal ecg_rx_data : std_logic_vector(spi_d_width-1 downto 0) := (others => '0');
signal ecg_reset_n : std_logic := '0';
signal ecg_fir_reset_n : std_logic := '0';
signal ecg_fir_ast_sink_data : std_logic_vector(23 downto 0) := (others => '0'); --   avalon_streaming_sink.data
signal ecg_fir_ast_source_data : std_logic_vector(23 downto 0);                    -- avalon_streaming_source.data
signal ecg_fir_ast_sink_valid : std_logic := '0';             --                        .valid

signal rec_tx_load_data : std_logic_vector(spi_d_width-1 downto 0);
signal rec_tx_load_en : std_logic := '1';
signal rec_reset_n : std_logic := '1';
signal rec_ch_add1 : std_logic;
signal rec_ch_add2 : std_logic;

signal i2s_l_rx_data : std_logic_vector(i2s_d_width - 1 downto 0);
signal i2s_r_rx_data : std_logic_vector(i2s_d_width - 1 downto 0);
signal i2s_l_ready, i2s_r_ready : std_logic;
signal i2s_reset : std_logic := '1';
signal i2s_l_fir_reset_n : std_logic := '0';
signal i2s_r_fir_reset_n : std_logic := '0';
signal i2s_l_fir_ast_sink_data : std_logic_vector(23 downto 0) := (others => '0'); --   avalon_streaming_sink.data
signal i2s_r_fir_ast_sink_data : std_logic_vector(23 downto 0) := (others => '0'); --   avalon_streaming_sink.data
signal i2s_l_fir_ast_source_data : std_logic_vector(23 downto 0);                    -- avalon_streaming_source.data
signal i2s_r_fir_ast_source_data : std_logic_vector(23 downto 0);                    -- avalon_streaming_source.data
signal i2s_l_fir_ast_sink_valid : std_logic := '0';             --                        .valid
signal i2s_r_fir_ast_sink_valid : std_logic := '0';             --                        .valid

signal mux_D1, mux_D2, mux_D3, mux_D4 : std_logic_vector (23 downto 0);
signal mux_MX_OUT : std_logic_vector (23 downto 0);
signal mux_SEL : std_logic_vector(1 downto 0);


component SPI_slave
port (
	sclk, reset_n, ss_n, mosi, rx_req, st_load_en, st_load_trdy, st_load_rrdy, st_load_roe, tx_load_en : in std_logic;
	tx_load_data : in std_logic_vector(spi_d_width-1 downto 0);
	trdy, rrdy, roe : buffer std_logic := '0';
	rx_data : out std_logic_vector(spi_d_width-1 downto 0) := (others => '0');
   busy : out std_logic := '0';
   miso : out std_logic := 'Z';
	ch_add1_port, ch_add2_port : out std_logic
	);
end component;

component I2S
port (	
	clk, bclk, lrclk, adc_data, reset : in std_logic;
	l_ready_port, r_ready_port : out std_logic;
	l_rx_data, r_rx_data : out std_logic_vector(i2s_d_width - 1 downto 0)
	);
end component;

component Mux4to1
port (
	D1, D2, D3, D4 : in std_logic_vector (23 downto 0); 
	MX_OUT : out std_logic_vector (23 downto 0);
	SEL : in std_logic_vector(1 downto 0)
);
end component;

component fir_filter
port (
		clk : in std_logic := '0';             --                     clk.clk
		reset_n : in std_logic := '0';             --                     rst.reset_n
		ast_sink_data : in std_logic_vector(23 downto 0) := (others => '0'); --   avalon_streaming_sink.data
		ast_sink_valid : in std_logic := '0';             --                        .valid
		ast_sink_error : in std_logic_vector(1 downto 0) := (others => '0'); --                        .error
		ast_source_data : out std_logic_vector(23 downto 0);                    -- avalon_streaming_source.data
		ast_source_valid : out std_logic;                                        --                        .valid
		ast_source_error : out std_logic_vector(1 downto 0)                      --                        .error
);
end component;

begin

--Setup for SPI slave for ECG
ecg_spi_ports: SPI_slave port map (
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
rec_spi_ports: SPI_slave port map (
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
	miso=>rec_miso,
	ch_add1_port=>rec_ch_add1,
	ch_add2_port=>rec_ch_add2
	);

--Setup for I2S transmitter
i2s_ports: I2S port map (
	clk=>i2s_clk,
	bclk=>i2s_bclk,
	lrclk=>i2s_lrclk,
	adc_data=>i2s_adc_data,
	reset=>i2s_reset,
	l_ready_port=>i2s_l_ready,
	r_ready_port=>i2s_r_ready,
	l_rx_data=>i2s_l_rx_data,
	r_rx_data=>i2s_r_rx_data
	);

--Setup for MUX
mux_ports: Mux4to1 port map (
	D1=>mux_D1,
	D2=>mux_D2,
	D3=>mux_D3,
	D4=>mux_D4,
	MX_OUT=>mux_MX_OUT,
	SEL=>mux_SEL
	);
	
--Setup for FIR
fir_ecg_ports: fir_filter port map (
	clk=>fir_clk,
	reset_n=>ecg_fir_reset_n,
	ast_sink_data=>ecg_fir_ast_sink_data,
	ast_sink_valid=>ecg_fir_ast_sink_valid,
	ast_sink_error=>ecg_fir_ast_sink_error,
	ast_source_data=>ecg_fir_ast_source_data,
	ast_source_valid=>ecg_fir_ast_source_valid,
	ast_source_error=>ecg_fir_ast_source_error
);

fir_l_ports: fir_filter port map (
	clk=>fir_clk,
	reset_n=>i2s_l_fir_reset_n,
	ast_sink_data=>i2s_l_fir_ast_sink_data,
	ast_sink_valid=>i2s_l_fir_ast_sink_valid,
	ast_sink_error=>i2s_l_fir_ast_sink_error,
	ast_source_data=>i2s_l_fir_ast_source_data,
	ast_source_valid=>i2s_l_fir_ast_source_valid,
	ast_source_error=>i2s_l_fir_ast_source_error
);

fir_r_ports: fir_filter port map (
	clk=>fir_clk,
	reset_n=>i2s_r_fir_reset_n,
	ast_sink_data=>i2s_r_fir_ast_sink_data,
	ast_sink_valid=>i2s_r_fir_ast_sink_valid,
	ast_sink_error=>i2s_r_fir_ast_sink_error,
	ast_source_data=>i2s_r_fir_ast_source_data,
	ast_source_valid=>i2s_r_fir_ast_source_valid,
	ast_source_error=>i2s_r_fir_ast_source_error
);

	--Code starts here!
	
	ecg_fir_ast_sink_data <= ecg_rx_data;
	i2s_l_fir_ast_sink_data <= i2s_l_rx_data(23 downto 0);
	i2s_r_fir_ast_sink_data <= i2s_r_rx_data(23 downto 0);
	ecg_fir_ast_sink_valid <= ecg_rrdy;
	i2s_l_fir_ast_sink_valid <= i2s_l_ready;
	i2s_r_fir_ast_sink_valid <= i2s_r_ready;
	
	mux_D1 <= ecg_fir_ast_source_data;
	mux_D2 <= i2s_l_fir_ast_source_data;
	mux_D3 <= i2s_r_fir_ast_source_data;
	
	mux_SEL(0) <= rec_ch_add1;
	mux_SEL(1) <= rec_ch_add2;
	
	rec_ch1 <= rec_ch_add1;
	rec_ch2 <= rec_ch_add2;
	
	rec_tx_load_data <= mux_MX_OUT;
	


end Behavorial;