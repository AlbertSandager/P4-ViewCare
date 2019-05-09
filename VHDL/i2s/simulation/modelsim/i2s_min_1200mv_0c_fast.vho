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

-- DATE "05/09/2019 13:37:19"

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

ENTITY 	i2s IS
    PORT (
	clk : IN std_logic;
	bclk : IN std_logic;
	lrclk : IN std_logic;
	sample_out : BUFFER std_logic_vector(23 DOWNTO 0);
	sample_in : IN std_logic_vector(23 DOWNTO 0);
	dac_data : BUFFER std_logic;
	adc_data : IN std_logic;
	valid : BUFFER std_logic;
	ready : BUFFER std_logic;
	led_out : BUFFER std_logic_vector(23 DOWNTO 0)
	);
END i2s;

-- Design Ports Information
-- sample_out[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[1]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[6]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[7]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[8]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[9]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[10]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[11]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[12]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[13]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[14]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[15]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[16]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[17]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[18]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[19]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[20]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[21]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[22]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[23]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac_data	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[4]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[5]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[6]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[7]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[8]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[9]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[10]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[11]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[12]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[14]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[15]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[16]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[17]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[18]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[19]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[20]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[21]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[22]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[23]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[4]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[5]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[6]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[7]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[8]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[9]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[10]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[11]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[12]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[13]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[14]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[15]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[16]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[17]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[18]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[19]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[20]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[21]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[22]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[23]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bclk	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lrclk	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF i2s IS
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
SIGNAL ww_sample_out : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_sample_in : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_dac_data : std_logic;
SIGNAL ww_adc_data : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL ww_ready : std_logic;
SIGNAL ww_led_out : std_logic_vector(23 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sample_in[0]~input_o\ : std_logic;
SIGNAL \sample_in[1]~input_o\ : std_logic;
SIGNAL \sample_in[2]~input_o\ : std_logic;
SIGNAL \sample_in[3]~input_o\ : std_logic;
SIGNAL \sample_in[4]~input_o\ : std_logic;
SIGNAL \sample_in[5]~input_o\ : std_logic;
SIGNAL \sample_in[6]~input_o\ : std_logic;
SIGNAL \sample_in[7]~input_o\ : std_logic;
SIGNAL \sample_in[8]~input_o\ : std_logic;
SIGNAL \sample_in[9]~input_o\ : std_logic;
SIGNAL \sample_in[10]~input_o\ : std_logic;
SIGNAL \sample_in[11]~input_o\ : std_logic;
SIGNAL \sample_in[12]~input_o\ : std_logic;
SIGNAL \sample_in[13]~input_o\ : std_logic;
SIGNAL \sample_in[14]~input_o\ : std_logic;
SIGNAL \sample_in[15]~input_o\ : std_logic;
SIGNAL \sample_in[16]~input_o\ : std_logic;
SIGNAL \sample_in[17]~input_o\ : std_logic;
SIGNAL \sample_in[18]~input_o\ : std_logic;
SIGNAL \sample_in[19]~input_o\ : std_logic;
SIGNAL \sample_in[20]~input_o\ : std_logic;
SIGNAL \sample_in[21]~input_o\ : std_logic;
SIGNAL \sample_in[22]~input_o\ : std_logic;
SIGNAL \sample_in[23]~input_o\ : std_logic;
SIGNAL \sample_out[0]~output_o\ : std_logic;
SIGNAL \sample_out[1]~output_o\ : std_logic;
SIGNAL \sample_out[2]~output_o\ : std_logic;
SIGNAL \sample_out[3]~output_o\ : std_logic;
SIGNAL \sample_out[4]~output_o\ : std_logic;
SIGNAL \sample_out[5]~output_o\ : std_logic;
SIGNAL \sample_out[6]~output_o\ : std_logic;
SIGNAL \sample_out[7]~output_o\ : std_logic;
SIGNAL \sample_out[8]~output_o\ : std_logic;
SIGNAL \sample_out[9]~output_o\ : std_logic;
SIGNAL \sample_out[10]~output_o\ : std_logic;
SIGNAL \sample_out[11]~output_o\ : std_logic;
SIGNAL \sample_out[12]~output_o\ : std_logic;
SIGNAL \sample_out[13]~output_o\ : std_logic;
SIGNAL \sample_out[14]~output_o\ : std_logic;
SIGNAL \sample_out[15]~output_o\ : std_logic;
SIGNAL \sample_out[16]~output_o\ : std_logic;
SIGNAL \sample_out[17]~output_o\ : std_logic;
SIGNAL \sample_out[18]~output_o\ : std_logic;
SIGNAL \sample_out[19]~output_o\ : std_logic;
SIGNAL \sample_out[20]~output_o\ : std_logic;
SIGNAL \sample_out[21]~output_o\ : std_logic;
SIGNAL \sample_out[22]~output_o\ : std_logic;
SIGNAL \sample_out[23]~output_o\ : std_logic;
SIGNAL \dac_data~output_o\ : std_logic;
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \led_out[0]~output_o\ : std_logic;
SIGNAL \led_out[1]~output_o\ : std_logic;
SIGNAL \led_out[2]~output_o\ : std_logic;
SIGNAL \led_out[3]~output_o\ : std_logic;
SIGNAL \led_out[4]~output_o\ : std_logic;
SIGNAL \led_out[5]~output_o\ : std_logic;
SIGNAL \led_out[6]~output_o\ : std_logic;
SIGNAL \led_out[7]~output_o\ : std_logic;
SIGNAL \led_out[8]~output_o\ : std_logic;
SIGNAL \led_out[9]~output_o\ : std_logic;
SIGNAL \led_out[10]~output_o\ : std_logic;
SIGNAL \led_out[11]~output_o\ : std_logic;
SIGNAL \led_out[12]~output_o\ : std_logic;
SIGNAL \led_out[13]~output_o\ : std_logic;
SIGNAL \led_out[14]~output_o\ : std_logic;
SIGNAL \led_out[15]~output_o\ : std_logic;
SIGNAL \led_out[16]~output_o\ : std_logic;
SIGNAL \led_out[17]~output_o\ : std_logic;
SIGNAL \led_out[18]~output_o\ : std_logic;
SIGNAL \led_out[19]~output_o\ : std_logic;
SIGNAL \led_out[20]~output_o\ : std_logic;
SIGNAL \led_out[21]~output_o\ : std_logic;
SIGNAL \led_out[22]~output_o\ : std_logic;
SIGNAL \led_out[23]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \adc_data~input_o\ : std_logic;
SIGNAL \sr_in[0]~feeder_combout\ : std_logic;
SIGNAL \bclk~input_o\ : std_logic;
SIGNAL \zbclk~feeder_combout\ : std_logic;
SIGNAL \zbclk~q\ : std_logic;
SIGNAL \zzbclk~feeder_combout\ : std_logic;
SIGNAL \zzbclk~q\ : std_logic;
SIGNAL \zzzbclk~feeder_combout\ : std_logic;
SIGNAL \zzzbclk~q\ : std_logic;
SIGNAL \pos_edge~0_combout\ : std_logic;
SIGNAL \pos_edge~q\ : std_logic;
SIGNAL \sr_in[1]~feeder_combout\ : std_logic;
SIGNAL \sr_in[2]~feeder_combout\ : std_logic;
SIGNAL \sr_in[3]~feeder_combout\ : std_logic;
SIGNAL \sr_in[4]~feeder_combout\ : std_logic;
SIGNAL \sr_in[5]~feeder_combout\ : std_logic;
SIGNAL \sr_in[6]~feeder_combout\ : std_logic;
SIGNAL \sr_in[7]~feeder_combout\ : std_logic;
SIGNAL \sr_in[8]~feeder_combout\ : std_logic;
SIGNAL \sr_in[9]~feeder_combout\ : std_logic;
SIGNAL \sr_in[10]~feeder_combout\ : std_logic;
SIGNAL \sr_in[11]~feeder_combout\ : std_logic;
SIGNAL \sr_in[12]~feeder_combout\ : std_logic;
SIGNAL \sr_in[13]~feeder_combout\ : std_logic;
SIGNAL \sr_in[14]~feeder_combout\ : std_logic;
SIGNAL \sr_in[15]~feeder_combout\ : std_logic;
SIGNAL \sr_in[16]~feeder_combout\ : std_logic;
SIGNAL \sr_in[17]~feeder_combout\ : std_logic;
SIGNAL \sr_in[18]~feeder_combout\ : std_logic;
SIGNAL \sr_in[19]~feeder_combout\ : std_logic;
SIGNAL \sr_in[20]~feeder_combout\ : std_logic;
SIGNAL \sr_in[21]~feeder_combout\ : std_logic;
SIGNAL \sr_in[22]~feeder_combout\ : std_logic;
SIGNAL \sr_in[23]~feeder_combout\ : std_logic;
SIGNAL \lrclk~input_o\ : std_logic;
SIGNAL \zlrclk~feeder_combout\ : std_logic;
SIGNAL \zlrclk~q\ : std_logic;
SIGNAL \zzlrclk~q\ : std_logic;
SIGNAL \zzzlrclk~q\ : std_logic;
SIGNAL \detect_lr_edge~0_combout\ : std_logic;
SIGNAL \lr_edge~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \cnt[0]~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \cnt[4]~3_combout\ : std_logic;
SIGNAL \cnt[0]~0_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \cnt[3]~2_combout\ : std_logic;
SIGNAL \neg_edge~0_combout\ : std_logic;
SIGNAL \neg_edge~q\ : std_logic;
SIGNAL \detect_sample~0_combout\ : std_logic;
SIGNAL \detect_sample~1_combout\ : std_logic;
SIGNAL \valid~reg0_q\ : std_logic;
SIGNAL sr_in : std_logic_vector(23 DOWNTO 0);
SIGNAL cnt : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_bclk <= bclk;
ww_lrclk <= lrclk;
sample_out <= ww_sample_out;
ww_sample_in <= sample_in;
dac_data <= ww_dac_data;
ww_adc_data <= adc_data;
valid <= ww_valid;
ready <= ww_ready;
led_out <= ww_led_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y6_N9
\sample_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(0),
	devoe => ww_devoe,
	o => \sample_out[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\sample_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(1),
	devoe => ww_devoe,
	o => \sample_out[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\sample_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(2),
	devoe => ww_devoe,
	o => \sample_out[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\sample_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(3),
	devoe => ww_devoe,
	o => \sample_out[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\sample_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(4),
	devoe => ww_devoe,
	o => \sample_out[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\sample_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(5),
	devoe => ww_devoe,
	o => \sample_out[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\sample_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(6),
	devoe => ww_devoe,
	o => \sample_out[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\sample_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(7),
	devoe => ww_devoe,
	o => \sample_out[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\sample_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(8),
	devoe => ww_devoe,
	o => \sample_out[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\sample_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(9),
	devoe => ww_devoe,
	o => \sample_out[9]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\sample_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(10),
	devoe => ww_devoe,
	o => \sample_out[10]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\sample_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(11),
	devoe => ww_devoe,
	o => \sample_out[11]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\sample_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(12),
	devoe => ww_devoe,
	o => \sample_out[12]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\sample_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(13),
	devoe => ww_devoe,
	o => \sample_out[13]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\sample_out[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(14),
	devoe => ww_devoe,
	o => \sample_out[14]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\sample_out[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(15),
	devoe => ww_devoe,
	o => \sample_out[15]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\sample_out[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(16),
	devoe => ww_devoe,
	o => \sample_out[16]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\sample_out[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(17),
	devoe => ww_devoe,
	o => \sample_out[17]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\sample_out[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(18),
	devoe => ww_devoe,
	o => \sample_out[18]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\sample_out[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(19),
	devoe => ww_devoe,
	o => \sample_out[19]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\sample_out[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(20),
	devoe => ww_devoe,
	o => \sample_out[20]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\sample_out[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(21),
	devoe => ww_devoe,
	o => \sample_out[21]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\sample_out[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(22),
	devoe => ww_devoe,
	o => \sample_out[22]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\sample_out[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(23),
	devoe => ww_devoe,
	o => \sample_out[23]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\dac_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dac_data~output_o\);

-- Location: IOOBUF_X0_Y12_N9
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

-- Location: IOOBUF_X0_Y27_N16
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

-- Location: IOOBUF_X0_Y6_N23
\led_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(0),
	devoe => ww_devoe,
	o => \led_out[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\led_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(1),
	devoe => ww_devoe,
	o => \led_out[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\led_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(2),
	devoe => ww_devoe,
	o => \led_out[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\led_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(3),
	devoe => ww_devoe,
	o => \led_out[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\led_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(4),
	devoe => ww_devoe,
	o => \led_out[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\led_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(5),
	devoe => ww_devoe,
	o => \led_out[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\led_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(6),
	devoe => ww_devoe,
	o => \led_out[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\led_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(7),
	devoe => ww_devoe,
	o => \led_out[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\led_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(8),
	devoe => ww_devoe,
	o => \led_out[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\led_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(9),
	devoe => ww_devoe,
	o => \led_out[9]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\led_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(10),
	devoe => ww_devoe,
	o => \led_out[10]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\led_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(11),
	devoe => ww_devoe,
	o => \led_out[11]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\led_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(12),
	devoe => ww_devoe,
	o => \led_out[12]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\led_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(13),
	devoe => ww_devoe,
	o => \led_out[13]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\led_out[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(14),
	devoe => ww_devoe,
	o => \led_out[14]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\led_out[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(15),
	devoe => ww_devoe,
	o => \led_out[15]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\led_out[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(16),
	devoe => ww_devoe,
	o => \led_out[16]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\led_out[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(17),
	devoe => ww_devoe,
	o => \led_out[17]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\led_out[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(18),
	devoe => ww_devoe,
	o => \led_out[18]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\led_out[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(19),
	devoe => ww_devoe,
	o => \led_out[19]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\led_out[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(20),
	devoe => ww_devoe,
	o => \led_out[20]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\led_out[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(21),
	devoe => ww_devoe,
	o => \led_out[21]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\led_out[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(22),
	devoe => ww_devoe,
	o => \led_out[22]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\led_out[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sr_in(23),
	devoe => ww_devoe,
	o => \led_out[23]~output_o\);

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

-- Location: LCCOMB_X1_Y8_N24
\sr_in[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[0]~feeder_combout\ = \adc_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \adc_data~input_o\,
	combout => \sr_in[0]~feeder_combout\);

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

-- Location: LCCOMB_X1_Y8_N16
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

-- Location: FF_X1_Y8_N17
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

-- Location: LCCOMB_X1_Y11_N12
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

-- Location: FF_X1_Y11_N13
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

-- Location: LCCOMB_X1_Y11_N10
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

-- Location: FF_X1_Y11_N11
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

-- Location: LCCOMB_X1_Y11_N20
\pos_edge~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pos_edge~0_combout\ = (\zzzbclk~q\ & (\pos_edge~q\ & !\zzbclk~q\)) # (!\zzzbclk~q\ & ((\zzbclk~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zzzbclk~q\,
	datac => \pos_edge~q\,
	datad => \zzbclk~q\,
	combout => \pos_edge~0_combout\);

-- Location: FF_X1_Y11_N21
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

-- Location: FF_X1_Y8_N25
\sr_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[0]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(0));

-- Location: LCCOMB_X1_Y8_N22
\sr_in[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[1]~feeder_combout\ = sr_in(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(0),
	combout => \sr_in[1]~feeder_combout\);

-- Location: FF_X1_Y8_N23
\sr_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[1]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(1));

-- Location: LCCOMB_X1_Y8_N8
\sr_in[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[2]~feeder_combout\ = sr_in(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sr_in(1),
	combout => \sr_in[2]~feeder_combout\);

-- Location: FF_X1_Y8_N9
\sr_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[2]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(2));

-- Location: LCCOMB_X1_Y8_N10
\sr_in[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[3]~feeder_combout\ = sr_in(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sr_in(2),
	combout => \sr_in[3]~feeder_combout\);

-- Location: FF_X1_Y8_N11
\sr_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[3]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(3));

-- Location: LCCOMB_X1_Y8_N20
\sr_in[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[4]~feeder_combout\ = sr_in(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(3),
	combout => \sr_in[4]~feeder_combout\);

-- Location: FF_X1_Y8_N21
\sr_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[4]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(4));

-- Location: LCCOMB_X1_Y8_N18
\sr_in[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[5]~feeder_combout\ = sr_in(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(4),
	combout => \sr_in[5]~feeder_combout\);

-- Location: FF_X1_Y8_N19
\sr_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[5]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(5));

-- Location: LCCOMB_X1_Y8_N28
\sr_in[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[6]~feeder_combout\ = sr_in(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(5),
	combout => \sr_in[6]~feeder_combout\);

-- Location: FF_X1_Y8_N29
\sr_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[6]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(6));

-- Location: LCCOMB_X1_Y8_N2
\sr_in[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[7]~feeder_combout\ = sr_in(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(6),
	combout => \sr_in[7]~feeder_combout\);

-- Location: FF_X1_Y8_N3
\sr_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[7]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(7));

-- Location: LCCOMB_X1_Y8_N0
\sr_in[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[8]~feeder_combout\ = sr_in(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(7),
	combout => \sr_in[8]~feeder_combout\);

-- Location: FF_X1_Y8_N1
\sr_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[8]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(8));

-- Location: LCCOMB_X1_Y8_N6
\sr_in[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[9]~feeder_combout\ = sr_in(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(8),
	combout => \sr_in[9]~feeder_combout\);

-- Location: FF_X1_Y8_N7
\sr_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[9]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(9));

-- Location: LCCOMB_X1_Y8_N12
\sr_in[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[10]~feeder_combout\ = sr_in(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(9),
	combout => \sr_in[10]~feeder_combout\);

-- Location: FF_X1_Y8_N13
\sr_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[10]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(10));

-- Location: LCCOMB_X1_Y8_N26
\sr_in[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[11]~feeder_combout\ = sr_in(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(10),
	combout => \sr_in[11]~feeder_combout\);

-- Location: FF_X1_Y8_N27
\sr_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[11]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(11));

-- Location: LCCOMB_X1_Y11_N16
\sr_in[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[12]~feeder_combout\ = sr_in(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(11),
	combout => \sr_in[12]~feeder_combout\);

-- Location: FF_X1_Y11_N17
\sr_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[12]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(12));

-- Location: LCCOMB_X1_Y11_N2
\sr_in[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[13]~feeder_combout\ = sr_in(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(12),
	combout => \sr_in[13]~feeder_combout\);

-- Location: FF_X1_Y11_N3
\sr_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[13]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(13));

-- Location: LCCOMB_X1_Y11_N0
\sr_in[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[14]~feeder_combout\ = sr_in(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(13),
	combout => \sr_in[14]~feeder_combout\);

-- Location: FF_X1_Y11_N1
\sr_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[14]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(14));

-- Location: LCCOMB_X1_Y11_N14
\sr_in[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[15]~feeder_combout\ = sr_in(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(14),
	combout => \sr_in[15]~feeder_combout\);

-- Location: FF_X1_Y11_N15
\sr_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[15]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(15));

-- Location: LCCOMB_X1_Y11_N8
\sr_in[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[16]~feeder_combout\ = sr_in(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sr_in(15),
	combout => \sr_in[16]~feeder_combout\);

-- Location: FF_X1_Y11_N9
\sr_in[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[16]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(16));

-- Location: LCCOMB_X1_Y11_N26
\sr_in[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[17]~feeder_combout\ = sr_in(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sr_in(16),
	combout => \sr_in[17]~feeder_combout\);

-- Location: FF_X1_Y11_N27
\sr_in[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[17]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(17));

-- Location: LCCOMB_X1_Y11_N24
\sr_in[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[18]~feeder_combout\ = sr_in(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sr_in(17),
	combout => \sr_in[18]~feeder_combout\);

-- Location: FF_X1_Y11_N25
\sr_in[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[18]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(18));

-- Location: LCCOMB_X1_Y11_N30
\sr_in[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[19]~feeder_combout\ = sr_in(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(18),
	combout => \sr_in[19]~feeder_combout\);

-- Location: FF_X1_Y11_N31
\sr_in[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[19]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(19));

-- Location: LCCOMB_X1_Y11_N4
\sr_in[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[20]~feeder_combout\ = sr_in(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sr_in(19),
	combout => \sr_in[20]~feeder_combout\);

-- Location: FF_X1_Y11_N5
\sr_in[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[20]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(20));

-- Location: LCCOMB_X1_Y11_N18
\sr_in[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[21]~feeder_combout\ = sr_in(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sr_in(20),
	combout => \sr_in[21]~feeder_combout\);

-- Location: FF_X1_Y11_N19
\sr_in[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[21]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(21));

-- Location: LCCOMB_X1_Y11_N28
\sr_in[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[22]~feeder_combout\ = sr_in(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(21),
	combout => \sr_in[22]~feeder_combout\);

-- Location: FF_X1_Y11_N29
\sr_in[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[22]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(22));

-- Location: LCCOMB_X1_Y11_N22
\sr_in[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sr_in[23]~feeder_combout\ = sr_in(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sr_in(22),
	combout => \sr_in[23]~feeder_combout\);

-- Location: FF_X1_Y11_N23
\sr_in[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sr_in[23]~feeder_combout\,
	ena => \pos_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sr_in(23));

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

-- Location: LCCOMB_X6_Y11_N8
\zlrclk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \zlrclk~feeder_combout\ = \lrclk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lrclk~input_o\,
	combout => \zlrclk~feeder_combout\);

-- Location: FF_X6_Y11_N9
zlrclk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \zlrclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zlrclk~q\);

-- Location: FF_X2_Y11_N15
zzlrclk : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \zlrclk~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \zzlrclk~q\);

-- Location: FF_X2_Y11_N13
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

-- Location: LCCOMB_X2_Y11_N16
\detect_lr_edge~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \detect_lr_edge~0_combout\ = \zzzlrclk~q\ $ (\zzlrclk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \zzzlrclk~q\,
	datac => \zzlrclk~q\,
	combout => \detect_lr_edge~0_combout\);

-- Location: FF_X2_Y11_N17
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

-- Location: LCCOMB_X2_Y11_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cnt(0) $ (VCC)
-- \Add0~1\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X2_Y11_N0
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

-- Location: FF_X2_Y11_N1
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

-- Location: LCCOMB_X2_Y11_N8
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

-- Location: LCCOMB_X2_Y11_N26
\Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\pos_edge~q\ & (\Add0~3_combout\ & ((!\LessThan1~0_combout\) # (!cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pos_edge~q\,
	datab => cnt(4),
	datac => \Add0~3_combout\,
	datad => \LessThan1~0_combout\,
	combout => \Add0~5_combout\);

-- Location: FF_X2_Y11_N27
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

-- Location: LCCOMB_X2_Y11_N10
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

-- Location: LCCOMB_X2_Y11_N20
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

-- Location: FF_X2_Y11_N21
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

-- Location: LCCOMB_X2_Y11_N18
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (cnt(3)) # ((cnt(1) & (cnt(0) & cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(0),
	datac => cnt(3),
	datad => cnt(2),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X2_Y11_N28
\cnt[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[0]~1_combout\ = ((\LessThan1~0_combout\ & cnt(4))) # (!\pos_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datac => cnt(4),
	datad => \pos_edge~q\,
	combout => \cnt[0]~1_combout\);

-- Location: LCCOMB_X2_Y11_N12
\Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (cnt(3) & (!\Add0~7\)) # (!cnt(3) & ((\Add0~7\) # (GND)))
-- \Add0~10\ = CARRY((!\Add0~7\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X2_Y11_N14
\Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = cnt(4) $ (!\Add0~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	cin => \Add0~10\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X2_Y11_N4
\cnt[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[4]~3_combout\ = (\cnt[0]~0_combout\ & (!\cnt[0]~1_combout\ & ((\Add0~11_combout\)))) # (!\cnt[0]~0_combout\ & ((cnt(4)) # ((!\cnt[0]~1_combout\ & \Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~0_combout\,
	datab => \cnt[0]~1_combout\,
	datac => cnt(4),
	datad => \Add0~11_combout\,
	combout => \cnt[4]~3_combout\);

-- Location: FF_X2_Y11_N5
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

-- Location: LCCOMB_X2_Y11_N24
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

-- Location: LCCOMB_X2_Y11_N22
\cnt[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cnt[3]~2_combout\ = (\cnt[0]~0_combout\ & (!\cnt[0]~1_combout\ & ((\Add0~9_combout\)))) # (!\cnt[0]~0_combout\ & ((cnt(3)) # ((!\cnt[0]~1_combout\ & \Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[0]~0_combout\,
	datab => \cnt[0]~1_combout\,
	datac => cnt(3),
	datad => \Add0~9_combout\,
	combout => \cnt[3]~2_combout\);

-- Location: FF_X2_Y11_N23
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

-- Location: LCCOMB_X1_Y11_N6
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

-- Location: FF_X1_Y11_N7
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

-- Location: LCCOMB_X2_Y11_N2
\detect_sample~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \detect_sample~0_combout\ = (!cnt(1) & (cnt(0) & (\neg_edge~q\ & !cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(0),
	datac => \neg_edge~q\,
	datad => cnt(2),
	combout => \detect_sample~0_combout\);

-- Location: LCCOMB_X2_Y11_N30
\detect_sample~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \detect_sample~1_combout\ = (cnt(3) & (cnt(4) & \detect_sample~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datac => cnt(4),
	datad => \detect_sample~0_combout\,
	combout => \detect_sample~1_combout\);

-- Location: FF_X2_Y11_N31
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

-- Location: IOIBUF_X21_Y0_N8
\sample_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(0),
	o => \sample_in[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\sample_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(1),
	o => \sample_in[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\sample_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(2),
	o => \sample_in[2]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\sample_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(3),
	o => \sample_in[3]~input_o\);

-- Location: IOIBUF_X41_Y3_N22
\sample_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(4),
	o => \sample_in[4]~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\sample_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(5),
	o => \sample_in[5]~input_o\);

-- Location: IOIBUF_X39_Y29_N8
\sample_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(6),
	o => \sample_in[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\sample_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(7),
	o => \sample_in[7]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\sample_in[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(8),
	o => \sample_in[8]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\sample_in[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(9),
	o => \sample_in[9]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\sample_in[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(10),
	o => \sample_in[10]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\sample_in[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(11),
	o => \sample_in[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\sample_in[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(12),
	o => \sample_in[12]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\sample_in[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(13),
	o => \sample_in[13]~input_o\);

-- Location: IOIBUF_X14_Y29_N1
\sample_in[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(14),
	o => \sample_in[14]~input_o\);

-- Location: IOIBUF_X16_Y29_N15
\sample_in[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(15),
	o => \sample_in[15]~input_o\);

-- Location: IOIBUF_X30_Y29_N22
\sample_in[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(16),
	o => \sample_in[16]~input_o\);

-- Location: IOIBUF_X41_Y23_N22
\sample_in[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(17),
	o => \sample_in[17]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\sample_in[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(18),
	o => \sample_in[18]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\sample_in[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(19),
	o => \sample_in[19]~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\sample_in[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(20),
	o => \sample_in[20]~input_o\);

-- Location: IOIBUF_X41_Y13_N1
\sample_in[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(21),
	o => \sample_in[21]~input_o\);

-- Location: IOIBUF_X37_Y29_N1
\sample_in[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(22),
	o => \sample_in[22]~input_o\);

-- Location: IOIBUF_X41_Y7_N15
\sample_in[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(23),
	o => \sample_in[23]~input_o\);

ww_sample_out(0) <= \sample_out[0]~output_o\;

ww_sample_out(1) <= \sample_out[1]~output_o\;

ww_sample_out(2) <= \sample_out[2]~output_o\;

ww_sample_out(3) <= \sample_out[3]~output_o\;

ww_sample_out(4) <= \sample_out[4]~output_o\;

ww_sample_out(5) <= \sample_out[5]~output_o\;

ww_sample_out(6) <= \sample_out[6]~output_o\;

ww_sample_out(7) <= \sample_out[7]~output_o\;

ww_sample_out(8) <= \sample_out[8]~output_o\;

ww_sample_out(9) <= \sample_out[9]~output_o\;

ww_sample_out(10) <= \sample_out[10]~output_o\;

ww_sample_out(11) <= \sample_out[11]~output_o\;

ww_sample_out(12) <= \sample_out[12]~output_o\;

ww_sample_out(13) <= \sample_out[13]~output_o\;

ww_sample_out(14) <= \sample_out[14]~output_o\;

ww_sample_out(15) <= \sample_out[15]~output_o\;

ww_sample_out(16) <= \sample_out[16]~output_o\;

ww_sample_out(17) <= \sample_out[17]~output_o\;

ww_sample_out(18) <= \sample_out[18]~output_o\;

ww_sample_out(19) <= \sample_out[19]~output_o\;

ww_sample_out(20) <= \sample_out[20]~output_o\;

ww_sample_out(21) <= \sample_out[21]~output_o\;

ww_sample_out(22) <= \sample_out[22]~output_o\;

ww_sample_out(23) <= \sample_out[23]~output_o\;

ww_dac_data <= \dac_data~output_o\;

ww_valid <= \valid~output_o\;

ww_ready <= \ready~output_o\;

ww_led_out(0) <= \led_out[0]~output_o\;

ww_led_out(1) <= \led_out[1]~output_o\;

ww_led_out(2) <= \led_out[2]~output_o\;

ww_led_out(3) <= \led_out[3]~output_o\;

ww_led_out(4) <= \led_out[4]~output_o\;

ww_led_out(5) <= \led_out[5]~output_o\;

ww_led_out(6) <= \led_out[6]~output_o\;

ww_led_out(7) <= \led_out[7]~output_o\;

ww_led_out(8) <= \led_out[8]~output_o\;

ww_led_out(9) <= \led_out[9]~output_o\;

ww_led_out(10) <= \led_out[10]~output_o\;

ww_led_out(11) <= \led_out[11]~output_o\;

ww_led_out(12) <= \led_out[12]~output_o\;

ww_led_out(13) <= \led_out[13]~output_o\;

ww_led_out(14) <= \led_out[14]~output_o\;

ww_led_out(15) <= \led_out[15]~output_o\;

ww_led_out(16) <= \led_out[16]~output_o\;

ww_led_out(17) <= \led_out[17]~output_o\;

ww_led_out(18) <= \led_out[18]~output_o\;

ww_led_out(19) <= \led_out[19]~output_o\;

ww_led_out(20) <= \led_out[20]~output_o\;

ww_led_out(21) <= \led_out[21]~output_o\;

ww_led_out(22) <= \led_out[22]~output_o\;

ww_led_out(23) <= \led_out[23]~output_o\;
END structure;


