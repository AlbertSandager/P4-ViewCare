-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/22/2019 12:53:54"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SPI_slave_FPGA IS
    PORT (
	sclk : IN std_logic;
	ss_n : IN std_logic;
	mosi : IN std_logic;
	rx_req : IN std_logic;
	st_load_en : IN std_logic;
	st_load_trdy : IN std_logic;
	st_load_rrdy : IN std_logic;
	st_load_roe : IN std_logic;
	trdy : BUFFER std_logic;
	rrdy : BUFFER std_logic;
	roe : BUFFER std_logic;
	rx_data : OUT std_logic_vector(23 DOWNTO 0);
	busy : OUT std_logic;
	miso : OUT std_logic
	);
END SPI_slave_FPGA;

-- Design Ports Information
-- trdy	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rrdy	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- roe	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[5]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[6]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[7]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[10]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[11]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[12]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[13]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[14]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[15]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[16]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[17]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[18]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[19]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[20]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[21]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[22]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[23]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_n	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_roe	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_req	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_trdy	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_en	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_rrdy	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SPI_slave_FPGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_ss_n : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_rx_req : std_logic;
SIGNAL ww_st_load_en : std_logic;
SIGNAL ww_st_load_trdy : std_logic;
SIGNAL ww_st_load_rrdy : std_logic;
SIGNAL ww_st_load_roe : std_logic;
SIGNAL ww_trdy : std_logic;
SIGNAL ww_rrdy : std_logic;
SIGNAL ww_roe : std_logic;
SIGNAL ww_rx_data : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_busy : std_logic;
SIGNAL ww_miso : std_logic;
SIGNAL \process_1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \miso~output_o\ : std_logic;
SIGNAL \trdy~output_o\ : std_logic;
SIGNAL \rrdy~output_o\ : std_logic;
SIGNAL \roe~output_o\ : std_logic;
SIGNAL \rx_data[0]~output_o\ : std_logic;
SIGNAL \rx_data[1]~output_o\ : std_logic;
SIGNAL \rx_data[2]~output_o\ : std_logic;
SIGNAL \rx_data[3]~output_o\ : std_logic;
SIGNAL \rx_data[4]~output_o\ : std_logic;
SIGNAL \rx_data[5]~output_o\ : std_logic;
SIGNAL \rx_data[6]~output_o\ : std_logic;
SIGNAL \rx_data[7]~output_o\ : std_logic;
SIGNAL \rx_data[8]~output_o\ : std_logic;
SIGNAL \rx_data[9]~output_o\ : std_logic;
SIGNAL \rx_data[10]~output_o\ : std_logic;
SIGNAL \rx_data[11]~output_o\ : std_logic;
SIGNAL \rx_data[12]~output_o\ : std_logic;
SIGNAL \rx_data[13]~output_o\ : std_logic;
SIGNAL \rx_data[14]~output_o\ : std_logic;
SIGNAL \rx_data[15]~output_o\ : std_logic;
SIGNAL \rx_data[16]~output_o\ : std_logic;
SIGNAL \rx_data[17]~output_o\ : std_logic;
SIGNAL \rx_data[18]~output_o\ : std_logic;
SIGNAL \rx_data[19]~output_o\ : std_logic;
SIGNAL \rx_data[20]~output_o\ : std_logic;
SIGNAL \rx_data[21]~output_o\ : std_logic;
SIGNAL \rx_data[22]~output_o\ : std_logic;
SIGNAL \rx_data[23]~output_o\ : std_logic;
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \sclk~input_o\ : std_logic;
SIGNAL \mosi~input_o\ : std_logic;
SIGNAL \bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \ss_n~input_o\ : std_logic;
SIGNAL \bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \rd_add~0_combout\ : std_logic;
SIGNAL \rd_add~q\ : std_logic;
SIGNAL \tx_buf[0]~17_combout\ : std_logic;
SIGNAL \bit_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \bit_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[12]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[13]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[14]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[15]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[16]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[17]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[18]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[19]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[20]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[22]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[23]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[24]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[30]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[31]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[32]~feeder_combout\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \tx_buf[1]~16_combout\ : std_logic;
SIGNAL \tx_buf[2]~15_combout\ : std_logic;
SIGNAL \tx_buf[3]~14_combout\ : std_logic;
SIGNAL \tx_buf[4]~13_combout\ : std_logic;
SIGNAL \tx_buf[5]~12_combout\ : std_logic;
SIGNAL \tx_buf[6]~feeder_combout\ : std_logic;
SIGNAL \tx_buf[7]~11_combout\ : std_logic;
SIGNAL \tx_buf[8]~feeder_combout\ : std_logic;
SIGNAL \tx_buf[9]~10_combout\ : std_logic;
SIGNAL \tx_buf[10]~9_combout\ : std_logic;
SIGNAL \tx_buf[11]~8_combout\ : std_logic;
SIGNAL \tx_buf[12]~7_combout\ : std_logic;
SIGNAL \tx_buf[14]~6_combout\ : std_logic;
SIGNAL \tx_buf[16]~5_combout\ : std_logic;
SIGNAL \tx_buf[17]~4_combout\ : std_logic;
SIGNAL \tx_buf[18]~3_combout\ : std_logic;
SIGNAL \tx_buf[19]~2_combout\ : std_logic;
SIGNAL \tx_buf[20]~1_combout\ : std_logic;
SIGNAL \tx_buf[22]~0_combout\ : std_logic;
SIGNAL \st_load_en~input_o\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \rx_req~input_o\ : std_logic;
SIGNAL \st_load_rrdy~input_o\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \rrdy~1_combout\ : std_logic;
SIGNAL \wr_add~0_combout\ : std_logic;
SIGNAL \wr_add~q\ : std_logic;
SIGNAL \rrdy~7_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \rrdy~3_combout\ : std_logic;
SIGNAL \rrdy~0_combout\ : std_logic;
SIGNAL \rrdy~reg0_emulated_q\ : std_logic;
SIGNAL \rrdy~2_combout\ : std_logic;
SIGNAL \miso~2_combout\ : std_logic;
SIGNAL \st_load_roe~input_o\ : std_logic;
SIGNAL \roe~8_combout\ : std_logic;
SIGNAL \roe~1_combout\ : std_logic;
SIGNAL \roe~5_combout\ : std_logic;
SIGNAL \roe~6_combout\ : std_logic;
SIGNAL \roe~7_combout\ : std_logic;
SIGNAL \roe~3_combout\ : std_logic;
SIGNAL \roe~reg0_emulated_q\ : std_logic;
SIGNAL \roe~2_combout\ : std_logic;
SIGNAL \st_load_trdy~input_o\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \trdy~1_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \trdy~6_combout\ : std_logic;
SIGNAL \trdy~3_combout\ : std_logic;
SIGNAL \trdy~0_combout\ : std_logic;
SIGNAL \trdy~reg0_emulated_q\ : std_logic;
SIGNAL \trdy~2_combout\ : std_logic;
SIGNAL \miso~1_combout\ : std_logic;
SIGNAL \miso~3_combout\ : std_logic;
SIGNAL \miso~4_combout\ : std_logic;
SIGNAL \miso~5_combout\ : std_logic;
SIGNAL \miso~reg0_q\ : std_logic;
SIGNAL \miso~enfeeder_combout\ : std_logic;
SIGNAL \miso~en_q\ : std_logic;
SIGNAL \rx_buf[0]~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~0clkctrl_outclk\ : std_logic;
SIGNAL \rx_data[0]$latch~combout\ : std_logic;
SIGNAL \rx_buf[1]~1_combout\ : std_logic;
SIGNAL \rx_data[1]$latch~combout\ : std_logic;
SIGNAL \rx_buf[2]~2_combout\ : std_logic;
SIGNAL \rx_data[2]$latch~combout\ : std_logic;
SIGNAL \rx_buf[3]~3_combout\ : std_logic;
SIGNAL \rx_data[3]$latch~combout\ : std_logic;
SIGNAL \rx_buf[4]~4_combout\ : std_logic;
SIGNAL \rx_data[4]$latch~combout\ : std_logic;
SIGNAL \rx_buf[5]~5_combout\ : std_logic;
SIGNAL \rx_data[5]$latch~combout\ : std_logic;
SIGNAL \rx_buf[6]~6_combout\ : std_logic;
SIGNAL \rx_data[6]$latch~combout\ : std_logic;
SIGNAL \rx_buf[7]~7_combout\ : std_logic;
SIGNAL \rx_data[7]$latch~combout\ : std_logic;
SIGNAL \rx_buf[8]~8_combout\ : std_logic;
SIGNAL \rx_data[8]$latch~combout\ : std_logic;
SIGNAL \rx_buf[9]~9_combout\ : std_logic;
SIGNAL \rx_data[9]$latch~combout\ : std_logic;
SIGNAL \rx_buf[10]~10_combout\ : std_logic;
SIGNAL \rx_data[10]$latch~combout\ : std_logic;
SIGNAL \rx_buf[11]~11_combout\ : std_logic;
SIGNAL \rx_data[11]$latch~combout\ : std_logic;
SIGNAL \rx_buf[12]~12_combout\ : std_logic;
SIGNAL \rx_data[12]$latch~combout\ : std_logic;
SIGNAL \rx_buf[13]~13_combout\ : std_logic;
SIGNAL \rx_data[13]$latch~combout\ : std_logic;
SIGNAL \rx_buf[14]~14_combout\ : std_logic;
SIGNAL \rx_data[14]$latch~combout\ : std_logic;
SIGNAL \rx_buf[15]~15_combout\ : std_logic;
SIGNAL \rx_data[15]$latch~combout\ : std_logic;
SIGNAL \rx_buf[16]~16_combout\ : std_logic;
SIGNAL \rx_data[16]$latch~combout\ : std_logic;
SIGNAL \rx_buf[17]~17_combout\ : std_logic;
SIGNAL \rx_data[17]$latch~combout\ : std_logic;
SIGNAL \rx_buf[18]~18_combout\ : std_logic;
SIGNAL \rx_data[18]$latch~combout\ : std_logic;
SIGNAL \rx_buf[19]~19_combout\ : std_logic;
SIGNAL \rx_data[19]$latch~combout\ : std_logic;
SIGNAL \rx_buf[20]~20_combout\ : std_logic;
SIGNAL \rx_data[20]$latch~combout\ : std_logic;
SIGNAL \rx_buf[21]~21_combout\ : std_logic;
SIGNAL \rx_data[21]$latch~combout\ : std_logic;
SIGNAL \rx_buf[22]~22_combout\ : std_logic;
SIGNAL \rx_data[22]$latch~combout\ : std_logic;
SIGNAL \rx_buf[23]~23_combout\ : std_logic;
SIGNAL \rx_data[23]$latch~combout\ : std_logic;
SIGNAL tx_buf : std_logic_vector(23 DOWNTO 0);
SIGNAL rx_buf : std_logic_vector(23 DOWNTO 0);
SIGNAL bit_cnt : std_logic_vector(32 DOWNTO 0);
SIGNAL \ALT_INV_process_1~4_combout\ : std_logic;
SIGNAL \ALT_INV_rrdy~0_combout\ : std_logic;
SIGNAL \ALT_INV_trdy~0_combout\ : std_logic;
SIGNAL \ALT_INV_sclk~input_o\ : std_logic;
SIGNAL \ALT_INV_ss_n~input_o\ : std_logic;

BEGIN

ww_sclk <= sclk;
ww_ss_n <= ss_n;
ww_mosi <= mosi;
ww_rx_req <= rx_req;
ww_st_load_en <= st_load_en;
ww_st_load_trdy <= st_load_trdy;
ww_st_load_rrdy <= st_load_rrdy;
ww_st_load_roe <= st_load_roe;
trdy <= ww_trdy;
rrdy <= ww_rrdy;
roe <= ww_roe;
rx_data <= ww_rx_data;
busy <= ww_busy;
miso <= ww_miso;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\process_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_1~0_combout\);
\ALT_INV_process_1~4_combout\ <= NOT \process_1~4_combout\;
\ALT_INV_rrdy~0_combout\ <= NOT \rrdy~0_combout\;
\ALT_INV_trdy~0_combout\ <= NOT \trdy~0_combout\;
\ALT_INV_sclk~input_o\ <= NOT \sclk~input_o\;
\ALT_INV_ss_n~input_o\ <= NOT \ss_n~input_o\;

-- Location: IOOBUF_X32_Y0_N2
\miso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \miso~reg0_q\,
	oe => \miso~en_q\,
	devoe => ww_devoe,
	o => \miso~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\trdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trdy~2_combout\,
	devoe => ww_devoe,
	o => \trdy~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\rrdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rrdy~2_combout\,
	devoe => ww_devoe,
	o => \rrdy~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\roe~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \roe~2_combout\,
	devoe => ww_devoe,
	o => \roe~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\rx_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[0]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\rx_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[1]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\rx_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[2]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\rx_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[3]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\rx_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[4]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\rx_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[5]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[5]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\rx_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[6]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[6]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\rx_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[7]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\rx_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[8]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[8]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\rx_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[9]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[9]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\rx_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[10]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[10]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\rx_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[11]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[11]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\rx_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[12]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[12]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\rx_data[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[13]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[13]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\rx_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[14]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[14]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\rx_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[15]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[15]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\rx_data[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[16]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[16]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\rx_data[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[17]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[17]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\rx_data[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[18]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[18]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\rx_data[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[19]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[19]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\rx_data[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[20]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[20]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\rx_data[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[21]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[21]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\rx_data[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[22]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[22]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\rx_data[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[23]$latch~combout\,
	devoe => ww_devoe,
	o => \rx_data[23]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\busy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ss_n~input_o\,
	devoe => ww_devoe,
	o => \busy~output_o\);

-- Location: IOIBUF_X28_Y0_N8
\sclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sclk,
	o => \sclk~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\mosi~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mosi,
	o => \mosi~input_o\);

-- Location: LCCOMB_X28_Y1_N2
\bit_cnt[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \bit_cnt[1]~feeder_combout\);

-- Location: IOIBUF_X28_Y0_N1
\ss_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ss_n,
	o => \ss_n~input_o\);

-- Location: FF_X28_Y1_N3
\bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[1]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(1));

-- Location: LCCOMB_X28_Y1_N28
\bit_cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[2]~0_combout\ = !bit_cnt(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(1),
	combout => \bit_cnt[2]~0_combout\);

-- Location: FF_X28_Y1_N29
\bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[2]~0_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(2));

-- Location: LCCOMB_X29_Y1_N22
\rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rd_add~0_combout\ = (bit_cnt(2) & (\mosi~input_o\)) # (!bit_cnt(2) & ((\rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mosi~input_o\,
	datac => \rd_add~q\,
	datad => bit_cnt(2),
	combout => \rd_add~0_combout\);

-- Location: FF_X29_Y1_N23
rd_add : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rd_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rd_add~q\);

-- Location: LCCOMB_X29_Y1_N24
\tx_buf[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~17_combout\ = !tx_buf(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_buf(23),
	combout => \tx_buf[0]~17_combout\);

-- Location: LCCOMB_X28_Y1_N26
\bit_cnt[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[3]~feeder_combout\ = bit_cnt(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(2),
	combout => \bit_cnt[3]~feeder_combout\);

-- Location: FF_X28_Y1_N27
\bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[3]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(3));

-- Location: FF_X28_Y1_N5
\bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(3),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(4));

-- Location: LCCOMB_X28_Y1_N4
\process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (!bit_cnt(3) & (!bit_cnt(2) & (!bit_cnt(4) & bit_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(3),
	datab => bit_cnt(2),
	datac => bit_cnt(4),
	datad => bit_cnt(1),
	combout => \process_1~7_combout\);

-- Location: FF_X28_Y1_N31
\bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(4),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(5));

-- Location: FF_X28_Y1_N11
\bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(5),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(6));

-- Location: LCCOMB_X28_Y1_N18
\bit_cnt[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[7]~feeder_combout\ = bit_cnt(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(6),
	combout => \bit_cnt[7]~feeder_combout\);

-- Location: FF_X28_Y1_N19
\bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[7]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(7));

-- Location: FF_X28_Y1_N21
\bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(7),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(8));

-- Location: FF_X28_Y1_N13
\bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(8),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(9));

-- Location: FF_X28_Y1_N23
\bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(9),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(10));

-- Location: FF_X28_Y1_N17
\bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(10),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(11));

-- Location: LCCOMB_X28_Y1_N0
\bit_cnt[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[12]~feeder_combout\ = bit_cnt(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(11),
	combout => \bit_cnt[12]~feeder_combout\);

-- Location: FF_X28_Y1_N1
\bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[12]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(12));

-- Location: LCCOMB_X28_Y2_N20
\bit_cnt[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[13]~feeder_combout\ = bit_cnt(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(12),
	combout => \bit_cnt[13]~feeder_combout\);

-- Location: FF_X28_Y2_N21
\bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[13]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(13));

-- Location: LCCOMB_X28_Y2_N10
\bit_cnt[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[14]~feeder_combout\ = bit_cnt(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(13),
	combout => \bit_cnt[14]~feeder_combout\);

-- Location: FF_X28_Y2_N11
\bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[14]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(14));

-- Location: LCCOMB_X28_Y2_N24
\bit_cnt[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[15]~feeder_combout\ = bit_cnt(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(14),
	combout => \bit_cnt[15]~feeder_combout\);

-- Location: FF_X28_Y2_N25
\bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[15]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(15));

-- Location: LCCOMB_X28_Y2_N18
\bit_cnt[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[16]~feeder_combout\ = bit_cnt(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(15),
	combout => \bit_cnt[16]~feeder_combout\);

-- Location: FF_X28_Y2_N19
\bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[16]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(16));

-- Location: LCCOMB_X28_Y2_N12
\bit_cnt[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[17]~feeder_combout\ = bit_cnt(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(16),
	combout => \bit_cnt[17]~feeder_combout\);

-- Location: FF_X28_Y2_N13
\bit_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[17]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(17));

-- Location: LCCOMB_X27_Y2_N22
\bit_cnt[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[18]~feeder_combout\ = bit_cnt(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(17),
	combout => \bit_cnt[18]~feeder_combout\);

-- Location: FF_X27_Y2_N23
\bit_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[18]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(18));

-- Location: LCCOMB_X27_Y2_N12
\bit_cnt[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[19]~feeder_combout\ = bit_cnt(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(18),
	combout => \bit_cnt[19]~feeder_combout\);

-- Location: FF_X27_Y2_N13
\bit_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[19]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(19));

-- Location: LCCOMB_X27_Y2_N26
\bit_cnt[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[20]~feeder_combout\ = bit_cnt(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(19),
	combout => \bit_cnt[20]~feeder_combout\);

-- Location: FF_X27_Y2_N27
\bit_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[20]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(20));

-- Location: FF_X27_Y2_N15
\bit_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(20),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(21));

-- Location: LCCOMB_X27_Y2_N18
\bit_cnt[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[22]~feeder_combout\ = bit_cnt(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(21),
	combout => \bit_cnt[22]~feeder_combout\);

-- Location: FF_X27_Y2_N19
\bit_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[22]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(22));

-- Location: LCCOMB_X27_Y2_N28
\bit_cnt[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[23]~feeder_combout\ = bit_cnt(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(22),
	combout => \bit_cnt[23]~feeder_combout\);

-- Location: FF_X27_Y2_N29
\bit_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[23]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(23));

-- Location: LCCOMB_X27_Y2_N20
\bit_cnt[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[24]~feeder_combout\ = bit_cnt(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(23),
	combout => \bit_cnt[24]~feeder_combout\);

-- Location: FF_X27_Y2_N21
\bit_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[24]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(24));

-- Location: FF_X27_Y2_N3
\bit_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(24),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(25));

-- Location: FF_X27_Y2_N11
\bit_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(25),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(26));

-- Location: FF_X27_Y2_N9
\bit_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(26),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(27));

-- Location: FF_X27_Y2_N17
\bit_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(27),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(28));

-- Location: FF_X27_Y2_N1
\bit_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(28),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(29));

-- Location: LCCOMB_X27_Y2_N6
\bit_cnt[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[30]~feeder_combout\ = bit_cnt(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(29),
	combout => \bit_cnt[30]~feeder_combout\);

-- Location: FF_X27_Y2_N7
\bit_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[30]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(30));

-- Location: LCCOMB_X27_Y2_N24
\bit_cnt[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[31]~feeder_combout\ = bit_cnt(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(30),
	combout => \bit_cnt[31]~feeder_combout\);

-- Location: FF_X27_Y2_N25
\bit_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[31]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(31));

-- Location: LCCOMB_X27_Y2_N30
\bit_cnt[32]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[32]~feeder_combout\ = bit_cnt(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(31),
	combout => \bit_cnt[32]~feeder_combout\);

-- Location: FF_X27_Y2_N31
\bit_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[32]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(32));

-- Location: LCCOMB_X28_Y1_N10
\process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (!bit_cnt(5) & (!bit_cnt(7) & (!bit_cnt(6) & !bit_cnt(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(5),
	datab => bit_cnt(7),
	datac => bit_cnt(6),
	datad => bit_cnt(32),
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X29_Y1_N0
\process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (!\rd_add~q\ & (\process_1~7_combout\ & \process_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_add~q\,
	datab => \process_1~7_combout\,
	datad => \process_1~6_combout\,
	combout => \process_1~8_combout\);

-- Location: FF_X29_Y1_N25
\tx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[0]~17_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(0));

-- Location: LCCOMB_X29_Y2_N26
\tx_buf[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~16_combout\ = !tx_buf(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buf(0),
	combout => \tx_buf[1]~16_combout\);

-- Location: FF_X29_Y2_N27
\tx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[1]~16_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(1));

-- Location: LCCOMB_X29_Y2_N20
\tx_buf[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[2]~15_combout\ = !tx_buf(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_buf(1),
	combout => \tx_buf[2]~15_combout\);

-- Location: FF_X29_Y2_N21
\tx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[2]~15_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(2));

-- Location: LCCOMB_X29_Y2_N30
\tx_buf[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[3]~14_combout\ = !tx_buf(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buf(2),
	combout => \tx_buf[3]~14_combout\);

-- Location: FF_X29_Y2_N31
\tx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[3]~14_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(3));

-- Location: LCCOMB_X29_Y2_N16
\tx_buf[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[4]~13_combout\ = !tx_buf(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_buf(3),
	combout => \tx_buf[4]~13_combout\);

-- Location: FF_X29_Y2_N17
\tx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[4]~13_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(4));

-- Location: LCCOMB_X29_Y2_N10
\tx_buf[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[5]~12_combout\ = !tx_buf(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buf(4),
	combout => \tx_buf[5]~12_combout\);

-- Location: FF_X29_Y2_N11
\tx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[5]~12_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(5));

-- Location: LCCOMB_X29_Y2_N4
\tx_buf[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~feeder_combout\ = tx_buf(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buf(5),
	combout => \tx_buf[6]~feeder_combout\);

-- Location: FF_X29_Y2_N5
\tx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[6]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(6));

-- Location: LCCOMB_X29_Y2_N18
\tx_buf[7]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~11_combout\ = !tx_buf(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_buf(6),
	combout => \tx_buf[7]~11_combout\);

-- Location: FF_X29_Y2_N19
\tx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[7]~11_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(7));

-- Location: LCCOMB_X29_Y2_N24
\tx_buf[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[8]~feeder_combout\ = tx_buf(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buf(7),
	combout => \tx_buf[8]~feeder_combout\);

-- Location: FF_X29_Y2_N25
\tx_buf[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[8]~feeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(8));

-- Location: LCCOMB_X29_Y2_N22
\tx_buf[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[9]~10_combout\ = !tx_buf(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buf(8),
	combout => \tx_buf[9]~10_combout\);

-- Location: FF_X29_Y2_N23
\tx_buf[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[9]~10_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(9));

-- Location: LCCOMB_X29_Y2_N12
\tx_buf[10]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[10]~9_combout\ = !tx_buf(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_buf(9),
	combout => \tx_buf[10]~9_combout\);

-- Location: FF_X29_Y2_N13
\tx_buf[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[10]~9_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(10));

-- Location: LCCOMB_X29_Y2_N2
\tx_buf[11]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[11]~8_combout\ = !tx_buf(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buf(10),
	combout => \tx_buf[11]~8_combout\);

-- Location: FF_X29_Y2_N3
\tx_buf[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[11]~8_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(11));

-- Location: LCCOMB_X29_Y2_N28
\tx_buf[12]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[12]~7_combout\ = !tx_buf(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buf(11),
	combout => \tx_buf[12]~7_combout\);

-- Location: FF_X29_Y2_N29
\tx_buf[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[12]~7_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(12));

-- Location: FF_X29_Y1_N21
\tx_buf[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => tx_buf(12),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(13));

-- Location: LCCOMB_X29_Y1_N14
\tx_buf[14]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[14]~6_combout\ = !tx_buf(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buf(13),
	combout => \tx_buf[14]~6_combout\);

-- Location: FF_X29_Y1_N15
\tx_buf[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[14]~6_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(14));

-- Location: FF_X29_Y1_N11
\tx_buf[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => tx_buf(14),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(15));

-- Location: LCCOMB_X29_Y1_N2
\tx_buf[16]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[16]~5_combout\ = !tx_buf(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_buf(15),
	combout => \tx_buf[16]~5_combout\);

-- Location: FF_X29_Y1_N3
\tx_buf[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[16]~5_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(16));

-- Location: LCCOMB_X29_Y1_N8
\tx_buf[17]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[17]~4_combout\ = !tx_buf(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buf(16),
	combout => \tx_buf[17]~4_combout\);

-- Location: FF_X29_Y1_N9
\tx_buf[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[17]~4_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(17));

-- Location: LCCOMB_X29_Y1_N30
\tx_buf[18]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[18]~3_combout\ = !tx_buf(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_buf(17),
	combout => \tx_buf[18]~3_combout\);

-- Location: FF_X29_Y1_N31
\tx_buf[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[18]~3_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(18));

-- Location: LCCOMB_X29_Y1_N18
\tx_buf[19]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[19]~2_combout\ = !tx_buf(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_buf(18),
	combout => \tx_buf[19]~2_combout\);

-- Location: FF_X29_Y1_N19
\tx_buf[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[19]~2_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(19));

-- Location: LCCOMB_X29_Y1_N4
\tx_buf[20]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[20]~1_combout\ = !tx_buf(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buf(19),
	combout => \tx_buf[20]~1_combout\);

-- Location: FF_X29_Y1_N5
\tx_buf[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[20]~1_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(20));

-- Location: FF_X29_Y1_N1
\tx_buf[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => tx_buf(20),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(21));

-- Location: LCCOMB_X29_Y1_N26
\tx_buf[22]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[22]~0_combout\ = !tx_buf(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tx_buf(21),
	combout => \tx_buf[22]~0_combout\);

-- Location: FF_X29_Y1_N27
\tx_buf[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[22]~0_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(22));

-- Location: FF_X29_Y1_N13
\tx_buf[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => tx_buf(22),
	clrn => \ALT_INV_ss_n~input_o\,
	sload => VCC,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buf(23));

-- Location: IOIBUF_X26_Y0_N1
\st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_en,
	o => \st_load_en~input_o\);

-- Location: LCCOMB_X27_Y1_N0
\process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\st_load_en~input_o\ & \ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \st_load_en~input_o\,
	datad => \ss_n~input_o\,
	combout => \process_1~4_combout\);

-- Location: IOIBUF_X21_Y0_N1
\rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_req,
	o => \rx_req~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\st_load_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_rrdy,
	o => \st_load_rrdy~input_o\);

-- Location: LCCOMB_X27_Y1_N30
\process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (\ss_n~input_o\ & ((\rx_req~input_o\) # ((!\st_load_rrdy~input_o\ & \st_load_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_req~input_o\,
	datab => \st_load_rrdy~input_o\,
	datac => \st_load_en~input_o\,
	datad => \ss_n~input_o\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X27_Y1_N2
\rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~1_combout\ = (!\process_1~5_combout\ & ((\process_1~4_combout\) # (\rrdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \rrdy~1_combout\,
	datac => \process_1~5_combout\,
	combout => \rrdy~1_combout\);

-- Location: LCCOMB_X28_Y2_N14
\wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wr_add~0_combout\ = (bit_cnt(1) & ((\wr_add~q\))) # (!bit_cnt(1) & (\mosi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mosi~input_o\,
	datac => \wr_add~q\,
	datad => bit_cnt(1),
	combout => \wr_add~0_combout\);

-- Location: FF_X28_Y2_N15
wr_add : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \wr_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wr_add~q\);

-- Location: LCCOMB_X27_Y1_N8
\rrdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~7_combout\ = (\rrdy~2_combout\) # ((bit_cnt(32) & !\wr_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(32),
	datab => \wr_add~q\,
	datac => \rrdy~2_combout\,
	combout => \rrdy~7_combout\);

-- Location: LCCOMB_X28_Y1_N22
\process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (bit_cnt(10) & \wr_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_cnt(10),
	datad => \wr_add~q\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X27_Y1_N18
\rrdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~3_combout\ = \rrdy~1_combout\ $ (((\process_1~3_combout\ & (\mosi~input_o\)) # (!\process_1~3_combout\ & ((\rrdy~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \rrdy~1_combout\,
	datac => \rrdy~7_combout\,
	datad => \process_1~3_combout\,
	combout => \rrdy~3_combout\);

-- Location: LCCOMB_X27_Y1_N24
\rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~0_combout\ = (\process_1~4_combout\) # (\process_1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~4_combout\,
	datac => \process_1~5_combout\,
	combout => \rrdy~0_combout\);

-- Location: FF_X27_Y1_N19
\rrdy~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rrdy~3_combout\,
	clrn => \ALT_INV_rrdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rrdy~reg0_emulated_q\);

-- Location: LCCOMB_X27_Y1_N26
\rrdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~2_combout\ = (!\process_1~5_combout\ & ((\process_1~4_combout\) # (\rrdy~1_combout\ $ (\rrdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rrdy~1_combout\,
	datab => \process_1~4_combout\,
	datac => \process_1~5_combout\,
	datad => \rrdy~reg0_emulated_q\,
	combout => \rrdy~2_combout\);

-- Location: LCCOMB_X27_Y1_N6
\miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~2_combout\ = ((\rrdy~2_combout\) # (bit_cnt(8))) # (!bit_cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cnt(9),
	datac => \rrdy~2_combout\,
	datad => bit_cnt(8),
	combout => \miso~2_combout\);

-- Location: IOIBUF_X21_Y0_N8
\st_load_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_roe,
	o => \st_load_roe~input_o\);

-- Location: LCCOMB_X28_Y1_N16
\roe~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~8_combout\ = (bit_cnt(11)) # (!\wr_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_cnt(11),
	datad => \wr_add~q\,
	combout => \roe~8_combout\);

-- Location: LCCOMB_X26_Y1_N24
\roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~1_combout\ = (\process_1~4_combout\ & (\st_load_roe~input_o\)) # (!\process_1~4_combout\ & ((\roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st_load_roe~input_o\,
	datac => \process_1~4_combout\,
	datad => \roe~1_combout\,
	combout => \roe~1_combout\);

-- Location: LCCOMB_X26_Y1_N4
\roe~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~5_combout\ = (\wr_add~q\ & ((\mosi~input_o\ $ (\roe~1_combout\)) # (!bit_cnt(11)))) # (!\wr_add~q\ & (((!\roe~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(11),
	datab => \mosi~input_o\,
	datac => \wr_add~q\,
	datad => \roe~1_combout\,
	combout => \roe~5_combout\);

-- Location: LCCOMB_X26_Y1_N26
\roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~6_combout\ = (\wr_add~q\ & ((bit_cnt(11)) # ((\roe~1_combout\)))) # (!\wr_add~q\ & ((bit_cnt(32) $ (\roe~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(11),
	datab => bit_cnt(32),
	datac => \wr_add~q\,
	datad => \roe~1_combout\,
	combout => \roe~6_combout\);

-- Location: LCCOMB_X26_Y1_N28
\roe~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~7_combout\ = (\wr_add~q\ & (\roe~5_combout\ & (\roe~6_combout\))) # (!\wr_add~q\ & ((\rrdy~2_combout\ & ((\roe~6_combout\))) # (!\rrdy~2_combout\ & (!\roe~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => \roe~5_combout\,
	datac => \roe~6_combout\,
	datad => \rrdy~2_combout\,
	combout => \roe~7_combout\);

-- Location: LCCOMB_X26_Y1_N16
\roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~3_combout\ = (\roe~2_combout\ & (\roe~5_combout\ & ((\roe~8_combout\) # (!\roe~7_combout\)))) # (!\roe~2_combout\ & (((\roe~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \roe~8_combout\,
	datab => \roe~7_combout\,
	datac => \roe~5_combout\,
	datad => \roe~2_combout\,
	combout => \roe~3_combout\);

-- Location: FF_X26_Y1_N17
\roe~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \roe~3_combout\,
	clrn => \ALT_INV_process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \roe~reg0_emulated_q\);

-- Location: LCCOMB_X27_Y1_N4
\roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~2_combout\ = (\process_1~4_combout\ & (\st_load_roe~input_o\)) # (!\process_1~4_combout\ & ((\roe~reg0_emulated_q\ $ (\roe~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st_load_roe~input_o\,
	datab => \process_1~4_combout\,
	datac => \roe~reg0_emulated_q\,
	datad => \roe~1_combout\,
	combout => \roe~2_combout\);

-- Location: IOIBUF_X23_Y0_N22
\st_load_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_trdy,
	o => \st_load_trdy~input_o\);

-- Location: LCCOMB_X27_Y1_N20
\process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (!\st_load_trdy~input_o\ & \process_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \st_load_trdy~input_o\,
	datad => \process_1~4_combout\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X27_Y1_N12
\trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~1_combout\ = (!\process_1~2_combout\ & ((\ss_n~input_o\) # (\trdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~2_combout\,
	datac => \ss_n~input_o\,
	datad => \trdy~1_combout\,
	combout => \trdy~1_combout\);

-- Location: LCCOMB_X28_Y1_N8
\process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\wr_add~q\ & bit_cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_add~q\,
	datad => bit_cnt(9),
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X27_Y1_N10
\trdy~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~6_combout\ = (!\process_1~1_combout\ & (\trdy~2_combout\ & ((\rd_add~q\) # (!bit_cnt(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_add~q\,
	datab => bit_cnt(32),
	datac => \process_1~1_combout\,
	datad => \trdy~2_combout\,
	combout => \trdy~6_combout\);

-- Location: LCCOMB_X27_Y1_N22
\trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~3_combout\ = \trdy~1_combout\ $ (((\trdy~6_combout\) # ((\mosi~input_o\ & \process_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trdy~1_combout\,
	datab => \mosi~input_o\,
	datac => \process_1~1_combout\,
	datad => \trdy~6_combout\,
	combout => \trdy~3_combout\);

-- Location: LCCOMB_X27_Y1_N16
\trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~0_combout\ = (\ss_n~input_o\) # (\process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_n~input_o\,
	datad => \process_1~2_combout\,
	combout => \trdy~0_combout\);

-- Location: FF_X27_Y1_N23
\trdy~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \trdy~3_combout\,
	clrn => \ALT_INV_trdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trdy~reg0_emulated_q\);

-- Location: LCCOMB_X27_Y1_N28
\trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~2_combout\ = (!\process_1~2_combout\ & ((\ss_n~input_o\) # (\trdy~1_combout\ $ (\trdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trdy~1_combout\,
	datab => \ss_n~input_o\,
	datac => \trdy~reg0_emulated_q\,
	datad => \process_1~2_combout\,
	combout => \trdy~2_combout\);

-- Location: LCCOMB_X27_Y1_N14
\miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~1_combout\ = (bit_cnt(8) & (((\trdy~2_combout\)))) # (!bit_cnt(8) & ((bit_cnt(9)) # ((\roe~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(9),
	datab => bit_cnt(8),
	datac => \roe~2_combout\,
	datad => \trdy~2_combout\,
	combout => \miso~1_combout\);

-- Location: LCCOMB_X28_Y1_N14
\miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~3_combout\ = (\rd_add~q\ & (((\miso~2_combout\ & \miso~1_combout\)))) # (!\rd_add~q\ & (!tx_buf(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_add~q\,
	datab => tx_buf(23),
	datac => \miso~2_combout\,
	datad => \miso~1_combout\,
	combout => \miso~3_combout\);

-- Location: LCCOMB_X28_Y1_N20
\miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~4_combout\ = (\rd_add~q\ & ((bit_cnt(10) & (!bit_cnt(9) & !bit_cnt(8))) # (!bit_cnt(10) & (bit_cnt(9) $ (bit_cnt(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(10),
	datab => bit_cnt(9),
	datac => bit_cnt(8),
	datad => \rd_add~q\,
	combout => \miso~4_combout\);

-- Location: LCCOMB_X28_Y1_N6
\miso~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~5_combout\ = (\miso~4_combout\) # ((\process_1~7_combout\ & (!\rd_add~q\ & \process_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~7_combout\,
	datab => \rd_add~q\,
	datac => \process_1~6_combout\,
	datad => \miso~4_combout\,
	combout => \miso~5_combout\);

-- Location: FF_X28_Y1_N15
\miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \miso~3_combout\,
	ena => \miso~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miso~reg0_q\);

-- Location: LCCOMB_X28_Y1_N24
\miso~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \miso~enfeeder_combout\);

-- Location: FF_X28_Y1_N25
\miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \miso~enfeeder_combout\,
	clrn => \ALT_INV_ss_n~input_o\,
	ena => \miso~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miso~en_q\);

-- Location: LCCOMB_X24_Y2_N28
\rx_buf[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[0]~0_combout\ = (\wr_add~q\ & (((rx_buf(0))))) # (!\wr_add~q\ & ((bit_cnt(32) & ((\mosi~input_o\))) # (!bit_cnt(32) & (rx_buf(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => bit_cnt(32),
	datac => rx_buf(0),
	datad => \mosi~input_o\,
	combout => \rx_buf[0]~0_combout\);

-- Location: FF_X24_Y2_N29
\rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(0));

-- Location: LCCOMB_X22_Y1_N24
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\rx_req~input_o\ & \ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_req~input_o\,
	datad => \ss_n~input_o\,
	combout => \process_1~0_combout\);

-- Location: CLKCTRL_G18
\process_1~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_1~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y2_N0
\rx_data[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[0]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(0)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_data[0]$latch~combout\,
	datac => rx_buf(0),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[0]$latch~combout\);

-- Location: LCCOMB_X24_Y2_N22
\rx_buf[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[1]~1_combout\ = (bit_cnt(31) & ((\wr_add~q\ & (rx_buf(1))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(31) & (((rx_buf(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(31),
	datab => \wr_add~q\,
	datac => rx_buf(1),
	datad => \mosi~input_o\,
	combout => \rx_buf[1]~1_combout\);

-- Location: FF_X24_Y2_N23
\rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(1));

-- Location: LCCOMB_X24_Y2_N2
\rx_data[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[1]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(1)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_data[1]$latch~combout\,
	datac => rx_buf(1),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[1]$latch~combout\);

-- Location: LCCOMB_X24_Y2_N4
\rx_buf[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[2]~2_combout\ = (bit_cnt(30) & ((\wr_add~q\ & (rx_buf(2))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(30) & (((rx_buf(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(30),
	datab => \wr_add~q\,
	datac => rx_buf(2),
	datad => \mosi~input_o\,
	combout => \rx_buf[2]~2_combout\);

-- Location: FF_X24_Y2_N5
\rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(2));

-- Location: LCCOMB_X24_Y2_N20
\rx_data[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[2]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(2)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_data[2]$latch~combout\,
	datac => rx_buf(2),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[2]$latch~combout\);

-- Location: LCCOMB_X24_Y2_N30
\rx_buf[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[3]~3_combout\ = (\wr_add~q\ & (((rx_buf(3))))) # (!\wr_add~q\ & ((bit_cnt(29) & ((\mosi~input_o\))) # (!bit_cnt(29) & (rx_buf(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => bit_cnt(29),
	datac => rx_buf(3),
	datad => \mosi~input_o\,
	combout => \rx_buf[3]~3_combout\);

-- Location: FF_X24_Y2_N31
\rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(3));

-- Location: LCCOMB_X24_Y2_N6
\rx_data[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[3]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(3)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[3]$latch~combout\,
	datac => rx_buf(3),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[3]$latch~combout\);

-- Location: LCCOMB_X24_Y2_N16
\rx_buf[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[4]~4_combout\ = (\wr_add~q\ & (((rx_buf(4))))) # (!\wr_add~q\ & ((bit_cnt(28) & ((\mosi~input_o\))) # (!bit_cnt(28) & (rx_buf(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => bit_cnt(28),
	datac => rx_buf(4),
	datad => \mosi~input_o\,
	combout => \rx_buf[4]~4_combout\);

-- Location: FF_X24_Y2_N17
\rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(4));

-- Location: LCCOMB_X24_Y2_N24
\rx_data[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[4]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(4)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_data[4]$latch~combout\,
	datac => rx_buf(4),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[4]$latch~combout\);

-- Location: LCCOMB_X24_Y2_N26
\rx_buf[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[5]~5_combout\ = (bit_cnt(27) & ((\wr_add~q\ & (rx_buf(5))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(27) & (((rx_buf(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(27),
	datab => \wr_add~q\,
	datac => rx_buf(5),
	datad => \mosi~input_o\,
	combout => \rx_buf[5]~5_combout\);

-- Location: FF_X24_Y2_N27
\rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(5));

-- Location: LCCOMB_X24_Y2_N14
\rx_data[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[5]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(5)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_data[5]$latch~combout\,
	datac => rx_buf(5),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[5]$latch~combout\);

-- Location: LCCOMB_X24_Y2_N12
\rx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[6]~6_combout\ = (bit_cnt(26) & ((\wr_add~q\ & (rx_buf(6))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(26) & (((rx_buf(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(26),
	datab => \wr_add~q\,
	datac => rx_buf(6),
	datad => \mosi~input_o\,
	combout => \rx_buf[6]~6_combout\);

-- Location: FF_X24_Y2_N13
\rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(6));

-- Location: LCCOMB_X24_Y2_N8
\rx_data[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[6]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(6))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(6),
	datac => \rx_data[6]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[6]$latch~combout\);

-- Location: LCCOMB_X24_Y2_N18
\rx_buf[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[7]~7_combout\ = (bit_cnt(25) & ((\wr_add~q\ & (rx_buf(7))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(25) & (((rx_buf(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(25),
	datab => \wr_add~q\,
	datac => rx_buf(7),
	datad => \mosi~input_o\,
	combout => \rx_buf[7]~7_combout\);

-- Location: FF_X24_Y2_N19
\rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(7));

-- Location: LCCOMB_X24_Y2_N10
\rx_data[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[7]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(7)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[7]$latch~combout\,
	datac => rx_buf(7),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[7]$latch~combout\);

-- Location: LCCOMB_X27_Y2_N4
\rx_buf[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[8]~8_combout\ = (bit_cnt(24) & ((\wr_add~q\ & (rx_buf(8))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(24) & (((rx_buf(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(24),
	datab => \wr_add~q\,
	datac => rx_buf(8),
	datad => \mosi~input_o\,
	combout => \rx_buf[8]~8_combout\);

-- Location: FF_X27_Y2_N5
\rx_buf[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(8));

-- Location: LCCOMB_X27_Y2_N16
\rx_data[8]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[8]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(8))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(8),
	datab => \rx_data[8]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[8]$latch~combout\);

-- Location: LCCOMB_X26_Y1_N30
\rx_buf[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[9]~9_combout\ = (\wr_add~q\ & (((rx_buf(9))))) # (!\wr_add~q\ & ((bit_cnt(23) & (\mosi~input_o\)) # (!bit_cnt(23) & ((rx_buf(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => \mosi~input_o\,
	datac => rx_buf(9),
	datad => bit_cnt(23),
	combout => \rx_buf[9]~9_combout\);

-- Location: FF_X26_Y1_N31
\rx_buf[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(9));

-- Location: LCCOMB_X26_Y1_N14
\rx_data[9]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[9]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(9))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rx_buf(9),
	datac => \rx_data[9]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[9]$latch~combout\);

-- Location: LCCOMB_X26_Y2_N4
\rx_buf[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[10]~10_combout\ = (bit_cnt(22) & ((\wr_add~q\ & ((rx_buf(10)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(22) & (((rx_buf(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(22),
	datac => rx_buf(10),
	datad => \wr_add~q\,
	combout => \rx_buf[10]~10_combout\);

-- Location: FF_X26_Y2_N5
\rx_buf[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(10));

-- Location: LCCOMB_X26_Y2_N12
\rx_data[10]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[10]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(10)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[10]$latch~combout\,
	datac => rx_buf(10),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[10]$latch~combout\);

-- Location: LCCOMB_X24_Y1_N28
\rx_buf[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[11]~11_combout\ = (bit_cnt(21) & ((\wr_add~q\ & (rx_buf(11))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(21) & (((rx_buf(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(21),
	datab => \wr_add~q\,
	datac => rx_buf(11),
	datad => \mosi~input_o\,
	combout => \rx_buf[11]~11_combout\);

-- Location: FF_X24_Y1_N29
\rx_buf[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(11));

-- Location: LCCOMB_X24_Y1_N4
\rx_data[11]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[11]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(11))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[11]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(11),
	datac => \rx_data[11]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[11]$latch~combout\);

-- Location: LCCOMB_X26_Y2_N30
\rx_buf[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[12]~12_combout\ = (bit_cnt(20) & ((\wr_add~q\ & ((rx_buf(12)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(20) & (((rx_buf(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(20),
	datac => rx_buf(12),
	datad => \wr_add~q\,
	combout => \rx_buf[12]~12_combout\);

-- Location: FF_X26_Y2_N31
\rx_buf[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(12));

-- Location: LCCOMB_X26_Y2_N26
\rx_data[12]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[12]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(12)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[12]$latch~combout\,
	datac => rx_buf(12),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[12]$latch~combout\);

-- Location: LCCOMB_X26_Y2_N28
\rx_buf[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[13]~13_combout\ = (bit_cnt(19) & ((\wr_add~q\ & ((rx_buf(13)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(19) & (((rx_buf(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(19),
	datac => rx_buf(13),
	datad => \wr_add~q\,
	combout => \rx_buf[13]~13_combout\);

-- Location: FF_X26_Y2_N29
\rx_buf[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(13));

-- Location: LCCOMB_X26_Y2_N8
\rx_data[13]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[13]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(13))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[13]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(13),
	datac => \rx_data[13]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[13]$latch~combout\);

-- Location: LCCOMB_X24_Y1_N26
\rx_buf[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[14]~14_combout\ = (bit_cnt(18) & ((\wr_add~q\ & (rx_buf(14))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(18) & (((rx_buf(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(18),
	datab => \wr_add~q\,
	datac => rx_buf(14),
	datad => \mosi~input_o\,
	combout => \rx_buf[14]~14_combout\);

-- Location: FF_X24_Y1_N27
\rx_buf[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(14));

-- Location: LCCOMB_X24_Y1_N30
\rx_data[14]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[14]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(14))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[14]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rx_buf(14),
	datac => \rx_data[14]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[14]$latch~combout\);

-- Location: LCCOMB_X26_Y2_N22
\rx_buf[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[15]~15_combout\ = (bit_cnt(17) & ((\wr_add~q\ & ((rx_buf(15)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(17) & (((rx_buf(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(17),
	datac => rx_buf(15),
	datad => \wr_add~q\,
	combout => \rx_buf[15]~15_combout\);

-- Location: FF_X26_Y2_N23
\rx_buf[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(15));

-- Location: LCCOMB_X26_Y2_N14
\rx_data[15]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[15]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(15))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[15]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rx_buf(15),
	datac => \rx_data[15]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[15]$latch~combout\);

-- Location: LCCOMB_X28_Y2_N4
\rx_buf[16]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[16]~16_combout\ = (\wr_add~q\ & (((rx_buf(16))))) # (!\wr_add~q\ & ((bit_cnt(16) & ((\mosi~input_o\))) # (!bit_cnt(16) & (rx_buf(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => bit_cnt(16),
	datac => rx_buf(16),
	datad => \mosi~input_o\,
	combout => \rx_buf[16]~16_combout\);

-- Location: FF_X28_Y2_N5
\rx_buf[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(16));

-- Location: LCCOMB_X29_Y2_N8
\rx_data[16]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[16]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(16)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[16]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_data[16]$latch~combout\,
	datac => rx_buf(16),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[16]$latch~combout\);

-- Location: LCCOMB_X28_Y2_N30
\rx_buf[17]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[17]~17_combout\ = (\wr_add~q\ & (((rx_buf(17))))) # (!\wr_add~q\ & ((bit_cnt(15) & ((\mosi~input_o\))) # (!bit_cnt(15) & (rx_buf(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => bit_cnt(15),
	datac => rx_buf(17),
	datad => \mosi~input_o\,
	combout => \rx_buf[17]~17_combout\);

-- Location: FF_X28_Y2_N31
\rx_buf[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(17));

-- Location: LCCOMB_X28_Y2_N22
\rx_data[17]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[17]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(17))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[17]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(17),
	datac => \rx_data[17]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[17]$latch~combout\);

-- Location: LCCOMB_X28_Y2_N0
\rx_buf[18]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[18]~18_combout\ = (\wr_add~q\ & (((rx_buf(18))))) # (!\wr_add~q\ & ((bit_cnt(14) & (\mosi~input_o\)) # (!bit_cnt(14) & ((rx_buf(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => \mosi~input_o\,
	datac => rx_buf(18),
	datad => bit_cnt(14),
	combout => \rx_buf[18]~18_combout\);

-- Location: FF_X28_Y2_N1
\rx_buf[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(18));

-- Location: LCCOMB_X28_Y2_N8
\rx_data[18]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[18]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(18)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[18]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_data[18]$latch~combout\,
	datac => rx_buf(18),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[18]$latch~combout\);

-- Location: LCCOMB_X28_Y2_N6
\rx_buf[19]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[19]~19_combout\ = (\wr_add~q\ & (((rx_buf(19))))) # (!\wr_add~q\ & ((bit_cnt(13) & (\mosi~input_o\)) # (!bit_cnt(13) & ((rx_buf(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => \mosi~input_o\,
	datac => rx_buf(19),
	datad => bit_cnt(13),
	combout => \rx_buf[19]~19_combout\);

-- Location: FF_X28_Y2_N7
\rx_buf[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(19));

-- Location: LCCOMB_X28_Y2_N26
\rx_data[19]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[19]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(19))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[19]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(19),
	datac => \rx_data[19]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[19]$latch~combout\);

-- Location: LCCOMB_X28_Y2_N28
\rx_buf[20]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[20]~20_combout\ = (\wr_add~q\ & (((rx_buf(20))))) # (!\wr_add~q\ & ((bit_cnt(12) & (\mosi~input_o\)) # (!bit_cnt(12) & ((rx_buf(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => \mosi~input_o\,
	datac => rx_buf(20),
	datad => bit_cnt(12),
	combout => \rx_buf[20]~20_combout\);

-- Location: FF_X28_Y2_N29
\rx_buf[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(20));

-- Location: LCCOMB_X28_Y2_N16
\rx_data[20]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[20]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(20)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[20]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_data[20]$latch~combout\,
	datac => rx_buf(20),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[20]$latch~combout\);

-- Location: LCCOMB_X29_Y1_N16
\rx_buf[21]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[21]~21_combout\ = (bit_cnt(11) & ((\wr_add~q\ & ((rx_buf(21)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(11) & (((rx_buf(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(11),
	datab => \mosi~input_o\,
	datac => rx_buf(21),
	datad => \wr_add~q\,
	combout => \rx_buf[21]~21_combout\);

-- Location: FF_X29_Y1_N17
\rx_buf[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(21));

-- Location: LCCOMB_X29_Y1_N10
\rx_data[21]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[21]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(21)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[21]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[21]$latch~combout\,
	datab => rx_buf(21),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[21]$latch~combout\);

-- Location: LCCOMB_X29_Y1_N28
\rx_buf[22]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[22]~22_combout\ = (bit_cnt(10) & ((\wr_add~q\ & ((rx_buf(22)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(10) & (((rx_buf(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(10),
	datac => rx_buf(22),
	datad => \wr_add~q\,
	combout => \rx_buf[22]~22_combout\);

-- Location: FF_X29_Y1_N29
\rx_buf[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(22));

-- Location: LCCOMB_X29_Y1_N12
\rx_data[22]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[22]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(22)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[22]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[22]$latch~combout\,
	datab => \process_1~0clkctrl_outclk\,
	datad => rx_buf(22),
	combout => \rx_data[22]$latch~combout\);

-- Location: LCCOMB_X29_Y1_N6
\rx_buf[23]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[23]~23_combout\ = (bit_cnt(9) & ((\wr_add~q\ & ((rx_buf(23)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(9) & (((rx_buf(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(9),
	datab => \mosi~input_o\,
	datac => rx_buf(23),
	datad => \wr_add~q\,
	combout => \rx_buf[23]~23_combout\);

-- Location: FF_X29_Y1_N7
\rx_buf[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(23));

-- Location: LCCOMB_X29_Y1_N20
\rx_data[23]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[23]$latch~combout\ = (GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(23)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[23]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[23]$latch~combout\,
	datab => \process_1~0clkctrl_outclk\,
	datad => rx_buf(23),
	combout => \rx_data[23]$latch~combout\);

ww_trdy <= \trdy~output_o\;

ww_rrdy <= \rrdy~output_o\;

ww_roe <= \roe~output_o\;

ww_rx_data(0) <= \rx_data[0]~output_o\;

ww_rx_data(1) <= \rx_data[1]~output_o\;

ww_rx_data(2) <= \rx_data[2]~output_o\;

ww_rx_data(3) <= \rx_data[3]~output_o\;

ww_rx_data(4) <= \rx_data[4]~output_o\;

ww_rx_data(5) <= \rx_data[5]~output_o\;

ww_rx_data(6) <= \rx_data[6]~output_o\;

ww_rx_data(7) <= \rx_data[7]~output_o\;

ww_rx_data(8) <= \rx_data[8]~output_o\;

ww_rx_data(9) <= \rx_data[9]~output_o\;

ww_rx_data(10) <= \rx_data[10]~output_o\;

ww_rx_data(11) <= \rx_data[11]~output_o\;

ww_rx_data(12) <= \rx_data[12]~output_o\;

ww_rx_data(13) <= \rx_data[13]~output_o\;

ww_rx_data(14) <= \rx_data[14]~output_o\;

ww_rx_data(15) <= \rx_data[15]~output_o\;

ww_rx_data(16) <= \rx_data[16]~output_o\;

ww_rx_data(17) <= \rx_data[17]~output_o\;

ww_rx_data(18) <= \rx_data[18]~output_o\;

ww_rx_data(19) <= \rx_data[19]~output_o\;

ww_rx_data(20) <= \rx_data[20]~output_o\;

ww_rx_data(21) <= \rx_data[21]~output_o\;

ww_rx_data(22) <= \rx_data[22]~output_o\;

ww_rx_data(23) <= \rx_data[23]~output_o\;

ww_busy <= \busy~output_o\;

ww_miso <= \miso~output_o\;
END structure;


