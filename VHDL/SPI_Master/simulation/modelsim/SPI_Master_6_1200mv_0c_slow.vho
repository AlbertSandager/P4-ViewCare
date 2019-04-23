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

-- DATE "04/23/2019 11:42:27"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	SPI_Master IS
    PORT (
	clock : IN std_logic;
	reset_n : IN std_logic;
	enable : IN std_logic;
	cpol : IN std_logic;
	cpha : IN std_logic;
	cont : IN std_logic;
	clk_div : IN STD.STANDARD.integer;
	addr : IN STD.STANDARD.integer;
	tx_data : IN std_logic_vector(23 DOWNTO 0);
	miso : IN std_logic;
	sclk : BUFFER std_logic;
	ss_n : BUFFER std_logic_vector(0 DOWNTO 0);
	mosi : OUT std_logic;
	busy : OUT std_logic;
	rx_data : OUT std_logic_vector(23 DOWNTO 0)
	);
END SPI_Master;

-- Design Ports Information
-- sclk	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_n[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[7]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[8]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[9]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[10]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[11]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[12]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[13]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[14]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[15]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[16]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[17]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[18]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[19]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[20]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[21]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[22]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[23]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[12]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[16]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[17]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[18]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[19]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[20]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[21]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[22]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[23]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[24]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[25]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[26]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[27]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[28]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[29]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[30]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpol	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cont	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[3]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[4]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[6]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[8]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[10]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[11]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[12]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[13]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[14]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[15]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[16]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[17]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[18]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[21]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[22]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[23]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[24]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[19]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[20]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[25]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[26]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[27]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[28]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[29]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[30]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_div[31]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[31]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpha	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[23]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[22]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[21]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[20]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[19]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[18]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[17]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[16]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[15]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[14]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[13]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[12]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[11]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[10]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[9]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[8]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[7]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[1]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SPI_Master IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_cpol : std_logic;
SIGNAL ww_cpha : std_logic;
SIGNAL ww_cont : std_logic;
SIGNAL ww_clk_div : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_tx_data : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_miso : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_ss_n : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_mosi : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_rx_data : std_logic_vector(23 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \addr[8]~input_o\ : std_logic;
SIGNAL \addr[9]~input_o\ : std_logic;
SIGNAL \addr[10]~input_o\ : std_logic;
SIGNAL \addr[11]~input_o\ : std_logic;
SIGNAL \addr[12]~input_o\ : std_logic;
SIGNAL \addr[13]~input_o\ : std_logic;
SIGNAL \addr[14]~input_o\ : std_logic;
SIGNAL \addr[15]~input_o\ : std_logic;
SIGNAL \addr[16]~input_o\ : std_logic;
SIGNAL \addr[17]~input_o\ : std_logic;
SIGNAL \addr[18]~input_o\ : std_logic;
SIGNAL \addr[19]~input_o\ : std_logic;
SIGNAL \addr[20]~input_o\ : std_logic;
SIGNAL \addr[21]~input_o\ : std_logic;
SIGNAL \addr[22]~input_o\ : std_logic;
SIGNAL \addr[23]~input_o\ : std_logic;
SIGNAL \addr[24]~input_o\ : std_logic;
SIGNAL \addr[25]~input_o\ : std_logic;
SIGNAL \addr[26]~input_o\ : std_logic;
SIGNAL \addr[27]~input_o\ : std_logic;
SIGNAL \addr[28]~input_o\ : std_logic;
SIGNAL \addr[29]~input_o\ : std_logic;
SIGNAL \addr[30]~input_o\ : std_logic;
SIGNAL \mosi~output_o\ : std_logic;
SIGNAL \sclk~output_o\ : std_logic;
SIGNAL \ss_n[0]~output_o\ : std_logic;
SIGNAL \busy~output_o\ : std_logic;
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
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \tx_data[22]~input_o\ : std_logic;
SIGNAL \tx_data[18]~input_o\ : std_logic;
SIGNAL \tx_data[17]~input_o\ : std_logic;
SIGNAL \tx_data[0]~input_o\ : std_logic;
SIGNAL \cont~input_o\ : std_logic;
SIGNAL \cpha~input_o\ : std_logic;
SIGNAL \last_bit_rx[0]~0_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \clk_ratio[31]~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \last_bit_rx[5]~feeder_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \clk_toggles~5_combout\ : std_logic;
SIGNAL \clk_div[3]~input_o\ : std_logic;
SIGNAL \clk_div[2]~input_o\ : std_logic;
SIGNAL \clk_div[31]~input_o\ : std_logic;
SIGNAL \clk_div[30]~input_o\ : std_logic;
SIGNAL \clk_div[29]~input_o\ : std_logic;
SIGNAL \clk_div[26]~input_o\ : std_logic;
SIGNAL \clk_div[28]~input_o\ : std_logic;
SIGNAL \clk_div[25]~input_o\ : std_logic;
SIGNAL \clk_div[27]~input_o\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \clk_div[14]~input_o\ : std_logic;
SIGNAL \clk_div[16]~input_o\ : std_logic;
SIGNAL \clk_div[15]~input_o\ : std_logic;
SIGNAL \clk_div[13]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \clk_div[11]~input_o\ : std_logic;
SIGNAL \clk_div[10]~input_o\ : std_logic;
SIGNAL \clk_div[12]~input_o\ : std_logic;
SIGNAL \clk_div[9]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \clk_div[4]~input_o\ : std_logic;
SIGNAL \clk_div[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clk_div[8]~input_o\ : std_logic;
SIGNAL \clk_div[7]~input_o\ : std_logic;
SIGNAL \clk_div[6]~input_o\ : std_logic;
SIGNAL \clk_div[5]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \clk_div[0]~input_o\ : std_logic;
SIGNAL \clk_div[22]~input_o\ : std_logic;
SIGNAL \clk_div[21]~input_o\ : std_logic;
SIGNAL \clk_div[23]~input_o\ : std_logic;
SIGNAL \clk_div[24]~input_o\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \clk_div[17]~input_o\ : std_logic;
SIGNAL \clk_div[18]~input_o\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \clk_div[20]~input_o\ : std_logic;
SIGNAL \clk_div[19]~input_o\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \clk_ratio~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \count[31]~5_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \count~10_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \count~9_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \count~12_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \count~11_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \clk_ratio[1]~feeder_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \count~14_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \count~13_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \count~16_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \count~15_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \count~18_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \count~17_combout\ : std_logic;
SIGNAL \clk_ratio[13]~feeder_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \count~20_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \count~19_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \clk_ratio[9]~feeder_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \clk_ratio[11]~feeder_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \count~22_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \count~21_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \count~24_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \count~23_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \count~26_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \count~25_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \count~28_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \count~27_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \count~30_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \count~29_combout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \count~32_combout\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \count~31_combout\ : std_logic;
SIGNAL \Equal1~16_combout\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \count~34_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \count~33_combout\ : std_logic;
SIGNAL \Equal1~17_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \count~36_combout\ : std_logic;
SIGNAL \clk_ratio[31]~3_combout\ : std_logic;
SIGNAL \Add5~61\ : std_logic;
SIGNAL \Add5~62_combout\ : std_logic;
SIGNAL \count~35_combout\ : std_logic;
SIGNAL \Equal1~18_combout\ : std_logic;
SIGNAL \Equal1~15_combout\ : std_logic;
SIGNAL \Equal1~19_combout\ : std_logic;
SIGNAL \Equal1~11_combout\ : std_logic;
SIGNAL \Equal1~13_combout\ : std_logic;
SIGNAL \clk_ratio[17]~feeder_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \clk_ratio[21]~feeder_combout\ : std_logic;
SIGNAL \Equal1~12_combout\ : std_logic;
SIGNAL \Equal1~14_combout\ : std_logic;
SIGNAL \Equal1~20_combout\ : std_logic;
SIGNAL \sclk~1_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \clk_toggles~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \clk_toggles~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \clk_toggles~3_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \clk_toggles[3]~1_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \clk_toggles~2_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \clk_toggles~6_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \ss_n~0_combout\ : std_logic;
SIGNAL \ss_n~0_wirecell_combout\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \tx_buffer[0]~27_combout\ : std_logic;
SIGNAL \assert_data~0_combout\ : std_logic;
SIGNAL \assert_data~1_combout\ : std_logic;
SIGNAL \assert_data~q\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \tx_buffer[0]~28_combout\ : std_logic;
SIGNAL \tx_buffer[0]~29_combout\ : std_logic;
SIGNAL \tx_data[1]~input_o\ : std_logic;
SIGNAL \tx_buffer~26_combout\ : std_logic;
SIGNAL \tx_buffer[0]~30_combout\ : std_logic;
SIGNAL \tx_buffer[23]~3_combout\ : std_logic;
SIGNAL \tx_buffer[23]~4_combout\ : std_logic;
SIGNAL \tx_data[2]~input_o\ : std_logic;
SIGNAL \tx_buffer~25_combout\ : std_logic;
SIGNAL \tx_data[3]~input_o\ : std_logic;
SIGNAL \tx_buffer~24_combout\ : std_logic;
SIGNAL \tx_data[4]~input_o\ : std_logic;
SIGNAL \tx_buffer~23_combout\ : std_logic;
SIGNAL \tx_data[5]~input_o\ : std_logic;
SIGNAL \tx_buffer~22_combout\ : std_logic;
SIGNAL \tx_data[6]~input_o\ : std_logic;
SIGNAL \tx_buffer~21_combout\ : std_logic;
SIGNAL \tx_data[7]~input_o\ : std_logic;
SIGNAL \tx_buffer~20_combout\ : std_logic;
SIGNAL \tx_data[8]~input_o\ : std_logic;
SIGNAL \tx_buffer~19_combout\ : std_logic;
SIGNAL \tx_data[9]~input_o\ : std_logic;
SIGNAL \tx_buffer~18_combout\ : std_logic;
SIGNAL \tx_data[10]~input_o\ : std_logic;
SIGNAL \tx_buffer~17_combout\ : std_logic;
SIGNAL \tx_data[11]~input_o\ : std_logic;
SIGNAL \tx_buffer~16_combout\ : std_logic;
SIGNAL \tx_data[12]~input_o\ : std_logic;
SIGNAL \tx_buffer~15_combout\ : std_logic;
SIGNAL \tx_data[13]~input_o\ : std_logic;
SIGNAL \tx_buffer~14_combout\ : std_logic;
SIGNAL \tx_data[14]~input_o\ : std_logic;
SIGNAL \tx_buffer~13_combout\ : std_logic;
SIGNAL \tx_data[15]~input_o\ : std_logic;
SIGNAL \tx_buffer~12_combout\ : std_logic;
SIGNAL \tx_data[16]~input_o\ : std_logic;
SIGNAL \tx_buffer~11_combout\ : std_logic;
SIGNAL \tx_buffer~10_combout\ : std_logic;
SIGNAL \tx_buffer~9_combout\ : std_logic;
SIGNAL \tx_data[19]~input_o\ : std_logic;
SIGNAL \tx_buffer~8_combout\ : std_logic;
SIGNAL \tx_data[20]~input_o\ : std_logic;
SIGNAL \tx_buffer~7_combout\ : std_logic;
SIGNAL \tx_data[21]~input_o\ : std_logic;
SIGNAL \tx_buffer~6_combout\ : std_logic;
SIGNAL \tx_buffer~5_combout\ : std_logic;
SIGNAL \tx_data[23]~input_o\ : std_logic;
SIGNAL \tx_buffer~2_combout\ : std_logic;
SIGNAL \mosi~reg0feeder_combout\ : std_logic;
SIGNAL \ss_n~2_combout\ : std_logic;
SIGNAL \mosi~1_combout\ : std_logic;
SIGNAL \mosi~reg0_q\ : std_logic;
SIGNAL \mosi~2_combout\ : std_logic;
SIGNAL \mosi~en_q\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \addr[31]~input_o\ : std_logic;
SIGNAL \slave~0_combout\ : std_logic;
SIGNAL \ss_n~1_combout\ : std_logic;
SIGNAL \ss_n[0]~reg0_q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \cpol~input_o\ : std_logic;
SIGNAL \sclk~0_combout\ : std_logic;
SIGNAL \sclk~2_combout\ : std_logic;
SIGNAL \sclk~reg0_q\ : std_logic;
SIGNAL \continue~0_combout\ : std_logic;
SIGNAL \continue~q\ : std_logic;
SIGNAL \busy~0_combout\ : std_logic;
SIGNAL \busy~1_combout\ : std_logic;
SIGNAL \busy~reg0_q\ : std_logic;
SIGNAL \miso~input_o\ : std_logic;
SIGNAL \rx_buffer[0]~feeder_combout\ : std_logic;
SIGNAL \rx_buffer[0]~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \rx_buffer[0]~1_combout\ : std_logic;
SIGNAL \rx_buffer[0]~2_combout\ : std_logic;
SIGNAL \rx_data[0]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[0]~0_combout\ : std_logic;
SIGNAL \rx_data[0]~reg0_q\ : std_logic;
SIGNAL \rx_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[1]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \rx_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[2]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \rx_data[3]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[3]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \rx_data[4]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[4]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \rx_data[5]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[5]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \rx_data[6]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[6]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \rx_data[7]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[7]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[8]~feeder_combout\ : std_logic;
SIGNAL \rx_data[8]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[8]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[9]~feeder_combout\ : std_logic;
SIGNAL \rx_data[9]~reg0_q\ : std_logic;
SIGNAL \rx_data[10]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[10]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[11]~feeder_combout\ : std_logic;
SIGNAL \rx_data[11]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[11]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[12]~feeder_combout\ : std_logic;
SIGNAL \rx_data[12]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[12]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[13]~feeder_combout\ : std_logic;
SIGNAL \rx_data[13]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[13]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[14]~feeder_combout\ : std_logic;
SIGNAL \rx_data[14]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[14]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[15]~feeder_combout\ : std_logic;
SIGNAL \rx_data[15]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[15]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[16]~feeder_combout\ : std_logic;
SIGNAL \rx_data[16]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[16]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[17]~feeder_combout\ : std_logic;
SIGNAL \rx_data[17]~reg0_q\ : std_logic;
SIGNAL \rx_data[18]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[18]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[19]~feeder_combout\ : std_logic;
SIGNAL \rx_data[19]~reg0_q\ : std_logic;
SIGNAL \rx_data[20]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[20]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[21]~feeder_combout\ : std_logic;
SIGNAL \rx_data[21]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[21]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[22]~feeder_combout\ : std_logic;
SIGNAL \rx_data[22]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[22]~reg0_q\ : std_logic;
SIGNAL \rx_buffer[23]~feeder_combout\ : std_logic;
SIGNAL \rx_data[23]~reg0feeder_combout\ : std_logic;
SIGNAL \rx_data[23]~reg0_q\ : std_logic;
SIGNAL tx_buffer : std_logic_vector(23 DOWNTO 0);
SIGNAL slave : std_logic_vector(31 DOWNTO 0);
SIGNAL rx_buffer : std_logic_vector(23 DOWNTO 0);
SIGNAL last_bit_rx : std_logic_vector(5 DOWNTO 0);
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL clk_toggles : std_logic_vector(5 DOWNTO 0);
SIGNAL clk_ratio : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_busy~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ss_n[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_state~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset_n <= reset_n;
ww_enable <= enable;
ww_cpol <= cpol;
ww_cpha <= cpha;
ww_cont <= cont;
ww_clk_div <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(clk_div, 32);
ww_addr <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(addr, 32);
ww_tx_data <= tx_data;
ww_miso <= miso;
sclk <= ww_sclk;
ss_n <= ww_ss_n;
mosi <= ww_mosi;
busy <= ww_busy;
rx_data <= ww_rx_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);
\ALT_INV_busy~reg0_q\ <= NOT \busy~reg0_q\;
\ALT_INV_ss_n[0]~reg0_q\ <= NOT \ss_n[0]~reg0_q\;
\ALT_INV_state~q\ <= NOT \state~q\;

-- Location: IOOBUF_X35_Y0_N30
\mosi~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mosi~reg0_q\,
	oe => \mosi~en_q\,
	devoe => ww_devoe,
	o => \mosi~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\sclk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sclk~reg0_q\,
	devoe => ww_devoe,
	o => \sclk~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\ss_n[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ss_n[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ss_n[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\busy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_busy~reg0_q\,
	devoe => ww_devoe,
	o => \busy~output_o\);

-- Location: IOOBUF_X11_Y0_N9
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

-- Location: IOOBUF_X30_Y0_N9
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N23
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N9
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

-- Location: IOOBUF_X32_Y0_N30
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

-- Location: IOOBUF_X41_Y7_N9
\rx_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[8]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[8]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\rx_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[9]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\rx_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[10]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[10]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\rx_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[11]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[11]~output_o\);

-- Location: IOOBUF_X41_Y7_N23
\rx_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[12]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[12]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\rx_data[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[13]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[13]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\rx_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[14]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[14]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\rx_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[15]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\rx_data[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[16]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\rx_data[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[17]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[17]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\rx_data[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[18]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[18]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\rx_data[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[19]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[19]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\rx_data[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[20]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[20]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\rx_data[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[21]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[21]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\rx_data[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[22]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[22]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\rx_data[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_data[23]~reg0_q\,
	devoe => ww_devoe,
	o => \rx_data[23]~output_o\);

-- Location: IOIBUF_X21_Y0_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G19
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X21_Y29_N22
\tx_data[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(22),
	o => \tx_data[22]~input_o\);

-- Location: IOIBUF_X23_Y29_N29
\tx_data[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(18),
	o => \tx_data[18]~input_o\);

-- Location: IOIBUF_X16_Y29_N15
\tx_data[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(17),
	o => \tx_data[17]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\tx_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(0),
	o => \tx_data[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\cont~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cont,
	o => \cont~input_o\);

-- Location: IOIBUF_X41_Y8_N8
\cpha~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpha,
	o => \cpha~input_o\);

-- Location: LCCOMB_X27_Y8_N28
\last_bit_rx[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \last_bit_rx[0]~0_combout\ = !\cpha~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpha~input_o\,
	combout => \last_bit_rx[0]~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X24_Y10_N28
\clk_ratio[31]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_ratio[31]~1_combout\ = (\reset_n~input_o\ & (\enable~input_o\ & !\state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \enable~input_o\,
	datad => \state~q\,
	combout => \clk_ratio[31]~1_combout\);

-- Location: FF_X24_Y8_N27
\last_bit_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \last_bit_rx[0]~0_combout\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_bit_rx(0));

-- Location: LCCOMB_X24_Y8_N10
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = clk_toggles(0) $ (VCC)
-- \Add1~1\ = CARRY(clk_toggles(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_toggles(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: FF_X24_Y8_N23
\last_bit_rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \cpha~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_bit_rx(4));

-- Location: LCCOMB_X24_Y8_N22
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (last_bit_rx(0) & (clk_toggles(3) & (last_bit_rx(4) $ (!clk_toggles(4))))) # (!last_bit_rx(0) & (!clk_toggles(3) & (last_bit_rx(4) $ (!clk_toggles(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => last_bit_rx(0),
	datab => clk_toggles(3),
	datac => last_bit_rx(4),
	datad => clk_toggles(4),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X22_Y10_N8
\last_bit_rx[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \last_bit_rx[5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \last_bit_rx[5]~feeder_combout\);

-- Location: FF_X22_Y10_N9
\last_bit_rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \last_bit_rx[5]~feeder_combout\,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_bit_rx(5));

-- Location: LCCOMB_X22_Y8_N18
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = last_bit_rx(5) $ (((last_bit_rx(4)) # (last_bit_rx(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => last_bit_rx(5),
	datac => last_bit_rx(4),
	datad => last_bit_rx(0),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X24_Y8_N18
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (clk_toggles(4) & (\Add1~7\ $ (GND))) # (!clk_toggles(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((clk_toggles(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_toggles(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X24_Y8_N20
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\ $ (clk_toggles(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_toggles(5),
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X22_Y8_N16
\clk_toggles~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_toggles~5_combout\ = (\process_0~5_combout\ & (\Add4~0_combout\)) # (!\process_0~5_combout\ & (((\Add1~10_combout\ & \Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \Add4~0_combout\,
	datac => \Add1~10_combout\,
	datad => \Equal3~1_combout\,
	combout => \clk_toggles~5_combout\);

-- Location: IOIBUF_X32_Y0_N22
\clk_div[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(3),
	o => \clk_div[3]~input_o\);

-- Location: FF_X24_Y10_N23
\clk_ratio[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[3]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(3));

-- Location: IOIBUF_X28_Y0_N15
\clk_div[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(2),
	o => \clk_div[2]~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\clk_div[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(31),
	o => \clk_div[31]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\clk_div[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(30),
	o => \clk_div[30]~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\clk_div[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(29),
	o => \clk_div[29]~input_o\);

-- Location: IOIBUF_X41_Y10_N22
\clk_div[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(26),
	o => \clk_div[26]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\clk_div[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(28),
	o => \clk_div[28]~input_o\);

-- Location: IOIBUF_X26_Y29_N1
\clk_div[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(25),
	o => \clk_div[25]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\clk_div[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(27),
	o => \clk_div[27]~input_o\);

-- Location: LCCOMB_X22_Y9_N18
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\clk_div[26]~input_o\ & (!\clk_div[28]~input_o\ & (!\clk_div[25]~input_o\ & !\clk_div[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[26]~input_o\,
	datab => \clk_div[28]~input_o\,
	datac => \clk_div[25]~input_o\,
	datad => \clk_div[27]~input_o\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X22_Y9_N22
\Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\clk_div[31]~input_o\ & (!\clk_div[30]~input_o\ & (!\clk_div[29]~input_o\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[31]~input_o\,
	datab => \clk_div[30]~input_o\,
	datac => \clk_div[29]~input_o\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: IOIBUF_X35_Y0_N1
\clk_div[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(14),
	o => \clk_div[14]~input_o\);

-- Location: IOIBUF_X26_Y29_N22
\clk_div[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(16),
	o => \clk_div[16]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\clk_div[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(15),
	o => \clk_div[15]~input_o\);

-- Location: IOIBUF_X41_Y12_N1
\clk_div[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(13),
	o => \clk_div[13]~input_o\);

-- Location: LCCOMB_X24_Y12_N2
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\clk_div[14]~input_o\ & (!\clk_div[16]~input_o\ & (!\clk_div[15]~input_o\ & !\clk_div[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[14]~input_o\,
	datab => \clk_div[16]~input_o\,
	datac => \clk_div[15]~input_o\,
	datad => \clk_div[13]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X0_Y12_N8
\clk_div[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(11),
	o => \clk_div[11]~input_o\);

-- Location: IOIBUF_X41_Y12_N22
\clk_div[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(10),
	o => \clk_div[10]~input_o\);

-- Location: IOIBUF_X41_Y12_N8
\clk_div[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(12),
	o => \clk_div[12]~input_o\);

-- Location: IOIBUF_X23_Y29_N8
\clk_div[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(9),
	o => \clk_div[9]~input_o\);

-- Location: LCCOMB_X23_Y12_N2
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\clk_div[11]~input_o\ & (!\clk_div[10]~input_o\ & (!\clk_div[12]~input_o\ & !\clk_div[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[11]~input_o\,
	datab => \clk_div[10]~input_o\,
	datac => \clk_div[12]~input_o\,
	datad => \clk_div[9]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X30_Y0_N15
\clk_div[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(4),
	o => \clk_div[4]~input_o\);

-- Location: IOIBUF_X41_Y10_N8
\clk_div[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(1),
	o => \clk_div[1]~input_o\);

-- Location: LCCOMB_X24_Y10_N8
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\clk_div[4]~input_o\ & (!\clk_div[2]~input_o\ & (!\clk_div[3]~input_o\ & !\clk_div[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[4]~input_o\,
	datab => \clk_div[2]~input_o\,
	datac => \clk_div[3]~input_o\,
	datad => \clk_div[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\clk_div[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(8),
	o => \clk_div[8]~input_o\);

-- Location: IOIBUF_X41_Y12_N15
\clk_div[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(7),
	o => \clk_div[7]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\clk_div[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(6),
	o => \clk_div[6]~input_o\);

-- Location: IOIBUF_X16_Y29_N22
\clk_div[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(5),
	o => \clk_div[5]~input_o\);

-- Location: LCCOMB_X23_Y12_N0
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\clk_div[8]~input_o\ & (!\clk_div[7]~input_o\ & (!\clk_div[6]~input_o\ & !\clk_div[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[8]~input_o\,
	datab => \clk_div[7]~input_o\,
	datac => \clk_div[6]~input_o\,
	datad => \clk_div[5]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X23_Y12_N20
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X23_Y0_N1
\clk_div[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(0),
	o => \clk_div[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\clk_div[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(22),
	o => \clk_div[22]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\clk_div[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(21),
	o => \clk_div[21]~input_o\);

-- Location: IOIBUF_X41_Y10_N1
\clk_div[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(23),
	o => \clk_div[23]~input_o\);

-- Location: IOIBUF_X41_Y9_N22
\clk_div[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(24),
	o => \clk_div[24]~input_o\);

-- Location: LCCOMB_X24_Y9_N2
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\clk_div[22]~input_o\ & (!\clk_div[21]~input_o\ & (!\clk_div[23]~input_o\ & !\clk_div[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[22]~input_o\,
	datab => \clk_div[21]~input_o\,
	datac => \clk_div[23]~input_o\,
	datad => \clk_div[24]~input_o\,
	combout => \Equal0~6_combout\);

-- Location: IOIBUF_X41_Y13_N8
\clk_div[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(17),
	o => \clk_div[17]~input_o\);

-- Location: IOIBUF_X41_Y10_N15
\clk_div[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(18),
	o => \clk_div[18]~input_o\);

-- Location: LCCOMB_X24_Y9_N8
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\clk_div[17]~input_o\ & !\clk_div[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_div[17]~input_o\,
	datac => \clk_div[18]~input_o\,
	combout => \Equal0~5_combout\);

-- Location: IOIBUF_X41_Y7_N1
\clk_div[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(20),
	o => \clk_div[20]~input_o\);

-- Location: IOIBUF_X41_Y9_N15
\clk_div[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_div(19),
	o => \clk_div[19]~input_o\);

-- Location: LCCOMB_X24_Y9_N14
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~6_combout\ & (\Equal0~5_combout\ & (!\clk_div[20]~input_o\ & !\clk_div[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \clk_div[20]~input_o\,
	datad => \clk_div[19]~input_o\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X24_Y10_N26
\clk_ratio~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_ratio~0_combout\ = (!\clk_div[0]~input_o\ & (((!\Equal0~7_combout\) # (!\Equal0~4_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~4_combout\,
	datac => \clk_div[0]~input_o\,
	datad => \Equal0~7_combout\,
	combout => \clk_ratio~0_combout\);

-- Location: LCCOMB_X23_Y10_N0
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = count(0) $ (GND)
-- \Add5~1\ = CARRY(!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X24_Y10_N6
\count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~6_combout\ = (\state~q\ & (((!\Add5~0_combout\ & !\Equal1~20_combout\)))) # (!\state~q\ & (\clk_ratio~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_ratio~0_combout\,
	datab => \state~q\,
	datac => \Add5~0_combout\,
	datad => \Equal1~20_combout\,
	combout => \count~6_combout\);

-- Location: LCCOMB_X24_Y9_N12
\count[31]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[31]~5_combout\ = (\reset_n~input_o\ & ((\enable~input_o\) # (\state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datac => \enable~input_o\,
	datad => \state~q\,
	combout => \count[31]~5_combout\);

-- Location: FF_X24_Y10_N7
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~6_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X23_Y10_N2
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (count(1) & (!\Add5~1\)) # (!count(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X24_Y10_N16
\count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (\state~q\ & (\Add5~2_combout\ & ((!\Equal1~20_combout\)))) # (!\state~q\ & (((\clk_div[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \clk_div[1]~input_o\,
	datac => \state~q\,
	datad => \Equal1~20_combout\,
	combout => \count~4_combout\);

-- Location: FF_X24_Y10_N17
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~4_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X23_Y10_N4
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (count(2) & (\Add5~3\ $ (GND))) # (!count(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((count(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X24_Y10_N10
\count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~8_combout\ = (\state~q\ & (((\Add5~4_combout\ & !\Equal1~20_combout\)))) # (!\state~q\ & (\clk_div[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[2]~input_o\,
	datab => \state~q\,
	datac => \Add5~4_combout\,
	datad => \Equal1~20_combout\,
	combout => \count~8_combout\);

-- Location: FF_X24_Y10_N11
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~8_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: FF_X24_Y10_N21
\clk_ratio[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[2]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(2));

-- Location: LCCOMB_X23_Y10_N6
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (count(3) & (!\Add5~5\)) # (!count(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X24_Y10_N24
\count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~7_combout\ = (\state~q\ & (((\Add5~6_combout\ & !\Equal1~20_combout\)))) # (!\state~q\ & (\clk_div[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[3]~input_o\,
	datab => \state~q\,
	datac => \Add5~6_combout\,
	datad => \Equal1~20_combout\,
	combout => \count~7_combout\);

-- Location: FF_X24_Y10_N25
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~7_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X24_Y10_N20
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (clk_ratio(3) & (count(3) & (count(2) $ (!clk_ratio(2))))) # (!clk_ratio(3) & (!count(3) & (count(2) $ (!clk_ratio(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_ratio(3),
	datab => count(2),
	datac => clk_ratio(2),
	datad => count(3),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X23_Y10_N8
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (count(4) & (\Add5~7\ $ (GND))) # (!count(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((count(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X24_Y10_N30
\count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~10_combout\ = (\state~q\ & (\Add5~8_combout\ & ((!\Equal1~20_combout\)))) # (!\state~q\ & (((\clk_div[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \state~q\,
	datac => \clk_div[4]~input_o\,
	datad => \Equal1~20_combout\,
	combout => \count~10_combout\);

-- Location: FF_X24_Y10_N31
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~10_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X23_Y10_N10
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (count(5) & (!\Add5~9\)) # (!count(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X24_Y10_N0
\count~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~9_combout\ = (\state~q\ & (\Add5~10_combout\ & ((!\Equal1~20_combout\)))) # (!\state~q\ & (((\clk_div[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \state~q\,
	datac => \clk_div[5]~input_o\,
	datad => \Equal1~20_combout\,
	combout => \count~9_combout\);

-- Location: FF_X24_Y10_N1
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~9_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X23_Y10_N12
\Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (count(6) & (\Add5~11\ $ (GND))) # (!count(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((count(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X23_Y12_N26
\count~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~12_combout\ = (\state~q\ & (!\Equal1~20_combout\ & ((\Add5~12_combout\)))) # (!\state~q\ & (((\clk_div[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~20_combout\,
	datab => \state~q\,
	datac => \clk_div[6]~input_o\,
	datad => \Add5~12_combout\,
	combout => \count~12_combout\);

-- Location: FF_X23_Y12_N27
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~12_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X23_Y10_N14
\Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (count(7) & (!\Add5~13\)) # (!count(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X23_Y12_N28
\count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~11_combout\ = (\state~q\ & (!\Equal1~20_combout\ & ((\Add5~14_combout\)))) # (!\state~q\ & (((\clk_div[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~20_combout\,
	datab => \clk_div[7]~input_o\,
	datac => \Add5~14_combout\,
	datad => \state~q\,
	combout => \count~11_combout\);

-- Location: FF_X23_Y12_N29
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~11_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: FF_X23_Y12_N5
\clk_ratio[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[6]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(6));

-- Location: FF_X23_Y12_N7
\clk_ratio[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[7]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(7));

-- Location: LCCOMB_X23_Y12_N4
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (count(6) & (clk_ratio(6) & (count(7) $ (!clk_ratio(7))))) # (!count(6) & (!clk_ratio(6) & (count(7) $ (!clk_ratio(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(7),
	datac => clk_ratio(6),
	datad => clk_ratio(7),
	combout => \Equal1~3_combout\);

-- Location: FF_X24_Y10_N15
\clk_ratio[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[5]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(5));

-- Location: FF_X24_Y10_N5
\clk_ratio[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[4]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(4));

-- Location: LCCOMB_X24_Y10_N4
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (count(4) & (clk_ratio(4) & (clk_ratio(5) $ (!count(5))))) # (!count(4) & (!clk_ratio(4) & (clk_ratio(5) $ (!count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => clk_ratio(5),
	datac => clk_ratio(4),
	datad => count(5),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X24_Y10_N18
\clk_ratio[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_ratio[1]~feeder_combout\ = \clk_div[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_div[1]~input_o\,
	combout => \clk_ratio[1]~feeder_combout\);

-- Location: FF_X24_Y10_N19
\clk_ratio[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_ratio[1]~feeder_combout\,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(1));

-- Location: FF_X24_Y10_N13
\clk_ratio[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_ratio~0_combout\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(0));

-- Location: LCCOMB_X24_Y10_N12
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (count(0) & (clk_ratio(0) & (clk_ratio(1) $ (!count(1))))) # (!count(0) & (!clk_ratio(0) & (clk_ratio(1) $ (!count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => clk_ratio(1),
	datac => clk_ratio(0),
	datad => count(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X23_Y8_N30
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\ & (\Equal1~3_combout\ & (\Equal1~2_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X23_Y10_N16
\Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (count(8) & (\Add5~15\ $ (GND))) # (!count(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((count(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X23_Y12_N30
\count~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~14_combout\ = (\state~q\ & (!\Equal1~20_combout\ & ((\Add5~16_combout\)))) # (!\state~q\ & (((\clk_div[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~20_combout\,
	datab => \state~q\,
	datac => \clk_div[8]~input_o\,
	datad => \Add5~16_combout\,
	combout => \count~14_combout\);

-- Location: FF_X23_Y12_N31
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~14_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X23_Y10_N18
\Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (count(9) & (!\Add5~17\)) # (!count(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X23_Y12_N24
\count~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~13_combout\ = (\state~q\ & (((\Add5~18_combout\ & !\Equal1~20_combout\)))) # (!\state~q\ & (\clk_div[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[9]~input_o\,
	datab => \state~q\,
	datac => \Add5~18_combout\,
	datad => \Equal1~20_combout\,
	combout => \count~13_combout\);

-- Location: FF_X23_Y12_N25
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~13_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X23_Y10_N20
\Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (count(10) & (\Add5~19\ $ (GND))) # (!count(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((count(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X23_Y12_N22
\count~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~16_combout\ = (\state~q\ & (!\Equal1~20_combout\ & ((\Add5~20_combout\)))) # (!\state~q\ & (((\clk_div[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~20_combout\,
	datab => \clk_div[10]~input_o\,
	datac => \Add5~20_combout\,
	datad => \state~q\,
	combout => \count~16_combout\);

-- Location: FF_X23_Y12_N23
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~16_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X23_Y10_N22
\Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (count(11) & (!\Add5~21\)) # (!count(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X23_Y12_N8
\count~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~15_combout\ = (\state~q\ & (((\Add5~22_combout\ & !\Equal1~20_combout\)))) # (!\state~q\ & (\clk_div[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[11]~input_o\,
	datab => \state~q\,
	datac => \Add5~22_combout\,
	datad => \Equal1~20_combout\,
	combout => \count~15_combout\);

-- Location: FF_X23_Y12_N9
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~15_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X23_Y10_N24
\Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (count(12) & (\Add5~23\ $ (GND))) # (!count(12) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((count(12) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X24_Y12_N26
\count~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~18_combout\ = (\state~q\ & (\Add5~24_combout\ & ((!\Equal1~20_combout\)))) # (!\state~q\ & (((\clk_div[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~24_combout\,
	datab => \state~q\,
	datac => \clk_div[12]~input_o\,
	datad => \Equal1~20_combout\,
	combout => \count~18_combout\);

-- Location: FF_X24_Y12_N27
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~18_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X23_Y10_N26
\Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (count(13) & (!\Add5~25\)) # (!count(13) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X24_Y12_N8
\count~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~17_combout\ = (\state~q\ & (!\Equal1~20_combout\ & ((\Add5~26_combout\)))) # (!\state~q\ & (((\clk_div[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~20_combout\,
	datab => \clk_div[13]~input_o\,
	datac => \Add5~26_combout\,
	datad => \state~q\,
	combout => \count~17_combout\);

-- Location: FF_X24_Y12_N9
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~17_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: FF_X24_Y12_N13
\clk_ratio[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[12]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(12));

-- Location: LCCOMB_X24_Y12_N18
\clk_ratio[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_ratio[13]~feeder_combout\ = \clk_div[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_div[13]~input_o\,
	combout => \clk_ratio[13]~feeder_combout\);

-- Location: FF_X24_Y12_N19
\clk_ratio[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_ratio[13]~feeder_combout\,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(13));

-- Location: LCCOMB_X24_Y12_N12
\Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (count(12) & (clk_ratio(12) & (count(13) $ (!clk_ratio(13))))) # (!count(12) & (!clk_ratio(12) & (count(13) $ (!clk_ratio(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => count(13),
	datac => clk_ratio(12),
	datad => clk_ratio(13),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X23_Y10_N28
\Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (count(14) & (\Add5~27\ $ (GND))) # (!count(14) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((count(14) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X24_Y12_N30
\count~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~20_combout\ = (\state~q\ & (((\Add5~28_combout\ & !\Equal1~20_combout\)))) # (!\state~q\ & (\clk_div[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[14]~input_o\,
	datab => \state~q\,
	datac => \Add5~28_combout\,
	datad => \Equal1~20_combout\,
	combout => \count~20_combout\);

-- Location: FF_X24_Y12_N31
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~20_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: FF_X24_Y12_N15
\clk_ratio[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[15]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(15));

-- Location: FF_X24_Y12_N5
\clk_ratio[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[14]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(14));

-- Location: LCCOMB_X23_Y10_N30
\Add5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (count(15) & (!\Add5~29\)) # (!count(15) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X24_Y12_N0
\count~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~19_combout\ = (\state~q\ & (((\Add5~30_combout\ & !\Equal1~20_combout\)))) # (!\state~q\ & (\clk_div[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[15]~input_o\,
	datab => \state~q\,
	datac => \Add5~30_combout\,
	datad => \Equal1~20_combout\,
	combout => \count~19_combout\);

-- Location: FF_X24_Y12_N1
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~19_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X24_Y12_N4
\Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (count(14) & (clk_ratio(14) & (clk_ratio(15) $ (!count(15))))) # (!count(14) & (!clk_ratio(14) & (clk_ratio(15) $ (!count(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datab => clk_ratio(15),
	datac => clk_ratio(14),
	datad => count(15),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X23_Y12_N14
\clk_ratio[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_ratio[9]~feeder_combout\ = \clk_div[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_div[9]~input_o\,
	combout => \clk_ratio[9]~feeder_combout\);

-- Location: FF_X23_Y12_N15
\clk_ratio[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_ratio[9]~feeder_combout\,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(9));

-- Location: FF_X23_Y12_N17
\clk_ratio[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[8]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(8));

-- Location: LCCOMB_X23_Y12_N16
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (count(8) & (clk_ratio(8) & (clk_ratio(9) $ (!count(9))))) # (!count(8) & (!clk_ratio(8) & (clk_ratio(9) $ (!count(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => clk_ratio(9),
	datac => clk_ratio(8),
	datad => count(9),
	combout => \Equal1~5_combout\);

-- Location: FF_X23_Y12_N13
\clk_ratio[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[10]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(10));

-- Location: LCCOMB_X23_Y12_N18
\clk_ratio[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_ratio[11]~feeder_combout\ = \clk_div[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_div[11]~input_o\,
	combout => \clk_ratio[11]~feeder_combout\);

-- Location: FF_X23_Y12_N19
\clk_ratio[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_ratio[11]~feeder_combout\,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(11));

-- Location: LCCOMB_X23_Y12_N12
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (count(10) & (clk_ratio(10) & (count(11) $ (!clk_ratio(11))))) # (!count(10) & (!clk_ratio(10) & (count(11) $ (!clk_ratio(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(11),
	datac => clk_ratio(10),
	datad => clk_ratio(11),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X24_Y12_N16
\Equal1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~7_combout\ & (\Equal1~8_combout\ & (\Equal1~5_combout\ & \Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datab => \Equal1~8_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~6_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X23_Y9_N0
\Add5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (count(16) & (\Add5~31\ $ (GND))) # (!count(16) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((count(16) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: LCCOMB_X24_Y12_N24
\count~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~22_combout\ = (\state~q\ & (((\Add5~32_combout\ & !\Equal1~20_combout\)))) # (!\state~q\ & (\clk_div[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \clk_div[16]~input_o\,
	datac => \Add5~32_combout\,
	datad => \Equal1~20_combout\,
	combout => \count~22_combout\);

-- Location: FF_X24_Y12_N25
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~22_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X23_Y9_N2
\Add5~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (count(17) & (!\Add5~33\)) # (!count(17) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: LCCOMB_X24_Y12_N22
\count~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~21_combout\ = (\state~q\ & (!\Equal1~20_combout\ & ((\Add5~34_combout\)))) # (!\state~q\ & (((\clk_div[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~20_combout\,
	datab => \clk_div[17]~input_o\,
	datac => \Add5~34_combout\,
	datad => \state~q\,
	combout => \count~21_combout\);

-- Location: FF_X24_Y12_N23
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~21_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X23_Y9_N4
\Add5~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (count(18) & (\Add5~35\ $ (GND))) # (!count(18) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((count(18) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X24_Y9_N26
\count~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~24_combout\ = (\state~q\ & (((\Add5~36_combout\ & !\Equal1~20_combout\)))) # (!\state~q\ & (\clk_div[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[18]~input_o\,
	datab => \Add5~36_combout\,
	datac => \state~q\,
	datad => \Equal1~20_combout\,
	combout => \count~24_combout\);

-- Location: FF_X24_Y9_N27
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~24_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X23_Y9_N6
\Add5~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (count(19) & (!\Add5~37\)) # (!count(19) & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X24_Y9_N20
\count~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~23_combout\ = (\state~q\ & (((\Add5~38_combout\ & !\Equal1~20_combout\)))) # (!\state~q\ & (\clk_div[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \clk_div[19]~input_o\,
	datac => \Add5~38_combout\,
	datad => \Equal1~20_combout\,
	combout => \count~23_combout\);

-- Location: FF_X24_Y9_N21
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~23_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X23_Y9_N8
\Add5~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (count(20) & (\Add5~39\ $ (GND))) # (!count(20) & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((count(20) & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: LCCOMB_X24_Y9_N10
\count~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~26_combout\ = (\state~q\ & (!\Equal1~20_combout\ & ((\Add5~40_combout\)))) # (!\state~q\ & (((\clk_div[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~20_combout\,
	datab => \clk_div[20]~input_o\,
	datac => \state~q\,
	datad => \Add5~40_combout\,
	combout => \count~26_combout\);

-- Location: FF_X24_Y9_N11
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~26_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X23_Y9_N10
\Add5~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (count(21) & (!\Add5~41\)) # (!count(21) & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: LCCOMB_X24_Y9_N28
\count~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~25_combout\ = (\state~q\ & (!\Equal1~20_combout\ & ((\Add5~42_combout\)))) # (!\state~q\ & (((\clk_div[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~20_combout\,
	datab => \clk_div[21]~input_o\,
	datac => \state~q\,
	datad => \Add5~42_combout\,
	combout => \count~25_combout\);

-- Location: FF_X24_Y9_N29
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~25_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X23_Y9_N12
\Add5~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (count(22) & (\Add5~43\ $ (GND))) # (!count(22) & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((count(22) & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: LCCOMB_X24_Y9_N30
\count~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~28_combout\ = (\state~q\ & (!\Equal1~20_combout\ & ((\Add5~44_combout\)))) # (!\state~q\ & (((\clk_div[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~20_combout\,
	datab => \clk_div[22]~input_o\,
	datac => \state~q\,
	datad => \Add5~44_combout\,
	combout => \count~28_combout\);

-- Location: FF_X24_Y9_N31
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~28_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X23_Y9_N14
\Add5~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (count(23) & (!\Add5~45\)) # (!count(23) & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: LCCOMB_X24_Y9_N16
\count~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~27_combout\ = (\state~q\ & (!\Equal1~20_combout\ & ((\Add5~46_combout\)))) # (!\state~q\ & (((\clk_div[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~20_combout\,
	datab => \state~q\,
	datac => \clk_div[23]~input_o\,
	datad => \Add5~46_combout\,
	combout => \count~27_combout\);

-- Location: FF_X24_Y9_N17
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~27_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X23_Y9_N16
\Add5~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (count(24) & (\Add5~47\ $ (GND))) # (!count(24) & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((count(24) & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: LCCOMB_X22_Y9_N6
\count~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~30_combout\ = (\state~q\ & (((!\Equal1~20_combout\ & \Add5~48_combout\)))) # (!\state~q\ & (\clk_div[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \clk_div[24]~input_o\,
	datac => \Equal1~20_combout\,
	datad => \Add5~48_combout\,
	combout => \count~30_combout\);

-- Location: FF_X22_Y9_N7
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~30_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X23_Y9_N18
\Add5~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (count(25) & (!\Add5~49\)) # (!count(25) & ((\Add5~49\) # (GND)))
-- \Add5~51\ = CARRY((!\Add5~49\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(25),
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: LCCOMB_X22_Y9_N12
\count~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~29_combout\ = (\state~q\ & (((!\Equal1~20_combout\ & \Add5~50_combout\)))) # (!\state~q\ & (\clk_div[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \clk_div[25]~input_o\,
	datac => \Equal1~20_combout\,
	datad => \Add5~50_combout\,
	combout => \count~29_combout\);

-- Location: FF_X22_Y9_N13
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~29_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X23_Y9_N20
\Add5~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = (count(26) & (\Add5~51\ $ (GND))) # (!count(26) & (!\Add5~51\ & VCC))
-- \Add5~53\ = CARRY((count(26) & !\Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: LCCOMB_X22_Y9_N26
\count~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~32_combout\ = (\state~q\ & (((\Add5~52_combout\ & !\Equal1~20_combout\)))) # (!\state~q\ & (\clk_div[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[26]~input_o\,
	datab => \state~q\,
	datac => \Add5~52_combout\,
	datad => \Equal1~20_combout\,
	combout => \count~32_combout\);

-- Location: FF_X22_Y9_N27
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~32_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: FF_X22_Y9_N3
\clk_ratio[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[27]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(27));

-- Location: FF_X22_Y9_N5
\clk_ratio[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[26]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(26));

-- Location: LCCOMB_X23_Y9_N22
\Add5~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (count(27) & (!\Add5~53\)) # (!count(27) & ((\Add5~53\) # (GND)))
-- \Add5~55\ = CARRY((!\Add5~53\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: LCCOMB_X22_Y9_N0
\count~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~31_combout\ = (\state~q\ & (((!\Equal1~20_combout\ & \Add5~54_combout\)))) # (!\state~q\ & (\clk_div[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \clk_div[27]~input_o\,
	datac => \Equal1~20_combout\,
	datad => \Add5~54_combout\,
	combout => \count~31_combout\);

-- Location: FF_X22_Y9_N1
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~31_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X22_Y9_N4
\Equal1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~16_combout\ = (count(26) & (clk_ratio(26) & (clk_ratio(27) $ (!count(27))))) # (!count(26) & (!clk_ratio(26) & (clk_ratio(27) $ (!count(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datab => clk_ratio(27),
	datac => clk_ratio(26),
	datad => count(27),
	combout => \Equal1~16_combout\);

-- Location: FF_X22_Y9_N23
\clk_ratio[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[29]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(29));

-- Location: LCCOMB_X23_Y9_N24
\Add5~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (count(28) & (\Add5~55\ $ (GND))) # (!count(28) & (!\Add5~55\ & VCC))
-- \Add5~57\ = CARRY((count(28) & !\Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: LCCOMB_X22_Y9_N10
\count~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~34_combout\ = (\state~q\ & (((!\Equal1~20_combout\ & \Add5~56_combout\)))) # (!\state~q\ & (\clk_div[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[28]~input_o\,
	datab => \state~q\,
	datac => \Equal1~20_combout\,
	datad => \Add5~56_combout\,
	combout => \count~34_combout\);

-- Location: FF_X22_Y9_N11
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~34_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X23_Y9_N26
\Add5~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (count(29) & (!\Add5~57\)) # (!count(29) & ((\Add5~57\) # (GND)))
-- \Add5~59\ = CARRY((!\Add5~57\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(29),
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: LCCOMB_X22_Y9_N28
\count~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~33_combout\ = (\state~q\ & (((!\Equal1~20_combout\ & \Add5~58_combout\)))) # (!\state~q\ & (\clk_div[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[29]~input_o\,
	datab => \state~q\,
	datac => \Equal1~20_combout\,
	datad => \Add5~58_combout\,
	combout => \count~33_combout\);

-- Location: FF_X22_Y9_N29
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~33_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: FF_X22_Y9_N9
\clk_ratio[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[28]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(28));

-- Location: LCCOMB_X22_Y9_N8
\Equal1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~17_combout\ = (clk_ratio(29) & (count(29) & (clk_ratio(28) $ (!count(28))))) # (!clk_ratio(29) & (!count(29) & (clk_ratio(28) $ (!count(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_ratio(29),
	datab => count(29),
	datac => clk_ratio(28),
	datad => count(28),
	combout => \Equal1~17_combout\);

-- Location: LCCOMB_X23_Y9_N28
\Add5~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = (count(30) & (\Add5~59\ $ (GND))) # (!count(30) & (!\Add5~59\ & VCC))
-- \Add5~61\ = CARRY((count(30) & !\Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datad => VCC,
	cin => \Add5~59\,
	combout => \Add5~60_combout\,
	cout => \Add5~61\);

-- Location: LCCOMB_X22_Y9_N30
\count~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~36_combout\ = (\state~q\ & (((!\Equal1~20_combout\ & \Add5~60_combout\)))) # (!\state~q\ & (\clk_div[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \clk_div[30]~input_o\,
	datac => \Equal1~20_combout\,
	datad => \Add5~60_combout\,
	combout => \count~36_combout\);

-- Location: FF_X22_Y9_N31
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~36_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X22_Y9_N14
\clk_ratio[31]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_ratio[31]~3_combout\ = !\clk_div[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_div[31]~input_o\,
	combout => \clk_ratio[31]~3_combout\);

-- Location: FF_X22_Y9_N15
\clk_ratio[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_ratio[31]~3_combout\,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(31));

-- Location: FF_X22_Y9_N17
\clk_ratio[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[30]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(30));

-- Location: LCCOMB_X23_Y9_N30
\Add5~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~62_combout\ = \Add5~61\ $ (!count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(31),
	cin => \Add5~61\,
	combout => \Add5~62_combout\);

-- Location: LCCOMB_X22_Y9_N24
\count~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~35_combout\ = (\state~q\ & (((\Equal1~20_combout\) # (!\Add5~62_combout\)))) # (!\state~q\ & (!\clk_div[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div[31]~input_o\,
	datab => \state~q\,
	datac => \Add5~62_combout\,
	datad => \Equal1~20_combout\,
	combout => \count~35_combout\);

-- Location: FF_X22_Y9_N25
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count~35_combout\,
	ena => \count[31]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X22_Y9_N16
\Equal1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~18_combout\ = (count(30) & (clk_ratio(30) & (clk_ratio(31) $ (!count(31))))) # (!count(30) & (!clk_ratio(30) & (clk_ratio(31) $ (!count(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => clk_ratio(31),
	datac => clk_ratio(30),
	datad => count(31),
	combout => \Equal1~18_combout\);

-- Location: FF_X22_Y9_N21
\clk_ratio[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[24]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(24));

-- Location: FF_X22_Y9_N19
\clk_ratio[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[25]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(25));

-- Location: LCCOMB_X22_Y9_N20
\Equal1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~15_combout\ = (count(24) & (clk_ratio(24) & (count(25) $ (!clk_ratio(25))))) # (!count(24) & (!clk_ratio(24) & (count(25) $ (!clk_ratio(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => count(25),
	datac => clk_ratio(24),
	datad => clk_ratio(25),
	combout => \Equal1~15_combout\);

-- Location: LCCOMB_X23_Y8_N14
\Equal1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~19_combout\ = (\Equal1~16_combout\ & (\Equal1~17_combout\ & (\Equal1~18_combout\ & \Equal1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~16_combout\,
	datab => \Equal1~17_combout\,
	datac => \Equal1~18_combout\,
	datad => \Equal1~15_combout\,
	combout => \Equal1~19_combout\);

-- Location: FF_X24_Y9_N5
\clk_ratio[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[18]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(18));

-- Location: FF_X24_Y9_N7
\clk_ratio[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[19]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(19));

-- Location: LCCOMB_X24_Y9_N4
\Equal1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~11_combout\ = (count(18) & (clk_ratio(18) & (count(19) $ (!clk_ratio(19))))) # (!count(18) & (!clk_ratio(18) & (count(19) $ (!clk_ratio(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datab => count(19),
	datac => clk_ratio(18),
	datad => clk_ratio(19),
	combout => \Equal1~11_combout\);

-- Location: FF_X24_Y9_N3
\clk_ratio[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[23]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(23));

-- Location: FF_X24_Y9_N25
\clk_ratio[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[22]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(22));

-- Location: LCCOMB_X24_Y9_N24
\Equal1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~13_combout\ = (count(22) & (clk_ratio(22) & (clk_ratio(23) $ (!count(23))))) # (!count(22) & (!clk_ratio(22) & (clk_ratio(23) $ (!count(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => clk_ratio(23),
	datac => clk_ratio(22),
	datad => count(23),
	combout => \Equal1~13_combout\);

-- Location: FF_X24_Y12_N11
\clk_ratio[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[16]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(16));

-- Location: LCCOMB_X24_Y12_N28
\clk_ratio[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_ratio[17]~feeder_combout\ = \clk_div[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_div[17]~input_o\,
	combout => \clk_ratio[17]~feeder_combout\);

-- Location: FF_X24_Y12_N29
\clk_ratio[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_ratio[17]~feeder_combout\,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(17));

-- Location: LCCOMB_X24_Y12_N10
\Equal1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (count(17) & (clk_ratio(17) & (count(16) $ (!clk_ratio(16))))) # (!count(17) & (!clk_ratio(17) & (count(16) $ (!clk_ratio(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	datab => count(16),
	datac => clk_ratio(16),
	datad => clk_ratio(17),
	combout => \Equal1~10_combout\);

-- Location: LCCOMB_X24_Y9_N18
\clk_ratio[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_ratio[21]~feeder_combout\ = \clk_div[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_div[21]~input_o\,
	combout => \clk_ratio[21]~feeder_combout\);

-- Location: FF_X24_Y9_N19
\clk_ratio[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_ratio[21]~feeder_combout\,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(21));

-- Location: FF_X24_Y9_N1
\clk_ratio[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \clk_div[20]~input_o\,
	sload => VCC,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_ratio(20));

-- Location: LCCOMB_X24_Y9_N0
\Equal1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~12_combout\ = (count(20) & (clk_ratio(20) & (clk_ratio(21) $ (!count(21))))) # (!count(20) & (!clk_ratio(20) & (clk_ratio(21) $ (!count(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datab => clk_ratio(21),
	datac => clk_ratio(20),
	datad => count(21),
	combout => \Equal1~12_combout\);

-- Location: LCCOMB_X23_Y8_N28
\Equal1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~14_combout\ = (\Equal1~11_combout\ & (\Equal1~13_combout\ & (\Equal1~10_combout\ & \Equal1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~11_combout\,
	datab => \Equal1~13_combout\,
	datac => \Equal1~10_combout\,
	datad => \Equal1~12_combout\,
	combout => \Equal1~14_combout\);

-- Location: LCCOMB_X23_Y8_N0
\Equal1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~20_combout\ = (\Equal1~4_combout\ & (\Equal1~9_combout\ & (\Equal1~19_combout\ & \Equal1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~9_combout\,
	datac => \Equal1~19_combout\,
	datad => \Equal1~14_combout\,
	combout => \Equal1~20_combout\);

-- Location: LCCOMB_X23_Y8_N2
\sclk~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk~1_combout\ = (\reset_n~input_o\ & ((\state~q\ & ((\Equal1~20_combout\))) # (!\state~q\ & (\enable~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \state~q\,
	datac => \reset_n~input_o\,
	datad => \Equal1~20_combout\,
	combout => \sclk~1_combout\);

-- Location: FF_X22_Y8_N17
\clk_toggles[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_toggles~5_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_toggles(5));

-- Location: LCCOMB_X22_Y8_N12
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\cont~input_o\ & (clk_toggles(5) $ (!last_bit_rx(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_toggles(5),
	datac => \cont~input_o\,
	datad => last_bit_rx(5),
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X23_Y8_N6
\process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\process_0~2_combout\ & (\process_0~3_combout\ & \process_0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \process_0~3_combout\,
	datad => \process_0~4_combout\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X23_Y8_N16
\clk_toggles~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_toggles~0_combout\ = (\process_0~5_combout\ & ((!last_bit_rx(0)))) # (!\process_0~5_combout\ & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => last_bit_rx(0),
	datad => \process_0~5_combout\,
	combout => \clk_toggles~0_combout\);

-- Location: FF_X23_Y8_N17
\clk_toggles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_toggles~0_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_toggles(0));

-- Location: LCCOMB_X24_Y8_N12
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (clk_toggles(1) & (!\Add1~1\)) # (!clk_toggles(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!clk_toggles(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_toggles(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X24_Y8_N24
\clk_toggles~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_toggles~4_combout\ = (\Equal3~1_combout\ & (\clk_toggles[3]~1_combout\ & \Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datac => \clk_toggles[3]~1_combout\,
	datad => \Add1~2_combout\,
	combout => \clk_toggles~4_combout\);

-- Location: FF_X24_Y8_N25
\clk_toggles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_toggles~4_combout\,
	ena => \sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_toggles(1));

-- Location: LCCOMB_X24_Y8_N14
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (clk_toggles(2) & (\Add1~3\ $ (GND))) # (!clk_toggles(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((clk_toggles(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_toggles(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X24_Y8_N2
\clk_toggles~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_toggles~3_combout\ = (\Equal3~1_combout\ & (\Add1~4_combout\ & \clk_toggles[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Add1~4_combout\,
	datac => \clk_toggles[3]~1_combout\,
	combout => \clk_toggles~3_combout\);

-- Location: FF_X24_Y8_N3
\clk_toggles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_toggles~3_combout\,
	ena => \sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_toggles(2));

-- Location: LCCOMB_X24_Y8_N4
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (last_bit_rx(0) & (clk_toggles(1) & (clk_toggles(0) & clk_toggles(2)))) # (!last_bit_rx(0) & (!clk_toggles(1) & (!clk_toggles(0) & !clk_toggles(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => last_bit_rx(0),
	datab => clk_toggles(1),
	datac => clk_toggles(0),
	datad => clk_toggles(2),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X23_Y8_N4
\clk_toggles[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_toggles[3]~1_combout\ = (\state~q\ & (((!\process_0~4_combout\) # (!\process_0~3_combout\)) # (!\process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \process_0~3_combout\,
	datac => \state~q\,
	datad => \process_0~4_combout\,
	combout => \clk_toggles[3]~1_combout\);

-- Location: LCCOMB_X24_Y8_N16
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (clk_toggles(3) & (!\Add1~5\)) # (!clk_toggles(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!clk_toggles(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_toggles(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X24_Y8_N0
\clk_toggles~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_toggles~2_combout\ = (\Equal3~1_combout\ & (\clk_toggles[3]~1_combout\ & \Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datac => \clk_toggles[3]~1_combout\,
	datad => \Add1~6_combout\,
	combout => \clk_toggles~2_combout\);

-- Location: FF_X24_Y8_N1
\clk_toggles[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_toggles~2_combout\,
	ena => \sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_toggles(3));

-- Location: LCCOMB_X22_Y8_N24
\Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = last_bit_rx(4) $ (last_bit_rx(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => last_bit_rx(4),
	datad => last_bit_rx(0),
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X23_Y8_N18
\clk_toggles~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clk_toggles~6_combout\ = (\process_0~5_combout\ & (((!\Add4~1_combout\)))) # (!\process_0~5_combout\ & (\Add1~8_combout\ & ((\Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add4~1_combout\,
	datac => \Equal3~1_combout\,
	datad => \process_0~5_combout\,
	combout => \clk_toggles~6_combout\);

-- Location: FF_X23_Y8_N19
\clk_toggles[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clk_toggles~6_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_toggles(4));

-- Location: LCCOMB_X24_Y8_N8
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ((clk_toggles(2)) # ((clk_toggles(3)) # (clk_toggles(1)))) # (!clk_toggles(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_toggles(0),
	datab => clk_toggles(2),
	datac => clk_toggles(3),
	datad => clk_toggles(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X22_Y8_N28
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ((\Equal3~0_combout\) # (!clk_toggles(5))) # (!clk_toggles(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_toggles(4),
	datac => \Equal3~0_combout\,
	datad => clk_toggles(5),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X26_Y8_N18
\ss_n~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ss_n~0_combout\ = (!\cont~input_o\ & (!\Equal3~1_combout\ & \Equal1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont~input_o\,
	datac => \Equal3~1_combout\,
	datad => \Equal1~20_combout\,
	combout => \ss_n~0_combout\);

-- Location: LCCOMB_X26_Y8_N20
\ss_n~0_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ss_n~0_wirecell_combout\ = !\ss_n~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ss_n~0_combout\,
	combout => \ss_n~0_wirecell_combout\);

-- Location: CLKCTRL_G17
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

-- Location: FF_X26_Y8_N21
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ss_n~0_wirecell_combout\,
	asdata => \enable~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

-- Location: LCCOMB_X26_Y8_N2
\tx_buffer[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer[0]~27_combout\ = (\tx_data[0]~input_o\ & ((\process_0~5_combout\) # (!\state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[0]~input_o\,
	datab => \state~q\,
	datad => \process_0~5_combout\,
	combout => \tx_buffer[0]~27_combout\);

-- Location: LCCOMB_X27_Y8_N24
\assert_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \assert_data~0_combout\ = (\enable~input_o\ & ((!\cpha~input_o\))) # (!\enable~input_o\ & (\assert_data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datac => \assert_data~q\,
	datad => \cpha~input_o\,
	combout => \assert_data~0_combout\);

-- Location: LCCOMB_X27_Y8_N22
\assert_data~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \assert_data~1_combout\ = \assert_data~q\ $ (\Equal1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \assert_data~q\,
	datac => \Equal1~20_combout\,
	combout => \assert_data~1_combout\);

-- Location: FF_X27_Y8_N25
assert_data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \assert_data~0_combout\,
	asdata => \assert_data~1_combout\,
	sload => \state~q\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \assert_data~q\);

-- Location: LCCOMB_X24_Y8_N28
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (((!clk_toggles(1)) # (!clk_toggles(3))) # (!clk_toggles(2))) # (!clk_toggles(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_toggles(0),
	datab => clk_toggles(2),
	datac => clk_toggles(3),
	datad => clk_toggles(1),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X24_Y8_N26
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (last_bit_rx(4) & (((last_bit_rx(0) & \LessThan3~0_combout\)) # (!clk_toggles(4)))) # (!last_bit_rx(4) & (!clk_toggles(4) & (last_bit_rx(0) & \LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => last_bit_rx(4),
	datab => clk_toggles(4),
	datac => last_bit_rx(0),
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X26_Y8_N30
\LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (last_bit_rx(5) & ((\LessThan3~1_combout\) # (!clk_toggles(5)))) # (!last_bit_rx(5) & (\LessThan3~1_combout\ & !clk_toggles(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => last_bit_rx(5),
	datac => \LessThan3~1_combout\,
	datad => clk_toggles(5),
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X26_Y8_N16
\tx_buffer[0]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer[0]~28_combout\ = (\state~q\ & (!\process_0~5_combout\ & ((!\LessThan3~2_combout\) # (!\assert_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \assert_data~q\,
	datac => \LessThan3~2_combout\,
	datad => \process_0~5_combout\,
	combout => \tx_buffer[0]~28_combout\);

-- Location: LCCOMB_X26_Y8_N28
\tx_buffer[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer[0]~29_combout\ = (\sclk~1_combout\ & ((\tx_buffer[0]~27_combout\) # ((tx_buffer(0) & \tx_buffer[0]~28_combout\)))) # (!\sclk~1_combout\ & (((tx_buffer(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buffer[0]~27_combout\,
	datab => \sclk~1_combout\,
	datac => tx_buffer(0),
	datad => \tx_buffer[0]~28_combout\,
	combout => \tx_buffer[0]~29_combout\);

-- Location: FF_X26_Y8_N29
\tx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(0));

-- Location: IOIBUF_X21_Y0_N22
\tx_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(1),
	o => \tx_data[1]~input_o\);

-- Location: LCCOMB_X22_Y7_N2
\tx_buffer~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~26_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(0))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(0),
	datac => \tx_data[1]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~26_combout\);

-- Location: LCCOMB_X23_Y8_N22
\tx_buffer[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer[0]~30_combout\ = ((clk_toggles(5) & ((!\LessThan3~1_combout\) # (!last_bit_rx(5)))) # (!clk_toggles(5) & (!last_bit_rx(5) & !\LessThan3~1_combout\))) # (!\assert_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_toggles(5),
	datab => \assert_data~q\,
	datac => last_bit_rx(5),
	datad => \LessThan3~1_combout\,
	combout => \tx_buffer[0]~30_combout\);

-- Location: LCCOMB_X23_Y8_N10
\tx_buffer[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer[23]~3_combout\ = (\state~q\ & (\Equal1~20_combout\ & ((\process_0~5_combout\) # (!\tx_buffer[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \state~q\,
	datac => \tx_buffer[0]~30_combout\,
	datad => \Equal1~20_combout\,
	combout => \tx_buffer[23]~3_combout\);

-- Location: LCCOMB_X23_Y8_N12
\tx_buffer[23]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer[23]~4_combout\ = (\reset_n~input_o\ & ((\tx_buffer[23]~3_combout\) # ((\enable~input_o\ & !\state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \state~q\,
	datac => \reset_n~input_o\,
	datad => \tx_buffer[23]~3_combout\,
	combout => \tx_buffer[23]~4_combout\);

-- Location: FF_X22_Y7_N3
\tx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~26_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(1));

-- Location: IOIBUF_X14_Y0_N22
\tx_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(2),
	o => \tx_data[2]~input_o\);

-- Location: LCCOMB_X22_Y7_N0
\tx_buffer~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~25_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(1))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_buffer(1),
	datac => \tx_data[2]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~25_combout\);

-- Location: FF_X22_Y7_N1
\tx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~25_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(2));

-- Location: IOIBUF_X26_Y0_N29
\tx_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(3),
	o => \tx_data[3]~input_o\);

-- Location: LCCOMB_X22_Y7_N10
\tx_buffer~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~24_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(2))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_buffer(2),
	datac => \tx_data[3]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~24_combout\);

-- Location: FF_X22_Y7_N11
\tx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~24_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(3));

-- Location: IOIBUF_X11_Y0_N29
\tx_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(4),
	o => \tx_data[4]~input_o\);

-- Location: LCCOMB_X22_Y7_N12
\tx_buffer~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~23_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(3))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(3),
	datac => \tx_data[4]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~23_combout\);

-- Location: FF_X22_Y7_N13
\tx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~23_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(4));

-- Location: IOIBUF_X19_Y0_N29
\tx_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(5),
	o => \tx_data[5]~input_o\);

-- Location: LCCOMB_X22_Y7_N22
\tx_buffer~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~22_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(4))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(4),
	datac => \tx_data[5]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~22_combout\);

-- Location: FF_X22_Y7_N23
\tx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~22_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(5));

-- Location: IOIBUF_X11_Y0_N22
\tx_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(6),
	o => \tx_data[6]~input_o\);

-- Location: LCCOMB_X22_Y7_N4
\tx_buffer~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~21_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(5))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(5),
	datac => \tx_data[6]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~21_combout\);

-- Location: FF_X22_Y7_N5
\tx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~21_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(6));

-- Location: IOIBUF_X19_Y0_N22
\tx_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(7),
	o => \tx_data[7]~input_o\);

-- Location: LCCOMB_X22_Y11_N20
\tx_buffer~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~20_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(6))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(6),
	datac => \tx_data[7]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~20_combout\);

-- Location: FF_X22_Y11_N21
\tx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~20_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(7));

-- Location: IOIBUF_X19_Y29_N29
\tx_data[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(8),
	o => \tx_data[8]~input_o\);

-- Location: LCCOMB_X22_Y11_N22
\tx_buffer~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~19_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(7))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_buffer(7),
	datac => \tx_data[8]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~19_combout\);

-- Location: FF_X22_Y11_N23
\tx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~19_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(8));

-- Location: IOIBUF_X26_Y29_N15
\tx_data[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(9),
	o => \tx_data[9]~input_o\);

-- Location: LCCOMB_X22_Y11_N12
\tx_buffer~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~18_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(8))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(8),
	datab => \tx_data[9]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~18_combout\);

-- Location: FF_X22_Y11_N13
\tx_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~18_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(9));

-- Location: IOIBUF_X0_Y11_N22
\tx_data[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(10),
	o => \tx_data[10]~input_o\);

-- Location: LCCOMB_X22_Y11_N10
\tx_buffer~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~17_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(9))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(9),
	datac => \tx_data[10]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~17_combout\);

-- Location: FF_X22_Y11_N11
\tx_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~17_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(10));

-- Location: IOIBUF_X21_Y29_N15
\tx_data[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(11),
	o => \tx_data[11]~input_o\);

-- Location: LCCOMB_X22_Y11_N0
\tx_buffer~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~16_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(10))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(10),
	datac => \tx_data[11]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~16_combout\);

-- Location: FF_X22_Y11_N1
\tx_buffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~16_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(11));

-- Location: IOIBUF_X26_Y0_N1
\tx_data[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(12),
	o => \tx_data[12]~input_o\);

-- Location: LCCOMB_X22_Y11_N14
\tx_buffer~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~15_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(11))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_buffer(11),
	datac => \tx_data[12]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~15_combout\);

-- Location: FF_X22_Y11_N15
\tx_buffer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~15_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(12));

-- Location: IOIBUF_X41_Y14_N1
\tx_data[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(13),
	o => \tx_data[13]~input_o\);

-- Location: LCCOMB_X23_Y11_N22
\tx_buffer~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~14_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(12))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(12),
	datac => \clk_toggles[3]~1_combout\,
	datad => \tx_data[13]~input_o\,
	combout => \tx_buffer~14_combout\);

-- Location: FF_X23_Y11_N23
\tx_buffer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~14_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(13));

-- Location: IOIBUF_X26_Y29_N8
\tx_data[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(14),
	o => \tx_data[14]~input_o\);

-- Location: LCCOMB_X23_Y11_N12
\tx_buffer~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~13_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(13))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(13),
	datab => \tx_data[14]~input_o\,
	datac => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~13_combout\);

-- Location: FF_X23_Y11_N13
\tx_buffer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~13_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(14));

-- Location: IOIBUF_X23_Y29_N15
\tx_data[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(15),
	o => \tx_data[15]~input_o\);

-- Location: LCCOMB_X23_Y11_N10
\tx_buffer~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~12_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(14))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(14),
	datac => \clk_toggles[3]~1_combout\,
	datad => \tx_data[15]~input_o\,
	combout => \tx_buffer~12_combout\);

-- Location: FF_X23_Y11_N11
\tx_buffer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~12_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(15));

-- Location: IOIBUF_X23_Y29_N22
\tx_data[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(16),
	o => \tx_data[16]~input_o\);

-- Location: LCCOMB_X23_Y11_N20
\tx_buffer~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~11_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(15))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(15),
	datac => \clk_toggles[3]~1_combout\,
	datad => \tx_data[16]~input_o\,
	combout => \tx_buffer~11_combout\);

-- Location: FF_X23_Y11_N21
\tx_buffer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~11_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(16));

-- Location: LCCOMB_X23_Y11_N2
\tx_buffer~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~10_combout\ = (\clk_toggles[3]~1_combout\ & ((tx_buffer(16)))) # (!\clk_toggles[3]~1_combout\ & (\tx_data[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[17]~input_o\,
	datab => tx_buffer(16),
	datac => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~10_combout\);

-- Location: FF_X23_Y11_N3
\tx_buffer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~10_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(17));

-- Location: LCCOMB_X23_Y11_N0
\tx_buffer~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~9_combout\ = (\clk_toggles[3]~1_combout\ & ((tx_buffer(17)))) # (!\clk_toggles[3]~1_combout\ & (\tx_data[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[18]~input_o\,
	datab => tx_buffer(17),
	datac => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~9_combout\);

-- Location: FF_X23_Y11_N1
\tx_buffer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~9_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(18));

-- Location: IOIBUF_X41_Y11_N1
\tx_data[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(19),
	o => \tx_data[19]~input_o\);

-- Location: LCCOMB_X23_Y11_N6
\tx_buffer~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~8_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(18))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_buffer(18),
	datac => \clk_toggles[3]~1_combout\,
	datad => \tx_data[19]~input_o\,
	combout => \tx_buffer~8_combout\);

-- Location: FF_X23_Y11_N7
\tx_buffer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~8_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(19));

-- Location: IOIBUF_X21_Y29_N29
\tx_data[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(20),
	o => \tx_data[20]~input_o\);

-- Location: LCCOMB_X22_Y11_N28
\tx_buffer~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~7_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(19))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tx_buffer(19),
	datac => \tx_data[20]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~7_combout\);

-- Location: FF_X22_Y11_N29
\tx_buffer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~7_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(20));

-- Location: IOIBUF_X21_Y29_N1
\tx_data[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(21),
	o => \tx_data[21]~input_o\);

-- Location: LCCOMB_X22_Y11_N2
\tx_buffer~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~6_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(20))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_buffer(20),
	datac => \tx_data[21]~input_o\,
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~6_combout\);

-- Location: FF_X22_Y11_N3
\tx_buffer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~6_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(21));

-- Location: LCCOMB_X22_Y11_N24
\tx_buffer~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~5_combout\ = (\clk_toggles[3]~1_combout\ & ((tx_buffer(21)))) # (!\clk_toggles[3]~1_combout\ & (\tx_data[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_data[22]~input_o\,
	datab => tx_buffer(21),
	datad => \clk_toggles[3]~1_combout\,
	combout => \tx_buffer~5_combout\);

-- Location: FF_X22_Y11_N25
\tx_buffer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~5_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(22));

-- Location: IOIBUF_X23_Y29_N1
\tx_data[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_data(23),
	o => \tx_data[23]~input_o\);

-- Location: LCCOMB_X23_Y11_N8
\tx_buffer~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buffer~2_combout\ = (\clk_toggles[3]~1_combout\ & (tx_buffer(22))) # (!\clk_toggles[3]~1_combout\ & ((\tx_data[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tx_buffer(22),
	datac => \clk_toggles[3]~1_combout\,
	datad => \tx_data[23]~input_o\,
	combout => \tx_buffer~2_combout\);

-- Location: FF_X23_Y11_N9
\tx_buffer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \tx_buffer~2_combout\,
	ena => \tx_buffer[23]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => tx_buffer(23));

-- Location: LCCOMB_X26_Y8_N0
\mosi~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mosi~reg0feeder_combout\ = tx_buffer(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => tx_buffer(23),
	combout => \mosi~reg0feeder_combout\);

-- Location: LCCOMB_X26_Y8_N8
\ss_n~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ss_n~2_combout\ = (clk_toggles(5) & (!\cont~input_o\ & (!\Equal3~0_combout\ & clk_toggles(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_toggles(5),
	datab => \cont~input_o\,
	datac => \Equal3~0_combout\,
	datad => clk_toggles(4),
	combout => \ss_n~2_combout\);

-- Location: LCCOMB_X26_Y8_N12
\mosi~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mosi~1_combout\ = ((\Equal1~20_combout\ & ((\ss_n~2_combout\) # (!\tx_buffer[0]~30_combout\)))) # (!\state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buffer[0]~30_combout\,
	datab => \state~q\,
	datac => \ss_n~2_combout\,
	datad => \Equal1~20_combout\,
	combout => \mosi~1_combout\);

-- Location: FF_X26_Y8_N1
\mosi~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mosi~reg0feeder_combout\,
	ena => \mosi~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mosi~reg0_q\);

-- Location: LCCOMB_X26_Y8_N10
\mosi~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mosi~2_combout\ = (\state~q\ & ((\Equal3~1_combout\) # (\cont~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~q\,
	datac => \Equal3~1_combout\,
	datad => \cont~input_o\,
	combout => \mosi~2_combout\);

-- Location: FF_X26_Y8_N11
\mosi~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mosi~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \mosi~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mosi~en_q\);

-- Location: IOIBUF_X26_Y29_N29
\addr[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X41_Y13_N22
\addr[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(31),
	o => \addr[31]~input_o\);

-- Location: LCCOMB_X26_Y12_N16
\slave~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slave~0_combout\ = (!\addr[31]~input_o\) # (!\addr[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addr[0]~input_o\,
	datad => \addr[31]~input_o\,
	combout => \slave~0_combout\);

-- Location: FF_X26_Y12_N17
\slave[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \slave~0_combout\,
	ena => \clk_ratio[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slave(0));

-- Location: LCCOMB_X26_Y8_N4
\ss_n~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ss_n~1_combout\ = (\state~q\ & (!\ss_n~0_combout\ & ((slave(0)) # (\ss_n[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => slave(0),
	datab => \state~q\,
	datac => \ss_n[0]~reg0_q\,
	datad => \ss_n~0_combout\,
	combout => \ss_n~1_combout\);

-- Location: FF_X26_Y8_N5
\ss_n[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ss_n~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ss_n[0]~reg0_q\);

-- Location: LCCOMB_X24_Y8_N30
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (clk_toggles(0)) # ((clk_toggles(2)) # ((clk_toggles(3)) # (clk_toggles(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_toggles(0),
	datab => clk_toggles(2),
	datac => clk_toggles(3),
	datad => clk_toggles(1),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X26_Y8_N22
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ((clk_toggles(5) & (clk_toggles(4) & \process_0~0_combout\))) # (!\ss_n[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_toggles(5),
	datab => clk_toggles(4),
	datac => \ss_n[0]~reg0_q\,
	datad => \process_0~0_combout\,
	combout => \process_0~1_combout\);

-- Location: IOIBUF_X30_Y0_N1
\cpol~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpol,
	o => \cpol~input_o\);

-- Location: LCCOMB_X26_Y8_N24
\sclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk~0_combout\ = (\state~q\ & (\sclk~reg0_q\ $ ((!\process_0~1_combout\)))) # (!\state~q\ & (((\cpol~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sclk~reg0_q\,
	datab => \state~q\,
	datac => \process_0~1_combout\,
	datad => \cpol~input_o\,
	combout => \sclk~0_combout\);

-- Location: LCCOMB_X26_Y8_N26
\sclk~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk~2_combout\ = (\sclk~1_combout\ & ((\sclk~0_combout\))) # (!\sclk~1_combout\ & (\sclk~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sclk~1_combout\,
	datac => \sclk~reg0_q\,
	datad => \sclk~0_combout\,
	combout => \sclk~2_combout\);

-- Location: FF_X26_Y8_N27
\sclk~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \sclk~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sclk~reg0_q\);

-- Location: LCCOMB_X22_Y8_N26
\continue~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \continue~0_combout\ = (\Equal1~20_combout\ & (!\continue~q\ & \process_0~5_combout\)) # (!\Equal1~20_combout\ & (\continue~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~20_combout\,
	datac => \continue~q\,
	datad => \process_0~5_combout\,
	combout => \continue~0_combout\);

-- Location: FF_X22_Y8_N27
continue : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \continue~0_combout\,
	sclr => \ALT_INV_state~q\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \continue~q\);

-- Location: LCCOMB_X22_Y8_N14
\busy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \busy~0_combout\ = (!\continue~q\ & ((\cont~input_o\) # (\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cont~input_o\,
	datac => \continue~q\,
	datad => \Equal3~1_combout\,
	combout => \busy~0_combout\);

-- Location: LCCOMB_X23_Y8_N8
\busy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \busy~1_combout\ = (\state~q\ & (!\busy~0_combout\ & ((\Equal1~20_combout\)))) # (!\state~q\ & (((!\enable~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~0_combout\,
	datab => \enable~input_o\,
	datac => \Equal1~20_combout\,
	datad => \state~q\,
	combout => \busy~1_combout\);

-- Location: FF_X23_Y8_N9
\busy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \busy~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \busy~reg0_q\);

-- Location: IOIBUF_X32_Y0_N1
\miso~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_miso,
	o => \miso~input_o\);

-- Location: LCCOMB_X23_Y4_N4
\rx_buffer[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[0]~feeder_combout\ = \miso~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \miso~input_o\,
	combout => \rx_buffer[0]~feeder_combout\);

-- Location: LCCOMB_X26_Y8_N14
\rx_buffer[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[0]~0_combout\ = (\ss_n[0]~reg0_q\ & !\assert_data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ss_n[0]~reg0_q\,
	datad => \assert_data~q\,
	combout => \rx_buffer[0]~0_combout\);

-- Location: LCCOMB_X24_Y8_N6
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (clk_toggles(4) & (last_bit_rx(4) & ((last_bit_rx(0)) # (!\process_0~0_combout\)))) # (!clk_toggles(4) & ((last_bit_rx(0)) # ((last_bit_rx(4)) # (!\process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => last_bit_rx(0),
	datab => clk_toggles(4),
	datac => last_bit_rx(4),
	datad => \process_0~0_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X23_Y8_N26
\rx_buffer[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[0]~1_combout\ = (\rx_buffer[0]~0_combout\ & ((clk_toggles(5) & (last_bit_rx(5) & \LessThan2~0_combout\)) # (!clk_toggles(5) & ((last_bit_rx(5)) # (\LessThan2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_toggles(5),
	datab => \rx_buffer[0]~0_combout\,
	datac => last_bit_rx(5),
	datad => \LessThan2~0_combout\,
	combout => \rx_buffer[0]~1_combout\);

-- Location: LCCOMB_X23_Y8_N20
\rx_buffer[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[0]~2_combout\ = (\rx_buffer[0]~1_combout\ & (\reset_n~input_o\ & (\state~q\ & \Equal1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_buffer[0]~1_combout\,
	datab => \reset_n~input_o\,
	datac => \state~q\,
	datad => \Equal1~20_combout\,
	combout => \rx_buffer[0]~2_combout\);

-- Location: FF_X23_Y4_N5
\rx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[0]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(0));

-- Location: LCCOMB_X22_Y4_N16
\rx_data[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[0]~reg0feeder_combout\ = rx_buffer(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(0),
	combout => \rx_data[0]~reg0feeder_combout\);

-- Location: LCCOMB_X23_Y8_N24
\rx_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[0]~0_combout\ = (!\busy~0_combout\ & (\state~q\ & \Equal1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~0_combout\,
	datab => \state~q\,
	datad => \Equal1~20_combout\,
	combout => \rx_data[0]~0_combout\);

-- Location: FF_X22_Y4_N17
\rx_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[0]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[0]~reg0_q\);

-- Location: FF_X23_Y4_N3
\rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => rx_buffer(0),
	sload => VCC,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(1));

-- Location: LCCOMB_X23_Y4_N0
\rx_data[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[1]~reg0feeder_combout\ = rx_buffer(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(1),
	combout => \rx_data[1]~reg0feeder_combout\);

-- Location: FF_X23_Y4_N1
\rx_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[1]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[1]~reg0_q\);

-- Location: LCCOMB_X23_Y4_N12
\rx_buffer[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[2]~feeder_combout\ = rx_buffer(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(1),
	combout => \rx_buffer[2]~feeder_combout\);

-- Location: FF_X23_Y4_N13
\rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[2]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(2));

-- Location: LCCOMB_X23_Y4_N22
\rx_data[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[2]~reg0feeder_combout\ = rx_buffer(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(2),
	combout => \rx_data[2]~reg0feeder_combout\);

-- Location: FF_X23_Y4_N23
\rx_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[2]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[2]~reg0_q\);

-- Location: LCCOMB_X23_Y4_N10
\rx_buffer[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[3]~feeder_combout\ = rx_buffer(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(2),
	combout => \rx_buffer[3]~feeder_combout\);

-- Location: FF_X23_Y4_N11
\rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[3]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(3));

-- Location: LCCOMB_X23_Y4_N16
\rx_data[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[3]~reg0feeder_combout\ = rx_buffer(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(3),
	combout => \rx_data[3]~reg0feeder_combout\);

-- Location: FF_X23_Y4_N17
\rx_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[3]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[3]~reg0_q\);

-- Location: LCCOMB_X23_Y4_N28
\rx_buffer[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[4]~feeder_combout\ = rx_buffer(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(3),
	combout => \rx_buffer[4]~feeder_combout\);

-- Location: FF_X23_Y4_N29
\rx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[4]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(4));

-- Location: LCCOMB_X22_Y4_N6
\rx_data[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[4]~reg0feeder_combout\ = rx_buffer(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(4),
	combout => \rx_data[4]~reg0feeder_combout\);

-- Location: FF_X22_Y4_N7
\rx_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[4]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[4]~reg0_q\);

-- Location: LCCOMB_X23_Y4_N6
\rx_buffer[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[5]~feeder_combout\ = rx_buffer(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(4),
	combout => \rx_buffer[5]~feeder_combout\);

-- Location: FF_X23_Y4_N7
\rx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[5]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(5));

-- Location: LCCOMB_X22_Y4_N4
\rx_data[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[5]~reg0feeder_combout\ = rx_buffer(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(5),
	combout => \rx_data[5]~reg0feeder_combout\);

-- Location: FF_X22_Y4_N5
\rx_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[5]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[5]~reg0_q\);

-- Location: LCCOMB_X23_Y4_N24
\rx_buffer[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[6]~feeder_combout\ = rx_buffer(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(5),
	combout => \rx_buffer[6]~feeder_combout\);

-- Location: FF_X23_Y4_N25
\rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[6]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(6));

-- Location: LCCOMB_X23_Y7_N4
\rx_data[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[6]~reg0feeder_combout\ = rx_buffer(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(6),
	combout => \rx_data[6]~reg0feeder_combout\);

-- Location: FF_X23_Y7_N5
\rx_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[6]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[6]~reg0_q\);

-- Location: LCCOMB_X23_Y7_N14
\rx_buffer[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[7]~feeder_combout\ = rx_buffer(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(6),
	combout => \rx_buffer[7]~feeder_combout\);

-- Location: FF_X23_Y7_N15
\rx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[7]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(7));

-- Location: LCCOMB_X24_Y7_N20
\rx_data[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[7]~reg0feeder_combout\ = rx_buffer(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(7),
	combout => \rx_data[7]~reg0feeder_combout\);

-- Location: FF_X24_Y7_N21
\rx_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[7]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[7]~reg0_q\);

-- Location: LCCOMB_X24_Y7_N12
\rx_buffer[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[8]~feeder_combout\ = rx_buffer(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(7),
	combout => \rx_buffer[8]~feeder_combout\);

-- Location: FF_X24_Y7_N13
\rx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[8]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(8));

-- Location: LCCOMB_X24_Y7_N6
\rx_data[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[8]~reg0feeder_combout\ = rx_buffer(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(8),
	combout => \rx_data[8]~reg0feeder_combout\);

-- Location: FF_X24_Y7_N7
\rx_data[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[8]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[8]~reg0_q\);

-- Location: LCCOMB_X24_Y7_N26
\rx_buffer[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[9]~feeder_combout\ = rx_buffer(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(8),
	combout => \rx_buffer[9]~feeder_combout\);

-- Location: FF_X24_Y7_N27
\rx_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[9]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(9));

-- Location: FF_X24_Y7_N9
\rx_data[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => rx_buffer(9),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[9]~reg0_q\);

-- Location: FF_X24_Y7_N29
\rx_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => rx_buffer(9),
	sload => VCC,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(10));

-- Location: LCCOMB_X24_Y7_N2
\rx_data[10]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[10]~reg0feeder_combout\ = rx_buffer(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(10),
	combout => \rx_data[10]~reg0feeder_combout\);

-- Location: FF_X24_Y7_N3
\rx_data[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[10]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[10]~reg0_q\);

-- Location: LCCOMB_X24_Y7_N18
\rx_buffer[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[11]~feeder_combout\ = rx_buffer(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(10),
	combout => \rx_buffer[11]~feeder_combout\);

-- Location: FF_X24_Y7_N19
\rx_buffer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[11]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(11));

-- Location: LCCOMB_X24_Y7_N24
\rx_data[11]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[11]~reg0feeder_combout\ = rx_buffer(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(11),
	combout => \rx_data[11]~reg0feeder_combout\);

-- Location: FF_X24_Y7_N25
\rx_data[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[11]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[11]~reg0_q\);

-- Location: LCCOMB_X24_Y7_N0
\rx_buffer[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[12]~feeder_combout\ = rx_buffer(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(11),
	combout => \rx_buffer[12]~feeder_combout\);

-- Location: FF_X24_Y7_N1
\rx_buffer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[12]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(12));

-- Location: LCCOMB_X24_Y7_N14
\rx_data[12]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[12]~reg0feeder_combout\ = rx_buffer(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(12),
	combout => \rx_data[12]~reg0feeder_combout\);

-- Location: FF_X24_Y7_N15
\rx_data[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[12]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[12]~reg0_q\);

-- Location: LCCOMB_X24_Y7_N10
\rx_buffer[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[13]~feeder_combout\ = rx_buffer(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(12),
	combout => \rx_buffer[13]~feeder_combout\);

-- Location: FF_X24_Y7_N11
\rx_buffer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[13]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(13));

-- Location: LCCOMB_X24_Y7_N4
\rx_data[13]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[13]~reg0feeder_combout\ = rx_buffer(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(13),
	combout => \rx_data[13]~reg0feeder_combout\);

-- Location: FF_X24_Y7_N5
\rx_data[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[13]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[13]~reg0_q\);

-- Location: LCCOMB_X24_Y7_N16
\rx_buffer[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[14]~feeder_combout\ = rx_buffer(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(13),
	combout => \rx_buffer[14]~feeder_combout\);

-- Location: FF_X24_Y7_N17
\rx_buffer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[14]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(14));

-- Location: LCCOMB_X24_Y7_N22
\rx_data[14]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[14]~reg0feeder_combout\ = rx_buffer(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(14),
	combout => \rx_data[14]~reg0feeder_combout\);

-- Location: FF_X24_Y7_N23
\rx_data[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[14]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[14]~reg0_q\);

-- Location: LCCOMB_X24_Y7_N30
\rx_buffer[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[15]~feeder_combout\ = rx_buffer(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(14),
	combout => \rx_buffer[15]~feeder_combout\);

-- Location: FF_X24_Y7_N31
\rx_buffer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[15]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(15));

-- Location: LCCOMB_X23_Y4_N14
\rx_data[15]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[15]~reg0feeder_combout\ = rx_buffer(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(15),
	combout => \rx_data[15]~reg0feeder_combout\);

-- Location: FF_X23_Y4_N15
\rx_data[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[15]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[15]~reg0_q\);

-- Location: LCCOMB_X21_Y8_N20
\rx_buffer[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[16]~feeder_combout\ = rx_buffer(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(15),
	combout => \rx_buffer[16]~feeder_combout\);

-- Location: FF_X21_Y8_N21
\rx_buffer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[16]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(16));

-- Location: LCCOMB_X21_Y8_N16
\rx_data[16]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[16]~reg0feeder_combout\ = rx_buffer(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(16),
	combout => \rx_data[16]~reg0feeder_combout\);

-- Location: FF_X21_Y8_N17
\rx_data[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[16]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[16]~reg0_q\);

-- Location: LCCOMB_X21_Y8_N30
\rx_buffer[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[17]~feeder_combout\ = rx_buffer(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(16),
	combout => \rx_buffer[17]~feeder_combout\);

-- Location: FF_X21_Y8_N31
\rx_buffer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[17]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(17));

-- Location: FF_X21_Y8_N11
\rx_data[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => rx_buffer(17),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[17]~reg0_q\);

-- Location: FF_X21_Y8_N29
\rx_buffer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => rx_buffer(17),
	sload => VCC,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(18));

-- Location: LCCOMB_X21_Y8_N8
\rx_data[18]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[18]~reg0feeder_combout\ = rx_buffer(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(18),
	combout => \rx_data[18]~reg0feeder_combout\);

-- Location: FF_X21_Y8_N9
\rx_data[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[18]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[18]~reg0_q\);

-- Location: LCCOMB_X21_Y8_N26
\rx_buffer[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[19]~feeder_combout\ = rx_buffer(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(18),
	combout => \rx_buffer[19]~feeder_combout\);

-- Location: FF_X21_Y8_N27
\rx_buffer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[19]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(19));

-- Location: FF_X21_Y8_N23
\rx_data[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => rx_buffer(19),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[19]~reg0_q\);

-- Location: FF_X21_Y8_N13
\rx_buffer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => rx_buffer(19),
	sload => VCC,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(20));

-- Location: LCCOMB_X21_Y8_N4
\rx_data[20]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[20]~reg0feeder_combout\ = rx_buffer(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(20),
	combout => \rx_data[20]~reg0feeder_combout\);

-- Location: FF_X21_Y8_N5
\rx_data[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[20]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[20]~reg0_q\);

-- Location: LCCOMB_X21_Y8_N18
\rx_buffer[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[21]~feeder_combout\ = rx_buffer(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(20),
	combout => \rx_buffer[21]~feeder_combout\);

-- Location: FF_X21_Y8_N19
\rx_buffer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[21]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(21));

-- Location: LCCOMB_X21_Y8_N2
\rx_data[21]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[21]~reg0feeder_combout\ = rx_buffer(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(21),
	combout => \rx_data[21]~reg0feeder_combout\);

-- Location: FF_X21_Y8_N3
\rx_data[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[21]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[21]~reg0_q\);

-- Location: LCCOMB_X21_Y8_N24
\rx_buffer[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[22]~feeder_combout\ = rx_buffer(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(21),
	combout => \rx_buffer[22]~feeder_combout\);

-- Location: FF_X21_Y8_N25
\rx_buffer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[22]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(22));

-- Location: LCCOMB_X21_Y8_N0
\rx_data[22]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[22]~reg0feeder_combout\ = rx_buffer(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(22),
	combout => \rx_data[22]~reg0feeder_combout\);

-- Location: FF_X21_Y8_N1
\rx_data[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[22]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[22]~reg0_q\);

-- Location: LCCOMB_X21_Y8_N6
\rx_buffer[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buffer[23]~feeder_combout\ = rx_buffer(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(22),
	combout => \rx_buffer[23]~feeder_combout\);

-- Location: FF_X21_Y8_N7
\rx_buffer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_buffer[23]~feeder_combout\,
	ena => \rx_buffer[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buffer(23));

-- Location: LCCOMB_X21_Y8_N14
\rx_data[23]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[23]~reg0feeder_combout\ = rx_buffer(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rx_buffer(23),
	combout => \rx_data[23]~reg0feeder_combout\);

-- Location: FF_X21_Y8_N15
\rx_data[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rx_data[23]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_data[23]~reg0_q\);

-- Location: IOIBUF_X0_Y14_N15
\addr[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\addr[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: IOIBUF_X41_Y6_N1
\addr[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\addr[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(4),
	o => \addr[4]~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\addr[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(5),
	o => \addr[5]~input_o\);

-- Location: IOIBUF_X39_Y0_N8
\addr[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(6),
	o => \addr[6]~input_o\);

-- Location: IOIBUF_X39_Y29_N22
\addr[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(7),
	o => \addr[7]~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\addr[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(8),
	o => \addr[8]~input_o\);

-- Location: IOIBUF_X37_Y29_N29
\addr[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(9),
	o => \addr[9]~input_o\);

-- Location: IOIBUF_X3_Y29_N29
\addr[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(10),
	o => \addr[10]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\addr[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(11),
	o => \addr[11]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\addr[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(12),
	o => \addr[12]~input_o\);

-- Location: IOIBUF_X30_Y29_N8
\addr[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(13),
	o => \addr[13]~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\addr[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(14),
	o => \addr[14]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\addr[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(15),
	o => \addr[15]~input_o\);

-- Location: IOIBUF_X41_Y23_N1
\addr[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(16),
	o => \addr[16]~input_o\);

-- Location: IOIBUF_X39_Y29_N29
\addr[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(17),
	o => \addr[17]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\addr[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(18),
	o => \addr[18]~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\addr[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(19),
	o => \addr[19]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\addr[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(20),
	o => \addr[20]~input_o\);

-- Location: IOIBUF_X9_Y29_N1
\addr[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(21),
	o => \addr[21]~input_o\);

-- Location: IOIBUF_X14_Y29_N1
\addr[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(22),
	o => \addr[22]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\addr[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(23),
	o => \addr[23]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\addr[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(24),
	o => \addr[24]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\addr[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(25),
	o => \addr[25]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\addr[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(26),
	o => \addr[26]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\addr[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(27),
	o => \addr[27]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\addr[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(28),
	o => \addr[28]~input_o\);

-- Location: IOIBUF_X41_Y19_N1
\addr[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(29),
	o => \addr[29]~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\addr[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(30),
	o => \addr[30]~input_o\);

ww_sclk <= \sclk~output_o\;

ww_ss_n(0) <= \ss_n[0]~output_o\;

ww_mosi <= \mosi~output_o\;

ww_busy <= \busy~output_o\;

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
END structure;


