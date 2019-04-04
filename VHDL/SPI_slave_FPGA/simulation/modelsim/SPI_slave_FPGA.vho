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

-- DATE "04/04/2019 11:46:55"

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
	reset_n : IN std_logic;
	ss_n : IN std_logic;
	mosi : IN std_logic;
	rx_req : IN std_logic;
	st_load_en : IN std_logic;
	st_load_trdy : IN std_logic;
	st_load_rrdy : IN std_logic;
	st_load_roe : IN std_logic;
	tx_load_en : IN std_logic;
	tx_load_data : IN std_logic_vector(7 DOWNTO 0);
	trdy : BUFFER std_logic;
	rrdy : BUFFER std_logic;
	roe : BUFFER std_logic;
	rx_data : OUT std_logic_vector(7 DOWNTO 0);
	busy : OUT std_logic;
	miso : OUT std_logic
	);
END SPI_slave_FPGA;

-- Design Ports Information
-- trdy	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rrdy	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- roe	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[5]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[6]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[7]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_n	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_req	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_trdy	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_en	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_en	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_rrdy	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_roe	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[7]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[5]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[1]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_ss_n : std_logic;
SIGNAL ww_mosi : std_logic;
SIGNAL ww_rx_req : std_logic;
SIGNAL ww_st_load_en : std_logic;
SIGNAL ww_st_load_trdy : std_logic;
SIGNAL ww_st_load_rrdy : std_logic;
SIGNAL ww_st_load_roe : std_logic;
SIGNAL ww_tx_load_en : std_logic;
SIGNAL ww_tx_load_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_trdy : std_logic;
SIGNAL ww_rrdy : std_logic;
SIGNAL ww_roe : std_logic;
SIGNAL ww_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_busy : std_logic;
SIGNAL ww_miso : std_logic;
SIGNAL \tx_buf[0]~43clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \sclk~input_o\ : std_logic;
SIGNAL \mosi~input_o\ : std_logic;
SIGNAL \bit_cnt[0]~feeder_combout\ : std_logic;
SIGNAL \ss_n~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \bit_cnt[1]~0_combout\ : std_logic;
SIGNAL \rd_add~0_combout\ : std_logic;
SIGNAL \rd_add~q\ : std_logic;
SIGNAL \tx_load_en~input_o\ : std_logic;
SIGNAL \tx_buf[0]~43_combout\ : std_logic;
SIGNAL \tx_load_data[7]~input_o\ : std_logic;
SIGNAL \tx_buf[0]~43clkctrl_outclk\ : std_logic;
SIGNAL \tx_buf[7]~1_combout\ : std_logic;
SIGNAL \tx_load_data[6]~input_o\ : std_logic;
SIGNAL \tx_load_data[5]~input_o\ : std_logic;
SIGNAL \tx_buf[5]~11_combout\ : std_logic;
SIGNAL \tx_load_data[4]~input_o\ : std_logic;
SIGNAL \tx_buf[4]~16_combout\ : std_logic;
SIGNAL \tx_load_data[3]~input_o\ : std_logic;
SIGNAL \tx_buf[3]~21_combout\ : std_logic;
SIGNAL \tx_load_data[2]~input_o\ : std_logic;
SIGNAL \tx_buf[2]~26_combout\ : std_logic;
SIGNAL \tx_load_data[1]~input_o\ : std_logic;
SIGNAL \tx_load_data[0]~input_o\ : std_logic;
SIGNAL \tx_buf[0]~36_combout\ : std_logic;
SIGNAL \tx_buf[0]~39_combout\ : std_logic;
SIGNAL \tx_buf[7]~0_combout\ : std_logic;
SIGNAL \bit_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \bit_cnt[5]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[10]~feeder_combout\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \process_1~9_combout\ : std_logic;
SIGNAL \tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[0]~38_combout\ : std_logic;
SIGNAL \tx_buf[0]~37_combout\ : std_logic;
SIGNAL \tx_buf[1]~31_combout\ : std_logic;
SIGNAL \tx_buf[1]~34_combout\ : std_logic;
SIGNAL \tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[1]~33_combout\ : std_logic;
SIGNAL \tx_buf[1]~32_combout\ : std_logic;
SIGNAL \tx_buf[2]~29_combout\ : std_logic;
SIGNAL \tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[2]~28_combout\ : std_logic;
SIGNAL \tx_buf[2]~27_combout\ : std_logic;
SIGNAL \tx_buf[3]~24_combout\ : std_logic;
SIGNAL \tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[3]~23_combout\ : std_logic;
SIGNAL \tx_buf[3]~22_combout\ : std_logic;
SIGNAL \tx_buf[4]~19_combout\ : std_logic;
SIGNAL \tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[4]~18_combout\ : std_logic;
SIGNAL \tx_buf[4]~17_combout\ : std_logic;
SIGNAL \tx_buf[5]~14_combout\ : std_logic;
SIGNAL \tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[5]~13_combout\ : std_logic;
SIGNAL \tx_buf[5]~12_combout\ : std_logic;
SIGNAL \tx_buf[6]~6_combout\ : std_logic;
SIGNAL \tx_buf[6]~9_combout\ : std_logic;
SIGNAL \tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[6]~8_combout\ : std_logic;
SIGNAL \tx_buf[6]~7_combout\ : std_logic;
SIGNAL \tx_buf[7]~4_combout\ : std_logic;
SIGNAL \tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[7]~3_combout\ : std_logic;
SIGNAL \tx_buf[7]~2_combout\ : std_logic;
SIGNAL \st_load_en~input_o\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \st_load_rrdy~input_o\ : std_logic;
SIGNAL \rx_req~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
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
SIGNAL \st_load_roe~input_o\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \roe~1_combout\ : std_logic;
SIGNAL \roe~6_combout\ : std_logic;
SIGNAL \roe~7_combout\ : std_logic;
SIGNAL \roe~3_combout\ : std_logic;
SIGNAL \roe~0_combout\ : std_logic;
SIGNAL \roe~reg0_emulated_q\ : std_logic;
SIGNAL \roe~2_combout\ : std_logic;
SIGNAL \miso~1_combout\ : std_logic;
SIGNAL \st_load_trdy~input_o\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \trdy~8_combout\ : std_logic;
SIGNAL \trdy~1_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \trdy~7_combout\ : std_logic;
SIGNAL \trdy~3_combout\ : std_logic;
SIGNAL \trdy~0_combout\ : std_logic;
SIGNAL \trdy~reg0_emulated_q\ : std_logic;
SIGNAL \trdy~2_combout\ : std_logic;
SIGNAL \miso~2_combout\ : std_logic;
SIGNAL \miso~3_combout\ : std_logic;
SIGNAL \miso~4_combout\ : std_logic;
SIGNAL \miso~5_combout\ : std_logic;
SIGNAL \miso~6_combout\ : std_logic;
SIGNAL \miso~reg0_q\ : std_logic;
SIGNAL \miso~enfeeder_combout\ : std_logic;
SIGNAL \miso~en_q\ : std_logic;
SIGNAL \rx_buf[0]~0_combout\ : std_logic;
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
SIGNAL rx_buf : std_logic_vector(7 DOWNTO 0);
SIGNAL bit_cnt : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_tx_buf[7]~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_roe~0_combout\ : std_logic;
SIGNAL \ALT_INV_rrdy~0_combout\ : std_logic;
SIGNAL \ALT_INV_sclk~input_o\ : std_logic;
SIGNAL \ALT_INV_ss_n~input_o\ : std_logic;
SIGNAL \ALT_INV_trdy~0_combout\ : std_logic;

BEGIN

ww_sclk <= sclk;
ww_reset_n <= reset_n;
ww_ss_n <= ss_n;
ww_mosi <= mosi;
ww_rx_req <= rx_req;
ww_st_load_en <= st_load_en;
ww_st_load_trdy <= st_load_trdy;
ww_st_load_rrdy <= st_load_rrdy;
ww_st_load_roe <= st_load_roe;
ww_tx_load_en <= tx_load_en;
ww_tx_load_data <= tx_load_data;
trdy <= ww_trdy;
rrdy <= ww_rrdy;
roe <= ww_roe;
rx_data <= ww_rx_data;
busy <= ww_busy;
miso <= ww_miso;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\tx_buf[0]~43clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tx_buf[0]~43_combout\);

\process_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_1~0_combout\);
\ALT_INV_tx_buf[7]~0_combout\ <= NOT \tx_buf[7]~0_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_roe~0_combout\ <= NOT \roe~0_combout\;
\ALT_INV_rrdy~0_combout\ <= NOT \rrdy~0_combout\;
\ALT_INV_sclk~input_o\ <= NOT \sclk~input_o\;
\ALT_INV_ss_n~input_o\ <= NOT \ss_n~input_o\;
\ALT_INV_trdy~0_combout\ <= NOT \trdy~0_combout\;

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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N9
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: LCCOMB_X21_Y2_N10
\bit_cnt[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \bit_cnt[0]~feeder_combout\);

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

-- Location: IOIBUF_X21_Y0_N29
\reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: LCCOMB_X21_Y2_N18
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\ss_n~input_o\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ss_n~input_o\,
	datad => \reset_n~input_o\,
	combout => \process_0~0_combout\);

-- Location: FF_X21_Y2_N11
\bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[0]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(0));

-- Location: LCCOMB_X21_Y2_N16
\bit_cnt[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[1]~0_combout\ = !bit_cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(0),
	combout => \bit_cnt[1]~0_combout\);

-- Location: FF_X21_Y2_N17
\bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[1]~0_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(1));

-- Location: FF_X21_Y2_N13
\bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(1),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(2));

-- Location: LCCOMB_X21_Y1_N26
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

-- Location: FF_X21_Y1_N27
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

-- Location: IOIBUF_X26_Y0_N15
\tx_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_en,
	o => \tx_load_en~input_o\);

-- Location: LCCOMB_X22_Y1_N0
\tx_buf[0]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~43_combout\ = (\ss_n~input_o\ & (\tx_load_en~input_o\ & \reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ss_n~input_o\,
	datac => \tx_load_en~input_o\,
	datad => \reset_n~input_o\,
	combout => \tx_buf[0]~43_combout\);

-- Location: IOIBUF_X23_Y0_N15
\tx_load_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(7),
	o => \tx_load_data[7]~input_o\);

-- Location: CLKCTRL_G16
\tx_buf[0]~43clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tx_buf[0]~43clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tx_buf[0]~43clkctrl_outclk\);

-- Location: LCCOMB_X23_Y1_N0
\tx_buf[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~1_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_load_data[7]~input_o\)) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_buf[7]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[7]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[7]~1_combout\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[7]~1_combout\);

-- Location: IOIBUF_X23_Y0_N8
\tx_load_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(6),
	o => \tx_load_data[6]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\tx_load_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(5),
	o => \tx_load_data[5]~input_o\);

-- Location: LCCOMB_X21_Y1_N18
\tx_buf[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[5]~11_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_load_data[5]~input_o\)) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_buf[5]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[5]~input_o\,
	datab => \tx_buf[5]~11_combout\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[5]~11_combout\);

-- Location: IOIBUF_X23_Y29_N8
\tx_load_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(4),
	o => \tx_load_data[4]~input_o\);

-- Location: LCCOMB_X23_Y1_N12
\tx_buf[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[4]~16_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_load_data[4]~input_o\)) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_buf[4]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[4]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[4]~16_combout\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[4]~16_combout\);

-- Location: IOIBUF_X23_Y0_N22
\tx_load_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(3),
	o => \tx_load_data[3]~input_o\);

-- Location: LCCOMB_X23_Y1_N18
\tx_buf[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[3]~21_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_load_data[3]~input_o\))) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_buf[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[3]~21_combout\,
	datab => \tx_load_data[3]~input_o\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[3]~21_combout\);

-- Location: IOIBUF_X23_Y0_N29
\tx_load_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(2),
	o => \tx_load_data[2]~input_o\);

-- Location: LCCOMB_X23_Y1_N16
\tx_buf[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[2]~26_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_load_data[2]~input_o\)) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_buf[2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[2]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[2]~26_combout\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[2]~26_combout\);

-- Location: IOIBUF_X23_Y0_N1
\tx_load_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(1),
	o => \tx_load_data[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\tx_load_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(0),
	o => \tx_load_data[0]~input_o\);

-- Location: LCCOMB_X21_Y1_N4
\tx_buf[0]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~36_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_load_data[0]~input_o\)) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_buf[0]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[0]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[0]~36_combout\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[0]~36_combout\);

-- Location: LCCOMB_X22_Y1_N4
\tx_buf[0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~39_combout\ = \tx_buf[0]~36_combout\ $ (\tx_buf[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[0]~36_combout\,
	datad => \tx_buf[7]~2_combout\,
	combout => \tx_buf[0]~39_combout\);

-- Location: LCCOMB_X22_Y1_N20
\tx_buf[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~0_combout\ = (\tx_buf[0]~43_combout\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~43_combout\,
	combout => \tx_buf[7]~0_combout\);

-- Location: LCCOMB_X21_Y2_N24
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

-- Location: FF_X21_Y2_N25
\bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[3]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(3));

-- Location: FF_X21_Y2_N21
\bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(3),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(4));

-- Location: LCCOMB_X21_Y2_N12
\process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (!bit_cnt(1) & (!bit_cnt(3) & (!bit_cnt(2) & !bit_cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(1),
	datab => bit_cnt(3),
	datac => bit_cnt(2),
	datad => bit_cnt(4),
	combout => \process_1~8_combout\);

-- Location: LCCOMB_X20_Y1_N28
\bit_cnt[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[5]~feeder_combout\ = bit_cnt(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(4),
	combout => \bit_cnt[5]~feeder_combout\);

-- Location: FF_X20_Y1_N29
\bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[5]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(5));

-- Location: LCCOMB_X22_Y2_N30
\bit_cnt[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[6]~feeder_combout\ = bit_cnt(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_cnt(5),
	combout => \bit_cnt[6]~feeder_combout\);

-- Location: FF_X22_Y2_N31
\bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[6]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(6));

-- Location: FF_X22_Y2_N13
\bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(6),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(7));

-- Location: FF_X21_Y2_N27
\bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(7),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(8));

-- Location: FF_X21_Y2_N19
\bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(8),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(9));

-- Location: LCCOMB_X22_Y2_N22
\bit_cnt[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[10]~feeder_combout\ = bit_cnt(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(9),
	combout => \bit_cnt[10]~feeder_combout\);

-- Location: FF_X22_Y2_N23
\bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[10]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(10));

-- Location: FF_X21_Y2_N15
\bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(10),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(11));

-- Location: FF_X21_Y2_N9
\bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(11),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(12));

-- Location: FF_X21_Y2_N31
\bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(12),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(13));

-- Location: FF_X21_Y2_N23
\bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(13),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(14));

-- Location: FF_X21_Y2_N5
\bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(14),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(15));

-- Location: FF_X21_Y2_N7
\bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(15),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(16));

-- Location: LCCOMB_X21_Y1_N22
\process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (!bit_cnt(6) & (!bit_cnt(5) & (!bit_cnt(7) & !bit_cnt(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(6),
	datab => bit_cnt(5),
	datac => bit_cnt(7),
	datad => bit_cnt(16),
	combout => \process_1~7_combout\);

-- Location: LCCOMB_X22_Y1_N22
\process_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~9_combout\ = (\process_1~8_combout\ & (bit_cnt(0) & (!\rd_add~q\ & \process_1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~8_combout\,
	datab => bit_cnt(0),
	datac => \rd_add~q\,
	datad => \process_1~7_combout\,
	combout => \process_1~9_combout\);

-- Location: FF_X22_Y1_N5
\tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[0]~39_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[0]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N24
\tx_buf[0]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~38_combout\ = \tx_buf[0]~36_combout\ $ (\tx_buf[0]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[0]~36_combout\,
	datad => \tx_buf[0]~_emulated_q\,
	combout => \tx_buf[0]~38_combout\);

-- Location: LCCOMB_X21_Y1_N30
\tx_buf[0]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~37_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[0]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[0]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[0]~input_o\,
	datab => \tx_buf[0]~43_combout\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~38_combout\,
	combout => \tx_buf[0]~37_combout\);

-- Location: LCCOMB_X23_Y1_N22
\tx_buf[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~31_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_load_data[1]~input_o\)) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_buf[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[1]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[1]~31_combout\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[1]~31_combout\);

-- Location: LCCOMB_X22_Y1_N18
\tx_buf[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~34_combout\ = \tx_buf[0]~37_combout\ $ (\tx_buf[1]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[0]~37_combout\,
	datad => \tx_buf[1]~31_combout\,
	combout => \tx_buf[1]~34_combout\);

-- Location: FF_X22_Y1_N19
\tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[1]~34_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[1]~_emulated_q\);

-- Location: LCCOMB_X22_Y1_N24
\tx_buf[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~33_combout\ = \tx_buf[1]~_emulated_q\ $ (\tx_buf[1]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[1]~_emulated_q\,
	datad => \tx_buf[1]~31_combout\,
	combout => \tx_buf[1]~33_combout\);

-- Location: LCCOMB_X22_Y1_N14
\tx_buf[1]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~32_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[1]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[1]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[1]~input_o\,
	datac => \tx_buf[0]~43_combout\,
	datad => \tx_buf[1]~33_combout\,
	combout => \tx_buf[1]~32_combout\);

-- Location: LCCOMB_X22_Y1_N28
\tx_buf[2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[2]~29_combout\ = \tx_buf[2]~26_combout\ $ (\tx_buf[1]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[2]~26_combout\,
	datad => \tx_buf[1]~32_combout\,
	combout => \tx_buf[2]~29_combout\);

-- Location: FF_X22_Y1_N29
\tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[2]~29_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[2]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N2
\tx_buf[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[2]~28_combout\ = \tx_buf[2]~_emulated_q\ $ (\tx_buf[2]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[2]~_emulated_q\,
	datad => \tx_buf[2]~26_combout\,
	combout => \tx_buf[2]~28_combout\);

-- Location: LCCOMB_X22_Y1_N26
\tx_buf[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[2]~27_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[2]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[2]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[2]~input_o\,
	datac => \tx_buf[0]~43_combout\,
	datad => \tx_buf[2]~28_combout\,
	combout => \tx_buf[2]~27_combout\);

-- Location: LCCOMB_X22_Y1_N2
\tx_buf[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[3]~24_combout\ = \tx_buf[3]~21_combout\ $ (\tx_buf[2]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[3]~21_combout\,
	datad => \tx_buf[2]~27_combout\,
	combout => \tx_buf[3]~24_combout\);

-- Location: FF_X22_Y1_N3
\tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[3]~24_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[3]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N6
\tx_buf[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[3]~23_combout\ = \tx_buf[3]~_emulated_q\ $ (\tx_buf[3]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[3]~_emulated_q\,
	datad => \tx_buf[3]~21_combout\,
	combout => \tx_buf[3]~23_combout\);

-- Location: LCCOMB_X23_Y1_N8
\tx_buf[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[3]~22_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[3]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[3]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[0]~43_combout\,
	datab => \tx_load_data[3]~input_o\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[3]~23_combout\,
	combout => \tx_buf[3]~22_combout\);

-- Location: LCCOMB_X22_Y1_N6
\tx_buf[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[4]~19_combout\ = \tx_buf[4]~16_combout\ $ (\tx_buf[3]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[4]~16_combout\,
	datad => \tx_buf[3]~22_combout\,
	combout => \tx_buf[4]~19_combout\);

-- Location: FF_X22_Y1_N7
\tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[4]~19_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[4]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N4
\tx_buf[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[4]~18_combout\ = \tx_buf[4]~_emulated_q\ $ (\tx_buf[4]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[4]~_emulated_q\,
	datad => \tx_buf[4]~16_combout\,
	combout => \tx_buf[4]~18_combout\);

-- Location: LCCOMB_X22_Y1_N8
\tx_buf[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[4]~17_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[4]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[4]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[4]~input_o\,
	datac => \tx_buf[0]~43_combout\,
	datad => \tx_buf[4]~18_combout\,
	combout => \tx_buf[4]~17_combout\);

-- Location: LCCOMB_X22_Y1_N12
\tx_buf[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[5]~14_combout\ = \tx_buf[5]~11_combout\ $ (\tx_buf[4]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[5]~11_combout\,
	datad => \tx_buf[4]~17_combout\,
	combout => \tx_buf[5]~14_combout\);

-- Location: FF_X22_Y1_N13
\tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[5]~14_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[5]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N14
\tx_buf[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[5]~13_combout\ = \tx_buf[5]~_emulated_q\ $ (\tx_buf[5]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[5]~_emulated_q\,
	datad => \tx_buf[5]~11_combout\,
	combout => \tx_buf[5]~13_combout\);

-- Location: LCCOMB_X22_Y1_N30
\tx_buf[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[5]~12_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[5]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[5]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[5]~input_o\,
	datac => \tx_buf[0]~43_combout\,
	datad => \tx_buf[5]~13_combout\,
	combout => \tx_buf[5]~12_combout\);

-- Location: LCCOMB_X23_Y1_N30
\tx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~6_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_load_data[6]~input_o\))) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_buf[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[6]~6_combout\,
	datab => \tx_load_data[6]~input_o\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[6]~6_combout\);

-- Location: LCCOMB_X22_Y1_N10
\tx_buf[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~9_combout\ = \tx_buf[5]~12_combout\ $ (\tx_buf[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[5]~12_combout\,
	datac => \tx_buf[6]~6_combout\,
	combout => \tx_buf[6]~9_combout\);

-- Location: FF_X22_Y1_N11
\tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[6]~9_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[6]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N20
\tx_buf[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~8_combout\ = \tx_buf[6]~_emulated_q\ $ (\tx_buf[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[6]~_emulated_q\,
	datac => \tx_buf[6]~6_combout\,
	combout => \tx_buf[6]~8_combout\);

-- Location: LCCOMB_X23_Y1_N14
\tx_buf[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~7_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[6]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[0]~43_combout\,
	datab => \tx_load_data[6]~input_o\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[6]~8_combout\,
	combout => \tx_buf[6]~7_combout\);

-- Location: LCCOMB_X22_Y1_N16
\tx_buf[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~4_combout\ = \tx_buf[7]~1_combout\ $ (\tx_buf[6]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[7]~1_combout\,
	datad => \tx_buf[6]~7_combout\,
	combout => \tx_buf[7]~4_combout\);

-- Location: FF_X22_Y1_N17
\tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[7]~4_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[7]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N28
\tx_buf[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~3_combout\ = \tx_buf[7]~_emulated_q\ $ (\tx_buf[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[7]~_emulated_q\,
	datad => \tx_buf[7]~1_combout\,
	combout => \tx_buf[7]~3_combout\);

-- Location: LCCOMB_X23_Y1_N26
\tx_buf[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~2_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[7]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[7]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[0]~43_combout\,
	datab => \tx_load_data[7]~input_o\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[7]~3_combout\,
	combout => \tx_buf[7]~2_combout\);

-- Location: IOIBUF_X19_Y0_N29
\st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_en,
	o => \st_load_en~input_o\);

-- Location: LCCOMB_X20_Y1_N12
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

-- Location: IOIBUF_X16_Y0_N15
\st_load_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_rrdy,
	o => \st_load_rrdy~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_req,
	o => \rx_req~input_o\);

-- Location: LCCOMB_X20_Y1_N10
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\ss_n~input_o\ & \rx_req~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ss_n~input_o\,
	datad => \rx_req~input_o\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X20_Y1_N18
\process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = ((\process_1~0_combout\) # ((!\st_load_rrdy~input_o\ & \process_1~4_combout\))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st_load_rrdy~input_o\,
	datab => \process_1~4_combout\,
	datac => \reset_n~input_o\,
	datad => \process_1~0_combout\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X20_Y1_N20
\rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~1_combout\ = (!\process_1~5_combout\ & ((\process_1~4_combout\) # (\rrdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~4_combout\,
	datac => \process_1~5_combout\,
	datad => \rrdy~1_combout\,
	combout => \rrdy~1_combout\);

-- Location: LCCOMB_X27_Y2_N20
\wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wr_add~0_combout\ = (bit_cnt(1) & (\mosi~input_o\)) # (!bit_cnt(1) & ((\wr_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datac => \wr_add~q\,
	datad => bit_cnt(1),
	combout => \wr_add~0_combout\);

-- Location: FF_X27_Y2_N21
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

-- Location: LCCOMB_X20_Y1_N8
\rrdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~7_combout\ = (\rrdy~2_combout\) # ((!\wr_add~q\ & bit_cnt(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_add~q\,
	datac => \rrdy~2_combout\,
	datad => bit_cnt(16),
	combout => \rrdy~7_combout\);

-- Location: LCCOMB_X22_Y2_N12
\process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (\wr_add~q\ & bit_cnt(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datad => bit_cnt(10),
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X20_Y1_N14
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

-- Location: LCCOMB_X20_Y1_N6
\rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~0_combout\ = (\process_1~4_combout\) # (\process_1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_1~4_combout\,
	datad => \process_1~5_combout\,
	combout => \rrdy~0_combout\);

-- Location: FF_X20_Y1_N15
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

-- Location: LCCOMB_X20_Y1_N22
\rrdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~2_combout\ = (!\process_1~5_combout\ & ((\process_1~4_combout\) # (\rrdy~1_combout\ $ (\rrdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rrdy~1_combout\,
	datab => \process_1~4_combout\,
	datac => \rrdy~reg0_emulated_q\,
	datad => \process_1~5_combout\,
	combout => \rrdy~2_combout\);

-- Location: IOIBUF_X26_Y0_N29
\st_load_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_roe,
	o => \st_load_roe~input_o\);

-- Location: LCCOMB_X21_Y1_N8
\process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = ((\process_1~4_combout\ & !\st_load_roe~input_o\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \st_load_roe~input_o\,
	datad => \reset_n~input_o\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X21_Y1_N28
\roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~1_combout\ = (!\process_1~6_combout\ & ((\process_1~4_combout\) # (\roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~6_combout\,
	datab => \process_1~4_combout\,
	datad => \roe~1_combout\,
	combout => \roe~1_combout\);

-- Location: LCCOMB_X21_Y2_N14
\roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~6_combout\ = (\wr_add~q\ & (((!bit_cnt(11))) # (!\mosi~input_o\))) # (!\wr_add~q\ & (((!bit_cnt(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(16),
	datac => bit_cnt(11),
	datad => \wr_add~q\,
	combout => \roe~6_combout\);

-- Location: LCCOMB_X21_Y1_N16
\roe~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~7_combout\ = (\wr_add~q\ & (\roe~6_combout\ & ((bit_cnt(11)) # (!\roe~2_combout\)))) # (!\wr_add~q\ & (((!\roe~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \roe~6_combout\,
	datab => \wr_add~q\,
	datac => \roe~2_combout\,
	datad => bit_cnt(11),
	combout => \roe~7_combout\);

-- Location: LCCOMB_X21_Y1_N12
\roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~3_combout\ = \roe~1_combout\ $ ((((\rrdy~2_combout\ & !\roe~6_combout\)) # (!\roe~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rrdy~2_combout\,
	datab => \roe~1_combout\,
	datac => \roe~6_combout\,
	datad => \roe~7_combout\,
	combout => \roe~3_combout\);

-- Location: LCCOMB_X21_Y1_N10
\roe~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~0_combout\ = (\process_1~4_combout\) # (\process_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datad => \process_1~6_combout\,
	combout => \roe~0_combout\);

-- Location: FF_X21_Y1_N13
\roe~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \roe~3_combout\,
	clrn => \ALT_INV_roe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \roe~reg0_emulated_q\);

-- Location: LCCOMB_X21_Y1_N2
\roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~2_combout\ = (!\process_1~6_combout\ & ((\process_1~4_combout\) # (\roe~1_combout\ $ (\roe~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \roe~1_combout\,
	datac => \process_1~6_combout\,
	datad => \roe~reg0_emulated_q\,
	combout => \roe~2_combout\);

-- Location: LCCOMB_X20_Y1_N26
\miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~1_combout\ = (bit_cnt(9) & (\rrdy~2_combout\)) # (!bit_cnt(9) & ((\roe~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cnt(9),
	datac => \rrdy~2_combout\,
	datad => \roe~2_combout\,
	combout => \miso~1_combout\);

-- Location: IOIBUF_X26_Y0_N22
\st_load_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_trdy,
	o => \st_load_trdy~input_o\);

-- Location: LCCOMB_X21_Y2_N8
\process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = ((\process_1~4_combout\ & !\st_load_trdy~input_o\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \st_load_trdy~input_o\,
	datad => \reset_n~input_o\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X21_Y2_N0
\trdy~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~8_combout\ = (\ss_n~input_o\ & ((\st_load_en~input_o\ & (\st_load_trdy~input_o\)) # (!\st_load_en~input_o\ & ((\tx_load_en~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st_load_en~input_o\,
	datab => \st_load_trdy~input_o\,
	datac => \tx_load_en~input_o\,
	datad => \ss_n~input_o\,
	combout => \trdy~8_combout\);

-- Location: LCCOMB_X21_Y2_N26
\trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~1_combout\ = (!\process_1~2_combout\ & ((\trdy~1_combout\) # (\trdy~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trdy~1_combout\,
	datab => \process_1~2_combout\,
	datad => \trdy~8_combout\,
	combout => \trdy~1_combout\);

-- Location: LCCOMB_X21_Y2_N30
\process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (bit_cnt(9) & \wr_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cnt(9),
	datad => \wr_add~q\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X21_Y2_N6
\trdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~7_combout\ = (!\process_1~1_combout\ & (\trdy~2_combout\ & ((\rd_add~q\) # (!bit_cnt(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~1_combout\,
	datab => \rd_add~q\,
	datac => bit_cnt(16),
	datad => \trdy~2_combout\,
	combout => \trdy~7_combout\);

-- Location: LCCOMB_X21_Y2_N2
\trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~3_combout\ = \trdy~1_combout\ $ (((\trdy~7_combout\) # ((\process_1~1_combout\ & \mosi~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trdy~7_combout\,
	datab => \trdy~1_combout\,
	datac => \process_1~1_combout\,
	datad => \mosi~input_o\,
	combout => \trdy~3_combout\);

-- Location: LCCOMB_X21_Y2_N4
\trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~0_combout\ = (\trdy~8_combout\) # (\process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trdy~8_combout\,
	datab => \process_1~2_combout\,
	combout => \trdy~0_combout\);

-- Location: FF_X21_Y2_N3
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

-- Location: LCCOMB_X21_Y2_N28
\trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~2_combout\ = (!\process_1~2_combout\ & ((\trdy~8_combout\) # (\trdy~1_combout\ $ (\trdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trdy~1_combout\,
	datab => \trdy~8_combout\,
	datac => \process_1~2_combout\,
	datad => \trdy~reg0_emulated_q\,
	combout => \trdy~2_combout\);

-- Location: LCCOMB_X20_Y1_N30
\miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~2_combout\ = (bit_cnt(8) & ((\trdy~2_combout\))) # (!bit_cnt(8) & (\miso~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bit_cnt(8),
	datac => \miso~1_combout\,
	datad => \trdy~2_combout\,
	combout => \miso~2_combout\);

-- Location: LCCOMB_X21_Y1_N20
\miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~3_combout\ = (\rd_add~q\ & ((\miso~2_combout\))) # (!\rd_add~q\ & (\tx_buf[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_add~q\,
	datac => \tx_buf[7]~2_combout\,
	datad => \miso~2_combout\,
	combout => \miso~3_combout\);

-- Location: LCCOMB_X21_Y2_N22
\miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~4_combout\ = (bit_cnt(8) & (!bit_cnt(9) & !bit_cnt(10))) # (!bit_cnt(8) & (bit_cnt(9) $ (bit_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(8),
	datab => bit_cnt(9),
	datad => bit_cnt(10),
	combout => \miso~4_combout\);

-- Location: LCCOMB_X21_Y2_N20
\miso~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~5_combout\ = (bit_cnt(0) & \process_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(0),
	datad => \process_1~8_combout\,
	combout => \miso~5_combout\);

-- Location: LCCOMB_X21_Y1_N0
\miso~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~6_combout\ = (\rd_add~q\ & (\miso~4_combout\)) # (!\rd_add~q\ & (((\process_1~7_combout\ & \miso~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_add~q\,
	datab => \miso~4_combout\,
	datac => \process_1~7_combout\,
	datad => \miso~5_combout\,
	combout => \miso~6_combout\);

-- Location: FF_X21_Y1_N21
\miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \miso~3_combout\,
	ena => \miso~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miso~reg0_q\);

-- Location: LCCOMB_X22_Y2_N28
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

-- Location: FF_X22_Y2_N29
\miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \miso~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \miso~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miso~en_q\);

-- Location: LCCOMB_X20_Y2_N12
\rx_buf[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[0]~0_combout\ = (\wr_add~q\ & (((rx_buf(0))))) # (!\wr_add~q\ & ((bit_cnt(16) & (\mosi~input_o\)) # (!bit_cnt(16) & ((rx_buf(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => \mosi~input_o\,
	datac => rx_buf(0),
	datad => bit_cnt(16),
	combout => \rx_buf[0]~0_combout\);

-- Location: FF_X20_Y2_N13
\rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[0]~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(0));

-- Location: CLKCTRL_G17
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

-- Location: LCCOMB_X20_Y2_N28
\rx_data[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[0]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(0))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[0]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(0),
	datab => \reset_n~input_o\,
	datac => \rx_data[0]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[0]$latch~combout\);

-- Location: LCCOMB_X20_Y2_N6
\rx_buf[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[1]~1_combout\ = (\wr_add~q\ & (((rx_buf(1))))) # (!\wr_add~q\ & ((bit_cnt(15) & ((\mosi~input_o\))) # (!bit_cnt(15) & (rx_buf(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => bit_cnt(15),
	datac => rx_buf(1),
	datad => \mosi~input_o\,
	combout => \rx_buf[1]~1_combout\);

-- Location: FF_X20_Y2_N7
\rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[1]~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(1));

-- Location: LCCOMB_X20_Y2_N22
\rx_data[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[1]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(1))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[1]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(1),
	datab => \reset_n~input_o\,
	datac => \rx_data[1]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[1]$latch~combout\);

-- Location: LCCOMB_X20_Y2_N16
\rx_buf[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[2]~2_combout\ = (\wr_add~q\ & (((rx_buf(2))))) # (!\wr_add~q\ & ((bit_cnt(14) & (\mosi~input_o\)) # (!bit_cnt(14) & ((rx_buf(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => \mosi~input_o\,
	datac => rx_buf(2),
	datad => bit_cnt(14),
	combout => \rx_buf[2]~2_combout\);

-- Location: FF_X20_Y2_N17
\rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[2]~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(2));

-- Location: LCCOMB_X20_Y2_N24
\rx_data[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[2]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(2))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[2]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(2),
	datab => \rx_data[2]$latch~combout\,
	datac => \reset_n~input_o\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[2]$latch~combout\);

-- Location: LCCOMB_X20_Y2_N18
\rx_buf[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[3]~3_combout\ = (\wr_add~q\ & (((rx_buf(3))))) # (!\wr_add~q\ & ((bit_cnt(13) & ((\mosi~input_o\))) # (!bit_cnt(13) & (rx_buf(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => bit_cnt(13),
	datac => rx_buf(3),
	datad => \mosi~input_o\,
	combout => \rx_buf[3]~3_combout\);

-- Location: FF_X20_Y2_N19
\rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[3]~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(3));

-- Location: LCCOMB_X20_Y2_N30
\rx_data[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[3]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(3)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[3]$latch~combout\,
	datab => rx_buf(3),
	datac => \reset_n~input_o\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[3]$latch~combout\);

-- Location: LCCOMB_X20_Y2_N20
\rx_buf[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[4]~4_combout\ = (\wr_add~q\ & (((rx_buf(4))))) # (!\wr_add~q\ & ((bit_cnt(12) & ((\mosi~input_o\))) # (!bit_cnt(12) & (rx_buf(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => bit_cnt(12),
	datac => rx_buf(4),
	datad => \mosi~input_o\,
	combout => \rx_buf[4]~4_combout\);

-- Location: FF_X20_Y2_N21
\rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[4]~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(4));

-- Location: LCCOMB_X20_Y2_N4
\rx_data[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[4]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(4))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(4),
	datab => \reset_n~input_o\,
	datac => \rx_data[4]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[4]$latch~combout\);

-- Location: LCCOMB_X20_Y2_N26
\rx_buf[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[5]~5_combout\ = (\wr_add~q\ & (((rx_buf(5))))) # (!\wr_add~q\ & ((bit_cnt(11) & (\mosi~input_o\)) # (!bit_cnt(11) & ((rx_buf(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => \mosi~input_o\,
	datac => rx_buf(5),
	datad => bit_cnt(11),
	combout => \rx_buf[5]~5_combout\);

-- Location: FF_X20_Y2_N27
\rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[5]~5_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(5));

-- Location: LCCOMB_X20_Y2_N14
\rx_data[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[5]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(5))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[5]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(5),
	datab => \reset_n~input_o\,
	datac => \rx_data[5]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[5]$latch~combout\);

-- Location: LCCOMB_X20_Y2_N8
\rx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[6]~6_combout\ = (\wr_add~q\ & (((rx_buf(6))))) # (!\wr_add~q\ & ((bit_cnt(10) & (\mosi~input_o\)) # (!bit_cnt(10) & ((rx_buf(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => \mosi~input_o\,
	datac => rx_buf(6),
	datad => bit_cnt(10),
	combout => \rx_buf[6]~6_combout\);

-- Location: FF_X20_Y2_N9
\rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[6]~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(6));

-- Location: LCCOMB_X20_Y2_N0
\rx_data[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[6]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(6))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[6]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(6),
	datab => \reset_n~input_o\,
	datac => \rx_data[6]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[6]$latch~combout\);

-- Location: LCCOMB_X20_Y2_N10
\rx_buf[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[7]~7_combout\ = (\wr_add~q\ & (((rx_buf(7))))) # (!\wr_add~q\ & ((bit_cnt(9) & (\mosi~input_o\)) # (!bit_cnt(9) & ((rx_buf(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => \mosi~input_o\,
	datac => rx_buf(7),
	datad => bit_cnt(9),
	combout => \rx_buf[7]~7_combout\);

-- Location: FF_X20_Y2_N11
\rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[7]~7_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(7));

-- Location: LCCOMB_X20_Y2_N2
\rx_data[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[7]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(7))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(7),
	datab => \rx_data[7]$latch~combout\,
	datac => \reset_n~input_o\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[7]$latch~combout\);

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

ww_busy <= \busy~output_o\;

ww_miso <= \miso~output_o\;
END structure;


