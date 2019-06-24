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

-- DATE "05/14/2019 12:52:52"

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

ENTITY 	I2S IS
    PORT (
	clk : IN std_logic;
	bclk : IN std_logic;
	lrclk : IN std_logic;
	adc_data : IN std_logic;
	valid : BUFFER std_logic;
	ready : BUFFER std_logic;
	l_rx_data : BUFFER std_logic_vector(23 DOWNTO 0);
	r_rx_data : BUFFER std_logic_vector(23 DOWNTO 0)
	);
END I2S;

-- Design Ports Information
-- valid	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[3]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[5]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[6]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[8]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[9]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[10]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[11]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[12]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[14]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[15]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[16]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[17]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[18]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[19]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[20]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[21]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[22]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_rx_data[23]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[4]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[8]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[9]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[10]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[11]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[12]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[13]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[14]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[15]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[16]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[17]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[18]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[19]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[20]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[21]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[22]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_rx_data[23]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lrclk	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bclk	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF I2S IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_bclk : std_logic;
SIGNAL ww_lrclk : std_logic;
SIGNAL ww_adc_data : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL ww_ready : std_logic;
SIGNAL ww_l_rx_data : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_r_rx_data : std_logic_vector(23 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \l_rx_data[0]~output_o\ : std_logic;
SIGNAL \l_rx_data[1]~output_o\ : std_logic;
SIGNAL \l_rx_data[2]~output_o\ : std_logic;
SIGNAL \l_rx_data[3]~output_o\ : std_logic;
SIGNAL \l_rx_data[4]~output_o\ : std_logic;
SIGNAL \l_rx_data[5]~output_o\ : std_logic;
SIGNAL \l_rx_data[6]~output_o\ : std_logic;
SIGNAL \l_rx_data[7]~output_o\ : std_logic;
SIGNAL \l_rx_data[8]~output_o\ : std_logic;
SIGNAL \l_rx_data[9]~output_o\ : std_logic;
SIGNAL \l_rx_data[10]~output_o\ : std_logic;
SIGNAL \l_rx_data[11]~output_o\ : std_logic;
SIGNAL \l_rx_data[12]~output_o\ : std_logic;
SIGNAL \l_rx_data[13]~output_o\ : std_logic;
SIGNAL \l_rx_data[14]~output_o\ : std_logic;
SIGNAL \l_rx_data[15]~output_o\ : std_logic;
SIGNAL \l_rx_data[16]~output_o\ : std_logic;
SIGNAL \l_rx_data[17]~output_o\ : std_logic;
SIGNAL \l_rx_data[18]~output_o\ : std_logic;
SIGNAL \l_rx_data[19]~output_o\ : std_logic;
SIGNAL \l_rx_data[20]~output_o\ : std_logic;
SIGNAL \l_rx_data[21]~output_o\ : std_logic;
SIGNAL \l_rx_data[22]~output_o\ : std_logic;
SIGNAL \l_rx_data[23]~output_o\ : std_logic;
SIGNAL \r_rx_data[0]~output_o\ : std_logic;
SIGNAL \r_rx_data[1]~output_o\ : std_logic;
SIGNAL \r_rx_data[2]~output_o\ : std_logic;
SIGNAL \r_rx_data[3]~output_o\ : std_logic;
SIGNAL \r_rx_data[4]~output_o\ : std_logic;
SIGNAL \r_rx_data[5]~output_o\ : std_logic;
SIGNAL \r_rx_data[6]~output_o\ : std_logic;
SIGNAL \r_rx_data[7]~output_o\ : std_logic;
SIGNAL \r_rx_data[8]~output_o\ : std_logic;
SIGNAL \r_rx_data[9]~output_o\ : std_logic;
SIGNAL \r_rx_data[10]~output_o\ : std_logic;
SIGNAL \r_rx_data[11]~output_o\ : std_logic;
SIGNAL \r_rx_data[12]~output_o\ : std_logic;
SIGNAL \r_rx_data[13]~output_o\ : std_logic;
SIGNAL \r_rx_data[14]~output_o\ : std_logic;
SIGNAL \r_rx_data[15]~output_o\ : std_logic;
SIGNAL \r_rx_data[16]~output_o\ : std_logic;
SIGNAL \r_rx_data[17]~output_o\ : std_logic;
SIGNAL \r_rx_data[18]~output_o\ : std_logic;
SIGNAL \r_rx_data[19]~output_o\ : std_logic;
SIGNAL \r_rx_data[20]~output_o\ : std_logic;
SIGNAL \r_rx_data[21]~output_o\ : std_logic;
SIGNAL \r_rx_data[22]~output_o\ : std_logic;
SIGNAL \r_rx_data[23]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \bclk~input_o\ : std_logic;
SIGNAL \zbclk~feeder_combout\ : std_logic;
SIGNAL \zbclk~q\ : std_logic;
SIGNAL \zzbclk~feeder_combout\ : std_logic;
SIGNAL \zzbclk~q\ : std_logic;
SIGNAL \zzzbclk~feeder_combout\ : std_logic;
SIGNAL \zzzbclk~q\ : std_logic;
SIGNAL \pos_edge~0_combout\ : std_logic;
SIGNAL \pos_edge~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \lrclk~input_o\ : std_logic;
SIGNAL \zlrclk~q\ : std_logic;
SIGNAL \zzlrclk~feeder_combout\ : std_logic;
SIGNAL \zzlrclk~q\ : std_logic;
SIGNAL \zzzlrclk~q\ : std_logic;
SIGNAL \detect_lr_edge~0_combout\ : std_logic;
SIGNAL \lr_edge~q\ : std_logic;
SIGNAL \cnt[0]~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \cnt[3]~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \cnt[0]~1_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \cnt[4]~3_combout\ : std_logic;
SIGNAL \neg_edge~0_combout\ : std_logic;
SIGNAL \neg_edge~q\ : std_logic;
SIGNAL \detect_sample~0_combout\ : std_logic;
SIGNAL \detect_sample~1_combout\ : std_logic;
SIGNAL \valid~reg0_q\ : std_logic;
SIGNAL \adc_data~input_o\ : std_logic;
SIGNAL \l_get_data~0_combout\ : std_logic;
SIGNAL \l_sr_in[1]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[2]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[3]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[4]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[5]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[6]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[7]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[8]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[9]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[10]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[11]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[12]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[13]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[14]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[15]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[16]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[17]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[18]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[19]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[20]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[21]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[22]~feeder_combout\ : std_logic;
SIGNAL \l_sr_in[23]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[0]~feeder_combout\ : std_logic;
SIGNAL \r_get_data~0_combout\ : std_logic;
SIGNAL \r_sr_in[1]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[2]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[3]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[4]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[5]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[7]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[8]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[9]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[10]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[11]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[12]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[13]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[14]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[15]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[16]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[17]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[18]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[19]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[20]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[21]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[22]~feeder_combout\ : std_logic;
SIGNAL \r_sr_in[23]~feeder_combout\ : std_logic;
SIGNAL r_sr_in : std_logic_vector(23 DOWNTO 0);
SIGNAL l_sr_in : std_logic_vector(23 DOWNTO 0);
SIGNAL cnt : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_bclk <= bclk;
ww_lrclk <= lrclk;
ww_adc_data <= adc_data;
valid <= ww_valid;
ready <= ww_ready;
l_rx_data <= ww_l_rx_data;
r_rx_data <= ww_r_rx_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X5_Y0_N23
\valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \valid~reg0_q\,
	devoe => ww_devoe,
	o => \valid~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\ready~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\l_rx_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(0),
	devoe => ww_devoe,
	o => \l_rx_data[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\l_rx_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(1),
	devoe => ww_devoe,
	o => \l_rx_data[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\l_rx_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(2),
	devoe => ww_devoe,
	o => \l_rx_data[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\l_rx_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(3),
	devoe => ww_devoe,
	o => \l_rx_data[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\l_rx_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(4),
	devoe => ww_devoe,
	o => \l_rx_data[4]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\l_rx_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(5),
	devoe => ww_devoe,
	o => \l_rx_data[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\l_rx_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(6),
	devoe => ww_devoe,
	o => \l_rx_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\l_rx_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(7),
	devoe => ww_devoe,
	o => \l_rx_data[7]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\l_rx_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(8),
	devoe => ww_devoe,
	o => \l_rx_data[8]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\l_rx_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(9),
	devoe => ww_devoe,
	o => \l_rx_data[9]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\l_rx_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(10),
	devoe => ww_devoe,
	o => \l_rx_data[10]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\l_rx_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(11),
	devoe => ww_devoe,
	o => \l_rx_data[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\l_rx_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(12),
	devoe => ww_devoe,
	o => \l_rx_data[12]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\l_rx_data[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(13),
	devoe => ww_devoe,
	o => \l_rx_data[13]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\l_rx_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(14),
	devoe => ww_devoe,
	o => \l_rx_data[14]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\l_rx_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(15),
	devoe => ww_devoe,
	o => \l_rx_data[15]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\l_rx_data[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(16),
	devoe => ww_devoe,
	o => \l_rx_data[16]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\l_rx_data[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(17),
	devoe => ww_devoe,
	o => \l_rx_data[17]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\l_rx_data[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(18),
	devoe => ww_devoe,
	o => \l_rx_data[18]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\l_rx_data[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(19),
	devoe => ww_devoe,
	o => \l_rx_data[19]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\l_rx_data[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(20),
	devoe => ww_devoe,
	o => \l_rx_data[20]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\l_rx_data[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(21),
	devoe => ww_devoe,
	o => \l_rx_data[21]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\l_rx_data[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(22),
	devoe => ww_devoe,
	o => \l_rx_data[22]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\l_rx_data[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => l_sr_in(23),
	devoe => ww_devoe,
	o => \l_rx_data[23]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\r_rx_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(0),
	devoe => ww_devoe,
	o => \r_rx_data[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\r_rx_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(1),
	devoe => ww_devoe,
	o => \r_rx_data[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\r_rx_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(2),
	devoe => ww_devoe,
	o => \r_rx_data[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\r_rx_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(3),
	devoe => ww_devoe,
	o => \r_rx_data[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\r_rx_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(4),
	devoe => ww_devoe,
	o => \r_rx_data[4]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\r_rx_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(5),
	devoe => ww_devoe,
	o => \r_rx_data[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\r_rx_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(6),
	devoe => ww_devoe,
	o => \r_rx_data[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\r_rx_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(7),
	devoe => ww_devoe,
	o => \r_rx_data[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\r_rx_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(8),
	devoe => ww_devoe,
	o => \r_rx_data[8]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\r_rx_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(9),
	devoe => ww_devoe,
	o => \r_rx_data[9]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\r_rx_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(10),
	devoe => ww_devoe,
	o => \r_rx_data[10]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\r_rx_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(11),
	devoe => ww_devoe,
	o => \r_rx_data[11]~output_o\);

-- Location: IOOBUF_X3_Y0_N30
\r_rx_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(12),
	devoe => ww_devoe,
	o => \r_rx_data[12]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\r_rx_data[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(13),
	devoe => ww_devoe,
	o => \r_rx_data[13]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\r_rx_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(14),
	devoe => ww_devoe,
	o => \r_rx_data[14]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\r_rx_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(15),
	devoe => ww_devoe,
	o => \r_rx_data[15]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\r_rx_data[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(16),
	devoe => ww_devoe,
	o => \r_rx_data[16]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\r_rx_data[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(17),
	devoe => ww_devoe,
	o => \r_rx_data[17]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\r_rx_data[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(18),
	devoe => ww_devoe,
	o => \r_rx_data[18]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\r_rx_data[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(19),
	devoe => ww_devoe,
	o => \r_rx_data[19]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\r_rx_data[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(20),
	devoe => ww_devoe,
	o => \r_rx_data[20]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\r_rx_data[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(21),
	devoe => ww_devoe,
	o => \r_rx_data[21]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\r_rx_data[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(22),
	devoe => ww_devoe,
	o => \r_rx_data[22]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\r_rx_data[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_sr_in(23),
	devoe => ww_devoe,
	o => \r_rx_data[23]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X5_Y0_N29
\bclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bclk,
	o => \bclk~input_o\);

-- Location: LCCOMB_X5_Y5_N18
\zbclk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zbclk~feeder_combout\ = \bclk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bclk~input_o\,
	combout => \zbclk~feeder_combout\);

-- Location: FF_X5_Y5_N19
zbclk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zbclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zbclk~q\);

-- Location: LCCOMB_X5_Y5_N24
\zzbclk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zzbclk~feeder_combout\ = \zbclk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \zbclk~q\,
	combout => \zzbclk~feeder_combout\);

-- Location: FF_X5_Y5_N25
zzbclk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zzbclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zzbclk~q\);

-- Location: LCCOMB_X5_Y5_N22
\zzzbclk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zzzbclk~feeder_combout\ = \zzbclk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \zzbclk~q\,
	combout => \zzzbclk~feeder_combout\);

-- Location: FF_X5_Y5_N23
zzzbclk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zzzbclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zzzbclk~q\);

-- Location: LCCOMB_X2_Y5_N22
\pos_edge~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pos_edge~0_combout\ = (\zzzbclk~q\ & (\pos_edge~q\ & !\zzbclk~q\)) # (!\zzzbclk~q\ & ((\zzbclk~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \zzzbclk~q\,
	datac => \pos_edge~q\,
	datad => \zzbclk~q\,
	combout => \pos_edge~0_combout\);

-- Location: FF_X2_Y5_N23
pos_edge : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pos_edge~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pos_edge~q\);

-- Location: LCCOMB_X2_Y5_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X2_Y5_N30
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\Add0~0_combout\ & (\pos_edge~q\ & ((!\LessThan1~0_combout\) # (!cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \pos_edge~q\,
	datac => cnt(4),
	datad => \LessThan1~0_combout\,
	combout => \Add0~2_combout\);

-- Location: IOIBUF_X14_Y0_N1
\lrclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lrclk,
	o => \lrclk~input_o\);

-- Location: FF_X2_Y5_N7
zlrclk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lrclk~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zlrclk~q\);

-- Location: LCCOMB_X2_Y5_N4
\zzlrclk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zzlrclk~feeder_combout\ = \zlrclk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \zlrclk~q\,
	combout => \zzlrclk~feeder_combout\);

-- Location: FF_X2_Y5_N5
zzlrclk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zzlrclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zzlrclk~q\);

-- Location: FF_X2_Y5_N21
zzzlrclk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \zzlrclk~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zzzlrclk~q\);

-- Location: LCCOMB_X2_Y5_N18
\detect_lr_edge~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \detect_lr_edge~0_combout\ = \zzlrclk~q\ $ (\zzzlrclk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \zzlrclk~q\,
	datad => \zzzlrclk~q\,
	combout => \detect_lr_edge~0_combout\);

-- Location: FF_X2_Y5_N19
lr_edge : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \detect_lr_edge~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_edge~q\);

-- Location: LCCOMB_X2_Y5_N0
\cnt[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[0]~0_combout\ = (\lr_edge~q\) # ((\pos_edge~q\ & ((!\LessThan1~0_combout\) # (!cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pos_edge~q\,
	datab => \lr_edge~q\,
	datac => cnt(4),
	datad => \LessThan1~0_combout\,
	combout => \cnt[0]~0_combout\);

-- Location: FF_X2_Y5_N31
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X2_Y5_N8
\Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (cnt(1) & (!\Add0~1\)) # (!cnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~4\ = CARRY((!\Add0~1\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X2_Y5_N26
\Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\pos_edge~q\ & (\Add0~3_combout\ & ((!\LessThan1~0_combout\) # (!cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => \pos_edge~q\,
	datac => \Add0~3_combout\,
	datad => \LessThan1~0_combout\,
	combout => \Add0~5_combout\);

-- Location: FF_X2_Y5_N27
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~5_combout\,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X2_Y5_N10
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cnt(2) & (\Add0~4\ $ (GND))) # (!cnt(2) & (!\Add0~4\ & VCC))
-- \Add0~7\ = CARRY((cnt(2) & !\Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X2_Y5_N24
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\pos_edge~q\ & (\Add0~6_combout\ & ((!cnt(4)) # (!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pos_edge~q\,
	datab => \LessThan1~0_combout\,
	datac => cnt(4),
	datad => \Add0~6_combout\,
	combout => \Add0~8_combout\);

-- Location: FF_X2_Y5_N25
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X2_Y5_N12
\Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (cnt(3) & (!\Add0~7\)) # (!cnt(3) & ((\Add0~7\) # (GND)))
-- \Add0~10\ = CARRY((!\Add0~7\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X2_Y5_N2
\cnt[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[3]~2_combout\ = (\cnt[0]~1_combout\ & (!\cnt[0]~0_combout\ & (cnt(3)))) # (!\cnt[0]~1_combout\ & ((\Add0~9_combout\) # ((!\cnt[0]~0_combout\ & cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~1_combout\,
	datab => \cnt[0]~0_combout\,
	datac => cnt(3),
	datad => \Add0~9_combout\,
	combout => \cnt[3]~2_combout\);

-- Location: FF_X2_Y5_N3
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X2_Y5_N16
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (cnt(3)) # ((cnt(0) & (cnt(2) & cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(3),
	datac => cnt(2),
	datad => cnt(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X2_Y5_N20
\cnt[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[0]~1_combout\ = ((cnt(4) & \LessThan1~0_combout\)) # (!\pos_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => \pos_edge~q\,
	datad => \LessThan1~0_combout\,
	combout => \cnt[0]~1_combout\);

-- Location: LCCOMB_X2_Y5_N14
\Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = cnt(4) $ (!\Add0~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	cin => \Add0~10\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X2_Y5_N28
\cnt[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[4]~3_combout\ = (\cnt[0]~1_combout\ & (!\cnt[0]~0_combout\ & (cnt(4)))) # (!\cnt[0]~1_combout\ & ((\Add0~11_combout\) # ((!\cnt[0]~0_combout\ & cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~1_combout\,
	datab => \cnt[0]~0_combout\,
	datac => cnt(4),
	datad => \Add0~11_combout\,
	combout => \cnt[4]~3_combout\);

-- Location: FF_X2_Y5_N29
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cnt[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X5_Y5_N6
\neg_edge~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \neg_edge~0_combout\ = (\zzzbclk~q\ & ((!\zzbclk~q\))) # (!\zzzbclk~q\ & (\neg_edge~q\ & \zzbclk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zzzbclk~q\,
	datac => \neg_edge~q\,
	datad => \zzbclk~q\,
	combout => \neg_edge~0_combout\);

-- Location: FF_X5_Y5_N7
neg_edge : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \neg_edge~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \neg_edge~q\);

-- Location: LCCOMB_X5_Y5_N0
\detect_sample~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \detect_sample~0_combout\ = (!cnt(1) & (cnt(0) & (!cnt(2) & \neg_edge~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(0),
	datac => cnt(2),
	datad => \neg_edge~q\,
	combout => \detect_sample~0_combout\);

-- Location: LCCOMB_X5_Y5_N12
\detect_sample~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \detect_sample~1_combout\ = (cnt(4) & (cnt(3) & \detect_sample~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datac => cnt(3),
	datad => \detect_sample~0_combout\,
	combout => \detect_sample~1_combout\);

-- Location: FF_X5_Y5_N13
\valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \detect_sample~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \valid~reg0_q\);

-- Location: IOIBUF_X3_Y0_N1
\adc_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data,
	o => \adc_data~input_o\);

-- Location: LCCOMB_X1_Y5_N20
\l_get_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_get_data~0_combout\ = (!\lrclk~input_o\ & \pos_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lrclk~input_o\,
	datad => \pos_edge~q\,
	combout => \l_get_data~0_combout\);

-- Location: FF_X1_Y5_N21
\l_sr_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \adc_data~input_o\,
	sload => VCC,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(0));

-- Location: LCCOMB_X1_Y5_N30
\l_sr_in[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[1]~feeder_combout\ = l_sr_in(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => l_sr_in(0),
	combout => \l_sr_in[1]~feeder_combout\);

-- Location: FF_X1_Y5_N31
\l_sr_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[1]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(1));

-- Location: LCCOMB_X1_Y5_N16
\l_sr_in[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[2]~feeder_combout\ = l_sr_in(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => l_sr_in(1),
	combout => \l_sr_in[2]~feeder_combout\);

-- Location: FF_X1_Y5_N17
\l_sr_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[2]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(2));

-- Location: LCCOMB_X1_Y7_N16
\l_sr_in[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[3]~feeder_combout\ = l_sr_in(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => l_sr_in(2),
	combout => \l_sr_in[3]~feeder_combout\);

-- Location: FF_X1_Y7_N17
\l_sr_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[3]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(3));

-- Location: LCCOMB_X1_Y7_N18
\l_sr_in[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[4]~feeder_combout\ = l_sr_in(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(3),
	combout => \l_sr_in[4]~feeder_combout\);

-- Location: FF_X1_Y7_N19
\l_sr_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[4]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(4));

-- Location: LCCOMB_X3_Y5_N22
\l_sr_in[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[5]~feeder_combout\ = l_sr_in(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => l_sr_in(4),
	combout => \l_sr_in[5]~feeder_combout\);

-- Location: FF_X3_Y5_N23
\l_sr_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[5]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(5));

-- Location: LCCOMB_X4_Y5_N0
\l_sr_in[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[6]~feeder_combout\ = l_sr_in(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(5),
	combout => \l_sr_in[6]~feeder_combout\);

-- Location: FF_X4_Y5_N1
\l_sr_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[6]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(6));

-- Location: LCCOMB_X4_Y5_N30
\l_sr_in[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[7]~feeder_combout\ = l_sr_in(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(6),
	combout => \l_sr_in[7]~feeder_combout\);

-- Location: FF_X4_Y5_N31
\l_sr_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[7]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(7));

-- Location: LCCOMB_X1_Y7_N0
\l_sr_in[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[8]~feeder_combout\ = l_sr_in(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(7),
	combout => \l_sr_in[8]~feeder_combout\);

-- Location: FF_X1_Y7_N1
\l_sr_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[8]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(8));

-- Location: LCCOMB_X4_Y5_N20
\l_sr_in[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[9]~feeder_combout\ = l_sr_in(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(8),
	combout => \l_sr_in[9]~feeder_combout\);

-- Location: FF_X4_Y5_N21
\l_sr_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[9]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(9));

-- Location: LCCOMB_X4_Y5_N22
\l_sr_in[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[10]~feeder_combout\ = l_sr_in(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(9),
	combout => \l_sr_in[10]~feeder_combout\);

-- Location: FF_X4_Y5_N23
\l_sr_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[10]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(10));

-- Location: LCCOMB_X1_Y5_N14
\l_sr_in[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[11]~feeder_combout\ = l_sr_in(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(10),
	combout => \l_sr_in[11]~feeder_combout\);

-- Location: FF_X1_Y5_N15
\l_sr_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[11]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(11));

-- Location: LCCOMB_X1_Y5_N0
\l_sr_in[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[12]~feeder_combout\ = l_sr_in(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => l_sr_in(11),
	combout => \l_sr_in[12]~feeder_combout\);

-- Location: FF_X1_Y5_N1
\l_sr_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[12]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(12));

-- Location: LCCOMB_X1_Y5_N2
\l_sr_in[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[13]~feeder_combout\ = l_sr_in(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(12),
	combout => \l_sr_in[13]~feeder_combout\);

-- Location: FF_X1_Y5_N3
\l_sr_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[13]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(13));

-- Location: LCCOMB_X1_Y5_N8
\l_sr_in[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[14]~feeder_combout\ = l_sr_in(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(13),
	combout => \l_sr_in[14]~feeder_combout\);

-- Location: FF_X1_Y5_N9
\l_sr_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[14]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(14));

-- Location: LCCOMB_X1_Y5_N18
\l_sr_in[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[15]~feeder_combout\ = l_sr_in(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => l_sr_in(14),
	combout => \l_sr_in[15]~feeder_combout\);

-- Location: FF_X1_Y5_N19
\l_sr_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[15]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(15));

-- Location: LCCOMB_X1_Y5_N24
\l_sr_in[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[16]~feeder_combout\ = l_sr_in(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(15),
	combout => \l_sr_in[16]~feeder_combout\);

-- Location: FF_X1_Y5_N25
\l_sr_in[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[16]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(16));

-- Location: LCCOMB_X1_Y5_N26
\l_sr_in[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[17]~feeder_combout\ = l_sr_in(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(16),
	combout => \l_sr_in[17]~feeder_combout\);

-- Location: FF_X1_Y5_N27
\l_sr_in[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[17]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(17));

-- Location: LCCOMB_X1_Y5_N12
\l_sr_in[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[18]~feeder_combout\ = l_sr_in(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => l_sr_in(17),
	combout => \l_sr_in[18]~feeder_combout\);

-- Location: FF_X1_Y5_N13
\l_sr_in[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[18]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(18));

-- Location: LCCOMB_X1_Y5_N6
\l_sr_in[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[19]~feeder_combout\ = l_sr_in(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(18),
	combout => \l_sr_in[19]~feeder_combout\);

-- Location: FF_X1_Y5_N7
\l_sr_in[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[19]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(19));

-- Location: LCCOMB_X1_Y5_N28
\l_sr_in[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[20]~feeder_combout\ = l_sr_in(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(19),
	combout => \l_sr_in[20]~feeder_combout\);

-- Location: FF_X1_Y5_N29
\l_sr_in[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[20]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(20));

-- Location: LCCOMB_X1_Y5_N10
\l_sr_in[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[21]~feeder_combout\ = l_sr_in(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(20),
	combout => \l_sr_in[21]~feeder_combout\);

-- Location: FF_X1_Y5_N11
\l_sr_in[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[21]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(21));

-- Location: LCCOMB_X1_Y5_N4
\l_sr_in[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[22]~feeder_combout\ = l_sr_in(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_sr_in(21),
	combout => \l_sr_in[22]~feeder_combout\);

-- Location: FF_X1_Y5_N5
\l_sr_in[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[22]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(22));

-- Location: LCCOMB_X1_Y5_N22
\l_sr_in[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_sr_in[23]~feeder_combout\ = l_sr_in(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => l_sr_in(22),
	combout => \l_sr_in[23]~feeder_combout\);

-- Location: FF_X1_Y5_N23
\l_sr_in[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \l_sr_in[23]~feeder_combout\,
	ena => \l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_sr_in(23));

-- Location: LCCOMB_X4_Y5_N12
\r_sr_in[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[0]~feeder_combout\ = \adc_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_data~input_o\,
	combout => \r_sr_in[0]~feeder_combout\);

-- Location: LCCOMB_X3_Y5_N4
\r_get_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_get_data~0_combout\ = (\lrclk~input_o\ & \pos_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lrclk~input_o\,
	datad => \pos_edge~q\,
	combout => \r_get_data~0_combout\);

-- Location: FF_X4_Y5_N13
\r_sr_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[0]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(0));

-- Location: LCCOMB_X4_Y5_N10
\r_sr_in[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[1]~feeder_combout\ = r_sr_in(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(0),
	combout => \r_sr_in[1]~feeder_combout\);

-- Location: FF_X4_Y5_N11
\r_sr_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[1]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(1));

-- Location: LCCOMB_X3_Y5_N18
\r_sr_in[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[2]~feeder_combout\ = r_sr_in(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_sr_in(1),
	combout => \r_sr_in[2]~feeder_combout\);

-- Location: FF_X3_Y5_N19
\r_sr_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[2]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(2));

-- Location: LCCOMB_X3_Y5_N20
\r_sr_in[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[3]~feeder_combout\ = r_sr_in(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(2),
	combout => \r_sr_in[3]~feeder_combout\);

-- Location: FF_X3_Y5_N21
\r_sr_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[3]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(3));

-- Location: LCCOMB_X3_Y5_N16
\r_sr_in[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[4]~feeder_combout\ = r_sr_in(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(3),
	combout => \r_sr_in[4]~feeder_combout\);

-- Location: FF_X3_Y5_N17
\r_sr_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[4]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(4));

-- Location: LCCOMB_X3_Y5_N8
\r_sr_in[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[5]~feeder_combout\ = r_sr_in(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(4),
	combout => \r_sr_in[5]~feeder_combout\);

-- Location: FF_X3_Y5_N9
\r_sr_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[5]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(5));

-- Location: FF_X3_Y5_N5
\r_sr_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => r_sr_in(5),
	sload => VCC,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(6));

-- Location: LCCOMB_X3_Y5_N14
\r_sr_in[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[7]~feeder_combout\ = r_sr_in(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_sr_in(6),
	combout => \r_sr_in[7]~feeder_combout\);

-- Location: FF_X3_Y5_N15
\r_sr_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[7]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(7));

-- Location: LCCOMB_X3_Y5_N28
\r_sr_in[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[8]~feeder_combout\ = r_sr_in(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_sr_in(7),
	combout => \r_sr_in[8]~feeder_combout\);

-- Location: FF_X3_Y5_N29
\r_sr_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[8]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(8));

-- Location: LCCOMB_X3_Y5_N12
\r_sr_in[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[9]~feeder_combout\ = r_sr_in(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(8),
	combout => \r_sr_in[9]~feeder_combout\);

-- Location: FF_X3_Y5_N13
\r_sr_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[9]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(9));

-- Location: LCCOMB_X3_Y5_N2
\r_sr_in[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[10]~feeder_combout\ = r_sr_in(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(9),
	combout => \r_sr_in[10]~feeder_combout\);

-- Location: FF_X3_Y5_N3
\r_sr_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[10]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(10));

-- Location: LCCOMB_X3_Y5_N10
\r_sr_in[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[11]~feeder_combout\ = r_sr_in(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(10),
	combout => \r_sr_in[11]~feeder_combout\);

-- Location: FF_X3_Y5_N11
\r_sr_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[11]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(11));

-- Location: LCCOMB_X3_Y5_N26
\r_sr_in[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[12]~feeder_combout\ = r_sr_in(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(11),
	combout => \r_sr_in[12]~feeder_combout\);

-- Location: FF_X3_Y5_N27
\r_sr_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[12]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(12));

-- Location: LCCOMB_X3_Y5_N0
\r_sr_in[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[13]~feeder_combout\ = r_sr_in(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_sr_in(12),
	combout => \r_sr_in[13]~feeder_combout\);

-- Location: FF_X3_Y5_N1
\r_sr_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[13]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(13));

-- Location: LCCOMB_X3_Y5_N30
\r_sr_in[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[14]~feeder_combout\ = r_sr_in(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(13),
	combout => \r_sr_in[14]~feeder_combout\);

-- Location: FF_X3_Y5_N31
\r_sr_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[14]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(14));

-- Location: LCCOMB_X3_Y5_N6
\r_sr_in[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[15]~feeder_combout\ = r_sr_in(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_sr_in(14),
	combout => \r_sr_in[15]~feeder_combout\);

-- Location: FF_X3_Y5_N7
\r_sr_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[15]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(15));

-- Location: LCCOMB_X3_Y5_N24
\r_sr_in[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[16]~feeder_combout\ = r_sr_in(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(15),
	combout => \r_sr_in[16]~feeder_combout\);

-- Location: FF_X3_Y5_N25
\r_sr_in[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[16]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(16));

-- Location: LCCOMB_X4_Y5_N16
\r_sr_in[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[17]~feeder_combout\ = r_sr_in(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(16),
	combout => \r_sr_in[17]~feeder_combout\);

-- Location: FF_X4_Y5_N17
\r_sr_in[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[17]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(17));

-- Location: LCCOMB_X4_Y5_N2
\r_sr_in[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[18]~feeder_combout\ = r_sr_in(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(17),
	combout => \r_sr_in[18]~feeder_combout\);

-- Location: FF_X4_Y5_N3
\r_sr_in[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[18]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(18));

-- Location: LCCOMB_X4_Y5_N24
\r_sr_in[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[19]~feeder_combout\ = r_sr_in(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(18),
	combout => \r_sr_in[19]~feeder_combout\);

-- Location: FF_X4_Y5_N25
\r_sr_in[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[19]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(19));

-- Location: LCCOMB_X4_Y5_N26
\r_sr_in[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[20]~feeder_combout\ = r_sr_in(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(19),
	combout => \r_sr_in[20]~feeder_combout\);

-- Location: FF_X4_Y5_N27
\r_sr_in[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[20]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(20));

-- Location: LCCOMB_X4_Y5_N28
\r_sr_in[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[21]~feeder_combout\ = r_sr_in(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_sr_in(20),
	combout => \r_sr_in[21]~feeder_combout\);

-- Location: FF_X4_Y5_N29
\r_sr_in[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[21]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(21));

-- Location: LCCOMB_X4_Y5_N6
\r_sr_in[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[22]~feeder_combout\ = r_sr_in(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(21),
	combout => \r_sr_in[22]~feeder_combout\);

-- Location: FF_X4_Y5_N7
\r_sr_in[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[22]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(22));

-- Location: LCCOMB_X4_Y5_N4
\r_sr_in[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sr_in[23]~feeder_combout\ = r_sr_in(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_sr_in(22),
	combout => \r_sr_in[23]~feeder_combout\);

-- Location: FF_X4_Y5_N5
\r_sr_in[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_sr_in[23]~feeder_combout\,
	ena => \r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_sr_in(23));

ww_valid <= \valid~output_o\;

ww_ready <= \ready~output_o\;

ww_l_rx_data(0) <= \l_rx_data[0]~output_o\;

ww_l_rx_data(1) <= \l_rx_data[1]~output_o\;

ww_l_rx_data(2) <= \l_rx_data[2]~output_o\;

ww_l_rx_data(3) <= \l_rx_data[3]~output_o\;

ww_l_rx_data(4) <= \l_rx_data[4]~output_o\;

ww_l_rx_data(5) <= \l_rx_data[5]~output_o\;

ww_l_rx_data(6) <= \l_rx_data[6]~output_o\;

ww_l_rx_data(7) <= \l_rx_data[7]~output_o\;

ww_l_rx_data(8) <= \l_rx_data[8]~output_o\;

ww_l_rx_data(9) <= \l_rx_data[9]~output_o\;

ww_l_rx_data(10) <= \l_rx_data[10]~output_o\;

ww_l_rx_data(11) <= \l_rx_data[11]~output_o\;

ww_l_rx_data(12) <= \l_rx_data[12]~output_o\;

ww_l_rx_data(13) <= \l_rx_data[13]~output_o\;

ww_l_rx_data(14) <= \l_rx_data[14]~output_o\;

ww_l_rx_data(15) <= \l_rx_data[15]~output_o\;

ww_l_rx_data(16) <= \l_rx_data[16]~output_o\;

ww_l_rx_data(17) <= \l_rx_data[17]~output_o\;

ww_l_rx_data(18) <= \l_rx_data[18]~output_o\;

ww_l_rx_data(19) <= \l_rx_data[19]~output_o\;

ww_l_rx_data(20) <= \l_rx_data[20]~output_o\;

ww_l_rx_data(21) <= \l_rx_data[21]~output_o\;

ww_l_rx_data(22) <= \l_rx_data[22]~output_o\;

ww_l_rx_data(23) <= \l_rx_data[23]~output_o\;

ww_r_rx_data(0) <= \r_rx_data[0]~output_o\;

ww_r_rx_data(1) <= \r_rx_data[1]~output_o\;

ww_r_rx_data(2) <= \r_rx_data[2]~output_o\;

ww_r_rx_data(3) <= \r_rx_data[3]~output_o\;

ww_r_rx_data(4) <= \r_rx_data[4]~output_o\;

ww_r_rx_data(5) <= \r_rx_data[5]~output_o\;

ww_r_rx_data(6) <= \r_rx_data[6]~output_o\;

ww_r_rx_data(7) <= \r_rx_data[7]~output_o\;

ww_r_rx_data(8) <= \r_rx_data[8]~output_o\;

ww_r_rx_data(9) <= \r_rx_data[9]~output_o\;

ww_r_rx_data(10) <= \r_rx_data[10]~output_o\;

ww_r_rx_data(11) <= \r_rx_data[11]~output_o\;

ww_r_rx_data(12) <= \r_rx_data[12]~output_o\;

ww_r_rx_data(13) <= \r_rx_data[13]~output_o\;

ww_r_rx_data(14) <= \r_rx_data[14]~output_o\;

ww_r_rx_data(15) <= \r_rx_data[15]~output_o\;

ww_r_rx_data(16) <= \r_rx_data[16]~output_o\;

ww_r_rx_data(17) <= \r_rx_data[17]~output_o\;

ww_r_rx_data(18) <= \r_rx_data[18]~output_o\;

ww_r_rx_data(19) <= \r_rx_data[19]~output_o\;

ww_r_rx_data(20) <= \r_rx_data[20]~output_o\;

ww_r_rx_data(21) <= \r_rx_data[21]~output_o\;

ww_r_rx_data(22) <= \r_rx_data[22]~output_o\;

ww_r_rx_data(23) <= \r_rx_data[23]~output_o\;
END structure;


