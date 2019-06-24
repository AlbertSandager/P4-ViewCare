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

-- DATE "05/15/2019 09:18:35"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux2to1 IS
    PORT (
	D1 : IN std_logic_vector(23 DOWNTO 0);
	D2 : IN std_logic_vector(23 DOWNTO 0);
	MX_OUT : OUT std_logic_vector(23 DOWNTO 0);
	SEL : IN std_logic
	);
END mux2to1;

-- Design Ports Information
-- MX_OUT[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[5]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[6]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[8]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[9]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[10]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[11]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[12]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[13]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[14]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[15]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[16]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[17]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[18]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[19]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[20]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[21]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[22]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[23]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[0]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[3]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[4]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[4]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[5]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[5]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[7]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[8]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[8]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[9]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[9]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[10]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[10]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[11]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[11]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[12]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[12]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[13]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[13]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[14]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[14]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[15]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[16]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[16]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[17]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[17]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[18]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[18]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[19]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[19]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[20]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[20]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[21]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[21]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[22]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[22]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[23]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[23]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux2to1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D1 : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_D2 : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_MX_OUT : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_SEL : std_logic;
SIGNAL \MX_OUT[0]~output_o\ : std_logic;
SIGNAL \MX_OUT[1]~output_o\ : std_logic;
SIGNAL \MX_OUT[2]~output_o\ : std_logic;
SIGNAL \MX_OUT[3]~output_o\ : std_logic;
SIGNAL \MX_OUT[4]~output_o\ : std_logic;
SIGNAL \MX_OUT[5]~output_o\ : std_logic;
SIGNAL \MX_OUT[6]~output_o\ : std_logic;
SIGNAL \MX_OUT[7]~output_o\ : std_logic;
SIGNAL \MX_OUT[8]~output_o\ : std_logic;
SIGNAL \MX_OUT[9]~output_o\ : std_logic;
SIGNAL \MX_OUT[10]~output_o\ : std_logic;
SIGNAL \MX_OUT[11]~output_o\ : std_logic;
SIGNAL \MX_OUT[12]~output_o\ : std_logic;
SIGNAL \MX_OUT[13]~output_o\ : std_logic;
SIGNAL \MX_OUT[14]~output_o\ : std_logic;
SIGNAL \MX_OUT[15]~output_o\ : std_logic;
SIGNAL \MX_OUT[16]~output_o\ : std_logic;
SIGNAL \MX_OUT[17]~output_o\ : std_logic;
SIGNAL \MX_OUT[18]~output_o\ : std_logic;
SIGNAL \MX_OUT[19]~output_o\ : std_logic;
SIGNAL \MX_OUT[20]~output_o\ : std_logic;
SIGNAL \MX_OUT[21]~output_o\ : std_logic;
SIGNAL \MX_OUT[22]~output_o\ : std_logic;
SIGNAL \MX_OUT[23]~output_o\ : std_logic;
SIGNAL \SEL~input_o\ : std_logic;
SIGNAL \D1[0]~input_o\ : std_logic;
SIGNAL \D2[0]~input_o\ : std_logic;
SIGNAL \MX_OUT~0_combout\ : std_logic;
SIGNAL \D2[1]~input_o\ : std_logic;
SIGNAL \D1[1]~input_o\ : std_logic;
SIGNAL \MX_OUT~1_combout\ : std_logic;
SIGNAL \D2[2]~input_o\ : std_logic;
SIGNAL \D1[2]~input_o\ : std_logic;
SIGNAL \MX_OUT~2_combout\ : std_logic;
SIGNAL \D1[3]~input_o\ : std_logic;
SIGNAL \D2[3]~input_o\ : std_logic;
SIGNAL \MX_OUT~3_combout\ : std_logic;
SIGNAL \D2[4]~input_o\ : std_logic;
SIGNAL \D1[4]~input_o\ : std_logic;
SIGNAL \MX_OUT~4_combout\ : std_logic;
SIGNAL \D1[5]~input_o\ : std_logic;
SIGNAL \D2[5]~input_o\ : std_logic;
SIGNAL \MX_OUT~5_combout\ : std_logic;
SIGNAL \D2[6]~input_o\ : std_logic;
SIGNAL \D1[6]~input_o\ : std_logic;
SIGNAL \MX_OUT~6_combout\ : std_logic;
SIGNAL \D2[7]~input_o\ : std_logic;
SIGNAL \D1[7]~input_o\ : std_logic;
SIGNAL \MX_OUT~7_combout\ : std_logic;
SIGNAL \D1[8]~input_o\ : std_logic;
SIGNAL \D2[8]~input_o\ : std_logic;
SIGNAL \MX_OUT~8_combout\ : std_logic;
SIGNAL \D1[9]~input_o\ : std_logic;
SIGNAL \D2[9]~input_o\ : std_logic;
SIGNAL \MX_OUT~9_combout\ : std_logic;
SIGNAL \D2[10]~input_o\ : std_logic;
SIGNAL \D1[10]~input_o\ : std_logic;
SIGNAL \MX_OUT~10_combout\ : std_logic;
SIGNAL \D2[11]~input_o\ : std_logic;
SIGNAL \D1[11]~input_o\ : std_logic;
SIGNAL \MX_OUT~11_combout\ : std_logic;
SIGNAL \D1[12]~input_o\ : std_logic;
SIGNAL \D2[12]~input_o\ : std_logic;
SIGNAL \MX_OUT~12_combout\ : std_logic;
SIGNAL \D2[13]~input_o\ : std_logic;
SIGNAL \D1[13]~input_o\ : std_logic;
SIGNAL \MX_OUT~13_combout\ : std_logic;
SIGNAL \D2[14]~input_o\ : std_logic;
SIGNAL \D1[14]~input_o\ : std_logic;
SIGNAL \MX_OUT~14_combout\ : std_logic;
SIGNAL \D2[15]~input_o\ : std_logic;
SIGNAL \D1[15]~input_o\ : std_logic;
SIGNAL \MX_OUT~15_combout\ : std_logic;
SIGNAL \D1[16]~input_o\ : std_logic;
SIGNAL \D2[16]~input_o\ : std_logic;
SIGNAL \MX_OUT~16_combout\ : std_logic;
SIGNAL \D1[17]~input_o\ : std_logic;
SIGNAL \D2[17]~input_o\ : std_logic;
SIGNAL \MX_OUT~17_combout\ : std_logic;
SIGNAL \D1[18]~input_o\ : std_logic;
SIGNAL \D2[18]~input_o\ : std_logic;
SIGNAL \MX_OUT~18_combout\ : std_logic;
SIGNAL \D1[19]~input_o\ : std_logic;
SIGNAL \D2[19]~input_o\ : std_logic;
SIGNAL \MX_OUT~19_combout\ : std_logic;
SIGNAL \D2[20]~input_o\ : std_logic;
SIGNAL \D1[20]~input_o\ : std_logic;
SIGNAL \MX_OUT~20_combout\ : std_logic;
SIGNAL \D1[21]~input_o\ : std_logic;
SIGNAL \D2[21]~input_o\ : std_logic;
SIGNAL \MX_OUT~21_combout\ : std_logic;
SIGNAL \D1[22]~input_o\ : std_logic;
SIGNAL \D2[22]~input_o\ : std_logic;
SIGNAL \MX_OUT~22_combout\ : std_logic;
SIGNAL \D2[23]~input_o\ : std_logic;
SIGNAL \D1[23]~input_o\ : std_logic;
SIGNAL \MX_OUT~23_combout\ : std_logic;

BEGIN

ww_D1 <= D1;
ww_D2 <= D2;
MX_OUT <= ww_MX_OUT;
ww_SEL <= SEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y9_N9
\MX_OUT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\MX_OUT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[1]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\MX_OUT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~2_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\MX_OUT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~3_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[3]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\MX_OUT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~4_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\MX_OUT[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~5_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\MX_OUT[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~6_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\MX_OUT[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~7_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[7]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\MX_OUT[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~8_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\MX_OUT[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~9_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[9]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\MX_OUT[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~10_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[10]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\MX_OUT[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~11_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[11]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\MX_OUT[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~12_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[12]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\MX_OUT[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~13_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[13]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\MX_OUT[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~14_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[14]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\MX_OUT[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~15_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[15]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\MX_OUT[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~16_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[16]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\MX_OUT[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~17_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[17]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\MX_OUT[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~18_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[18]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\MX_OUT[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~19_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[19]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\MX_OUT[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~20_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[20]~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\MX_OUT[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~21_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[21]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\MX_OUT[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~22_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[22]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\MX_OUT[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MX_OUT~23_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[23]~output_o\);

-- Location: IOIBUF_X0_Y4_N1
\SEL~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL,
	o => \SEL~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\D1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(0),
	o => \D1[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\D2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(0),
	o => \D2[0]~input_o\);

-- Location: LCCOMB_X1_Y6_N8
\MX_OUT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~0_combout\ = (\SEL~input_o\ & ((\D2[0]~input_o\))) # (!\SEL~input_o\ & (\D1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL~input_o\,
	datac => \D1[0]~input_o\,
	datad => \D2[0]~input_o\,
	combout => \MX_OUT~0_combout\);

-- Location: IOIBUF_X0_Y8_N15
\D2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(1),
	o => \D2[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\D1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(1),
	o => \D1[1]~input_o\);

-- Location: LCCOMB_X1_Y6_N26
\MX_OUT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~1_combout\ = (\SEL~input_o\ & (\D2[1]~input_o\)) # (!\SEL~input_o\ & ((\D1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL~input_o\,
	datac => \D2[1]~input_o\,
	datad => \D1[1]~input_o\,
	combout => \MX_OUT~1_combout\);

-- Location: IOIBUF_X0_Y20_N1
\D2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(2),
	o => \D2[2]~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\D1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(2),
	o => \D1[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N24
\MX_OUT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~2_combout\ = (\SEL~input_o\ & (\D2[2]~input_o\)) # (!\SEL~input_o\ & ((\D1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D2[2]~input_o\,
	datac => \D1[2]~input_o\,
	datad => \SEL~input_o\,
	combout => \MX_OUT~2_combout\);

-- Location: IOIBUF_X0_Y7_N22
\D1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(3),
	o => \D1[3]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\D2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(3),
	o => \D2[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N10
\MX_OUT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~3_combout\ = (\SEL~input_o\ & ((\D2[3]~input_o\))) # (!\SEL~input_o\ & (\D1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL~input_o\,
	datac => \D1[3]~input_o\,
	datad => \D2[3]~input_o\,
	combout => \MX_OUT~3_combout\);

-- Location: IOIBUF_X0_Y12_N22
\D2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(4),
	o => \D2[4]~input_o\);

-- Location: IOIBUF_X1_Y29_N15
\D1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(4),
	o => \D1[4]~input_o\);

-- Location: LCCOMB_X1_Y24_N20
\MX_OUT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~4_combout\ = (\SEL~input_o\ & (\D2[4]~input_o\)) # (!\SEL~input_o\ & ((\D1[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[4]~input_o\,
	datab => \SEL~input_o\,
	datad => \D1[4]~input_o\,
	combout => \MX_OUT~4_combout\);

-- Location: IOIBUF_X0_Y25_N1
\D1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(5),
	o => \D1[5]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\D2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(5),
	o => \D2[5]~input_o\);

-- Location: LCCOMB_X1_Y24_N14
\MX_OUT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~5_combout\ = (\SEL~input_o\ & ((\D2[5]~input_o\))) # (!\SEL~input_o\ & (\D1[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[5]~input_o\,
	datab => \D2[5]~input_o\,
	datad => \SEL~input_o\,
	combout => \MX_OUT~5_combout\);

-- Location: IOIBUF_X0_Y7_N15
\D2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(6),
	o => \D2[6]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\D1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(6),
	o => \D1[6]~input_o\);

-- Location: LCCOMB_X1_Y6_N4
\MX_OUT~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~6_combout\ = (\SEL~input_o\ & (\D2[6]~input_o\)) # (!\SEL~input_o\ & ((\D1[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[6]~input_o\,
	datac => \SEL~input_o\,
	datad => \D1[6]~input_o\,
	combout => \MX_OUT~6_combout\);

-- Location: IOIBUF_X0_Y26_N8
\D2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(7),
	o => \D2[7]~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\D1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(7),
	o => \D1[7]~input_o\);

-- Location: LCCOMB_X1_Y24_N16
\MX_OUT~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~7_combout\ = (\SEL~input_o\ & (\D2[7]~input_o\)) # (!\SEL~input_o\ & ((\D1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D2[7]~input_o\,
	datac => \D1[7]~input_o\,
	datad => \SEL~input_o\,
	combout => \MX_OUT~7_combout\);

-- Location: IOIBUF_X0_Y4_N8
\D1[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(8),
	o => \D1[8]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\D2[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(8),
	o => \D2[8]~input_o\);

-- Location: LCCOMB_X1_Y6_N30
\MX_OUT~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~8_combout\ = (\SEL~input_o\ & ((\D2[8]~input_o\))) # (!\SEL~input_o\ & (\D1[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[8]~input_o\,
	datac => \SEL~input_o\,
	datad => \D2[8]~input_o\,
	combout => \MX_OUT~8_combout\);

-- Location: IOIBUF_X0_Y22_N22
\D1[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(9),
	o => \D1[9]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\D2[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(9),
	o => \D2[9]~input_o\);

-- Location: LCCOMB_X1_Y24_N2
\MX_OUT~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~9_combout\ = (\SEL~input_o\ & ((\D2[9]~input_o\))) # (!\SEL~input_o\ & (\D1[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[9]~input_o\,
	datab => \D2[9]~input_o\,
	datad => \SEL~input_o\,
	combout => \MX_OUT~9_combout\);

-- Location: IOIBUF_X0_Y22_N15
\D2[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(10),
	o => \D2[10]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\D1[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(10),
	o => \D1[10]~input_o\);

-- Location: LCCOMB_X1_Y24_N4
\MX_OUT~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~10_combout\ = (\SEL~input_o\ & (\D2[10]~input_o\)) # (!\SEL~input_o\ & ((\D1[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[10]~input_o\,
	datab => \D1[10]~input_o\,
	datad => \SEL~input_o\,
	combout => \MX_OUT~10_combout\);

-- Location: IOIBUF_X0_Y13_N22
\D2[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(11),
	o => \D2[11]~input_o\);

-- Location: IOIBUF_X3_Y29_N15
\D1[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(11),
	o => \D1[11]~input_o\);

-- Location: LCCOMB_X1_Y24_N30
\MX_OUT~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~11_combout\ = (\SEL~input_o\ & (\D2[11]~input_o\)) # (!\SEL~input_o\ & ((\D1[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[11]~input_o\,
	datab => \D1[11]~input_o\,
	datad => \SEL~input_o\,
	combout => \MX_OUT~11_combout\);

-- Location: IOIBUF_X0_Y20_N8
\D1[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(12),
	o => \D1[12]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\D2[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(12),
	o => \D2[12]~input_o\);

-- Location: LCCOMB_X1_Y24_N0
\MX_OUT~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~12_combout\ = (\SEL~input_o\ & ((\D2[12]~input_o\))) # (!\SEL~input_o\ & (\D1[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[12]~input_o\,
	datab => \D2[12]~input_o\,
	datad => \SEL~input_o\,
	combout => \MX_OUT~12_combout\);

-- Location: IOIBUF_X0_Y5_N1
\D2[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(13),
	o => \D2[13]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\D1[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(13),
	o => \D1[13]~input_o\);

-- Location: LCCOMB_X1_Y6_N16
\MX_OUT~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~13_combout\ = (\SEL~input_o\ & (\D2[13]~input_o\)) # (!\SEL~input_o\ & ((\D1[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[13]~input_o\,
	datac => \SEL~input_o\,
	datad => \D1[13]~input_o\,
	combout => \MX_OUT~13_combout\);

-- Location: IOIBUF_X0_Y7_N1
\D2[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(14),
	o => \D2[14]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\D1[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(14),
	o => \D1[14]~input_o\);

-- Location: LCCOMB_X1_Y6_N18
\MX_OUT~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~14_combout\ = (\SEL~input_o\ & (\D2[14]~input_o\)) # (!\SEL~input_o\ & ((\D1[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[14]~input_o\,
	datac => \SEL~input_o\,
	datad => \D1[14]~input_o\,
	combout => \MX_OUT~14_combout\);

-- Location: IOIBUF_X0_Y23_N8
\D2[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(15),
	o => \D2[15]~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\D1[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(15),
	o => \D1[15]~input_o\);

-- Location: LCCOMB_X1_Y24_N18
\MX_OUT~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~15_combout\ = (\SEL~input_o\ & (\D2[15]~input_o\)) # (!\SEL~input_o\ & ((\D1[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[15]~input_o\,
	datab => \D1[15]~input_o\,
	datad => \SEL~input_o\,
	combout => \MX_OUT~15_combout\);

-- Location: IOIBUF_X0_Y21_N1
\D1[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(16),
	o => \D1[16]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\D2[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(16),
	o => \D2[16]~input_o\);

-- Location: LCCOMB_X1_Y24_N12
\MX_OUT~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~16_combout\ = (\SEL~input_o\ & ((\D2[16]~input_o\))) # (!\SEL~input_o\ & (\D1[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[16]~input_o\,
	datac => \D2[16]~input_o\,
	datad => \SEL~input_o\,
	combout => \MX_OUT~16_combout\);

-- Location: IOIBUF_X0_Y5_N8
\D1[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(17),
	o => \D1[17]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\D2[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(17),
	o => \D2[17]~input_o\);

-- Location: LCCOMB_X1_Y6_N12
\MX_OUT~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~17_combout\ = (\SEL~input_o\ & ((\D2[17]~input_o\))) # (!\SEL~input_o\ & (\D1[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL~input_o\,
	datab => \D1[17]~input_o\,
	datac => \D2[17]~input_o\,
	combout => \MX_OUT~17_combout\);

-- Location: IOIBUF_X0_Y25_N15
\D1[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(18),
	o => \D1[18]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\D2[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(18),
	o => \D2[18]~input_o\);

-- Location: LCCOMB_X1_Y24_N22
\MX_OUT~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~18_combout\ = (\SEL~input_o\ & ((\D2[18]~input_o\))) # (!\SEL~input_o\ & (\D1[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL~input_o\,
	datac => \D1[18]~input_o\,
	datad => \D2[18]~input_o\,
	combout => \MX_OUT~18_combout\);

-- Location: IOIBUF_X0_Y12_N8
\D1[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(19),
	o => \D1[19]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\D2[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(19),
	o => \D2[19]~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\MX_OUT~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~19_combout\ = (\SEL~input_o\ & ((\D2[19]~input_o\))) # (!\SEL~input_o\ & (\D1[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[19]~input_o\,
	datab => \SEL~input_o\,
	datad => \D2[19]~input_o\,
	combout => \MX_OUT~19_combout\);

-- Location: IOIBUF_X0_Y13_N15
\D2[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(20),
	o => \D2[20]~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\D1[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(20),
	o => \D1[20]~input_o\);

-- Location: LCCOMB_X1_Y24_N26
\MX_OUT~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~20_combout\ = (\SEL~input_o\ & (\D2[20]~input_o\)) # (!\SEL~input_o\ & ((\D1[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL~input_o\,
	datac => \D2[20]~input_o\,
	datad => \D1[20]~input_o\,
	combout => \MX_OUT~20_combout\);

-- Location: IOIBUF_X0_Y11_N15
\D1[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(21),
	o => \D1[21]~input_o\);

-- Location: IOIBUF_X0_Y26_N22
\D2[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(21),
	o => \D2[21]~input_o\);

-- Location: LCCOMB_X1_Y24_N28
\MX_OUT~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~21_combout\ = (\SEL~input_o\ & ((\D2[21]~input_o\))) # (!\SEL~input_o\ & (\D1[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D1[21]~input_o\,
	datac => \D2[21]~input_o\,
	datad => \SEL~input_o\,
	combout => \MX_OUT~21_combout\);

-- Location: IOIBUF_X0_Y9_N1
\D1[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(22),
	o => \D1[22]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\D2[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(22),
	o => \D2[22]~input_o\);

-- Location: LCCOMB_X1_Y6_N6
\MX_OUT~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~22_combout\ = (\SEL~input_o\ & ((\D2[22]~input_o\))) # (!\SEL~input_o\ & (\D1[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[22]~input_o\,
	datac => \SEL~input_o\,
	datad => \D2[22]~input_o\,
	combout => \MX_OUT~22_combout\);

-- Location: IOIBUF_X0_Y6_N8
\D2[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(23),
	o => \D2[23]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\D1[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(23),
	o => \D1[23]~input_o\);

-- Location: LCCOMB_X1_Y6_N0
\MX_OUT~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MX_OUT~23_combout\ = (\SEL~input_o\ & (\D2[23]~input_o\)) # (!\SEL~input_o\ & ((\D1[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D2[23]~input_o\,
	datac => \SEL~input_o\,
	datad => \D1[23]~input_o\,
	combout => \MX_OUT~23_combout\);

ww_MX_OUT(0) <= \MX_OUT[0]~output_o\;

ww_MX_OUT(1) <= \MX_OUT[1]~output_o\;

ww_MX_OUT(2) <= \MX_OUT[2]~output_o\;

ww_MX_OUT(3) <= \MX_OUT[3]~output_o\;

ww_MX_OUT(4) <= \MX_OUT[4]~output_o\;

ww_MX_OUT(5) <= \MX_OUT[5]~output_o\;

ww_MX_OUT(6) <= \MX_OUT[6]~output_o\;

ww_MX_OUT(7) <= \MX_OUT[7]~output_o\;

ww_MX_OUT(8) <= \MX_OUT[8]~output_o\;

ww_MX_OUT(9) <= \MX_OUT[9]~output_o\;

ww_MX_OUT(10) <= \MX_OUT[10]~output_o\;

ww_MX_OUT(11) <= \MX_OUT[11]~output_o\;

ww_MX_OUT(12) <= \MX_OUT[12]~output_o\;

ww_MX_OUT(13) <= \MX_OUT[13]~output_o\;

ww_MX_OUT(14) <= \MX_OUT[14]~output_o\;

ww_MX_OUT(15) <= \MX_OUT[15]~output_o\;

ww_MX_OUT(16) <= \MX_OUT[16]~output_o\;

ww_MX_OUT(17) <= \MX_OUT[17]~output_o\;

ww_MX_OUT(18) <= \MX_OUT[18]~output_o\;

ww_MX_OUT(19) <= \MX_OUT[19]~output_o\;

ww_MX_OUT(20) <= \MX_OUT[20]~output_o\;

ww_MX_OUT(21) <= \MX_OUT[21]~output_o\;

ww_MX_OUT(22) <= \MX_OUT[22]~output_o\;

ww_MX_OUT(23) <= \MX_OUT[23]~output_o\;
END structure;


