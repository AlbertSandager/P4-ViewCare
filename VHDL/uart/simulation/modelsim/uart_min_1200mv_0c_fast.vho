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

-- DATE "03/14/2019 14:37:13"

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

ENTITY 	uart IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	tx_ena : IN std_logic;
	tx_data : IN std_logic_vector(7 DOWNTO 0);
	rx : IN std_logic;
	rx_busy : BUFFER std_logic;
	rx_error : BUFFER std_logic;
	rx_data : BUFFER std_logic_vector(7 DOWNTO 0);
	tx_busy : BUFFER std_logic;
	tx : BUFFER std_logic
	);
END uart;

-- Design Ports Information
-- rx_busy	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_error	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[1]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[2]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[3]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[6]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[7]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_busy	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_ena	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart IS
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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_tx_ena : std_logic;
SIGNAL ww_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rx : std_logic;
SIGNAL ww_rx_busy : std_logic;
SIGNAL ww_rx_error : std_logic;
SIGNAL ww_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_tx_busy : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rx_busy~output_o\ : std_logic;
SIGNAL \rx_error~output_o\ : std_logic;
SIGNAL \rx_data[0]~output_o\ : std_logic;
SIGNAL \rx_data[1]~output_o\ : std_logic;
SIGNAL \rx_data[2]~output_o\ : std_logic;
SIGNAL \rx_data[3]~output_o\ : std_logic;
SIGNAL \rx_data[4]~output_o\ : std_logic;
SIGNAL \rx_data[5]~output_o\ : std_logic;
SIGNAL \rx_data[6]~output_o\ : std_logic;
SIGNAL \rx_data[7]~output_o\ : std_logic;
SIGNAL \tx_busy~output_o\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \count_baud[0]~12_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \count_baud[0]~13\ : std_logic;
SIGNAL \count_baud[1]~14_combout\ : std_logic;
SIGNAL \count_baud[1]~15\ : std_logic;
SIGNAL \count_baud[2]~16_combout\ : std_logic;
SIGNAL \count_baud[2]~17\ : std_logic;
SIGNAL \count_baud[3]~18_combout\ : std_logic;
SIGNAL \count_baud[3]~19\ : std_logic;
SIGNAL \count_baud[4]~20_combout\ : std_logic;
SIGNAL \count_baud[4]~21\ : std_logic;
SIGNAL \count_baud[5]~22_combout\ : std_logic;
SIGNAL \count_baud[5]~23\ : std_logic;
SIGNAL \count_baud[6]~24_combout\ : std_logic;
SIGNAL \count_baud[6]~25\ : std_logic;
SIGNAL \count_baud[7]~26_combout\ : std_logic;
SIGNAL \count_baud[7]~27\ : std_logic;
SIGNAL \count_baud[8]~28_combout\ : std_logic;
SIGNAL \count_baud[8]~29\ : std_logic;
SIGNAL \count_baud[9]~30_combout\ : std_logic;
SIGNAL \count_baud[9]~31\ : std_logic;
SIGNAL \count_baud[10]~32_combout\ : std_logic;
SIGNAL \count_baud[10]~33\ : std_logic;
SIGNAL \count_baud[11]~34_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~26_combout\ : std_logic;
SIGNAL \count_os[0]~8_combout\ : std_logic;
SIGNAL \count_os[0]~9\ : std_logic;
SIGNAL \count_os[1]~10_combout\ : std_logic;
SIGNAL \count_os[1]~11\ : std_logic;
SIGNAL \count_os[2]~12_combout\ : std_logic;
SIGNAL \count_os[2]~13\ : std_logic;
SIGNAL \count_os[3]~14_combout\ : std_logic;
SIGNAL \count_os[3]~15\ : std_logic;
SIGNAL \count_os[4]~16_combout\ : std_logic;
SIGNAL \count_os[4]~17\ : std_logic;
SIGNAL \count_os[5]~18_combout\ : std_logic;
SIGNAL \count_os[5]~19\ : std_logic;
SIGNAL \count_os[6]~20_combout\ : std_logic;
SIGNAL \count_os[6]~21\ : std_logic;
SIGNAL \count_os[7]~22_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \os_pulse~0_combout\ : std_logic;
SIGNAL \os_pulse~q\ : std_logic;
SIGNAL \os_count[3]~2_combout\ : std_logic;
SIGNAL \os_count[0]~5_combout\ : std_logic;
SIGNAL \os_count[1]~6_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \os_count[2]~4_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \rx_buffer[1]~0_combout\ : std_logic;
SIGNAL \rx_count[3]~0_combout\ : std_logic;
SIGNAL \rx_count[0]~2_combout\ : std_logic;
SIGNAL \rx_count[1]~3_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \rx_count[2]~4_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \rx_count[3]~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \rx_busy~2_combout\ : std_logic;
SIGNAL \rx_state~3_combout\ : std_logic;
SIGNAL \rx_state~q\ : std_logic;
SIGNAL \os_count[2]~0_combout\ : std_logic;
SIGNAL \os_count[3]~1_combout\ : std_logic;
SIGNAL \os_count[3]~3_combout\ : std_logic;
SIGNAL \rx_state~2_combout\ : std_logic;
SIGNAL \rx_busy~3_combout\ : std_logic;
SIGNAL \rx_busy~reg0_q\ : std_logic;
SIGNAL \rx_buffer[1]~1_combout\ : std_logic;
SIGNAL \rx_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \rx_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \rx_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \rx_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \rx_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \rx_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \parity_error~0_combout\ : std_logic;
SIGNAL \parity_error~1_combout\ : std_logic;
SIGNAL \rx_error~0_combout\ : std_logic;
SIGNAL \rx_error~1_combout\ : std_logic;
SIGNAL \rx_error~2_combout\ : std_logic;
SIGNAL \rx_error~reg0_q\ : std_logic;
SIGNAL \rx_data[0]~reg0_q\ : std_logic;
SIGNAL \rx_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[1]~reg0_q\ : std_logic;
SIGNAL \rx_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[2]~reg0_q\ : std_logic;
SIGNAL \rx_data[3]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[3]~reg0_q\ : std_logic;
SIGNAL \rx_data[4]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[4]~reg0_q\ : std_logic;
SIGNAL \rx_data[5]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[5]~reg0_q\ : std_logic;
SIGNAL \rx_data[6]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[6]~reg0_q\ : std_logic;
SIGNAL \rx_data[7]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[7]~reg0_q\ : std_logic;
SIGNAL \tx_ena~input_o\ : std_logic;
SIGNAL \tx_count~4_combout\ : std_logic;
SIGNAL \tx_count[3]~1_combout\ : std_logic;
SIGNAL \baud_pulse~0_combout\ : std_logic;
SIGNAL \baud_pulse~q\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \tx_count~3_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \tx_count~2_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \tx_count~0_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \tx_state~q\ : std_logic;
SIGNAL \tx_busy~0_combout\ : std_logic;
SIGNAL \tx_busy~reg0_q\ : std_logic;
SIGNAL \tx_data[0]~input_o\ : std_logic;
SIGNAL \tx_data[1]~input_o\ : std_logic;
SIGNAL \tx_data[2]~input_o\ : std_logic;
SIGNAL \tx_data[4]~input_o\ : std_logic;
SIGNAL \tx_data[7]~input_o\ : std_logic;
SIGNAL \tx_data[3]~input_o\ : std_logic;
SIGNAL \tx_parity[8]~0_combout\ : std_logic;
SIGNAL \tx_data[6]~input_o\ : std_logic;
SIGNAL \tx_parity[8]~1_combout\ : std_logic;
SIGNAL \tx_data[5]~input_o\ : std_logic;
SIGNAL \tx_buffer[0]~1_combout\ : std_logic;
SIGNAL \tx_buffer[10]~11_combout\ : std_logic;
SIGNAL \tx_buffer~10_combout\ : std_logic;
SIGNAL \tx_buffer~9_combout\ : std_logic;
SIGNAL \tx_buffer~8_combout\ : std_logic;
SIGNAL \tx_buffer~7_combout\ : std_logic;
SIGNAL \tx_buffer~6_combout\ : std_logic;
SIGNAL \tx_buffer~5_combout\ : std_logic;
SIGNAL \tx_buffer~4_combout\ : std_logic;
SIGNAL \tx_buffer~3_combout\ : std_logic;
SIGNAL \tx_buffer~2_combout\ : std_logic;
SIGNAL \tx_buffer~0_combout\ : std_logic;
SIGNAL \tx~reg0feeder_combout\ : std_logic;
SIGNAL \tx~reg0_q\ : std_logic;
SIGNAL tx_parity : std_logic_vector(8 DOWNTO 0);
SIGNAL tx_count : std_logic_vector(3 DOWNTO 0);
SIGNAL tx_buffer : std_logic_vector(10 DOWNTO 0);
SIGNAL rx_count : std_logic_vector(3 DOWNTO 0);
SIGNAL rx_buffer : std_logic_vector(9 DOWNTO 0);
SIGNAL os_count : std_logic_vector(3 DOWNTO 0);
SIGNAL count_os : std_logic_vector(7 DOWNTO 0);
SIGNAL count_baud : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~26_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \ALT_INV_tx~reg0_q\ : std_logic;
SIGNAL \ALT_INV_tx_busy~reg0_q\ : std_logic;
SIGNAL \ALT_INV_tx_state~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_tx_ena <= tx_ena;
ww_tx_data <= tx_data;
ww_rx <= rx;
rx_busy <= ww_rx_busy;
rx_error <= ww_rx_error;
rx_data <= ww_rx_data;
tx_busy <= ww_tx_busy;
tx <= ww_tx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan0~26_combout\ <= NOT \LessThan0~26_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;
\ALT_INV_tx~reg0_q\ <= NOT \tx~reg0_q\;
\ALT_INV_tx_busy~reg0_q\ <= NOT \tx_busy~reg0_q\;
\ALT_INV_tx_state~q\ <= NOT \tx_state~q\;

-- Location: IOOBUF_X0_Y25_N23
\rx_busy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_busy~reg0_q\,
	devoe => ww_devoe,
	o => \rx_busy~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\rx_error~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_error~reg0_q\,
	devoe => ww_devoe,
	o => \rx_error~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\rx_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\rx_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\rx_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\rx_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\rx_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\rx_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[5]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\rx_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[6]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\rx_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\tx_busy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_tx_busy~reg0_q\,
	devoe => ww_devoe,
	o => \tx_busy~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\tx~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_tx~reg0_q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

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

-- Location: IOIBUF_X37_Y0_N22
\rx~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X27_Y21_N8
\count_baud[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[0]~12_combout\ = count_baud(0) $ (VCC)
-- \count_baud[0]~13\ = CARRY(count_baud(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(0),
	datad => VCC,
	combout => \count_baud[0]~12_combout\,
	cout => \count_baud[0]~13\);

-- Location: IOIBUF_X0_Y14_N1
\reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: CLKCTRL_G4
\reset_n~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: FF_X27_Y21_N9
\count_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[0]~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(0));

-- Location: LCCOMB_X27_Y21_N10
\count_baud[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[1]~14_combout\ = (count_baud(1) & (!\count_baud[0]~13\)) # (!count_baud(1) & ((\count_baud[0]~13\) # (GND)))
-- \count_baud[1]~15\ = CARRY((!\count_baud[0]~13\) # (!count_baud(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_baud(1),
	datad => VCC,
	cin => \count_baud[0]~13\,
	combout => \count_baud[1]~14_combout\,
	cout => \count_baud[1]~15\);

-- Location: FF_X27_Y21_N11
\count_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[1]~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(1));

-- Location: LCCOMB_X27_Y21_N12
\count_baud[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[2]~16_combout\ = (count_baud(2) & (\count_baud[1]~15\ $ (GND))) # (!count_baud(2) & (!\count_baud[1]~15\ & VCC))
-- \count_baud[2]~17\ = CARRY((count_baud(2) & !\count_baud[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_baud(2),
	datad => VCC,
	cin => \count_baud[1]~15\,
	combout => \count_baud[2]~16_combout\,
	cout => \count_baud[2]~17\);

-- Location: FF_X27_Y21_N13
\count_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[2]~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(2));

-- Location: LCCOMB_X27_Y21_N14
\count_baud[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[3]~18_combout\ = (count_baud(3) & (!\count_baud[2]~17\)) # (!count_baud(3) & ((\count_baud[2]~17\) # (GND)))
-- \count_baud[3]~19\ = CARRY((!\count_baud[2]~17\) # (!count_baud(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_baud(3),
	datad => VCC,
	cin => \count_baud[2]~17\,
	combout => \count_baud[3]~18_combout\,
	cout => \count_baud[3]~19\);

-- Location: FF_X27_Y21_N15
\count_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[3]~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(3));

-- Location: LCCOMB_X27_Y21_N16
\count_baud[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[4]~20_combout\ = (count_baud(4) & (\count_baud[3]~19\ $ (GND))) # (!count_baud(4) & (!\count_baud[3]~19\ & VCC))
-- \count_baud[4]~21\ = CARRY((count_baud(4) & !\count_baud[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_baud(4),
	datad => VCC,
	cin => \count_baud[3]~19\,
	combout => \count_baud[4]~20_combout\,
	cout => \count_baud[4]~21\);

-- Location: FF_X27_Y21_N17
\count_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[4]~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(4));

-- Location: LCCOMB_X27_Y21_N18
\count_baud[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[5]~22_combout\ = (count_baud(5) & (!\count_baud[4]~21\)) # (!count_baud(5) & ((\count_baud[4]~21\) # (GND)))
-- \count_baud[5]~23\ = CARRY((!\count_baud[4]~21\) # (!count_baud(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_baud(5),
	datad => VCC,
	cin => \count_baud[4]~21\,
	combout => \count_baud[5]~22_combout\,
	cout => \count_baud[5]~23\);

-- Location: FF_X27_Y21_N19
\count_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[5]~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(5));

-- Location: LCCOMB_X27_Y21_N20
\count_baud[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[6]~24_combout\ = (count_baud(6) & (\count_baud[5]~23\ $ (GND))) # (!count_baud(6) & (!\count_baud[5]~23\ & VCC))
-- \count_baud[6]~25\ = CARRY((count_baud(6) & !\count_baud[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_baud(6),
	datad => VCC,
	cin => \count_baud[5]~23\,
	combout => \count_baud[6]~24_combout\,
	cout => \count_baud[6]~25\);

-- Location: FF_X27_Y21_N21
\count_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[6]~24_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(6));

-- Location: LCCOMB_X27_Y21_N22
\count_baud[7]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[7]~26_combout\ = (count_baud(7) & (!\count_baud[6]~25\)) # (!count_baud(7) & ((\count_baud[6]~25\) # (GND)))
-- \count_baud[7]~27\ = CARRY((!\count_baud[6]~25\) # (!count_baud(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(7),
	datad => VCC,
	cin => \count_baud[6]~25\,
	combout => \count_baud[7]~26_combout\,
	cout => \count_baud[7]~27\);

-- Location: FF_X27_Y21_N23
\count_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[7]~26_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(7));

-- Location: LCCOMB_X27_Y21_N24
\count_baud[8]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[8]~28_combout\ = (count_baud(8) & (\count_baud[7]~27\ $ (GND))) # (!count_baud(8) & (!\count_baud[7]~27\ & VCC))
-- \count_baud[8]~29\ = CARRY((count_baud(8) & !\count_baud[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_baud(8),
	datad => VCC,
	cin => \count_baud[7]~27\,
	combout => \count_baud[8]~28_combout\,
	cout => \count_baud[8]~29\);

-- Location: FF_X27_Y21_N25
\count_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[8]~28_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(8));

-- Location: LCCOMB_X27_Y21_N26
\count_baud[9]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[9]~30_combout\ = (count_baud(9) & (!\count_baud[8]~29\)) # (!count_baud(9) & ((\count_baud[8]~29\) # (GND)))
-- \count_baud[9]~31\ = CARRY((!\count_baud[8]~29\) # (!count_baud(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(9),
	datad => VCC,
	cin => \count_baud[8]~29\,
	combout => \count_baud[9]~30_combout\,
	cout => \count_baud[9]~31\);

-- Location: FF_X27_Y21_N27
\count_baud[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[9]~30_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(9));

-- Location: LCCOMB_X27_Y21_N28
\count_baud[10]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[10]~32_combout\ = (count_baud(10) & (\count_baud[9]~31\ $ (GND))) # (!count_baud(10) & (!\count_baud[9]~31\ & VCC))
-- \count_baud[10]~33\ = CARRY((count_baud(10) & !\count_baud[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_baud(10),
	datad => VCC,
	cin => \count_baud[9]~31\,
	combout => \count_baud[10]~32_combout\,
	cout => \count_baud[10]~33\);

-- Location: FF_X27_Y21_N29
\count_baud[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[10]~32_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(10));

-- Location: LCCOMB_X27_Y21_N30
\count_baud[11]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[11]~34_combout\ = count_baud(11) $ (\count_baud[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(11),
	cin => \count_baud[10]~33\,
	combout => \count_baud[11]~34_combout\);

-- Location: FF_X27_Y21_N31
\count_baud[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[11]~34_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(11));

-- Location: LCCOMB_X27_Y21_N0
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!count_baud(2) & ((!count_baud(1)) # (!count_baud(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(2),
	datac => count_baud(0),
	datad => count_baud(1),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X27_Y21_N2
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((!count_baud(4) & ((\LessThan0~9_combout\) # (!count_baud(3))))) # (!count_baud(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(3),
	datab => count_baud(4),
	datac => count_baud(5),
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X27_Y21_N4
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!count_baud(8) & (!count_baud(6) & (!count_baud(7) & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(8),
	datab => count_baud(6),
	datac => count_baud(7),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X26_Y21_N0
\LessThan0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = ((!count_baud(10) & ((\LessThan0~3_combout\) # (!count_baud(9))))) # (!count_baud(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(11),
	datab => count_baud(10),
	datac => count_baud(9),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~26_combout\);

-- Location: LCCOMB_X26_Y21_N10
\count_os[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_os[0]~8_combout\ = (((count_os(0) & \LessThan0~26_combout\)))
-- \count_os[0]~9\ = CARRY((count_os(0) & \LessThan0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_os(0),
	datab => \LessThan0~26_combout\,
	datad => VCC,
	combout => \count_os[0]~8_combout\,
	cout => \count_os[0]~9\);

-- Location: FF_X26_Y21_N11
\count_os[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[0]~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(0));

-- Location: LCCOMB_X26_Y21_N12
\count_os[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_os[1]~10_combout\ = (\count_os[0]~9\ & (((!\LessThan0~26_combout\)) # (!count_os(1)))) # (!\count_os[0]~9\ & (((count_os(1) & \LessThan0~26_combout\)) # (GND)))
-- \count_os[1]~11\ = CARRY(((!\count_os[0]~9\) # (!\LessThan0~26_combout\)) # (!count_os(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_os(1),
	datab => \LessThan0~26_combout\,
	datad => VCC,
	cin => \count_os[0]~9\,
	combout => \count_os[1]~10_combout\,
	cout => \count_os[1]~11\);

-- Location: FF_X26_Y21_N13
\count_os[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[1]~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(1));

-- Location: LCCOMB_X26_Y21_N14
\count_os[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_os[2]~12_combout\ = (\count_os[1]~11\ & (count_os(2) & (\LessThan0~26_combout\ & VCC))) # (!\count_os[1]~11\ & ((((count_os(2) & \LessThan0~26_combout\)))))
-- \count_os[2]~13\ = CARRY((count_os(2) & (\LessThan0~26_combout\ & !\count_os[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_os(2),
	datab => \LessThan0~26_combout\,
	datad => VCC,
	cin => \count_os[1]~11\,
	combout => \count_os[2]~12_combout\,
	cout => \count_os[2]~13\);

-- Location: FF_X26_Y21_N15
\count_os[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[2]~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(2));

-- Location: LCCOMB_X26_Y21_N16
\count_os[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_os[3]~14_combout\ = (\count_os[2]~13\ & (((!\LessThan0~26_combout\)) # (!count_os(3)))) # (!\count_os[2]~13\ & (((count_os(3) & \LessThan0~26_combout\)) # (GND)))
-- \count_os[3]~15\ = CARRY(((!\count_os[2]~13\) # (!\LessThan0~26_combout\)) # (!count_os(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_os(3),
	datab => \LessThan0~26_combout\,
	datad => VCC,
	cin => \count_os[2]~13\,
	combout => \count_os[3]~14_combout\,
	cout => \count_os[3]~15\);

-- Location: FF_X26_Y21_N17
\count_os[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[3]~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(3));

-- Location: LCCOMB_X26_Y21_N18
\count_os[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_os[4]~16_combout\ = (\count_os[3]~15\ & (count_os(4) & (\LessThan0~26_combout\ & VCC))) # (!\count_os[3]~15\ & ((((count_os(4) & \LessThan0~26_combout\)))))
-- \count_os[4]~17\ = CARRY((count_os(4) & (\LessThan0~26_combout\ & !\count_os[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_os(4),
	datab => \LessThan0~26_combout\,
	datad => VCC,
	cin => \count_os[3]~15\,
	combout => \count_os[4]~16_combout\,
	cout => \count_os[4]~17\);

-- Location: FF_X26_Y21_N19
\count_os[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[4]~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(4));

-- Location: LCCOMB_X26_Y21_N20
\count_os[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_os[5]~18_combout\ = (\count_os[4]~17\ & (((!\LessThan0~26_combout\)) # (!count_os(5)))) # (!\count_os[4]~17\ & (((count_os(5) & \LessThan0~26_combout\)) # (GND)))
-- \count_os[5]~19\ = CARRY(((!\count_os[4]~17\) # (!\LessThan0~26_combout\)) # (!count_os(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_os(5),
	datab => \LessThan0~26_combout\,
	datad => VCC,
	cin => \count_os[4]~17\,
	combout => \count_os[5]~18_combout\,
	cout => \count_os[5]~19\);

-- Location: FF_X26_Y21_N21
\count_os[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[5]~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(5));

-- Location: LCCOMB_X26_Y21_N22
\count_os[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_os[6]~20_combout\ = (\count_os[5]~19\ & (count_os(6) & (\LessThan0~26_combout\ & VCC))) # (!\count_os[5]~19\ & ((((count_os(6) & \LessThan0~26_combout\)))))
-- \count_os[6]~21\ = CARRY((count_os(6) & (\LessThan0~26_combout\ & !\count_os[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_os(6),
	datab => \LessThan0~26_combout\,
	datad => VCC,
	cin => \count_os[5]~19\,
	combout => \count_os[6]~20_combout\,
	cout => \count_os[6]~21\);

-- Location: FF_X26_Y21_N23
\count_os[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[6]~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(6));

-- Location: LCCOMB_X26_Y21_N24
\count_os[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_os[7]~22_combout\ = \count_os[6]~21\ $ (((count_os(7) & \LessThan0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_os(7),
	datad => \LessThan0~26_combout\,
	cin => \count_os[6]~21\,
	combout => \count_os[7]~22_combout\);

-- Location: FF_X26_Y21_N25
\count_os[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[7]~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(7));

-- Location: LCCOMB_X26_Y21_N30
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!count_os(1) & (!count_os(3) & (!count_os(2) & !count_os(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_os(1),
	datab => count_os(3),
	datac => count_os(2),
	datad => count_os(0),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X26_Y21_N4
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (count_os(5) & ((count_os(4)) # (!\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_os(5),
	datac => \LessThan1~0_combout\,
	datad => count_os(4),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X26_Y21_N2
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!\LessThan1~1_combout\ & !count_os(6))) # (!\LessThan0~26_combout\)) # (!count_os(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_os(7),
	datab => \LessThan1~1_combout\,
	datac => count_os(6),
	datad => \LessThan0~26_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X26_Y21_N8
\os_pulse~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_pulse~0_combout\ = !\LessThan1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan1~2_combout\,
	combout => \os_pulse~0_combout\);

-- Location: FF_X26_Y21_N9
os_pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \os_pulse~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \os_pulse~q\);

-- Location: LCCOMB_X3_Y25_N10
\os_count[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[3]~2_combout\ = (\os_pulse~q\ & ((!\rx_buffer[1]~0_combout\) # (!\LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datac => \rx_buffer[1]~0_combout\,
	datad => \os_pulse~q\,
	combout => \os_count[3]~2_combout\);

-- Location: LCCOMB_X3_Y25_N22
\os_count[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[0]~5_combout\ = (os_count(0) & (!\os_count[3]~2_combout\)) # (!os_count(0) & ((\os_count[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \os_count[3]~2_combout\,
	datac => os_count(0),
	datad => \os_count[3]~1_combout\,
	combout => \os_count[0]~5_combout\);

-- Location: FF_X3_Y25_N23
\os_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \os_count[0]~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => os_count(0));

-- Location: LCCOMB_X3_Y25_N8
\os_count[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[1]~6_combout\ = (os_count(1) & (((\os_count[3]~1_combout\ & !os_count(0))) # (!\os_count[3]~2_combout\))) # (!os_count(1) & (\os_count[3]~1_combout\ & (os_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \os_count[3]~1_combout\,
	datab => os_count(0),
	datac => os_count(1),
	datad => \os_count[3]~2_combout\,
	combout => \os_count[1]~6_combout\);

-- Location: FF_X3_Y25_N9
\os_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \os_count[1]~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => os_count(1));

-- Location: LCCOMB_X3_Y25_N20
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = os_count(2) $ (((os_count(1) & os_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => os_count(1),
	datac => os_count(0),
	datad => os_count(2),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X3_Y25_N28
\os_count[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[2]~4_combout\ = (\os_count[3]~2_combout\ & (\Add2~0_combout\ & ((\os_count[3]~1_combout\)))) # (!\os_count[3]~2_combout\ & ((os_count(2)) # ((\Add2~0_combout\ & \os_count[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \os_count[3]~2_combout\,
	datab => \Add2~0_combout\,
	datac => os_count(2),
	datad => \os_count[3]~1_combout\,
	combout => \os_count[2]~4_combout\);

-- Location: FF_X3_Y25_N29
\os_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \os_count[2]~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => os_count(2));

-- Location: LCCOMB_X3_Y25_N6
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (os_count(0) & (os_count(1) & os_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => os_count(0),
	datac => os_count(1),
	datad => os_count(2),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X3_Y25_N14
\rx_buffer[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[1]~0_combout\ = (\LessThan3~0_combout\ & (os_count(3) & \rx_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datac => os_count(3),
	datad => \rx_state~q\,
	combout => \rx_buffer[1]~0_combout\);

-- Location: LCCOMB_X3_Y25_N2
\rx_count[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_count[3]~0_combout\ = (\os_pulse~q\ & ((\rx_state~2_combout\) # ((!\LessThan4~0_combout\ & \rx_buffer[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \rx_buffer[1]~0_combout\,
	datac => \rx_state~2_combout\,
	datad => \os_pulse~q\,
	combout => \rx_count[3]~0_combout\);

-- Location: LCCOMB_X2_Y25_N22
\rx_count[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_count[0]~2_combout\ = (rx_count(0) & ((!\rx_count[3]~0_combout\))) # (!rx_count(0) & (\rx_state~q\ & \rx_count[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_state~q\,
	datac => rx_count(0),
	datad => \rx_count[3]~0_combout\,
	combout => \rx_count[0]~2_combout\);

-- Location: FF_X2_Y25_N23
\rx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_count[0]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_count(0));

-- Location: LCCOMB_X2_Y25_N24
\rx_count[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_count[1]~3_combout\ = (\rx_count[3]~0_combout\ & (\rx_state~q\ & (rx_count(0) $ (rx_count(1))))) # (!\rx_count[3]~0_combout\ & (((rx_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_count(0),
	datab => \rx_state~q\,
	datac => rx_count(1),
	datad => \rx_count[3]~0_combout\,
	combout => \rx_count[1]~3_combout\);

-- Location: FF_X2_Y25_N25
\rx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_count[1]~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_count(1));

-- Location: LCCOMB_X2_Y25_N12
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = rx_count(2) $ (((rx_count(0) & rx_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rx_count(2),
	datac => rx_count(0),
	datad => rx_count(1),
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X2_Y25_N18
\rx_count[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_count[2]~4_combout\ = (\rx_count[3]~0_combout\ & (\Add3~1_combout\ & (\rx_state~q\))) # (!\rx_count[3]~0_combout\ & (((rx_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => \rx_state~q\,
	datac => rx_count(2),
	datad => \rx_count[3]~0_combout\,
	combout => \rx_count[2]~4_combout\);

-- Location: FF_X2_Y25_N19
\rx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_count[2]~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_count(2));

-- Location: LCCOMB_X2_Y25_N6
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = rx_count(3) $ (((rx_count(0) & (rx_count(2) & rx_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_count(0),
	datab => rx_count(2),
	datac => rx_count(3),
	datad => rx_count(1),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X2_Y25_N8
\rx_count[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_count[3]~1_combout\ = (\rx_count[3]~0_combout\ & (\Add3~0_combout\ & (\rx_state~q\))) # (!\rx_count[3]~0_combout\ & (((rx_count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \rx_state~q\,
	datac => rx_count(3),
	datad => \rx_count[3]~0_combout\,
	combout => \rx_count[3]~1_combout\);

-- Location: FF_X2_Y25_N9
\rx_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_count[3]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_count(3));

-- Location: LCCOMB_X2_Y25_N28
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (rx_count(3) & ((rx_count(0)) # ((rx_count(2)) # (rx_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_count(0),
	datab => rx_count(2),
	datac => rx_count(3),
	datad => rx_count(1),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X3_Y25_N4
\rx_busy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_busy~2_combout\ = ((!\LessThan3~0_combout\) # (!\LessThan4~0_combout\)) # (!os_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => os_count(3),
	datac => \LessThan4~0_combout\,
	datad => \LessThan3~0_combout\,
	combout => \rx_busy~2_combout\);

-- Location: LCCOMB_X3_Y25_N16
\rx_state~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_state~3_combout\ = (\rx_state~q\ & (((\rx_busy~2_combout\)))) # (!\rx_state~q\ & (os_count(3) & (!\rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => os_count(3),
	datab => \rx~input_o\,
	datac => \rx_state~q\,
	datad => \rx_busy~2_combout\,
	combout => \rx_state~3_combout\);

-- Location: FF_X3_Y25_N17
rx_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_state~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state~q\);

-- Location: LCCOMB_X3_Y25_N18
\os_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[2]~0_combout\ = (!\rx_state~q\ & ((\rx~input_o\) # (os_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => os_count(3),
	datad => \rx_state~q\,
	combout => \os_count[2]~0_combout\);

-- Location: LCCOMB_X3_Y25_N12
\os_count[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[3]~1_combout\ = (!\os_count[2]~0_combout\ & (!\rx_buffer[1]~0_combout\ & \os_pulse~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \os_count[2]~0_combout\,
	datac => \rx_buffer[1]~0_combout\,
	datad => \os_pulse~q\,
	combout => \os_count[3]~1_combout\);

-- Location: LCCOMB_X3_Y25_N26
\os_count[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[3]~3_combout\ = (os_count(3) & (((\os_count[3]~1_combout\ & !\LessThan3~0_combout\)) # (!\os_count[3]~2_combout\))) # (!os_count(3) & (\os_count[3]~1_combout\ & (\LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \os_count[3]~1_combout\,
	datab => \LessThan3~0_combout\,
	datac => os_count(3),
	datad => \os_count[3]~2_combout\,
	combout => \os_count[3]~3_combout\);

-- Location: FF_X3_Y25_N27
\os_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \os_count[3]~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => os_count(3));

-- Location: LCCOMB_X3_Y25_N30
\rx_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_state~2_combout\ = (!\rx~input_o\ & (os_count(3) & !\rx_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => os_count(3),
	datad => \rx_state~q\,
	combout => \rx_state~2_combout\);

-- Location: LCCOMB_X3_Y25_N0
\rx_busy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_busy~3_combout\ = (\rx_state~2_combout\) # ((\rx_busy~2_combout\ & (\rx_busy~reg0_q\ & \rx_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_state~2_combout\,
	datab => \rx_busy~2_combout\,
	datac => \rx_busy~reg0_q\,
	datad => \rx_state~q\,
	combout => \rx_busy~3_combout\);

-- Location: FF_X3_Y25_N1
\rx_busy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_busy~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_busy~reg0_q\);

-- Location: LCCOMB_X4_Y25_N22
\rx_buffer[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[1]~1_combout\ = (\rx_buffer[1]~0_combout\ & (!\LessThan4~0_combout\ & (\reset_n~input_o\ & \os_pulse~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_buffer[1]~0_combout\,
	datab => \LessThan4~0_combout\,
	datac => \reset_n~input_o\,
	datad => \os_pulse~q\,
	combout => \rx_buffer[1]~1_combout\);

-- Location: FF_X4_Y25_N9
\rx_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx~input_o\,
	sload => VCC,
	ena => \rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(9));

-- Location: FF_X4_Y25_N25
\rx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => rx_buffer(9),
	sload => VCC,
	ena => \rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(8));

-- Location: LCCOMB_X4_Y25_N6
\rx_buffer[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[7]~feeder_combout\ = rx_buffer(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(8),
	combout => \rx_buffer[7]~feeder_combout\);

-- Location: FF_X4_Y25_N7
\rx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_buffer[7]~feeder_combout\,
	ena => \rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(7));

-- Location: LCCOMB_X4_Y25_N10
\rx_buffer[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[6]~feeder_combout\ = rx_buffer(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(7),
	combout => \rx_buffer[6]~feeder_combout\);

-- Location: FF_X4_Y25_N11
\rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_buffer[6]~feeder_combout\,
	ena => \rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(6));

-- Location: LCCOMB_X4_Y25_N26
\rx_buffer[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[5]~feeder_combout\ = rx_buffer(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(6),
	combout => \rx_buffer[5]~feeder_combout\);

-- Location: FF_X4_Y25_N27
\rx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_buffer[5]~feeder_combout\,
	ena => \rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(5));

-- Location: LCCOMB_X4_Y25_N16
\rx_buffer[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[4]~feeder_combout\ = rx_buffer(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(5),
	combout => \rx_buffer[4]~feeder_combout\);

-- Location: FF_X4_Y25_N17
\rx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_buffer[4]~feeder_combout\,
	ena => \rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(4));

-- Location: LCCOMB_X4_Y25_N4
\rx_buffer[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[3]~feeder_combout\ = rx_buffer(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(4),
	combout => \rx_buffer[3]~feeder_combout\);

-- Location: FF_X4_Y25_N5
\rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_buffer[3]~feeder_combout\,
	ena => \rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(3));

-- Location: LCCOMB_X4_Y25_N18
\rx_buffer[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[2]~feeder_combout\ = rx_buffer(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(3),
	combout => \rx_buffer[2]~feeder_combout\);

-- Location: FF_X4_Y25_N19
\rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_buffer[2]~feeder_combout\,
	ena => \rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(2));

-- Location: FF_X4_Y25_N13
\rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => rx_buffer(2),
	sload => VCC,
	ena => \rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(1));

-- Location: LCCOMB_X4_Y25_N12
\parity_error~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \parity_error~0_combout\ = rx_buffer(3) $ (rx_buffer(2) $ (rx_buffer(1) $ (rx_buffer(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buffer(3),
	datab => rx_buffer(2),
	datac => rx_buffer(1),
	datad => rx_buffer(4),
	combout => \parity_error~0_combout\);

-- Location: LCCOMB_X4_Y25_N24
\parity_error~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \parity_error~1_combout\ = rx_buffer(7) $ (rx_buffer(5) $ (rx_buffer(8) $ (rx_buffer(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buffer(7),
	datab => rx_buffer(5),
	datac => rx_buffer(8),
	datad => rx_buffer(6),
	combout => \parity_error~1_combout\);

-- Location: FF_X4_Y25_N21
\rx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => rx_buffer(1),
	sload => VCC,
	ena => \rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(0));

-- Location: LCCOMB_X4_Y25_N20
\rx_error~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_error~0_combout\ = (rx_buffer(0)) # (!\rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datac => rx_buffer(0),
	combout => \rx_error~0_combout\);

-- Location: LCCOMB_X4_Y25_N2
\rx_error~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_error~1_combout\ = (\rx_error~0_combout\) # (\parity_error~0_combout\ $ (\parity_error~1_combout\ $ (rx_buffer(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \parity_error~0_combout\,
	datab => \parity_error~1_combout\,
	datac => rx_buffer(9),
	datad => \rx_error~0_combout\,
	combout => \rx_error~1_combout\);

-- Location: LCCOMB_X3_Y25_N24
\rx_error~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_error~2_combout\ = (\LessThan4~0_combout\ & (\rx_buffer[1]~0_combout\ & \os_pulse~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datac => \rx_buffer[1]~0_combout\,
	datad => \os_pulse~q\,
	combout => \rx_error~2_combout\);

-- Location: FF_X4_Y25_N3
\rx_error~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_error~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_error~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_error~reg0_q\);

-- Location: FF_X4_Y25_N29
\rx_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => rx_buffer(1),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \rx_error~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[0]~reg0_q\);

-- Location: LCCOMB_X2_Y25_N16
\rx_data[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[1]~reg0feeder_combout\ = rx_buffer(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(2),
	combout => \rx_data[1]~reg0feeder_combout\);

-- Location: FF_X2_Y25_N17
\rx_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data[1]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_error~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[1]~reg0_q\);

-- Location: LCCOMB_X2_Y25_N30
\rx_data[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[2]~reg0feeder_combout\ = rx_buffer(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(3),
	combout => \rx_data[2]~reg0feeder_combout\);

-- Location: FF_X2_Y25_N31
\rx_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data[2]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_error~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[2]~reg0_q\);

-- Location: LCCOMB_X4_Y25_N30
\rx_data[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[3]~reg0feeder_combout\ = rx_buffer(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(4),
	combout => \rx_data[3]~reg0feeder_combout\);

-- Location: FF_X4_Y25_N31
\rx_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data[3]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_error~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[3]~reg0_q\);

-- Location: LCCOMB_X4_Y25_N0
\rx_data[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[4]~reg0feeder_combout\ = rx_buffer(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(5),
	combout => \rx_data[4]~reg0feeder_combout\);

-- Location: FF_X4_Y25_N1
\rx_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data[4]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_error~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[4]~reg0_q\);

-- Location: LCCOMB_X2_Y25_N0
\rx_data[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[5]~reg0feeder_combout\ = rx_buffer(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(6),
	combout => \rx_data[5]~reg0feeder_combout\);

-- Location: FF_X2_Y25_N1
\rx_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data[5]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_error~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[5]~reg0_q\);

-- Location: LCCOMB_X2_Y25_N10
\rx_data[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[6]~reg0feeder_combout\ = rx_buffer(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(7),
	combout => \rx_data[6]~reg0feeder_combout\);

-- Location: FF_X2_Y25_N11
\rx_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data[6]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_error~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[6]~reg0_q\);

-- Location: LCCOMB_X4_Y25_N14
\rx_data[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[7]~reg0feeder_combout\ = rx_buffer(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(8),
	combout => \rx_data[7]~reg0feeder_combout\);

-- Location: FF_X4_Y25_N15
\rx_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data[7]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_error~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[7]~reg0_q\);

-- Location: IOIBUF_X26_Y29_N29
\tx_ena~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_ena,
	o => \tx_ena~input_o\);

-- Location: LCCOMB_X26_Y25_N0
\tx_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_count~4_combout\ = (\Add4~6_combout\ & \tx_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add4~6_combout\,
	datad => \tx_state~q\,
	combout => \tx_count~4_combout\);

-- Location: LCCOMB_X26_Y25_N12
\tx_count[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_count[3]~1_combout\ = (\tx_ena~input_o\) # (\tx_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_ena~input_o\,
	datad => \tx_state~q\,
	combout => \tx_count[3]~1_combout\);

-- Location: FF_X26_Y25_N1
\tx_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_count~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \tx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_count(3));

-- Location: LCCOMB_X26_Y25_N30
\baud_pulse~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \baud_pulse~0_combout\ = !\LessThan0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~26_combout\,
	combout => \baud_pulse~0_combout\);

-- Location: FF_X26_Y25_N31
baud_pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \baud_pulse~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \baud_pulse~q\);

-- Location: LCCOMB_X26_Y25_N16
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\baud_pulse~q\ & (tx_count(0) $ (VCC))) # (!\baud_pulse~q\ & (tx_count(0) & VCC))
-- \Add4~1\ = CARRY((\baud_pulse~q\ & tx_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_pulse~q\,
	datab => tx_count(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X26_Y25_N8
\tx_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_count~3_combout\ = (\tx_state~q\ & \Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_state~q\,
	datad => \Add4~0_combout\,
	combout => \tx_count~3_combout\);

-- Location: FF_X26_Y25_N9
\tx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_count~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \tx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_count(0));

-- Location: LCCOMB_X26_Y25_N18
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (tx_count(1) & (!\Add4~1\)) # (!tx_count(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!tx_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tx_count(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X26_Y25_N26
\tx_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_count~2_combout\ = (\tx_state~q\ & \Add4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_state~q\,
	datad => \Add4~2_combout\,
	combout => \tx_count~2_combout\);

-- Location: FF_X26_Y25_N27
\tx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_count~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \tx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_count(1));

-- Location: LCCOMB_X26_Y25_N20
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (tx_count(2) & (\Add4~3\ $ (GND))) # (!tx_count(2) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((tx_count(2) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tx_count(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X26_Y25_N4
\tx_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_count~0_combout\ = (\tx_state~q\ & \Add4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_state~q\,
	datad => \Add4~4_combout\,
	combout => \tx_count~0_combout\);

-- Location: FF_X26_Y25_N5
\tx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_count~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \tx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_count(2));

-- Location: LCCOMB_X26_Y25_N22
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = \Add4~5\ $ (tx_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tx_count(3),
	cin => \Add4~5\,
	combout => \Add4~6_combout\);

-- Location: LCCOMB_X26_Y25_N24
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!\Add4~4_combout\) # (!\Add4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datad => \Add4~4_combout\,
	combout => \LessThan5~0_combout\);

-- Location: FF_X26_Y25_N25
tx_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan5~0_combout\,
	asdata => \tx_ena~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \ALT_INV_tx_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_state~q\);

-- Location: LCCOMB_X26_Y25_N2
\tx_busy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_busy~0_combout\ = (\tx_state~q\ & ((\tx_busy~reg0_q\))) # (!\tx_state~q\ & (!\tx_ena~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_ena~input_o\,
	datac => \tx_busy~reg0_q\,
	datad => \tx_state~q\,
	combout => \tx_busy~0_combout\);

-- Location: FF_X26_Y25_N3
\tx_busy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_busy~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_busy~reg0_q\);

-- Location: IOIBUF_X28_Y29_N15
\tx_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(0),
	o => \tx_data[0]~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\tx_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(1),
	o => \tx_data[1]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\tx_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(2),
	o => \tx_data[2]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\tx_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(4),
	o => \tx_data[4]~input_o\);

-- Location: IOIBUF_X26_Y29_N1
\tx_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(7),
	o => \tx_data[7]~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\tx_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(3),
	o => \tx_data[3]~input_o\);

-- Location: LCCOMB_X27_Y25_N16
\tx_parity[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_parity[8]~0_combout\ = \tx_data[1]~input_o\ $ (\tx_data[0]~input_o\ $ (\tx_data[2]~input_o\ $ (\tx_data[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[1]~input_o\,
	datab => \tx_data[0]~input_o\,
	datac => \tx_data[2]~input_o\,
	datad => \tx_data[3]~input_o\,
	combout => \tx_parity[8]~0_combout\);

-- Location: IOIBUF_X30_Y29_N29
\tx_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(6),
	o => \tx_data[6]~input_o\);

-- Location: LCCOMB_X27_Y25_N22
\tx_parity[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_parity[8]~1_combout\ = \tx_data[7]~input_o\ $ (\tx_data[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_data[7]~input_o\,
	datad => \tx_data[6]~input_o\,
	combout => \tx_parity[8]~1_combout\);

-- Location: IOIBUF_X28_Y29_N1
\tx_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(5),
	o => \tx_data[5]~input_o\);

-- Location: LCCOMB_X27_Y25_N12
\tx_parity[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- tx_parity(8) = \tx_data[4]~input_o\ $ (\tx_parity[8]~0_combout\ $ (\tx_parity[8]~1_combout\ $ (\tx_data[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[4]~input_o\,
	datab => \tx_parity[8]~0_combout\,
	datac => \tx_parity[8]~1_combout\,
	datad => \tx_data[5]~input_o\,
	combout => tx_parity(8));

-- Location: LCCOMB_X26_Y25_N6
\tx_buffer[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer[0]~1_combout\ = (\reset_n~input_o\ & ((\tx_state~q\ & (\baud_pulse~q\)) # (!\tx_state~q\ & ((\tx_ena~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \baud_pulse~q\,
	datab => \tx_ena~input_o\,
	datac => \reset_n~input_o\,
	datad => \tx_state~q\,
	combout => \tx_buffer[0]~1_combout\);

-- Location: LCCOMB_X27_Y25_N10
\tx_buffer[10]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer[10]~11_combout\ = (\tx_buffer[0]~1_combout\ & (!tx_parity(8) & ((!\tx_state~q\)))) # (!\tx_buffer[0]~1_combout\ & (((tx_buffer(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_parity(8),
	datab => \tx_buffer[0]~1_combout\,
	datac => tx_buffer(10),
	datad => \tx_state~q\,
	combout => \tx_buffer[10]~11_combout\);

-- Location: FF_X27_Y25_N11
\tx_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_buffer[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(10));

-- Location: LCCOMB_X27_Y25_N4
\tx_buffer~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~10_combout\ = (\tx_state~q\ & ((tx_buffer(10)))) # (!\tx_state~q\ & (!\tx_data[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_state~q\,
	datac => \tx_data[7]~input_o\,
	datad => tx_buffer(10),
	combout => \tx_buffer~10_combout\);

-- Location: FF_X27_Y25_N5
\tx_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_buffer~10_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(9));

-- Location: LCCOMB_X27_Y25_N30
\tx_buffer~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~9_combout\ = (\tx_state~q\ & (tx_buffer(9))) # (!\tx_state~q\ & ((!\tx_data[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_state~q\,
	datac => tx_buffer(9),
	datad => \tx_data[6]~input_o\,
	combout => \tx_buffer~9_combout\);

-- Location: FF_X27_Y25_N31
\tx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_buffer~9_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(8));

-- Location: LCCOMB_X27_Y25_N8
\tx_buffer~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~8_combout\ = (\tx_state~q\ & (tx_buffer(8))) # (!\tx_state~q\ & ((!\tx_data[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_state~q\,
	datac => tx_buffer(8),
	datad => \tx_data[5]~input_o\,
	combout => \tx_buffer~8_combout\);

-- Location: FF_X27_Y25_N9
\tx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_buffer~8_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(7));

-- Location: LCCOMB_X27_Y25_N26
\tx_buffer~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~7_combout\ = (\tx_state~q\ & ((tx_buffer(7)))) # (!\tx_state~q\ & (!\tx_data[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[4]~input_o\,
	datab => \tx_state~q\,
	datac => tx_buffer(7),
	combout => \tx_buffer~7_combout\);

-- Location: FF_X27_Y25_N27
\tx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_buffer~7_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(6));

-- Location: LCCOMB_X27_Y25_N24
\tx_buffer~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~6_combout\ = (\tx_state~q\ & (tx_buffer(6))) # (!\tx_state~q\ & ((!\tx_data[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_state~q\,
	datac => tx_buffer(6),
	datad => \tx_data[3]~input_o\,
	combout => \tx_buffer~6_combout\);

-- Location: FF_X27_Y25_N25
\tx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_buffer~6_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(5));

-- Location: LCCOMB_X27_Y25_N14
\tx_buffer~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~5_combout\ = (\tx_state~q\ & ((tx_buffer(5)))) # (!\tx_state~q\ & (!\tx_data[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_state~q\,
	datac => \tx_data[2]~input_o\,
	datad => tx_buffer(5),
	combout => \tx_buffer~5_combout\);

-- Location: FF_X27_Y25_N15
\tx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_buffer~5_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(4));

-- Location: LCCOMB_X27_Y25_N20
\tx_buffer~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~4_combout\ = (\tx_state~q\ & ((tx_buffer(4)))) # (!\tx_state~q\ & (!\tx_data[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[1]~input_o\,
	datab => \tx_state~q\,
	datac => tx_buffer(4),
	combout => \tx_buffer~4_combout\);

-- Location: FF_X27_Y25_N21
\tx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_buffer~4_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(3));

-- Location: LCCOMB_X27_Y25_N2
\tx_buffer~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~3_combout\ = (\tx_state~q\ & ((tx_buffer(3)))) # (!\tx_state~q\ & (!\tx_data[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_state~q\,
	datac => \tx_data[0]~input_o\,
	datad => tx_buffer(3),
	combout => \tx_buffer~3_combout\);

-- Location: FF_X27_Y25_N3
\tx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_buffer~3_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(2));

-- Location: LCCOMB_X27_Y25_N28
\tx_buffer~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~2_combout\ = (tx_buffer(2)) # (!\tx_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_state~q\,
	datad => tx_buffer(2),
	combout => \tx_buffer~2_combout\);

-- Location: FF_X27_Y25_N29
\tx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_buffer~2_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(1));

-- Location: LCCOMB_X27_Y25_N18
\tx_buffer~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~0_combout\ = (\tx_state~q\ & tx_buffer(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_state~q\,
	datad => tx_buffer(1),
	combout => \tx_buffer~0_combout\);

-- Location: FF_X27_Y25_N19
\tx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_buffer~0_combout\,
	ena => \tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(0));

-- Location: LCCOMB_X27_Y25_N0
\tx~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx~reg0feeder_combout\ = tx_buffer(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buffer(0),
	combout => \tx~reg0feeder_combout\);

-- Location: FF_X27_Y25_N1
\tx~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx~reg0_q\);

ww_rx_busy <= \rx_busy~output_o\;

ww_rx_error <= \rx_error~output_o\;

ww_rx_data(0) <= \rx_data[0]~output_o\;

ww_rx_data(1) <= \rx_data[1]~output_o\;

ww_rx_data(2) <= \rx_data[2]~output_o\;

ww_rx_data(3) <= \rx_data[3]~output_o\;

ww_rx_data(4) <= \rx_data[4]~output_o\;

ww_rx_data(5) <= \rx_data[5]~output_o\;

ww_rx_data(6) <= \rx_data[6]~output_o\;

ww_rx_data(7) <= \rx_data[7]~output_o\;

ww_tx_busy <= \tx_busy~output_o\;

ww_tx <= \tx~output_o\;
END structure;


