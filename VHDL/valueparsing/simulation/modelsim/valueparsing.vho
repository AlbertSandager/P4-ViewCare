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

-- DATE "04/29/2019 13:55:14"

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

ENTITY 	valueparsing IS
    PORT (
	clk : IN std_logic;
	rx : IN std_logic;
	rx_busy : OUT std_logic;
	rx_error : OUT std_logic;
	rx_data : OUT std_logic_vector(7 DOWNTO 0);
	tx : OUT std_logic;
	spi_led : OUT std_logic_vector(7 DOWNTO 0);
	sspi_clk : IN std_logic;
	spi_reset_n : IN std_logic;
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
	busy : OUT std_logic;
	miso : OUT std_logic
	);
END valueparsing;

-- Design Ports Information
-- rx_busy	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_error	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[5]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[6]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[7]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trdy	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rrdy	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- roe	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_n	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_req	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_reset_n	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sspi_clk	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_trdy	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_en	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_en	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_rrdy	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_roe	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[6]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[5]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[3]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF valueparsing IS
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
SIGNAL ww_rx : std_logic;
SIGNAL ww_rx_busy : std_logic;
SIGNAL ww_rx_error : std_logic;
SIGNAL ww_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_tx : std_logic;
SIGNAL ww_spi_led : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sspi_clk : std_logic;
SIGNAL ww_spi_reset_n : std_logic;
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
SIGNAL ww_busy : std_logic;
SIGNAL ww_miso : std_logic;
SIGNAL \tx_buf[0]~43clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \miso~output_o\ : std_logic;
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
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \spi_led[0]~output_o\ : std_logic;
SIGNAL \spi_led[1]~output_o\ : std_logic;
SIGNAL \spi_led[2]~output_o\ : std_logic;
SIGNAL \spi_led[3]~output_o\ : std_logic;
SIGNAL \spi_led[4]~output_o\ : std_logic;
SIGNAL \spi_led[5]~output_o\ : std_logic;
SIGNAL \spi_led[6]~output_o\ : std_logic;
SIGNAL \spi_led[7]~output_o\ : std_logic;
SIGNAL \trdy~output_o\ : std_logic;
SIGNAL \rrdy~output_o\ : std_logic;
SIGNAL \roe~output_o\ : std_logic;
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \sspi_clk~input_o\ : std_logic;
SIGNAL \mosi~input_o\ : std_logic;
SIGNAL \bit_cnt[0]~feeder_combout\ : std_logic;
SIGNAL \spi_reset_n~input_o\ : std_logic;
SIGNAL \ss_n~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \bit_cnt[1]~0_combout\ : std_logic;
SIGNAL \bit_cnt[2]~feeder_combout\ : std_logic;
SIGNAL \rd_add~0_combout\ : std_logic;
SIGNAL \rd_add~q\ : std_logic;
SIGNAL \tx_load_data[7]~input_o\ : std_logic;
SIGNAL \tx_load_en~input_o\ : std_logic;
SIGNAL \tx_buf[0]~43_combout\ : std_logic;
SIGNAL \tx_load_data[6]~input_o\ : std_logic;
SIGNAL \tx_buf[0]~43clkctrl_outclk\ : std_logic;
SIGNAL \tx_buf[6]~6_combout\ : std_logic;
SIGNAL \tx_load_data[5]~input_o\ : std_logic;
SIGNAL \tx_buf[5]~11_combout\ : std_logic;
SIGNAL \tx_load_data[4]~input_o\ : std_logic;
SIGNAL \tx_load_data[3]~input_o\ : std_logic;
SIGNAL \tx_load_data[2]~input_o\ : std_logic;
SIGNAL \tx_buf[2]~26_combout\ : std_logic;
SIGNAL \tx_load_data[1]~input_o\ : std_logic;
SIGNAL \tx_load_data[0]~input_o\ : std_logic;
SIGNAL \tx_buf[0]~36_combout\ : std_logic;
SIGNAL \tx_buf[0]~39_combout\ : std_logic;
SIGNAL \tx_buf[7]~0_combout\ : std_logic;
SIGNAL \bit_cnt[4]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[5]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[13]~feeder_combout\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
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
SIGNAL \tx_buf[3]~21_combout\ : std_logic;
SIGNAL \tx_buf[3]~24_combout\ : std_logic;
SIGNAL \tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[3]~23_combout\ : std_logic;
SIGNAL \tx_buf[3]~22_combout\ : std_logic;
SIGNAL \tx_buf[4]~16_combout\ : std_logic;
SIGNAL \tx_buf[4]~19_combout\ : std_logic;
SIGNAL \tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[4]~18_combout\ : std_logic;
SIGNAL \tx_buf[4]~17_combout\ : std_logic;
SIGNAL \tx_buf[5]~14_combout\ : std_logic;
SIGNAL \tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[5]~13_combout\ : std_logic;
SIGNAL \tx_buf[5]~12_combout\ : std_logic;
SIGNAL \tx_buf[6]~9_combout\ : std_logic;
SIGNAL \tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[6]~8_combout\ : std_logic;
SIGNAL \tx_buf[6]~7_combout\ : std_logic;
SIGNAL \tx_buf[7]~1_combout\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \rx_state~3_combout\ : std_logic;
SIGNAL \count_baud[0]~12_combout\ : std_logic;
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
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \count_os[6]~21\ : std_logic;
SIGNAL \count_os[7]~22_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \os_pulse~0_combout\ : std_logic;
SIGNAL \os_pulse~q\ : std_logic;
SIGNAL \rx_state~q\ : std_logic;
SIGNAL \os_count[3]~0_combout\ : std_logic;
SIGNAL \rx_state~2_combout\ : std_logic;
SIGNAL \rx_count~5_combout\ : std_logic;
SIGNAL \rx_count[1]~4_combout\ : std_logic;
SIGNAL \rx_count~6_combout\ : std_logic;
SIGNAL \rx_count~3_combout\ : std_logic;
SIGNAL \rx_count[3]~1_combout\ : std_logic;
SIGNAL \rx_count[3]~2_combout\ : std_logic;
SIGNAL \os_count[3]~2_combout\ : std_logic;
SIGNAL \os_count[0]~5_combout\ : std_logic;
SIGNAL \os_count[1]~6_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \os_count[2]~4_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \rx_count[3]~0_combout\ : std_logic;
SIGNAL \os_count[2]~1_combout\ : std_logic;
SIGNAL \os_count[3]~3_combout\ : std_logic;
SIGNAL \rx_busy~2_combout\ : std_logic;
SIGNAL \rx_busy~3_combout\ : std_logic;
SIGNAL \rx_busy~reg0_q\ : std_logic;
SIGNAL \rx_buffer[8]~feeder_combout\ : std_logic;
SIGNAL \rx_buffer[0]~0_combout\ : std_logic;
SIGNAL \rx_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \rx_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \rx_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \rx_error~0_combout\ : std_logic;
SIGNAL \rx_error~1_combout\ : std_logic;
SIGNAL \rx_error~reg0_q\ : std_logic;
SIGNAL \rx_data[0]~reg0_q\ : std_logic;
SIGNAL \rx_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[1]~reg0_q\ : std_logic;
SIGNAL \rx_data[2]~reg0_q\ : std_logic;
SIGNAL \rx_data[3]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[3]~reg0_q\ : std_logic;
SIGNAL \rx_data[4]~reg0_q\ : std_logic;
SIGNAL \rx_data[5]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[5]~reg0_q\ : std_logic;
SIGNAL \rx_data[6]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[6]~reg0_q\ : std_logic;
SIGNAL \rx_data[7]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[7]~reg0_q\ : std_logic;
SIGNAL \rx_buf[0]~0_combout\ : std_logic;
SIGNAL \rx_buf[0]~feeder_combout\ : std_logic;
SIGNAL \process_1~0clkctrl_outclk\ : std_logic;
SIGNAL \rx_buf[1]~1_combout\ : std_logic;
SIGNAL \rx_buf[2]~2_combout\ : std_logic;
SIGNAL \rx_buf[3]~3_combout\ : std_logic;
SIGNAL \rx_buf[4]~4_combout\ : std_logic;
SIGNAL \rx_buf[5]~5_combout\ : std_logic;
SIGNAL \rx_buf[6]~6_combout\ : std_logic;
SIGNAL \rx_buf[7]~7_combout\ : std_logic;
SIGNAL spi_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL rx_count : std_logic_vector(3 DOWNTO 0);
SIGNAL rx_buffer : std_logic_vector(8 DOWNTO 0);
SIGNAL rx_buf : std_logic_vector(7 DOWNTO 0);
SIGNAL os_count : std_logic_vector(3 DOWNTO 0);
SIGNAL count_os : std_logic_vector(7 DOWNTO 0);
SIGNAL count_baud : std_logic_vector(11 DOWNTO 0);
SIGNAL bit_cnt : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_sspi_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_ss_n~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan0~26_combout\ : std_logic;
SIGNAL \ALT_INV_tx_buf[7]~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_roe~0_combout\ : std_logic;
SIGNAL \ALT_INV_rrdy~0_combout\ : std_logic;
SIGNAL \ALT_INV_trdy~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~2_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rx <= rx;
rx_busy <= ww_rx_busy;
rx_error <= ww_rx_error;
rx_data <= ww_rx_data;
tx <= ww_tx;
spi_led <= ww_spi_led;
ww_sspi_clk <= sspi_clk;
ww_spi_reset_n <= spi_reset_n;
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
busy <= ww_busy;
miso <= ww_miso;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\tx_buf[0]~43clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tx_buf[0]~43_combout\);

\process_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_1~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_sspi_clk~input_o\ <= NOT \sspi_clk~input_o\;
\ALT_INV_ss_n~input_o\ <= NOT \ss_n~input_o\;
\ALT_INV_LessThan0~26_combout\ <= NOT \LessThan0~26_combout\;
\ALT_INV_tx_buf[7]~0_combout\ <= NOT \tx_buf[7]~0_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_roe~0_combout\ <= NOT \roe~0_combout\;
\ALT_INV_rrdy~0_combout\ <= NOT \rrdy~0_combout\;
\ALT_INV_trdy~0_combout\ <= NOT \trdy~0_combout\;
\ALT_INV_LessThan1~2_combout\ <= NOT \LessThan1~2_combout\;

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

-- Location: IOOBUF_X23_Y29_N16
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

-- Location: IOOBUF_X21_Y29_N30
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

-- Location: IOOBUF_X21_Y29_N16
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

-- Location: IOOBUF_X23_Y29_N9
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

-- Location: IOOBUF_X21_Y29_N2
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

-- Location: IOOBUF_X16_Y29_N9
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

-- Location: IOOBUF_X21_Y29_N9
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

-- Location: IOOBUF_X21_Y29_N23
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

-- Location: IOOBUF_X23_Y29_N30
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

-- Location: IOOBUF_X23_Y29_N23
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

-- Location: IOOBUF_X7_Y0_N16
\tx~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\spi_led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => spi_rx_data(0),
	devoe => ww_devoe,
	o => \spi_led[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\spi_led[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => spi_rx_data(1),
	devoe => ww_devoe,
	o => \spi_led[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\spi_led[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => spi_rx_data(2),
	devoe => ww_devoe,
	o => \spi_led[2]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\spi_led[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => spi_rx_data(3),
	devoe => ww_devoe,
	o => \spi_led[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\spi_led[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => spi_rx_data(4),
	devoe => ww_devoe,
	o => \spi_led[4]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\spi_led[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => spi_rx_data(5),
	devoe => ww_devoe,
	o => \spi_led[5]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\spi_led[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => spi_rx_data(6),
	devoe => ww_devoe,
	o => \spi_led[6]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\spi_led[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => spi_rx_data(7),
	devoe => ww_devoe,
	o => \spi_led[7]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
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

-- Location: IOOBUF_X19_Y0_N16
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

-- Location: IOOBUF_X23_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N30
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
\sspi_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sspi_clk,
	o => \sspi_clk~input_o\);

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

-- Location: LCCOMB_X22_Y2_N24
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

-- Location: IOIBUF_X21_Y0_N1
\spi_reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_spi_reset_n,
	o => \spi_reset_n~input_o\);

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

-- Location: LCCOMB_X22_Y2_N26
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\ss_n~input_o\) # (!\spi_reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \spi_reset_n~input_o\,
	datad => \ss_n~input_o\,
	combout => \process_0~0_combout\);

-- Location: FF_X22_Y2_N25
\bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \bit_cnt[0]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(0));

-- Location: LCCOMB_X22_Y2_N16
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

-- Location: FF_X22_Y2_N17
\bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \bit_cnt[1]~0_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(1));

-- Location: LCCOMB_X22_Y2_N0
\bit_cnt[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[2]~feeder_combout\ = bit_cnt(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(1),
	combout => \bit_cnt[2]~feeder_combout\);

-- Location: FF_X22_Y2_N1
\bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \bit_cnt[2]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(2));

-- Location: LCCOMB_X21_Y2_N30
\rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rd_add~0_combout\ = (bit_cnt(2) & (\mosi~input_o\)) # (!bit_cnt(2) & ((\rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datac => bit_cnt(2),
	datad => \rd_add~q\,
	combout => \rd_add~0_combout\);

-- Location: FF_X20_Y1_N7
rd_add : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	asdata => \rd_add~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rd_add~q\);

-- Location: IOIBUF_X21_Y0_N29
\tx_load_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(7),
	o => \tx_load_data[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\tx_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_en,
	o => \tx_load_en~input_o\);

-- Location: LCCOMB_X20_Y1_N20
\tx_buf[0]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~43_combout\ = (\tx_load_en~input_o\ & (\spi_reset_n~input_o\ & \ss_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_load_en~input_o\,
	datac => \spi_reset_n~input_o\,
	datad => \ss_n~input_o\,
	combout => \tx_buf[0]~43_combout\);

-- Location: IOIBUF_X19_Y29_N29
\tx_load_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(6),
	o => \tx_load_data[6]~input_o\);

-- Location: CLKCTRL_G17
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

-- Location: LCCOMB_X21_Y1_N6
\tx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~6_combout\ = (\spi_reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_load_data[6]~input_o\))) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_buf[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[6]~6_combout\,
	datab => \tx_load_data[6]~input_o\,
	datac => \spi_reset_n~input_o\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[6]~6_combout\);

-- Location: IOIBUF_X16_Y0_N15
\tx_load_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(5),
	o => \tx_load_data[5]~input_o\);

-- Location: LCCOMB_X21_Y1_N8
\tx_buf[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[5]~11_combout\ = (\spi_reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_load_data[5]~input_o\))) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_buf[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[5]~11_combout\,
	datab => \tx_load_data[5]~input_o\,
	datac => \spi_reset_n~input_o\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[5]~11_combout\);

-- Location: IOIBUF_X16_Y0_N22
\tx_load_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(4),
	o => \tx_load_data[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\tx_load_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(3),
	o => \tx_load_data[3]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\tx_load_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(2),
	o => \tx_load_data[2]~input_o\);

-- Location: LCCOMB_X19_Y1_N10
\tx_buf[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[2]~26_combout\ = (\spi_reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_load_data[2]~input_o\))) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_buf[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[2]~26_combout\,
	datab => \spi_reset_n~input_o\,
	datac => \tx_load_data[2]~input_o\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[2]~26_combout\);

-- Location: IOIBUF_X23_Y0_N8
\tx_load_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(1),
	o => \tx_load_data[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\tx_load_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(0),
	o => \tx_load_data[0]~input_o\);

-- Location: LCCOMB_X19_Y1_N8
\tx_buf[0]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~36_combout\ = (\spi_reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_load_data[0]~input_o\)) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_buf[0]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[0]~input_o\,
	datab => \spi_reset_n~input_o\,
	datac => \tx_buf[0]~36_combout\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[0]~36_combout\);

-- Location: LCCOMB_X19_Y1_N30
\tx_buf[0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~39_combout\ = \tx_buf[0]~36_combout\ $ (\tx_buf[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[0]~36_combout\,
	datac => \tx_buf[7]~2_combout\,
	combout => \tx_buf[0]~39_combout\);

-- Location: LCCOMB_X20_Y1_N30
\tx_buf[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~0_combout\ = (\tx_buf[0]~43_combout\) # (!\spi_reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_reset_n~input_o\,
	datad => \tx_buf[0]~43_combout\,
	combout => \tx_buf[7]~0_combout\);

-- Location: FF_X22_Y2_N13
\bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	asdata => bit_cnt(2),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(3));

-- Location: LCCOMB_X23_Y2_N6
\bit_cnt[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[4]~feeder_combout\ = bit_cnt(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(3),
	combout => \bit_cnt[4]~feeder_combout\);

-- Location: FF_X23_Y2_N7
\bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \bit_cnt[4]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(4));

-- Location: LCCOMB_X23_Y1_N28
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

-- Location: FF_X23_Y1_N29
\bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \bit_cnt[5]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(5));

-- Location: LCCOMB_X23_Y1_N18
\bit_cnt[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[6]~feeder_combout\ = bit_cnt(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(5),
	combout => \bit_cnt[6]~feeder_combout\);

-- Location: FF_X23_Y1_N19
\bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \bit_cnt[6]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(6));

-- Location: LCCOMB_X23_Y1_N8
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

-- Location: FF_X23_Y1_N9
\bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \bit_cnt[7]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(7));

-- Location: FF_X22_Y2_N27
\bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	asdata => bit_cnt(7),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(8));

-- Location: FF_X22_Y2_N23
\bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	asdata => bit_cnt(8),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(9));

-- Location: FF_X22_Y2_N31
\bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	asdata => bit_cnt(9),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(10));

-- Location: FF_X22_Y2_N9
\bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	asdata => bit_cnt(10),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(11));

-- Location: FF_X22_Y2_N3
\bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	asdata => bit_cnt(11),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(12));

-- Location: LCCOMB_X21_Y2_N16
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

-- Location: FF_X21_Y2_N17
\bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \bit_cnt[13]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(13));

-- Location: FF_X22_Y2_N5
\bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	asdata => bit_cnt(13),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(14));

-- Location: FF_X22_Y2_N15
\bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	asdata => bit_cnt(14),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(15));

-- Location: FF_X22_Y2_N7
\bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	asdata => bit_cnt(15),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(16));

-- Location: LCCOMB_X23_Y1_N22
\process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (!bit_cnt(16) & (!bit_cnt(6) & (!bit_cnt(7) & !bit_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(16),
	datab => bit_cnt(6),
	datac => bit_cnt(7),
	datad => bit_cnt(5),
	combout => \process_1~8_combout\);

-- Location: LCCOMB_X22_Y2_N12
\process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (!bit_cnt(2) & (!bit_cnt(1) & (!bit_cnt(3) & !bit_cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(2),
	datab => bit_cnt(1),
	datac => bit_cnt(3),
	datad => bit_cnt(4),
	combout => \process_1~7_combout\);

-- Location: LCCOMB_X20_Y1_N2
\process_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~9_combout\ = (\process_1~8_combout\ & (bit_cnt(0) & (\process_1~7_combout\ & !\rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~8_combout\,
	datab => bit_cnt(0),
	datac => \process_1~7_combout\,
	datad => \rd_add~q\,
	combout => \process_1~9_combout\);

-- Location: FF_X19_Y1_N31
\tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \tx_buf[0]~39_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[0]~_emulated_q\);

-- Location: LCCOMB_X19_Y1_N24
\tx_buf[0]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~38_combout\ = \tx_buf[0]~_emulated_q\ $ (\tx_buf[0]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[0]~_emulated_q\,
	datac => \tx_buf[0]~36_combout\,
	combout => \tx_buf[0]~38_combout\);

-- Location: LCCOMB_X20_Y1_N16
\tx_buf[0]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~37_combout\ = (\spi_reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[0]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[0]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[0]~input_o\,
	datab => \spi_reset_n~input_o\,
	datac => \tx_buf[0]~43_combout\,
	datad => \tx_buf[0]~38_combout\,
	combout => \tx_buf[0]~37_combout\);

-- Location: LCCOMB_X21_Y2_N18
\tx_buf[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~31_combout\ = (\spi_reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_load_data[1]~input_o\)) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_buf[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[1]~input_o\,
	datab => \spi_reset_n~input_o\,
	datac => \tx_buf[1]~31_combout\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[1]~31_combout\);

-- Location: LCCOMB_X20_Y1_N18
\tx_buf[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~34_combout\ = \tx_buf[0]~37_combout\ $ (\tx_buf[1]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[0]~37_combout\,
	datad => \tx_buf[1]~31_combout\,
	combout => \tx_buf[1]~34_combout\);

-- Location: FF_X20_Y1_N19
\tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \tx_buf[1]~34_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[1]~_emulated_q\);

-- Location: LCCOMB_X21_Y2_N28
\tx_buf[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~33_combout\ = \tx_buf[1]~_emulated_q\ $ (\tx_buf[1]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[1]~_emulated_q\,
	datad => \tx_buf[1]~31_combout\,
	combout => \tx_buf[1]~33_combout\);

-- Location: LCCOMB_X20_Y1_N24
\tx_buf[1]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~32_combout\ = (\spi_reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[1]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[1]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_reset_n~input_o\,
	datab => \tx_buf[0]~43_combout\,
	datac => \tx_load_data[1]~input_o\,
	datad => \tx_buf[1]~33_combout\,
	combout => \tx_buf[1]~32_combout\);

-- Location: LCCOMB_X20_Y1_N14
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

-- Location: FF_X20_Y1_N15
\tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \tx_buf[2]~29_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[2]~_emulated_q\);

-- Location: LCCOMB_X19_Y1_N20
\tx_buf[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[2]~28_combout\ = \tx_buf[2]~_emulated_q\ $ (\tx_buf[2]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[2]~_emulated_q\,
	datad => \tx_buf[2]~26_combout\,
	combout => \tx_buf[2]~28_combout\);

-- Location: LCCOMB_X20_Y1_N4
\tx_buf[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[2]~27_combout\ = (\spi_reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[2]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[2]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[2]~input_o\,
	datab => \spi_reset_n~input_o\,
	datac => \tx_buf[0]~43_combout\,
	datad => \tx_buf[2]~28_combout\,
	combout => \tx_buf[2]~27_combout\);

-- Location: LCCOMB_X22_Y1_N22
\tx_buf[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[3]~21_combout\ = (\spi_reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_load_data[3]~input_o\)) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_buf[3]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[3]~input_o\,
	datab => \spi_reset_n~input_o\,
	datac => \tx_buf[3]~21_combout\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[3]~21_combout\);

-- Location: LCCOMB_X20_Y1_N12
\tx_buf[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[3]~24_combout\ = \tx_buf[2]~27_combout\ $ (\tx_buf[3]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[2]~27_combout\,
	datad => \tx_buf[3]~21_combout\,
	combout => \tx_buf[3]~24_combout\);

-- Location: FF_X20_Y1_N13
\tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \tx_buf[3]~24_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[3]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N20
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

-- Location: LCCOMB_X21_Y1_N30
\tx_buf[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[3]~22_combout\ = (\spi_reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[3]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[3]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_reset_n~input_o\,
	datab => \tx_buf[0]~43_combout\,
	datac => \tx_load_data[3]~input_o\,
	datad => \tx_buf[3]~23_combout\,
	combout => \tx_buf[3]~22_combout\);

-- Location: LCCOMB_X21_Y1_N18
\tx_buf[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[4]~16_combout\ = (\spi_reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_load_data[4]~input_o\)) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_buf[4]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[4]~input_o\,
	datab => \tx_buf[4]~16_combout\,
	datac => \spi_reset_n~input_o\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[4]~16_combout\);

-- Location: LCCOMB_X20_Y1_N26
\tx_buf[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[4]~19_combout\ = \tx_buf[3]~22_combout\ $ (\tx_buf[4]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[3]~22_combout\,
	datad => \tx_buf[4]~16_combout\,
	combout => \tx_buf[4]~19_combout\);

-- Location: FF_X20_Y1_N27
\tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \tx_buf[4]~19_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[4]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N24
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

-- Location: LCCOMB_X21_Y1_N14
\tx_buf[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[4]~17_combout\ = (\spi_reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[4]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[4]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[4]~input_o\,
	datab => \spi_reset_n~input_o\,
	datac => \tx_buf[0]~43_combout\,
	datad => \tx_buf[4]~18_combout\,
	combout => \tx_buf[4]~17_combout\);

-- Location: LCCOMB_X20_Y1_N8
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

-- Location: FF_X20_Y1_N9
\tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \tx_buf[5]~14_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[5]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N28
\tx_buf[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[5]~13_combout\ = \tx_buf[5]~11_combout\ $ (\tx_buf[5]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[5]~11_combout\,
	datad => \tx_buf[5]~_emulated_q\,
	combout => \tx_buf[5]~13_combout\);

-- Location: LCCOMB_X21_Y1_N10
\tx_buf[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[5]~12_combout\ = (\spi_reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[5]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[5]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_reset_n~input_o\,
	datab => \tx_buf[0]~43_combout\,
	datac => \tx_load_data[5]~input_o\,
	datad => \tx_buf[5]~13_combout\,
	combout => \tx_buf[5]~12_combout\);

-- Location: LCCOMB_X20_Y1_N10
\tx_buf[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~9_combout\ = \tx_buf[6]~6_combout\ $ (\tx_buf[5]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[6]~6_combout\,
	datac => \tx_buf[5]~12_combout\,
	combout => \tx_buf[6]~9_combout\);

-- Location: FF_X20_Y1_N11
\tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \tx_buf[6]~9_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[6]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N22
\tx_buf[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~8_combout\ = \tx_buf[6]~_emulated_q\ $ (\tx_buf[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[6]~_emulated_q\,
	datad => \tx_buf[6]~6_combout\,
	combout => \tx_buf[6]~8_combout\);

-- Location: LCCOMB_X20_Y1_N28
\tx_buf[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~7_combout\ = (\spi_reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[6]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[6]~input_o\,
	datab => \spi_reset_n~input_o\,
	datac => \tx_buf[0]~43_combout\,
	datad => \tx_buf[6]~8_combout\,
	combout => \tx_buf[6]~7_combout\);

-- Location: LCCOMB_X21_Y1_N16
\tx_buf[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~1_combout\ = (\spi_reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & ((\tx_load_data[7]~input_o\))) # (!GLOBAL(\tx_buf[0]~43clkctrl_outclk\) & (\tx_buf[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[7]~1_combout\,
	datab => \tx_load_data[7]~input_o\,
	datac => \spi_reset_n~input_o\,
	datad => \tx_buf[0]~43clkctrl_outclk\,
	combout => \tx_buf[7]~1_combout\);

-- Location: LCCOMB_X20_Y1_N22
\tx_buf[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~4_combout\ = \tx_buf[6]~7_combout\ $ (\tx_buf[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[6]~7_combout\,
	datad => \tx_buf[7]~1_combout\,
	combout => \tx_buf[7]~4_combout\);

-- Location: FF_X20_Y1_N23
\tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \tx_buf[7]~4_combout\,
	clrn => \ALT_INV_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[7]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N2
\tx_buf[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~3_combout\ = \tx_buf[7]~_emulated_q\ $ (\tx_buf[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[7]~_emulated_q\,
	datad => \tx_buf[7]~1_combout\,
	combout => \tx_buf[7]~3_combout\);

-- Location: LCCOMB_X21_Y1_N4
\tx_buf[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~2_combout\ = (\spi_reset_n~input_o\ & ((\tx_buf[0]~43_combout\ & (\tx_load_data[7]~input_o\)) # (!\tx_buf[0]~43_combout\ & ((\tx_buf[7]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_reset_n~input_o\,
	datab => \tx_load_data[7]~input_o\,
	datac => \tx_buf[0]~43_combout\,
	datad => \tx_buf[7]~3_combout\,
	combout => \tx_buf[7]~2_combout\);

-- Location: IOIBUF_X26_Y0_N8
\st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_en,
	o => \st_load_en~input_o\);

-- Location: LCCOMB_X23_Y2_N28
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

-- Location: IOIBUF_X23_Y0_N29
\st_load_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_rrdy,
	o => \st_load_rrdy~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_req,
	o => \rx_req~input_o\);

-- Location: LCCOMB_X22_Y1_N2
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

-- Location: LCCOMB_X22_Y1_N26
\process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = ((\process_1~0_combout\) # ((!\st_load_rrdy~input_o\ & \process_1~4_combout\))) # (!\spi_reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st_load_rrdy~input_o\,
	datab => \process_1~4_combout\,
	datac => \spi_reset_n~input_o\,
	datad => \process_1~0_combout\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X22_Y1_N24
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

-- Location: LCCOMB_X24_Y2_N22
\wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \wr_add~0_combout\ = (bit_cnt(1) & ((\mosi~input_o\))) # (!bit_cnt(1) & (\wr_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(1),
	datac => \wr_add~q\,
	datad => \mosi~input_o\,
	combout => \wr_add~0_combout\);

-- Location: FF_X24_Y2_N23
wr_add : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	d => \wr_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wr_add~q\);

-- Location: LCCOMB_X22_Y1_N20
\rrdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~7_combout\ = (\rrdy~2_combout\) # ((!\wr_add~q\ & bit_cnt(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rrdy~2_combout\,
	datac => \wr_add~q\,
	datad => bit_cnt(16),
	combout => \rrdy~7_combout\);

-- Location: LCCOMB_X22_Y2_N30
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

-- Location: LCCOMB_X22_Y1_N8
\rrdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~3_combout\ = \rrdy~1_combout\ $ (((\process_1~3_combout\ & ((\mosi~input_o\))) # (!\process_1~3_combout\ & (\rrdy~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rrdy~1_combout\,
	datab => \rrdy~7_combout\,
	datac => \process_1~3_combout\,
	datad => \mosi~input_o\,
	combout => \rrdy~3_combout\);

-- Location: LCCOMB_X22_Y1_N16
\rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~0_combout\ = (\process_1~5_combout\) # (\process_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~5_combout\,
	datac => \process_1~4_combout\,
	combout => \rrdy~0_combout\);

-- Location: FF_X22_Y1_N9
\rrdy~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	d => \rrdy~3_combout\,
	clrn => \ALT_INV_rrdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rrdy~reg0_emulated_q\);

-- Location: LCCOMB_X22_Y1_N12
\rrdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~2_combout\ = (!\process_1~5_combout\ & ((\process_1~4_combout\) # (\rrdy~1_combout\ $ (\rrdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \rrdy~1_combout\,
	datac => \rrdy~reg0_emulated_q\,
	datad => \process_1~5_combout\,
	combout => \rrdy~2_combout\);

-- Location: IOIBUF_X16_Y0_N29
\st_load_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_roe,
	o => \st_load_roe~input_o\);

-- Location: LCCOMB_X22_Y1_N4
\process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = ((!\st_load_roe~input_o\ & \process_1~4_combout\)) # (!\spi_reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st_load_roe~input_o\,
	datac => \process_1~4_combout\,
	datad => \spi_reset_n~input_o\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X22_Y1_N6
\roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~1_combout\ = (!\process_1~6_combout\ & ((\process_1~4_combout\) # (\roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~4_combout\,
	datac => \process_1~6_combout\,
	datad => \roe~1_combout\,
	combout => \roe~1_combout\);

-- Location: LCCOMB_X22_Y2_N8
\roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~6_combout\ = (\wr_add~q\ & (((!bit_cnt(11))) # (!\mosi~input_o\))) # (!\wr_add~q\ & (((!bit_cnt(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datab => \mosi~input_o\,
	datac => bit_cnt(11),
	datad => bit_cnt(16),
	combout => \roe~6_combout\);

-- Location: LCCOMB_X22_Y1_N14
\roe~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~7_combout\ = (\wr_add~q\ & (\roe~6_combout\ & ((bit_cnt(11)) # (!\roe~2_combout\)))) # (!\wr_add~q\ & (((!\roe~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(11),
	datab => \wr_add~q\,
	datac => \roe~2_combout\,
	datad => \roe~6_combout\,
	combout => \roe~7_combout\);

-- Location: LCCOMB_X22_Y1_N28
\roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~3_combout\ = \roe~1_combout\ $ ((((\rrdy~2_combout\ & !\roe~6_combout\)) # (!\roe~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rrdy~2_combout\,
	datab => \roe~1_combout\,
	datac => \roe~7_combout\,
	datad => \roe~6_combout\,
	combout => \roe~3_combout\);

-- Location: LCCOMB_X22_Y1_N30
\roe~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~0_combout\ = (\process_1~4_combout\) # (\process_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~4_combout\,
	datac => \process_1~6_combout\,
	combout => \roe~0_combout\);

-- Location: FF_X22_Y1_N29
\roe~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	d => \roe~3_combout\,
	clrn => \ALT_INV_roe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \roe~reg0_emulated_q\);

-- Location: LCCOMB_X22_Y1_N18
\roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~2_combout\ = (!\process_1~6_combout\ & ((\process_1~4_combout\) # (\roe~1_combout\ $ (\roe~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \roe~1_combout\,
	datab => \process_1~4_combout\,
	datac => \process_1~6_combout\,
	datad => \roe~reg0_emulated_q\,
	combout => \roe~2_combout\);

-- Location: LCCOMB_X21_Y1_N26
\miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~1_combout\ = (bit_cnt(9) & (\rrdy~2_combout\)) # (!bit_cnt(9) & ((\roe~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(9),
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

-- Location: LCCOMB_X22_Y2_N2
\process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = ((!\st_load_trdy~input_o\ & \process_1~4_combout\)) # (!\spi_reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st_load_trdy~input_o\,
	datab => \process_1~4_combout\,
	datad => \spi_reset_n~input_o\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X22_Y2_N28
\trdy~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~8_combout\ = (\ss_n~input_o\ & ((\st_load_en~input_o\ & (\st_load_trdy~input_o\)) # (!\st_load_en~input_o\ & ((\tx_load_en~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \st_load_trdy~input_o\,
	datab => \tx_load_en~input_o\,
	datac => \st_load_en~input_o\,
	datad => \ss_n~input_o\,
	combout => \trdy~8_combout\);

-- Location: LCCOMB_X22_Y2_N22
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

-- Location: LCCOMB_X22_Y2_N14
\process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\wr_add~q\ & bit_cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datad => bit_cnt(9),
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X22_Y2_N10
\trdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~7_combout\ = (\trdy~2_combout\ & (!\process_1~1_combout\ & ((\rd_add~q\) # (!bit_cnt(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(16),
	datab => \trdy~2_combout\,
	datac => \process_1~1_combout\,
	datad => \rd_add~q\,
	combout => \trdy~7_combout\);

-- Location: LCCOMB_X22_Y2_N20
\trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~3_combout\ = \trdy~1_combout\ $ (((\trdy~7_combout\) # ((\process_1~1_combout\ & \mosi~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trdy~7_combout\,
	datab => \process_1~1_combout\,
	datac => \trdy~1_combout\,
	datad => \mosi~input_o\,
	combout => \trdy~3_combout\);

-- Location: LCCOMB_X22_Y2_N4
\trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~0_combout\ = (\process_1~2_combout\) # (\trdy~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~2_combout\,
	datad => \trdy~8_combout\,
	combout => \trdy~0_combout\);

-- Location: FF_X22_Y2_N21
\trdy~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	d => \trdy~3_combout\,
	clrn => \ALT_INV_trdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trdy~reg0_emulated_q\);

-- Location: LCCOMB_X22_Y2_N18
\trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~2_combout\ = (!\process_1~2_combout\ & ((\trdy~8_combout\) # (\trdy~1_combout\ $ (\trdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trdy~1_combout\,
	datab => \trdy~reg0_emulated_q\,
	datac => \trdy~8_combout\,
	datad => \process_1~2_combout\,
	combout => \trdy~2_combout\);

-- Location: LCCOMB_X21_Y1_N0
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

-- Location: LCCOMB_X21_Y1_N12
\miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~3_combout\ = (\rd_add~q\ & ((\miso~2_combout\))) # (!\rd_add~q\ & (\tx_buf[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd_add~q\,
	datac => \tx_buf[7]~2_combout\,
	datad => \miso~2_combout\,
	combout => \miso~3_combout\);

-- Location: LCCOMB_X22_Y2_N6
\miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~4_combout\ = (bit_cnt(8) & (!bit_cnt(10) & !bit_cnt(9))) # (!bit_cnt(8) & (bit_cnt(10) $ (bit_cnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(8),
	datab => bit_cnt(10),
	datad => bit_cnt(9),
	combout => \miso~4_combout\);

-- Location: LCCOMB_X20_Y1_N6
\miso~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~5_combout\ = (\process_1~8_combout\ & bit_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~8_combout\,
	datab => bit_cnt(0),
	combout => \miso~5_combout\);

-- Location: LCCOMB_X20_Y1_N0
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

-- Location: FF_X21_Y1_N13
\miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \miso~3_combout\,
	ena => \miso~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miso~reg0_q\);

-- Location: LCCOMB_X20_Y2_N12
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

-- Location: FF_X20_Y2_N13
\miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sspi_clk~input_o\,
	d => \miso~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \miso~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miso~en_q\);

-- Location: IOIBUF_X41_Y15_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G7
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

-- Location: IOIBUF_X1_Y0_N1
\rx~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X23_Y25_N28
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

-- Location: LCCOMB_X36_Y25_N8
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

-- Location: FF_X36_Y25_N9
\count_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[0]~12_combout\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(0));

-- Location: LCCOMB_X36_Y25_N10
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

-- Location: FF_X36_Y25_N11
\count_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[1]~14_combout\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(1));

-- Location: LCCOMB_X36_Y25_N12
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

-- Location: FF_X36_Y25_N13
\count_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[2]~16_combout\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(2));

-- Location: LCCOMB_X36_Y25_N14
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

-- Location: FF_X36_Y25_N15
\count_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[3]~18_combout\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(3));

-- Location: LCCOMB_X36_Y25_N16
\count_baud[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[4]~20_combout\ = (count_baud(4) & (\count_baud[3]~19\ $ (GND))) # (!count_baud(4) & (!\count_baud[3]~19\ & VCC))
-- \count_baud[4]~21\ = CARRY((count_baud(4) & !\count_baud[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(4),
	datad => VCC,
	cin => \count_baud[3]~19\,
	combout => \count_baud[4]~20_combout\,
	cout => \count_baud[4]~21\);

-- Location: FF_X36_Y25_N17
\count_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[4]~20_combout\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(4));

-- Location: LCCOMB_X36_Y25_N18
\count_baud[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[5]~22_combout\ = (count_baud(5) & (!\count_baud[4]~21\)) # (!count_baud(5) & ((\count_baud[4]~21\) # (GND)))
-- \count_baud[5]~23\ = CARRY((!\count_baud[4]~21\) # (!count_baud(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(5),
	datad => VCC,
	cin => \count_baud[4]~21\,
	combout => \count_baud[5]~22_combout\,
	cout => \count_baud[5]~23\);

-- Location: FF_X36_Y25_N19
\count_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[5]~22_combout\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(5));

-- Location: LCCOMB_X36_Y25_N20
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

-- Location: FF_X36_Y25_N21
\count_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[6]~24_combout\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(6));

-- Location: LCCOMB_X36_Y25_N22
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

-- Location: FF_X36_Y25_N23
\count_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[7]~26_combout\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(7));

-- Location: LCCOMB_X36_Y25_N24
\count_baud[8]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_baud[8]~28_combout\ = (count_baud(8) & (\count_baud[7]~27\ $ (GND))) # (!count_baud(8) & (!\count_baud[7]~27\ & VCC))
-- \count_baud[8]~29\ = CARRY((count_baud(8) & !\count_baud[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(8),
	datad => VCC,
	cin => \count_baud[7]~27\,
	combout => \count_baud[8]~28_combout\,
	cout => \count_baud[8]~29\);

-- Location: FF_X36_Y25_N25
\count_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[8]~28_combout\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(8));

-- Location: LCCOMB_X36_Y25_N26
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

-- Location: FF_X36_Y25_N27
\count_baud[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[9]~30_combout\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(9));

-- Location: LCCOMB_X36_Y25_N28
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

-- Location: FF_X36_Y25_N29
\count_baud[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[10]~32_combout\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(10));

-- Location: LCCOMB_X36_Y25_N30
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

-- Location: FF_X36_Y25_N31
\count_baud[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_baud[11]~34_combout\,
	sclr => \ALT_INV_LessThan0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_baud(11));

-- Location: LCCOMB_X36_Y25_N0
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

-- Location: LCCOMB_X36_Y25_N2
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((!count_baud(4) & ((\LessThan0~9_combout\) # (!count_baud(3))))) # (!count_baud(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(5),
	datab => count_baud(4),
	datac => count_baud(3),
	datad => \LessThan0~9_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X36_Y25_N4
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

-- Location: LCCOMB_X35_Y25_N4
\LessThan0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~26_combout\ = ((!count_baud(10) & ((\LessThan0~3_combout\) # (!count_baud(9))))) # (!count_baud(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_baud(11),
	datab => count_baud(9),
	datac => count_baud(10),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~26_combout\);

-- Location: LCCOMB_X35_Y25_N10
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

-- Location: FF_X35_Y25_N11
\count_os[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[0]~8_combout\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(0));

-- Location: LCCOMB_X35_Y25_N12
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

-- Location: FF_X35_Y25_N13
\count_os[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[1]~10_combout\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(1));

-- Location: LCCOMB_X35_Y25_N14
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

-- Location: FF_X35_Y25_N15
\count_os[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[2]~12_combout\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(2));

-- Location: LCCOMB_X35_Y25_N16
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

-- Location: FF_X35_Y25_N17
\count_os[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[3]~14_combout\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(3));

-- Location: LCCOMB_X35_Y25_N18
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

-- Location: FF_X35_Y25_N19
\count_os[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[4]~16_combout\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(4));

-- Location: LCCOMB_X35_Y25_N20
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

-- Location: FF_X35_Y25_N21
\count_os[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[5]~18_combout\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(5));

-- Location: LCCOMB_X35_Y25_N22
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

-- Location: FF_X35_Y25_N23
\count_os[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[6]~20_combout\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(6));

-- Location: LCCOMB_X35_Y25_N26
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!count_os(3) & (!count_os(2) & (!count_os(1) & !count_os(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_os(3),
	datab => count_os(2),
	datac => count_os(1),
	datad => count_os(0),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X35_Y25_N8
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

-- Location: LCCOMB_X35_Y25_N24
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

-- Location: FF_X35_Y25_N25
\count_os[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_os[7]~22_combout\,
	sclr => \ALT_INV_LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_os(7));

-- Location: LCCOMB_X35_Y25_N30
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!count_os(6) & !\LessThan1~1_combout\)) # (!\LessThan0~26_combout\)) # (!count_os(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_os(6),
	datab => \LessThan1~1_combout\,
	datac => count_os(7),
	datad => \LessThan0~26_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X35_Y25_N28
\os_pulse~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_pulse~0_combout\ = !\LessThan1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~2_combout\,
	combout => \os_pulse~0_combout\);

-- Location: FF_X35_Y25_N29
os_pulse : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \os_pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \os_pulse~q\);

-- Location: FF_X23_Y25_N29
rx_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_state~3_combout\,
	ena => \os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_state~q\);

-- Location: LCCOMB_X23_Y25_N4
\os_count[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[3]~0_combout\ = (!\rx_state~q\ & ((os_count(3)) # (\rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => os_count(3),
	datac => \rx~input_o\,
	datad => \rx_state~q\,
	combout => \os_count[3]~0_combout\);

-- Location: LCCOMB_X23_Y25_N14
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

-- Location: LCCOMB_X24_Y25_N10
\rx_count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_count~5_combout\ = (!rx_count(0) & \rx_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => rx_count(0),
	datad => \rx_state~q\,
	combout => \rx_count~5_combout\);

-- Location: LCCOMB_X24_Y25_N24
\rx_count[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_count[1]~4_combout\ = (\os_pulse~q\ & ((\rx_state~2_combout\) # ((!rx_count(3) & \rx_count[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_state~2_combout\,
	datab => rx_count(3),
	datac => \rx_count[3]~0_combout\,
	datad => \os_pulse~q\,
	combout => \rx_count[1]~4_combout\);

-- Location: FF_X24_Y25_N11
\rx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_count~5_combout\,
	ena => \rx_count[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_count(0));

-- Location: LCCOMB_X24_Y25_N12
\rx_count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_count~6_combout\ = (\rx_state~q\ & (rx_count(1) $ (rx_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_state~q\,
	datac => rx_count(1),
	datad => rx_count(0),
	combout => \rx_count~6_combout\);

-- Location: FF_X24_Y25_N13
\rx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_count~6_combout\,
	ena => \rx_count[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_count(1));

-- Location: LCCOMB_X24_Y25_N16
\rx_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_count~3_combout\ = (\rx_state~q\ & (rx_count(2) $ (((rx_count(0) & rx_count(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_count(0),
	datab => \rx_state~q\,
	datac => rx_count(2),
	datad => rx_count(1),
	combout => \rx_count~3_combout\);

-- Location: FF_X24_Y25_N17
\rx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_count~3_combout\,
	ena => \rx_count[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_count(2));

-- Location: LCCOMB_X24_Y25_N18
\rx_count[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_count[3]~1_combout\ = (rx_count(1) & (rx_count(2) & (\rx_count[3]~0_combout\ & rx_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_count(1),
	datab => rx_count(2),
	datac => \rx_count[3]~0_combout\,
	datad => rx_count(0),
	combout => \rx_count[3]~1_combout\);

-- Location: LCCOMB_X23_Y25_N24
\rx_count[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_count[3]~2_combout\ = (\os_pulse~q\ & ((\rx_count[3]~1_combout\) # ((!\rx_state~2_combout\ & rx_count(3))))) # (!\os_pulse~q\ & (((rx_count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \os_pulse~q\,
	datab => \rx_state~2_combout\,
	datac => rx_count(3),
	datad => \rx_count[3]~1_combout\,
	combout => \rx_count[3]~2_combout\);

-- Location: FF_X23_Y25_N25
\rx_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_count(3));

-- Location: LCCOMB_X23_Y25_N20
\os_count[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[3]~2_combout\ = (\os_pulse~q\ & ((!\rx_count[3]~0_combout\) # (!rx_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rx_count(3),
	datac => \os_pulse~q\,
	datad => \rx_count[3]~0_combout\,
	combout => \os_count[3]~2_combout\);

-- Location: LCCOMB_X23_Y25_N12
\os_count[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[0]~5_combout\ = (os_count(0) & ((!\os_count[3]~2_combout\))) # (!os_count(0) & (\os_count[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \os_count[2]~1_combout\,
	datac => os_count(0),
	datad => \os_count[3]~2_combout\,
	combout => \os_count[0]~5_combout\);

-- Location: FF_X23_Y25_N13
\os_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \os_count[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => os_count(0));

-- Location: LCCOMB_X23_Y25_N22
\os_count[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[1]~6_combout\ = (os_count(1) & (((\os_count[2]~1_combout\ & !os_count(0))) # (!\os_count[3]~2_combout\))) # (!os_count(1) & (\os_count[2]~1_combout\ & ((os_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \os_count[2]~1_combout\,
	datab => \os_count[3]~2_combout\,
	datac => os_count(1),
	datad => os_count(0),
	combout => \os_count[1]~6_combout\);

-- Location: FF_X23_Y25_N23
\os_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \os_count[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => os_count(1));

-- Location: LCCOMB_X23_Y25_N18
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = os_count(2) $ (((os_count(0) & os_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => os_count(0),
	datac => os_count(1),
	datad => os_count(2),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X23_Y25_N6
\os_count[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[2]~4_combout\ = (\os_count[2]~1_combout\ & ((\Add2~0_combout\) # ((os_count(2) & !\os_count[3]~2_combout\)))) # (!\os_count[2]~1_combout\ & (((os_count(2) & !\os_count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \os_count[2]~1_combout\,
	datab => \Add2~0_combout\,
	datac => os_count(2),
	datad => \os_count[3]~2_combout\,
	combout => \os_count[2]~4_combout\);

-- Location: FF_X23_Y25_N7
\os_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \os_count[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => os_count(2));

-- Location: LCCOMB_X23_Y25_N8
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

-- Location: LCCOMB_X23_Y25_N16
\rx_count[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_count[3]~0_combout\ = (os_count(3) & (\LessThan3~0_combout\ & \rx_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => os_count(3),
	datac => \LessThan3~0_combout\,
	datad => \rx_state~q\,
	combout => \rx_count[3]~0_combout\);

-- Location: LCCOMB_X23_Y25_N26
\os_count[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[2]~1_combout\ = (!\os_count[3]~0_combout\ & (\os_pulse~q\ & !\rx_count[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \os_count[3]~0_combout\,
	datac => \os_pulse~q\,
	datad => \rx_count[3]~0_combout\,
	combout => \os_count[2]~1_combout\);

-- Location: LCCOMB_X23_Y25_N30
\os_count[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \os_count[3]~3_combout\ = (os_count(3) & (((\os_count[2]~1_combout\ & !\LessThan3~0_combout\)) # (!\os_count[3]~2_combout\))) # (!os_count(3) & (\os_count[2]~1_combout\ & (\LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \os_count[2]~1_combout\,
	datab => \LessThan3~0_combout\,
	datac => os_count(3),
	datad => \os_count[3]~2_combout\,
	combout => \os_count[3]~3_combout\);

-- Location: FF_X23_Y25_N31
\os_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \os_count[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => os_count(3));

-- Location: LCCOMB_X23_Y25_N10
\rx_busy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_busy~2_combout\ = ((!rx_count(3)) # (!\LessThan3~0_combout\)) # (!os_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => os_count(3),
	datac => \LessThan3~0_combout\,
	datad => rx_count(3),
	combout => \rx_busy~2_combout\);

-- Location: LCCOMB_X23_Y25_N0
\rx_busy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_busy~3_combout\ = (\rx_state~2_combout\) # ((\rx_busy~2_combout\ & (\rx_busy~reg0_q\ & \rx_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_busy~2_combout\,
	datab => \rx_state~2_combout\,
	datac => \rx_busy~reg0_q\,
	datad => \rx_state~q\,
	combout => \rx_busy~3_combout\);

-- Location: FF_X23_Y25_N1
\rx_busy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_busy~3_combout\,
	ena => \os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_busy~reg0_q\);

-- Location: LCCOMB_X22_Y25_N20
\rx_buffer[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[8]~feeder_combout\ = \rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx~input_o\,
	combout => \rx_buffer[8]~feeder_combout\);

-- Location: LCCOMB_X22_Y25_N30
\rx_buffer[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[0]~0_combout\ = (!rx_count(3) & (\rx_count[3]~0_combout\ & \os_pulse~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_count(3),
	datab => \rx_count[3]~0_combout\,
	datad => \os_pulse~q\,
	combout => \rx_buffer[0]~0_combout\);

-- Location: FF_X22_Y25_N21
\rx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_buffer[8]~feeder_combout\,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(8));

-- Location: FF_X22_Y25_N27
\rx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => rx_buffer(8),
	sload => VCC,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(7));

-- Location: LCCOMB_X22_Y25_N28
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

-- Location: FF_X22_Y25_N29
\rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_buffer[6]~feeder_combout\,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(6));

-- Location: LCCOMB_X22_Y25_N16
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

-- Location: FF_X22_Y25_N17
\rx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_buffer[5]~feeder_combout\,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(5));

-- Location: FF_X22_Y25_N23
\rx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => rx_buffer(5),
	sload => VCC,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(4));

-- Location: LCCOMB_X22_Y25_N18
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

-- Location: FF_X22_Y25_N19
\rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_buffer[3]~feeder_combout\,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(3));

-- Location: FF_X22_Y25_N15
\rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => rx_buffer(3),
	sload => VCC,
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(2));

-- Location: FF_X22_Y25_N9
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
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(1));

-- Location: FF_X22_Y25_N31
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
	ena => \rx_buffer[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(0));

-- Location: LCCOMB_X22_Y25_N12
\rx_error~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_error~0_combout\ = (rx_buffer(0)) # (!\rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datad => rx_buffer(0),
	combout => \rx_error~0_combout\);

-- Location: LCCOMB_X23_Y25_N2
\rx_error~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_error~1_combout\ = (rx_count(3) & (\os_pulse~q\ & \rx_count[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rx_count(3),
	datac => \os_pulse~q\,
	datad => \rx_count[3]~0_combout\,
	combout => \rx_error~1_combout\);

-- Location: FF_X22_Y25_N13
\rx_error~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_error~0_combout\,
	ena => \rx_error~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_error~reg0_q\);

-- Location: FF_X22_Y25_N1
\rx_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => rx_buffer(1),
	sload => VCC,
	ena => \rx_error~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[0]~reg0_q\);

-- Location: LCCOMB_X24_Y25_N0
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

-- Location: FF_X24_Y25_N1
\rx_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data[1]~reg0feeder_combout\,
	ena => \rx_error~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[1]~reg0_q\);

-- Location: FF_X22_Y25_N3
\rx_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => rx_buffer(3),
	sload => VCC,
	ena => \rx_error~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[2]~reg0_q\);

-- Location: LCCOMB_X22_Y25_N6
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

-- Location: FF_X22_Y25_N7
\rx_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data[3]~reg0feeder_combout\,
	ena => \rx_error~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[3]~reg0_q\);

-- Location: FF_X22_Y25_N11
\rx_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => rx_buffer(5),
	sload => VCC,
	ena => \rx_error~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[4]~reg0_q\);

-- Location: LCCOMB_X22_Y25_N4
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

-- Location: FF_X22_Y25_N5
\rx_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data[5]~reg0feeder_combout\,
	ena => \rx_error~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[5]~reg0_q\);

-- Location: LCCOMB_X22_Y25_N24
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

-- Location: FF_X22_Y25_N25
\rx_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data[6]~reg0feeder_combout\,
	ena => \rx_error~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[6]~reg0_q\);

-- Location: LCCOMB_X24_Y25_N2
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

-- Location: FF_X24_Y25_N3
\rx_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_data[7]~reg0feeder_combout\,
	ena => \rx_error~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[7]~reg0_q\);

-- Location: LCCOMB_X23_Y1_N30
\rx_buf[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[0]~0_combout\ = (bit_cnt(16) & ((\wr_add~q\ & ((rx_buf(0)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(16) & (((rx_buf(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => rx_buf(0),
	datac => bit_cnt(16),
	datad => \wr_add~q\,
	combout => \rx_buf[0]~0_combout\);

-- Location: LCCOMB_X24_Y1_N28
\rx_buf[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[0]~feeder_combout\ = \rx_buf[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_buf[0]~0_combout\,
	combout => \rx_buf[0]~feeder_combout\);

-- Location: FF_X24_Y1_N29
\rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	d => \rx_buf[0]~feeder_combout\,
	clrn => \spi_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(0));

-- Location: CLKCTRL_G15
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

-- Location: LCCOMB_X24_Y1_N8
\spi_rx_data[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- spi_rx_data(0) = (\spi_reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(0))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((spi_rx_data(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_reset_n~input_o\,
	datab => rx_buf(0),
	datac => spi_rx_data(0),
	datad => \process_1~0clkctrl_outclk\,
	combout => spi_rx_data(0));

-- Location: LCCOMB_X24_Y1_N30
\rx_buf[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[1]~1_combout\ = (\wr_add~q\ & (((rx_buf(1))))) # (!\wr_add~q\ & ((bit_cnt(15) & (\mosi~input_o\)) # (!bit_cnt(15) & ((rx_buf(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(1),
	datad => bit_cnt(15),
	combout => \rx_buf[1]~1_combout\);

-- Location: FF_X24_Y1_N31
\rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	d => \rx_buf[1]~1_combout\,
	clrn => \spi_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(1));

-- Location: LCCOMB_X24_Y1_N26
\spi_rx_data[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- spi_rx_data(1) = (\spi_reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(1))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((spi_rx_data(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(1),
	datab => \spi_reset_n~input_o\,
	datac => spi_rx_data(1),
	datad => \process_1~0clkctrl_outclk\,
	combout => spi_rx_data(1));

-- Location: LCCOMB_X21_Y2_N12
\rx_buf[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[2]~2_combout\ = (\wr_add~q\ & (((rx_buf(2))))) # (!\wr_add~q\ & ((bit_cnt(14) & (\mosi~input_o\)) # (!bit_cnt(14) & ((rx_buf(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(2),
	datad => bit_cnt(14),
	combout => \rx_buf[2]~2_combout\);

-- Location: FF_X21_Y2_N13
\rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	d => \rx_buf[2]~2_combout\,
	clrn => \spi_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(2));

-- Location: LCCOMB_X21_Y2_N22
\spi_rx_data[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- spi_rx_data(2) = (\spi_reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(2))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((spi_rx_data(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_reset_n~input_o\,
	datab => rx_buf(2),
	datac => spi_rx_data(2),
	datad => \process_1~0clkctrl_outclk\,
	combout => spi_rx_data(2));

-- Location: LCCOMB_X21_Y2_N10
\rx_buf[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[3]~3_combout\ = (bit_cnt(13) & ((\wr_add~q\ & ((rx_buf(3)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(13) & (((rx_buf(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(13),
	datac => rx_buf(3),
	datad => \wr_add~q\,
	combout => \rx_buf[3]~3_combout\);

-- Location: FF_X21_Y2_N11
\rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	d => \rx_buf[3]~3_combout\,
	clrn => \spi_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(3));

-- Location: LCCOMB_X21_Y2_N4
\spi_rx_data[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- spi_rx_data(3) = (\spi_reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(3))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((spi_rx_data(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_reset_n~input_o\,
	datab => rx_buf(3),
	datac => spi_rx_data(3),
	datad => \process_1~0clkctrl_outclk\,
	combout => spi_rx_data(3));

-- Location: LCCOMB_X21_Y2_N24
\rx_buf[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[4]~4_combout\ = (\wr_add~q\ & (((rx_buf(4))))) # (!\wr_add~q\ & ((bit_cnt(12) & (\mosi~input_o\)) # (!bit_cnt(12) & ((rx_buf(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(4),
	datad => bit_cnt(12),
	combout => \rx_buf[4]~4_combout\);

-- Location: FF_X21_Y2_N25
\rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	d => \rx_buf[4]~4_combout\,
	clrn => \spi_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(4));

-- Location: LCCOMB_X21_Y2_N14
\spi_rx_data[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- spi_rx_data(4) = (\spi_reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(4)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (spi_rx_data(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_reset_n~input_o\,
	datab => spi_rx_data(4),
	datac => rx_buf(4),
	datad => \process_1~0clkctrl_outclk\,
	combout => spi_rx_data(4));

-- Location: LCCOMB_X21_Y2_N26
\rx_buf[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[5]~5_combout\ = (bit_cnt(11) & ((\wr_add~q\ & ((rx_buf(5)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(11) & (((rx_buf(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(11),
	datac => rx_buf(5),
	datad => \wr_add~q\,
	combout => \rx_buf[5]~5_combout\);

-- Location: FF_X21_Y2_N27
\rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	d => \rx_buf[5]~5_combout\,
	clrn => \spi_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(5));

-- Location: LCCOMB_X21_Y2_N8
\spi_rx_data[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- spi_rx_data(5) = (\spi_reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(5))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((spi_rx_data(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_reset_n~input_o\,
	datab => rx_buf(5),
	datac => spi_rx_data(5),
	datad => \process_1~0clkctrl_outclk\,
	combout => spi_rx_data(5));

-- Location: LCCOMB_X24_Y2_N28
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

-- Location: FF_X24_Y2_N29
\rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	d => \rx_buf[6]~6_combout\,
	clrn => \spi_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(6));

-- Location: LCCOMB_X24_Y2_N4
\spi_rx_data[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- spi_rx_data(6) = (\spi_reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(6)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (spi_rx_data(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_rx_data(6),
	datab => rx_buf(6),
	datac => \process_1~0clkctrl_outclk\,
	datad => \spi_reset_n~input_o\,
	combout => spi_rx_data(6));

-- Location: LCCOMB_X23_Y1_N20
\rx_buf[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[7]~7_combout\ = (bit_cnt(9) & ((\wr_add~q\ & ((rx_buf(7)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(9) & (((rx_buf(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(9),
	datac => rx_buf(7),
	datad => \wr_add~q\,
	combout => \rx_buf[7]~7_combout\);

-- Location: FF_X23_Y1_N21
\rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sspi_clk~input_o\,
	d => \rx_buf[7]~7_combout\,
	clrn => \spi_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(7));

-- Location: LCCOMB_X23_Y1_N4
\spi_rx_data[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- spi_rx_data(7) = (\spi_reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(7)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (spi_rx_data(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => spi_rx_data(7),
	datab => rx_buf(7),
	datac => \spi_reset_n~input_o\,
	datad => \process_1~0clkctrl_outclk\,
	combout => spi_rx_data(7));

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

ww_tx <= \tx~output_o\;

ww_spi_led(0) <= \spi_led[0]~output_o\;

ww_spi_led(1) <= \spi_led[1]~output_o\;

ww_spi_led(2) <= \spi_led[2]~output_o\;

ww_spi_led(3) <= \spi_led[3]~output_o\;

ww_spi_led(4) <= \spi_led[4]~output_o\;

ww_spi_led(5) <= \spi_led[5]~output_o\;

ww_spi_led(6) <= \spi_led[6]~output_o\;

ww_spi_led(7) <= \spi_led[7]~output_o\;

ww_trdy <= \trdy~output_o\;

ww_rrdy <= \rrdy~output_o\;

ww_roe <= \roe~output_o\;

ww_busy <= \busy~output_o\;

ww_miso <= \miso~output_o\;
END structure;


