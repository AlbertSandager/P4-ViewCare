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

-- DATE "04/07/2019 11:09:12"

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

ENTITY 	i2s_transceiver IS
    PORT (
	reset_n : IN std_logic;
	mclk : IN std_logic;
	sclk : OUT std_logic;
	ws : OUT std_logic;
	sd_tx : OUT std_logic;
	sd_rx : IN std_logic;
	l_data_tx : IN std_logic_vector(23 DOWNTO 0);
	r_data_tx : IN std_logic_vector(23 DOWNTO 0);
	l_data_rx : OUT std_logic_vector(23 DOWNTO 0);
	r_data_rx : OUT std_logic_vector(23 DOWNTO 0)
	);
END i2s_transceiver;

-- Design Ports Information
-- sclk	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ws	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd_tx	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[0]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[6]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[7]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[8]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[9]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[10]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[11]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[12]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[13]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[14]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[15]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[17]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[18]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[19]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[20]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[21]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[22]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_rx[23]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[5]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[8]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[9]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[10]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[11]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[12]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[13]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[14]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[15]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[16]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[17]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[18]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[19]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[20]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[21]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[22]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_rx[23]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mclk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[23]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[23]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd_rx	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[22]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[22]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[21]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[21]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[20]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[20]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[19]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[19]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[18]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[18]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[17]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[17]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[16]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[16]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[15]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[15]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[14]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[14]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[13]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[13]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[12]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[12]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[11]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[11]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[10]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[10]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[9]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[9]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[4]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_data_tx[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l_data_tx[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF i2s_transceiver IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_mclk : std_logic;
SIGNAL ww_sclk : std_logic;
SIGNAL ww_ws : std_logic;
SIGNAL ww_sd_tx : std_logic;
SIGNAL ww_sd_rx : std_logic;
SIGNAL ww_l_data_tx : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_r_data_tx : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_l_data_rx : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_r_data_rx : std_logic_vector(23 DOWNTO 0);
SIGNAL \mclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sclk~output_o\ : std_logic;
SIGNAL \ws~output_o\ : std_logic;
SIGNAL \sd_tx~output_o\ : std_logic;
SIGNAL \l_data_rx[0]~output_o\ : std_logic;
SIGNAL \l_data_rx[1]~output_o\ : std_logic;
SIGNAL \l_data_rx[2]~output_o\ : std_logic;
SIGNAL \l_data_rx[3]~output_o\ : std_logic;
SIGNAL \l_data_rx[4]~output_o\ : std_logic;
SIGNAL \l_data_rx[5]~output_o\ : std_logic;
SIGNAL \l_data_rx[6]~output_o\ : std_logic;
SIGNAL \l_data_rx[7]~output_o\ : std_logic;
SIGNAL \l_data_rx[8]~output_o\ : std_logic;
SIGNAL \l_data_rx[9]~output_o\ : std_logic;
SIGNAL \l_data_rx[10]~output_o\ : std_logic;
SIGNAL \l_data_rx[11]~output_o\ : std_logic;
SIGNAL \l_data_rx[12]~output_o\ : std_logic;
SIGNAL \l_data_rx[13]~output_o\ : std_logic;
SIGNAL \l_data_rx[14]~output_o\ : std_logic;
SIGNAL \l_data_rx[15]~output_o\ : std_logic;
SIGNAL \l_data_rx[16]~output_o\ : std_logic;
SIGNAL \l_data_rx[17]~output_o\ : std_logic;
SIGNAL \l_data_rx[18]~output_o\ : std_logic;
SIGNAL \l_data_rx[19]~output_o\ : std_logic;
SIGNAL \l_data_rx[20]~output_o\ : std_logic;
SIGNAL \l_data_rx[21]~output_o\ : std_logic;
SIGNAL \l_data_rx[22]~output_o\ : std_logic;
SIGNAL \l_data_rx[23]~output_o\ : std_logic;
SIGNAL \r_data_rx[0]~output_o\ : std_logic;
SIGNAL \r_data_rx[1]~output_o\ : std_logic;
SIGNAL \r_data_rx[2]~output_o\ : std_logic;
SIGNAL \r_data_rx[3]~output_o\ : std_logic;
SIGNAL \r_data_rx[4]~output_o\ : std_logic;
SIGNAL \r_data_rx[5]~output_o\ : std_logic;
SIGNAL \r_data_rx[6]~output_o\ : std_logic;
SIGNAL \r_data_rx[7]~output_o\ : std_logic;
SIGNAL \r_data_rx[8]~output_o\ : std_logic;
SIGNAL \r_data_rx[9]~output_o\ : std_logic;
SIGNAL \r_data_rx[10]~output_o\ : std_logic;
SIGNAL \r_data_rx[11]~output_o\ : std_logic;
SIGNAL \r_data_rx[12]~output_o\ : std_logic;
SIGNAL \r_data_rx[13]~output_o\ : std_logic;
SIGNAL \r_data_rx[14]~output_o\ : std_logic;
SIGNAL \r_data_rx[15]~output_o\ : std_logic;
SIGNAL \r_data_rx[16]~output_o\ : std_logic;
SIGNAL \r_data_rx[17]~output_o\ : std_logic;
SIGNAL \r_data_rx[18]~output_o\ : std_logic;
SIGNAL \r_data_rx[19]~output_o\ : std_logic;
SIGNAL \r_data_rx[20]~output_o\ : std_logic;
SIGNAL \r_data_rx[21]~output_o\ : std_logic;
SIGNAL \r_data_rx[22]~output_o\ : std_logic;
SIGNAL \r_data_rx[23]~output_o\ : std_logic;
SIGNAL \mclk~input_o\ : std_logic;
SIGNAL \mclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sclk_int~0_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \sclk_cnt[0]~32_combout\ : std_logic;
SIGNAL \sclk_cnt[0]~33\ : std_logic;
SIGNAL \sclk_cnt[1]~34_combout\ : std_logic;
SIGNAL \sclk_cnt[1]~35\ : std_logic;
SIGNAL \sclk_cnt[2]~36_combout\ : std_logic;
SIGNAL \sclk_cnt[2]~37\ : std_logic;
SIGNAL \sclk_cnt[3]~38_combout\ : std_logic;
SIGNAL \sclk_cnt[3]~39\ : std_logic;
SIGNAL \sclk_cnt[4]~40_combout\ : std_logic;
SIGNAL \sclk_cnt[4]~41\ : std_logic;
SIGNAL \sclk_cnt[5]~42_combout\ : std_logic;
SIGNAL \sclk_cnt[5]~43\ : std_logic;
SIGNAL \sclk_cnt[6]~44_combout\ : std_logic;
SIGNAL \sclk_cnt[6]~45\ : std_logic;
SIGNAL \sclk_cnt[7]~46_combout\ : std_logic;
SIGNAL \sclk_cnt[7]~47\ : std_logic;
SIGNAL \sclk_cnt[8]~48_combout\ : std_logic;
SIGNAL \sclk_cnt[8]~49\ : std_logic;
SIGNAL \sclk_cnt[9]~50_combout\ : std_logic;
SIGNAL \sclk_cnt[9]~51\ : std_logic;
SIGNAL \sclk_cnt[10]~52_combout\ : std_logic;
SIGNAL \sclk_cnt[10]~53\ : std_logic;
SIGNAL \sclk_cnt[11]~54_combout\ : std_logic;
SIGNAL \sclk_cnt[11]~55\ : std_logic;
SIGNAL \sclk_cnt[12]~56_combout\ : std_logic;
SIGNAL \sclk_cnt[12]~57\ : std_logic;
SIGNAL \sclk_cnt[13]~58_combout\ : std_logic;
SIGNAL \sclk_cnt[13]~59\ : std_logic;
SIGNAL \sclk_cnt[14]~60_combout\ : std_logic;
SIGNAL \sclk_cnt[14]~61\ : std_logic;
SIGNAL \sclk_cnt[15]~62_combout\ : std_logic;
SIGNAL \sclk_cnt[15]~63\ : std_logic;
SIGNAL \sclk_cnt[16]~64_combout\ : std_logic;
SIGNAL \sclk_cnt[16]~65\ : std_logic;
SIGNAL \sclk_cnt[17]~66_combout\ : std_logic;
SIGNAL \sclk_cnt[17]~67\ : std_logic;
SIGNAL \sclk_cnt[18]~68_combout\ : std_logic;
SIGNAL \sclk_cnt[18]~69\ : std_logic;
SIGNAL \sclk_cnt[19]~70_combout\ : std_logic;
SIGNAL \sclk_cnt[19]~71\ : std_logic;
SIGNAL \sclk_cnt[20]~72_combout\ : std_logic;
SIGNAL \sclk_cnt[20]~73\ : std_logic;
SIGNAL \sclk_cnt[21]~74_combout\ : std_logic;
SIGNAL \sclk_cnt[21]~75\ : std_logic;
SIGNAL \sclk_cnt[22]~76_combout\ : std_logic;
SIGNAL \sclk_cnt[22]~77\ : std_logic;
SIGNAL \sclk_cnt[23]~78_combout\ : std_logic;
SIGNAL \sclk_cnt[23]~79\ : std_logic;
SIGNAL \sclk_cnt[24]~80_combout\ : std_logic;
SIGNAL \sclk_cnt[24]~81\ : std_logic;
SIGNAL \sclk_cnt[25]~82_combout\ : std_logic;
SIGNAL \sclk_cnt[25]~83\ : std_logic;
SIGNAL \sclk_cnt[26]~84_combout\ : std_logic;
SIGNAL \sclk_cnt[26]~85\ : std_logic;
SIGNAL \sclk_cnt[27]~86_combout\ : std_logic;
SIGNAL \sclk_cnt[27]~87\ : std_logic;
SIGNAL \sclk_cnt[28]~88_combout\ : std_logic;
SIGNAL \sclk_cnt[28]~89\ : std_logic;
SIGNAL \sclk_cnt[29]~90_combout\ : std_logic;
SIGNAL \sclk_cnt[29]~91\ : std_logic;
SIGNAL \sclk_cnt[30]~92_combout\ : std_logic;
SIGNAL \sclk_cnt[30]~93\ : std_logic;
SIGNAL \sclk_cnt[31]~94_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \sclk_int~q\ : std_logic;
SIGNAL \ws_int~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \ws_cnt~14_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \ws_cnt~13_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \ws_cnt~12_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \ws_cnt~11_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \ws_cnt~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \ws_cnt~9_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \ws_cnt~31_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \ws_cnt~30_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \ws_cnt~29_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \ws_cnt~28_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \ws_cnt~27_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \ws_cnt~26_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \ws_cnt~25_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \ws_cnt~24_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \ws_cnt~23_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \ws_cnt~22_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \ws_cnt~21_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \ws_cnt~20_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \ws_cnt~19_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \ws_cnt~18_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \ws_cnt~17_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \ws_cnt~16_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \ws_cnt~15_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \ws_cnt~8_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \ws_cnt~7_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \ws_cnt~6_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \ws_cnt~5_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \ws_cnt~4_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \ws_cnt~3_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \ws_cnt~2_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \ws_cnt~1_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \ws_cnt~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \l_data_rx[10]~0_combout\ : std_logic;
SIGNAL \ws_int~q\ : std_logic;
SIGNAL \r_data_tx[23]~input_o\ : std_logic;
SIGNAL \r_data_tx[21]~input_o\ : std_logic;
SIGNAL \r_data_tx[14]~input_o\ : std_logic;
SIGNAL \r_data_tx[13]~input_o\ : std_logic;
SIGNAL \r_data_tx[12]~input_o\ : std_logic;
SIGNAL \r_data_tx[8]~input_o\ : std_logic;
SIGNAL \r_data_tx[7]~input_o\ : std_logic;
SIGNAL \r_data_tx[6]~input_o\ : std_logic;
SIGNAL \r_data_tx[5]~input_o\ : std_logic;
SIGNAL \r_data_tx[4]~input_o\ : std_logic;
SIGNAL \r_data_tx[0]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~25_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \r_data_tx_int~26_combout\ : std_logic;
SIGNAL \r_data_tx[1]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~24_combout\ : std_logic;
SIGNAL \r_data_tx_int[23]~1_combout\ : std_logic;
SIGNAL \r_data_tx_int[23]~2_combout\ : std_logic;
SIGNAL \r_data_tx[2]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~23_combout\ : std_logic;
SIGNAL \r_data_tx[3]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~22_combout\ : std_logic;
SIGNAL \r_data_tx_int~21_combout\ : std_logic;
SIGNAL \r_data_tx_int~20_combout\ : std_logic;
SIGNAL \r_data_tx_int~19_combout\ : std_logic;
SIGNAL \r_data_tx_int~18_combout\ : std_logic;
SIGNAL \r_data_tx_int~17_combout\ : std_logic;
SIGNAL \r_data_tx[9]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~16_combout\ : std_logic;
SIGNAL \r_data_tx[10]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~15_combout\ : std_logic;
SIGNAL \r_data_tx[11]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~14_combout\ : std_logic;
SIGNAL \r_data_tx_int~13_combout\ : std_logic;
SIGNAL \r_data_tx_int~12_combout\ : std_logic;
SIGNAL \r_data_tx_int~11_combout\ : std_logic;
SIGNAL \r_data_tx[15]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~10_combout\ : std_logic;
SIGNAL \r_data_tx[16]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~9_combout\ : std_logic;
SIGNAL \r_data_tx[17]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~8_combout\ : std_logic;
SIGNAL \r_data_tx[18]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~7_combout\ : std_logic;
SIGNAL \r_data_tx[19]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~6_combout\ : std_logic;
SIGNAL \r_data_tx[20]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~5_combout\ : std_logic;
SIGNAL \r_data_tx_int~4_combout\ : std_logic;
SIGNAL \r_data_tx[22]~input_o\ : std_logic;
SIGNAL \r_data_tx_int~3_combout\ : std_logic;
SIGNAL \r_data_tx_int~0_combout\ : std_logic;
SIGNAL \l_data_tx[23]~input_o\ : std_logic;
SIGNAL \l_data_tx[22]~input_o\ : std_logic;
SIGNAL \l_data_tx[21]~input_o\ : std_logic;
SIGNAL \l_data_tx[19]~input_o\ : std_logic;
SIGNAL \l_data_tx[18]~input_o\ : std_logic;
SIGNAL \l_data_tx[15]~input_o\ : std_logic;
SIGNAL \l_data_tx[12]~input_o\ : std_logic;
SIGNAL \l_data_tx[8]~input_o\ : std_logic;
SIGNAL \l_data_tx[6]~input_o\ : std_logic;
SIGNAL \l_data_tx[2]~input_o\ : std_logic;
SIGNAL \l_data_tx[1]~input_o\ : std_logic;
SIGNAL \l_data_tx[0]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~24_combout\ : std_logic;
SIGNAL \l_data_tx_int~25_combout\ : std_logic;
SIGNAL \l_data_tx_int~23_combout\ : std_logic;
SIGNAL \l_data_tx_int[23]~1_combout\ : std_logic;
SIGNAL \l_data_tx_int~22_combout\ : std_logic;
SIGNAL \l_data_tx[3]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~21_combout\ : std_logic;
SIGNAL \l_data_tx[4]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~20_combout\ : std_logic;
SIGNAL \l_data_tx[5]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~19_combout\ : std_logic;
SIGNAL \l_data_tx_int~18_combout\ : std_logic;
SIGNAL \l_data_tx[7]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~17_combout\ : std_logic;
SIGNAL \l_data_tx_int~16_combout\ : std_logic;
SIGNAL \l_data_tx[9]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~15_combout\ : std_logic;
SIGNAL \l_data_tx[10]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~14_combout\ : std_logic;
SIGNAL \l_data_tx[11]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~13_combout\ : std_logic;
SIGNAL \l_data_tx_int~12_combout\ : std_logic;
SIGNAL \l_data_tx[13]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~11_combout\ : std_logic;
SIGNAL \l_data_tx[14]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~10_combout\ : std_logic;
SIGNAL \l_data_tx_int~9_combout\ : std_logic;
SIGNAL \l_data_tx[16]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~8_combout\ : std_logic;
SIGNAL \l_data_tx[17]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~7_combout\ : std_logic;
SIGNAL \l_data_tx_int~6_combout\ : std_logic;
SIGNAL \l_data_tx_int~5_combout\ : std_logic;
SIGNAL \l_data_tx[20]~input_o\ : std_logic;
SIGNAL \l_data_tx_int~4_combout\ : std_logic;
SIGNAL \l_data_tx_int~3_combout\ : std_logic;
SIGNAL \l_data_tx_int~2_combout\ : std_logic;
SIGNAL \l_data_tx_int~0_combout\ : std_logic;
SIGNAL \sd_tx~0_combout\ : std_logic;
SIGNAL \r_data_rx_int[0]~0_combout\ : std_logic;
SIGNAL \sd_tx~1_combout\ : std_logic;
SIGNAL \sd_tx~reg0_q\ : std_logic;
SIGNAL \sd_rx~input_o\ : std_logic;
SIGNAL \l_data_rx_int[0]~feeder_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \r_data_rx_int[0]~1_combout\ : std_logic;
SIGNAL \l_data_rx_int[0]~0_combout\ : std_logic;
SIGNAL \l_data_rx_int[0]~1_combout\ : std_logic;
SIGNAL \l_data_rx_int[0]~2_combout\ : std_logic;
SIGNAL \l_data_rx[0]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[0]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[1]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[1]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[1]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[2]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[2]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[2]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[3]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[3]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[3]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[4]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[4]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[4]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[5]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[5]~reg0_q\ : std_logic;
SIGNAL \l_data_rx[6]~reg0_q\ : std_logic;
SIGNAL \l_data_rx[7]~reg0_q\ : std_logic;
SIGNAL \l_data_rx[8]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[8]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[9]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[9]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[9]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[10]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[10]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[10]~reg0_q\ : std_logic;
SIGNAL \l_data_rx[11]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[11]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[12]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[12]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[12]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[13]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[13]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[13]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[14]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[14]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[14]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[15]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[15]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[15]~reg0_q\ : std_logic;
SIGNAL \l_data_rx[16]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[16]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[17]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[17]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[17]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[18]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[18]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[18]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[19]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[19]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[19]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[20]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[20]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[20]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[21]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[21]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[21]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[22]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[22]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[22]~reg0_q\ : std_logic;
SIGNAL \l_data_rx_int[23]~feeder_combout\ : std_logic;
SIGNAL \l_data_rx[23]~reg0feeder_combout\ : std_logic;
SIGNAL \l_data_rx[23]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[0]~2_combout\ : std_logic;
SIGNAL \r_data_rx_int[0]~3_combout\ : std_logic;
SIGNAL \r_data_rx[0]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[0]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[1]~feeder_combout\ : std_logic;
SIGNAL \r_data_rx[1]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[1]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[2]~feeder_combout\ : std_logic;
SIGNAL \r_data_rx[2]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[2]~reg0_q\ : std_logic;
SIGNAL \r_data_rx[3]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[3]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[4]~feeder_combout\ : std_logic;
SIGNAL \r_data_rx[4]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[5]~feeder_combout\ : std_logic;
SIGNAL \r_data_rx[5]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[5]~reg0_q\ : std_logic;
SIGNAL \r_data_rx[6]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[6]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[7]~feeder_combout\ : std_logic;
SIGNAL \r_data_rx[7]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[7]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[8]~feeder_combout\ : std_logic;
SIGNAL \r_data_rx[8]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[9]~feeder_combout\ : std_logic;
SIGNAL \r_data_rx[9]~reg0_q\ : std_logic;
SIGNAL \r_data_rx[10]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[10]~reg0_q\ : std_logic;
SIGNAL \r_data_rx[11]~reg0_q\ : std_logic;
SIGNAL \r_data_rx[12]~reg0_q\ : std_logic;
SIGNAL \r_data_rx[13]~reg0_q\ : std_logic;
SIGNAL \r_data_rx[14]~reg0_q\ : std_logic;
SIGNAL \r_data_rx[15]~reg0_q\ : std_logic;
SIGNAL \r_data_rx[16]~reg0_q\ : std_logic;
SIGNAL \r_data_rx[17]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[17]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[18]~feeder_combout\ : std_logic;
SIGNAL \r_data_rx[18]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[18]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[19]~feeder_combout\ : std_logic;
SIGNAL \r_data_rx[19]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[19]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[20]~feeder_combout\ : std_logic;
SIGNAL \r_data_rx[20]~reg0_q\ : std_logic;
SIGNAL \r_data_rx[21]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[22]~feeder_combout\ : std_logic;
SIGNAL \r_data_rx[22]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[22]~reg0_q\ : std_logic;
SIGNAL \r_data_rx_int[23]~feeder_combout\ : std_logic;
SIGNAL \r_data_rx[23]~reg0feeder_combout\ : std_logic;
SIGNAL \r_data_rx[23]~reg0_q\ : std_logic;
SIGNAL ws_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL sclk_cnt : std_logic_vector(31 DOWNTO 0);
SIGNAL r_data_tx_int : std_logic_vector(23 DOWNTO 0);
SIGNAL r_data_rx_int : std_logic_vector(23 DOWNTO 0);
SIGNAL l_data_tx_int : std_logic_vector(23 DOWNTO 0);
SIGNAL l_data_rx_int : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;

BEGIN

ww_reset_n <= reset_n;
ww_mclk <= mclk;
sclk <= ww_sclk;
ws <= ww_ws;
sd_tx <= ww_sd_tx;
ww_sd_rx <= sd_rx;
ww_l_data_tx <= l_data_tx;
ww_r_data_tx <= r_data_tx;
l_data_rx <= ww_l_data_rx;
r_data_rx <= ww_r_data_rx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mclk~input_o\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;

-- Location: IOOBUF_X26_Y29_N23
\sclk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sclk_int~q\,
	devoe => ww_devoe,
	o => \sclk~output_o\);

-- Location: IOOBUF_X35_Y29_N23
\ws~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ws_int~q\,
	devoe => ww_devoe,
	o => \ws~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\sd_tx~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sd_tx~reg0_q\,
	devoe => ww_devoe,
	o => \sd_tx~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\l_data_rx[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[0]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[0]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\l_data_rx[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[1]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\l_data_rx[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[2]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[2]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\l_data_rx[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[3]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[3]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\l_data_rx[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[4]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[4]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\l_data_rx[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[5]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[5]~output_o\);

-- Location: IOOBUF_X41_Y23_N9
\l_data_rx[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[6]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[6]~output_o\);

-- Location: IOOBUF_X41_Y27_N16
\l_data_rx[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[7]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[7]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\l_data_rx[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[8]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[8]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\l_data_rx[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[9]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[9]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\l_data_rx[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[10]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[10]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\l_data_rx[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[11]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[11]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\l_data_rx[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[12]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[12]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\l_data_rx[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[13]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[13]~output_o\);

-- Location: IOOBUF_X39_Y29_N9
\l_data_rx[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[14]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[14]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\l_data_rx[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[15]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[15]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\l_data_rx[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[16]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[16]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\l_data_rx[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[17]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[17]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\l_data_rx[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[18]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[18]~output_o\);

-- Location: IOOBUF_X41_Y26_N23
\l_data_rx[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[19]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[19]~output_o\);

-- Location: IOOBUF_X41_Y25_N23
\l_data_rx[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[20]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[20]~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\l_data_rx[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[21]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[21]~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\l_data_rx[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[22]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[22]~output_o\);

-- Location: IOOBUF_X41_Y26_N16
\l_data_rx[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \l_data_rx[23]~reg0_q\,
	devoe => ww_devoe,
	o => \l_data_rx[23]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\r_data_rx[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[0]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[0]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\r_data_rx[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[1]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[1]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\r_data_rx[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[2]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[2]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\r_data_rx[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[3]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[3]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\r_data_rx[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[4]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\r_data_rx[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[5]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[5]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\r_data_rx[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[6]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\r_data_rx[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[7]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[7]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\r_data_rx[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[8]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[8]~output_o\);

-- Location: IOOBUF_X11_Y29_N30
\r_data_rx[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[9]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[9]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\r_data_rx[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[10]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[10]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\r_data_rx[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[11]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[11]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\r_data_rx[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[12]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[12]~output_o\);

-- Location: IOOBUF_X41_Y26_N9
\r_data_rx[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[13]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[13]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\r_data_rx[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[14]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[14]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\r_data_rx[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[15]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[15]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\r_data_rx[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[16]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[16]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\r_data_rx[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[17]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[17]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\r_data_rx[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[18]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[18]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\r_data_rx[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[19]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[19]~output_o\);

-- Location: IOOBUF_X11_Y29_N23
\r_data_rx[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[20]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[20]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\r_data_rx[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[21]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[21]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\r_data_rx[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[22]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[22]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\r_data_rx[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_data_rx[23]~reg0_q\,
	devoe => ww_devoe,
	o => \r_data_rx[23]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\mclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mclk,
	o => \mclk~input_o\);

-- Location: CLKCTRL_G4
\mclk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mclk~inputclkctrl_outclk\);

-- Location: LCCOMB_X28_Y27_N26
\sclk_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_int~0_combout\ = !\sclk_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sclk_int~q\,
	combout => \sclk_int~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X16_Y19_N0
\sclk_cnt[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[0]~32_combout\ = sclk_cnt(0) $ (VCC)
-- \sclk_cnt[0]~33\ = CARRY(sclk_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(0),
	datad => VCC,
	combout => \sclk_cnt[0]~32_combout\,
	cout => \sclk_cnt[0]~33\);

-- Location: FF_X16_Y19_N1
\sclk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[0]~32_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(0));

-- Location: LCCOMB_X16_Y19_N2
\sclk_cnt[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[1]~34_combout\ = (sclk_cnt(1) & (!\sclk_cnt[0]~33\)) # (!sclk_cnt(1) & ((\sclk_cnt[0]~33\) # (GND)))
-- \sclk_cnt[1]~35\ = CARRY((!\sclk_cnt[0]~33\) # (!sclk_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(1),
	datad => VCC,
	cin => \sclk_cnt[0]~33\,
	combout => \sclk_cnt[1]~34_combout\,
	cout => \sclk_cnt[1]~35\);

-- Location: FF_X16_Y19_N3
\sclk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[1]~34_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(1));

-- Location: LCCOMB_X16_Y19_N4
\sclk_cnt[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[2]~36_combout\ = (sclk_cnt(2) & (\sclk_cnt[1]~35\ $ (GND))) # (!sclk_cnt(2) & (!\sclk_cnt[1]~35\ & VCC))
-- \sclk_cnt[2]~37\ = CARRY((sclk_cnt(2) & !\sclk_cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(2),
	datad => VCC,
	cin => \sclk_cnt[1]~35\,
	combout => \sclk_cnt[2]~36_combout\,
	cout => \sclk_cnt[2]~37\);

-- Location: FF_X16_Y19_N5
\sclk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[2]~36_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(2));

-- Location: LCCOMB_X16_Y19_N6
\sclk_cnt[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[3]~38_combout\ = (sclk_cnt(3) & (!\sclk_cnt[2]~37\)) # (!sclk_cnt(3) & ((\sclk_cnt[2]~37\) # (GND)))
-- \sclk_cnt[3]~39\ = CARRY((!\sclk_cnt[2]~37\) # (!sclk_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(3),
	datad => VCC,
	cin => \sclk_cnt[2]~37\,
	combout => \sclk_cnt[3]~38_combout\,
	cout => \sclk_cnt[3]~39\);

-- Location: FF_X16_Y19_N7
\sclk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[3]~38_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(3));

-- Location: LCCOMB_X16_Y19_N8
\sclk_cnt[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[4]~40_combout\ = (sclk_cnt(4) & (\sclk_cnt[3]~39\ $ (GND))) # (!sclk_cnt(4) & (!\sclk_cnt[3]~39\ & VCC))
-- \sclk_cnt[4]~41\ = CARRY((sclk_cnt(4) & !\sclk_cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(4),
	datad => VCC,
	cin => \sclk_cnt[3]~39\,
	combout => \sclk_cnt[4]~40_combout\,
	cout => \sclk_cnt[4]~41\);

-- Location: FF_X16_Y19_N9
\sclk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[4]~40_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(4));

-- Location: LCCOMB_X16_Y19_N10
\sclk_cnt[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[5]~42_combout\ = (sclk_cnt(5) & (!\sclk_cnt[4]~41\)) # (!sclk_cnt(5) & ((\sclk_cnt[4]~41\) # (GND)))
-- \sclk_cnt[5]~43\ = CARRY((!\sclk_cnt[4]~41\) # (!sclk_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(5),
	datad => VCC,
	cin => \sclk_cnt[4]~41\,
	combout => \sclk_cnt[5]~42_combout\,
	cout => \sclk_cnt[5]~43\);

-- Location: FF_X16_Y19_N11
\sclk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[5]~42_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(5));

-- Location: LCCOMB_X16_Y19_N12
\sclk_cnt[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[6]~44_combout\ = (sclk_cnt(6) & (\sclk_cnt[5]~43\ $ (GND))) # (!sclk_cnt(6) & (!\sclk_cnt[5]~43\ & VCC))
-- \sclk_cnt[6]~45\ = CARRY((sclk_cnt(6) & !\sclk_cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(6),
	datad => VCC,
	cin => \sclk_cnt[5]~43\,
	combout => \sclk_cnt[6]~44_combout\,
	cout => \sclk_cnt[6]~45\);

-- Location: FF_X16_Y19_N13
\sclk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[6]~44_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(6));

-- Location: LCCOMB_X16_Y19_N14
\sclk_cnt[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[7]~46_combout\ = (sclk_cnt(7) & (!\sclk_cnt[6]~45\)) # (!sclk_cnt(7) & ((\sclk_cnt[6]~45\) # (GND)))
-- \sclk_cnt[7]~47\ = CARRY((!\sclk_cnt[6]~45\) # (!sclk_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(7),
	datad => VCC,
	cin => \sclk_cnt[6]~45\,
	combout => \sclk_cnt[7]~46_combout\,
	cout => \sclk_cnt[7]~47\);

-- Location: FF_X16_Y19_N15
\sclk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[7]~46_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(7));

-- Location: LCCOMB_X16_Y19_N16
\sclk_cnt[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[8]~48_combout\ = (sclk_cnt(8) & (\sclk_cnt[7]~47\ $ (GND))) # (!sclk_cnt(8) & (!\sclk_cnt[7]~47\ & VCC))
-- \sclk_cnt[8]~49\ = CARRY((sclk_cnt(8) & !\sclk_cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(8),
	datad => VCC,
	cin => \sclk_cnt[7]~47\,
	combout => \sclk_cnt[8]~48_combout\,
	cout => \sclk_cnt[8]~49\);

-- Location: FF_X16_Y19_N17
\sclk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[8]~48_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(8));

-- Location: LCCOMB_X16_Y19_N18
\sclk_cnt[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[9]~50_combout\ = (sclk_cnt(9) & (!\sclk_cnt[8]~49\)) # (!sclk_cnt(9) & ((\sclk_cnt[8]~49\) # (GND)))
-- \sclk_cnt[9]~51\ = CARRY((!\sclk_cnt[8]~49\) # (!sclk_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(9),
	datad => VCC,
	cin => \sclk_cnt[8]~49\,
	combout => \sclk_cnt[9]~50_combout\,
	cout => \sclk_cnt[9]~51\);

-- Location: FF_X16_Y19_N19
\sclk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[9]~50_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(9));

-- Location: LCCOMB_X16_Y19_N20
\sclk_cnt[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[10]~52_combout\ = (sclk_cnt(10) & (\sclk_cnt[9]~51\ $ (GND))) # (!sclk_cnt(10) & (!\sclk_cnt[9]~51\ & VCC))
-- \sclk_cnt[10]~53\ = CARRY((sclk_cnt(10) & !\sclk_cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(10),
	datad => VCC,
	cin => \sclk_cnt[9]~51\,
	combout => \sclk_cnt[10]~52_combout\,
	cout => \sclk_cnt[10]~53\);

-- Location: FF_X16_Y19_N21
\sclk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[10]~52_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(10));

-- Location: LCCOMB_X16_Y19_N22
\sclk_cnt[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[11]~54_combout\ = (sclk_cnt(11) & (!\sclk_cnt[10]~53\)) # (!sclk_cnt(11) & ((\sclk_cnt[10]~53\) # (GND)))
-- \sclk_cnt[11]~55\ = CARRY((!\sclk_cnt[10]~53\) # (!sclk_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(11),
	datad => VCC,
	cin => \sclk_cnt[10]~53\,
	combout => \sclk_cnt[11]~54_combout\,
	cout => \sclk_cnt[11]~55\);

-- Location: FF_X16_Y19_N23
\sclk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[11]~54_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(11));

-- Location: LCCOMB_X16_Y19_N24
\sclk_cnt[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[12]~56_combout\ = (sclk_cnt(12) & (\sclk_cnt[11]~55\ $ (GND))) # (!sclk_cnt(12) & (!\sclk_cnt[11]~55\ & VCC))
-- \sclk_cnt[12]~57\ = CARRY((sclk_cnt(12) & !\sclk_cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(12),
	datad => VCC,
	cin => \sclk_cnt[11]~55\,
	combout => \sclk_cnt[12]~56_combout\,
	cout => \sclk_cnt[12]~57\);

-- Location: FF_X16_Y19_N25
\sclk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[12]~56_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(12));

-- Location: LCCOMB_X16_Y19_N26
\sclk_cnt[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[13]~58_combout\ = (sclk_cnt(13) & (!\sclk_cnt[12]~57\)) # (!sclk_cnt(13) & ((\sclk_cnt[12]~57\) # (GND)))
-- \sclk_cnt[13]~59\ = CARRY((!\sclk_cnt[12]~57\) # (!sclk_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(13),
	datad => VCC,
	cin => \sclk_cnt[12]~57\,
	combout => \sclk_cnt[13]~58_combout\,
	cout => \sclk_cnt[13]~59\);

-- Location: FF_X16_Y19_N27
\sclk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[13]~58_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(13));

-- Location: LCCOMB_X16_Y19_N28
\sclk_cnt[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[14]~60_combout\ = (sclk_cnt(14) & (\sclk_cnt[13]~59\ $ (GND))) # (!sclk_cnt(14) & (!\sclk_cnt[13]~59\ & VCC))
-- \sclk_cnt[14]~61\ = CARRY((sclk_cnt(14) & !\sclk_cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(14),
	datad => VCC,
	cin => \sclk_cnt[13]~59\,
	combout => \sclk_cnt[14]~60_combout\,
	cout => \sclk_cnt[14]~61\);

-- Location: FF_X16_Y19_N29
\sclk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[14]~60_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(14));

-- Location: LCCOMB_X16_Y19_N30
\sclk_cnt[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[15]~62_combout\ = (sclk_cnt(15) & (!\sclk_cnt[14]~61\)) # (!sclk_cnt(15) & ((\sclk_cnt[14]~61\) # (GND)))
-- \sclk_cnt[15]~63\ = CARRY((!\sclk_cnt[14]~61\) # (!sclk_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(15),
	datad => VCC,
	cin => \sclk_cnt[14]~61\,
	combout => \sclk_cnt[15]~62_combout\,
	cout => \sclk_cnt[15]~63\);

-- Location: FF_X16_Y19_N31
\sclk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[15]~62_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(15));

-- Location: LCCOMB_X16_Y18_N0
\sclk_cnt[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[16]~64_combout\ = (sclk_cnt(16) & (\sclk_cnt[15]~63\ $ (GND))) # (!sclk_cnt(16) & (!\sclk_cnt[15]~63\ & VCC))
-- \sclk_cnt[16]~65\ = CARRY((sclk_cnt(16) & !\sclk_cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(16),
	datad => VCC,
	cin => \sclk_cnt[15]~63\,
	combout => \sclk_cnt[16]~64_combout\,
	cout => \sclk_cnt[16]~65\);

-- Location: FF_X16_Y18_N1
\sclk_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[16]~64_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(16));

-- Location: LCCOMB_X16_Y18_N2
\sclk_cnt[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[17]~66_combout\ = (sclk_cnt(17) & (!\sclk_cnt[16]~65\)) # (!sclk_cnt(17) & ((\sclk_cnt[16]~65\) # (GND)))
-- \sclk_cnt[17]~67\ = CARRY((!\sclk_cnt[16]~65\) # (!sclk_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(17),
	datad => VCC,
	cin => \sclk_cnt[16]~65\,
	combout => \sclk_cnt[17]~66_combout\,
	cout => \sclk_cnt[17]~67\);

-- Location: FF_X16_Y18_N3
\sclk_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[17]~66_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(17));

-- Location: LCCOMB_X16_Y18_N4
\sclk_cnt[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[18]~68_combout\ = (sclk_cnt(18) & (\sclk_cnt[17]~67\ $ (GND))) # (!sclk_cnt(18) & (!\sclk_cnt[17]~67\ & VCC))
-- \sclk_cnt[18]~69\ = CARRY((sclk_cnt(18) & !\sclk_cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(18),
	datad => VCC,
	cin => \sclk_cnt[17]~67\,
	combout => \sclk_cnt[18]~68_combout\,
	cout => \sclk_cnt[18]~69\);

-- Location: FF_X16_Y18_N5
\sclk_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[18]~68_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(18));

-- Location: LCCOMB_X16_Y18_N6
\sclk_cnt[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[19]~70_combout\ = (sclk_cnt(19) & (!\sclk_cnt[18]~69\)) # (!sclk_cnt(19) & ((\sclk_cnt[18]~69\) # (GND)))
-- \sclk_cnt[19]~71\ = CARRY((!\sclk_cnt[18]~69\) # (!sclk_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(19),
	datad => VCC,
	cin => \sclk_cnt[18]~69\,
	combout => \sclk_cnt[19]~70_combout\,
	cout => \sclk_cnt[19]~71\);

-- Location: FF_X16_Y18_N7
\sclk_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[19]~70_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(19));

-- Location: LCCOMB_X16_Y18_N8
\sclk_cnt[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[20]~72_combout\ = (sclk_cnt(20) & (\sclk_cnt[19]~71\ $ (GND))) # (!sclk_cnt(20) & (!\sclk_cnt[19]~71\ & VCC))
-- \sclk_cnt[20]~73\ = CARRY((sclk_cnt(20) & !\sclk_cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(20),
	datad => VCC,
	cin => \sclk_cnt[19]~71\,
	combout => \sclk_cnt[20]~72_combout\,
	cout => \sclk_cnt[20]~73\);

-- Location: FF_X16_Y18_N9
\sclk_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[20]~72_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(20));

-- Location: LCCOMB_X16_Y18_N10
\sclk_cnt[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[21]~74_combout\ = (sclk_cnt(21) & (!\sclk_cnt[20]~73\)) # (!sclk_cnt(21) & ((\sclk_cnt[20]~73\) # (GND)))
-- \sclk_cnt[21]~75\ = CARRY((!\sclk_cnt[20]~73\) # (!sclk_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(21),
	datad => VCC,
	cin => \sclk_cnt[20]~73\,
	combout => \sclk_cnt[21]~74_combout\,
	cout => \sclk_cnt[21]~75\);

-- Location: FF_X16_Y18_N11
\sclk_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[21]~74_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(21));

-- Location: LCCOMB_X16_Y18_N12
\sclk_cnt[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[22]~76_combout\ = (sclk_cnt(22) & (\sclk_cnt[21]~75\ $ (GND))) # (!sclk_cnt(22) & (!\sclk_cnt[21]~75\ & VCC))
-- \sclk_cnt[22]~77\ = CARRY((sclk_cnt(22) & !\sclk_cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(22),
	datad => VCC,
	cin => \sclk_cnt[21]~75\,
	combout => \sclk_cnt[22]~76_combout\,
	cout => \sclk_cnt[22]~77\);

-- Location: FF_X16_Y18_N13
\sclk_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[22]~76_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(22));

-- Location: LCCOMB_X16_Y18_N14
\sclk_cnt[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[23]~78_combout\ = (sclk_cnt(23) & (!\sclk_cnt[22]~77\)) # (!sclk_cnt(23) & ((\sclk_cnt[22]~77\) # (GND)))
-- \sclk_cnt[23]~79\ = CARRY((!\sclk_cnt[22]~77\) # (!sclk_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(23),
	datad => VCC,
	cin => \sclk_cnt[22]~77\,
	combout => \sclk_cnt[23]~78_combout\,
	cout => \sclk_cnt[23]~79\);

-- Location: FF_X16_Y18_N15
\sclk_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[23]~78_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(23));

-- Location: LCCOMB_X16_Y18_N16
\sclk_cnt[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[24]~80_combout\ = (sclk_cnt(24) & (\sclk_cnt[23]~79\ $ (GND))) # (!sclk_cnt(24) & (!\sclk_cnt[23]~79\ & VCC))
-- \sclk_cnt[24]~81\ = CARRY((sclk_cnt(24) & !\sclk_cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(24),
	datad => VCC,
	cin => \sclk_cnt[23]~79\,
	combout => \sclk_cnt[24]~80_combout\,
	cout => \sclk_cnt[24]~81\);

-- Location: FF_X16_Y18_N17
\sclk_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[24]~80_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(24));

-- Location: LCCOMB_X16_Y18_N18
\sclk_cnt[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[25]~82_combout\ = (sclk_cnt(25) & (!\sclk_cnt[24]~81\)) # (!sclk_cnt(25) & ((\sclk_cnt[24]~81\) # (GND)))
-- \sclk_cnt[25]~83\ = CARRY((!\sclk_cnt[24]~81\) # (!sclk_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(25),
	datad => VCC,
	cin => \sclk_cnt[24]~81\,
	combout => \sclk_cnt[25]~82_combout\,
	cout => \sclk_cnt[25]~83\);

-- Location: FF_X16_Y18_N19
\sclk_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[25]~82_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(25));

-- Location: LCCOMB_X16_Y18_N20
\sclk_cnt[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[26]~84_combout\ = (sclk_cnt(26) & (\sclk_cnt[25]~83\ $ (GND))) # (!sclk_cnt(26) & (!\sclk_cnt[25]~83\ & VCC))
-- \sclk_cnt[26]~85\ = CARRY((sclk_cnt(26) & !\sclk_cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(26),
	datad => VCC,
	cin => \sclk_cnt[25]~83\,
	combout => \sclk_cnt[26]~84_combout\,
	cout => \sclk_cnt[26]~85\);

-- Location: FF_X16_Y18_N21
\sclk_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[26]~84_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(26));

-- Location: LCCOMB_X16_Y18_N22
\sclk_cnt[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[27]~86_combout\ = (sclk_cnt(27) & (!\sclk_cnt[26]~85\)) # (!sclk_cnt(27) & ((\sclk_cnt[26]~85\) # (GND)))
-- \sclk_cnt[27]~87\ = CARRY((!\sclk_cnt[26]~85\) # (!sclk_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(27),
	datad => VCC,
	cin => \sclk_cnt[26]~85\,
	combout => \sclk_cnt[27]~86_combout\,
	cout => \sclk_cnt[27]~87\);

-- Location: FF_X16_Y18_N23
\sclk_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[27]~86_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(27));

-- Location: LCCOMB_X16_Y18_N24
\sclk_cnt[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[28]~88_combout\ = (sclk_cnt(28) & (\sclk_cnt[27]~87\ $ (GND))) # (!sclk_cnt(28) & (!\sclk_cnt[27]~87\ & VCC))
-- \sclk_cnt[28]~89\ = CARRY((sclk_cnt(28) & !\sclk_cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(28),
	datad => VCC,
	cin => \sclk_cnt[27]~87\,
	combout => \sclk_cnt[28]~88_combout\,
	cout => \sclk_cnt[28]~89\);

-- Location: FF_X16_Y18_N25
\sclk_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[28]~88_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(28));

-- Location: LCCOMB_X16_Y18_N26
\sclk_cnt[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[29]~90_combout\ = (sclk_cnt(29) & (!\sclk_cnt[28]~89\)) # (!sclk_cnt(29) & ((\sclk_cnt[28]~89\) # (GND)))
-- \sclk_cnt[29]~91\ = CARRY((!\sclk_cnt[28]~89\) # (!sclk_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(29),
	datad => VCC,
	cin => \sclk_cnt[28]~89\,
	combout => \sclk_cnt[29]~90_combout\,
	cout => \sclk_cnt[29]~91\);

-- Location: FF_X16_Y18_N27
\sclk_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[29]~90_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(29));

-- Location: LCCOMB_X16_Y18_N28
\sclk_cnt[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[30]~92_combout\ = (sclk_cnt(30) & (\sclk_cnt[29]~91\ $ (GND))) # (!sclk_cnt(30) & (!\sclk_cnt[29]~91\ & VCC))
-- \sclk_cnt[30]~93\ = CARRY((sclk_cnt(30) & !\sclk_cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sclk_cnt(30),
	datad => VCC,
	cin => \sclk_cnt[29]~91\,
	combout => \sclk_cnt[30]~92_combout\,
	cout => \sclk_cnt[30]~93\);

-- Location: FF_X16_Y18_N29
\sclk_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[30]~92_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(30));

-- Location: LCCOMB_X16_Y18_N30
\sclk_cnt[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sclk_cnt[31]~94_combout\ = sclk_cnt(31) $ (\sclk_cnt[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(31),
	cin => \sclk_cnt[30]~93\,
	combout => \sclk_cnt[31]~94_combout\);

-- Location: FF_X16_Y18_N31
\sclk_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sclk_cnt[31]~94_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sclk_cnt(31));

-- Location: LCCOMB_X17_Y19_N22
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!sclk_cnt(6) & (!sclk_cnt(5) & (!sclk_cnt(4) & !sclk_cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(6),
	datab => sclk_cnt(5),
	datac => sclk_cnt(4),
	datad => sclk_cnt(7),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y19_N28
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!sclk_cnt(0) & (!sclk_cnt(2) & (!sclk_cnt(3) & !sclk_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(0),
	datab => sclk_cnt(2),
	datac => sclk_cnt(3),
	datad => sclk_cnt(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y19_N26
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!sclk_cnt(13) & (!sclk_cnt(14) & (!sclk_cnt(12) & !sclk_cnt(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(13),
	datab => sclk_cnt(14),
	datac => sclk_cnt(12),
	datad => sclk_cnt(15),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X17_Y19_N20
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!sclk_cnt(8) & (!sclk_cnt(11) & (!sclk_cnt(9) & !sclk_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(8),
	datab => sclk_cnt(11),
	datac => sclk_cnt(9),
	datad => sclk_cnt(10),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y19_N4
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\ & (\LessThan0~0_combout\ & (\LessThan0~3_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X17_Y19_N24
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!sclk_cnt(24) & (!sclk_cnt(27) & (!sclk_cnt(25) & !sclk_cnt(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(24),
	datab => sclk_cnt(27),
	datac => sclk_cnt(25),
	datad => sclk_cnt(26),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X17_Y19_N30
\LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!sclk_cnt(28) & (!sclk_cnt(30) & (!sclk_cnt(29) & \LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(28),
	datab => sclk_cnt(30),
	datac => sclk_cnt(29),
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X17_Y19_N8
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!sclk_cnt(21) & !sclk_cnt(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sclk_cnt(21),
	datad => sclk_cnt(20),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X17_Y19_N2
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!sclk_cnt(16) & (!sclk_cnt(18) & (!sclk_cnt(17) & !sclk_cnt(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(16),
	datab => sclk_cnt(18),
	datac => sclk_cnt(17),
	datad => sclk_cnt(19),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X17_Y19_N18
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!sclk_cnt(23) & (!sclk_cnt(22) & (\LessThan0~6_combout\ & \LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(23),
	datab => sclk_cnt(22),
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X17_Y19_N12
\LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (sclk_cnt(31)) # ((\LessThan0~4_combout\ & (\LessThan0~9_combout\ & \LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sclk_cnt(31),
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~9_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~10_combout\);

-- Location: FF_X29_Y27_N13
sclk_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \sclk_int~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sclk_int~q\);

-- Location: LCCOMB_X24_Y27_N24
\ws_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_int~0_combout\ = !\ws_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ws_int~q\,
	combout => \ws_int~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ws_cnt(0) $ (VCC)
-- \Add1~1\ = CARRY(ws_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X26_Y28_N26
\ws_cnt~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~14_combout\ = (\LessThan1~10_combout\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datac => \Add1~0_combout\,
	combout => \ws_cnt~14_combout\);

-- Location: FF_X27_Y28_N1
\ws_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(0));

-- Location: LCCOMB_X27_Y28_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (ws_cnt(1) & (!\Add1~1\)) # (!ws_cnt(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!ws_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X26_Y28_N4
\ws_cnt~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~13_combout\ = (\LessThan1~10_combout\ & \Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datac => \Add1~2_combout\,
	combout => \ws_cnt~13_combout\);

-- Location: FF_X27_Y28_N27
\ws_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~13_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(1));

-- Location: LCCOMB_X27_Y28_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (ws_cnt(2) & (\Add1~3\ $ (GND))) # (!ws_cnt(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((ws_cnt(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X26_Y28_N10
\ws_cnt~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~12_combout\ = (\LessThan1~10_combout\ & \Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~10_combout\,
	datad => \Add1~4_combout\,
	combout => \ws_cnt~12_combout\);

-- Location: FF_X27_Y28_N31
\ws_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(2));

-- Location: LCCOMB_X27_Y28_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (ws_cnt(3) & (!\Add1~5\)) # (!ws_cnt(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!ws_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X26_Y28_N0
\ws_cnt~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~11_combout\ = (\Add1~6_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datac => \LessThan1~10_combout\,
	combout => \ws_cnt~11_combout\);

-- Location: FF_X27_Y28_N3
\ws_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~11_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(3));

-- Location: LCCOMB_X27_Y28_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (ws_cnt(4) & (\Add1~7\ $ (GND))) # (!ws_cnt(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((ws_cnt(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X26_Y28_N6
\ws_cnt~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~10_combout\ = (\LessThan1~10_combout\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datac => \Add1~8_combout\,
	combout => \ws_cnt~10_combout\);

-- Location: FF_X26_Y28_N7
\ws_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(4));

-- Location: LCCOMB_X27_Y28_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (ws_cnt(5) & (!\Add1~9\)) # (!ws_cnt(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!ws_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X26_Y28_N14
\ws_cnt~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~9_combout\ = (\LessThan1~10_combout\ & \Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~10_combout\,
	datad => \Add1~10_combout\,
	combout => \ws_cnt~9_combout\);

-- Location: FF_X27_Y28_N19
\ws_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~9_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(5));

-- Location: LCCOMB_X27_Y28_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (ws_cnt(6) & (\Add1~11\ $ (GND))) # (!ws_cnt(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((ws_cnt(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X26_Y28_N2
\ws_cnt~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~31_combout\ = (\LessThan1~10_combout\ & \Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datac => \Add1~12_combout\,
	combout => \ws_cnt~31_combout\);

-- Location: FF_X27_Y28_N11
\ws_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~31_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(6));

-- Location: LCCOMB_X27_Y28_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (ws_cnt(7) & (!\Add1~13\)) # (!ws_cnt(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!ws_cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X26_Y28_N16
\ws_cnt~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~30_combout\ = (\LessThan1~10_combout\ & \Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datad => \Add1~14_combout\,
	combout => \ws_cnt~30_combout\);

-- Location: FF_X27_Y28_N25
\ws_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~30_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(7));

-- Location: LCCOMB_X27_Y28_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (ws_cnt(8) & (\Add1~15\ $ (GND))) # (!ws_cnt(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((ws_cnt(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X28_Y28_N12
\ws_cnt~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~29_combout\ = (\Add1~16_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datad => \LessThan1~10_combout\,
	combout => \ws_cnt~29_combout\);

-- Location: FF_X27_Y28_N15
\ws_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~29_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(8));

-- Location: LCCOMB_X27_Y28_N18
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (ws_cnt(9) & (!\Add1~17\)) # (!ws_cnt(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!ws_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X26_Y28_N12
\ws_cnt~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~28_combout\ = (\Add1~18_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datad => \LessThan1~10_combout\,
	combout => \ws_cnt~28_combout\);

-- Location: FF_X27_Y28_N29
\ws_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~28_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(9));

-- Location: LCCOMB_X27_Y28_N20
\Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (ws_cnt(10) & (\Add1~19\ $ (GND))) # (!ws_cnt(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((ws_cnt(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X26_Y28_N18
\ws_cnt~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~27_combout\ = (\LessThan1~10_combout\ & \Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datac => \Add1~20_combout\,
	combout => \ws_cnt~27_combout\);

-- Location: FF_X27_Y28_N23
\ws_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~27_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(10));

-- Location: LCCOMB_X27_Y28_N22
\Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (ws_cnt(11) & (!\Add1~21\)) # (!ws_cnt(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!ws_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X29_Y28_N26
\ws_cnt~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~26_combout\ = (\LessThan1~10_combout\ & \Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datad => \Add1~22_combout\,
	combout => \ws_cnt~26_combout\);

-- Location: FF_X27_Y28_N5
\ws_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~26_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(11));

-- Location: LCCOMB_X27_Y28_N24
\Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (ws_cnt(12) & (\Add1~23\ $ (GND))) # (!ws_cnt(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((ws_cnt(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X28_Y28_N22
\ws_cnt~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~25_combout\ = (\LessThan1~10_combout\ & \Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~10_combout\,
	datad => \Add1~24_combout\,
	combout => \ws_cnt~25_combout\);

-- Location: FF_X28_Y28_N23
\ws_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~25_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(12));

-- Location: LCCOMB_X27_Y28_N26
\Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (ws_cnt(13) & (!\Add1~25\)) # (!ws_cnt(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!ws_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X28_Y28_N24
\ws_cnt~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~24_combout\ = (\Add1~26_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~26_combout\,
	datad => \LessThan1~10_combout\,
	combout => \ws_cnt~24_combout\);

-- Location: FF_X28_Y28_N25
\ws_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~24_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(13));

-- Location: LCCOMB_X27_Y28_N28
\Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (ws_cnt(14) & (\Add1~27\ $ (GND))) # (!ws_cnt(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((ws_cnt(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X28_Y28_N10
\ws_cnt~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~23_combout\ = (\Add1~28_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~28_combout\,
	datad => \LessThan1~10_combout\,
	combout => \ws_cnt~23_combout\);

-- Location: FF_X28_Y28_N11
\ws_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~23_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(14));

-- Location: LCCOMB_X27_Y28_N30
\Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (ws_cnt(15) & (!\Add1~29\)) # (!ws_cnt(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!ws_cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X26_Y28_N8
\ws_cnt~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~22_combout\ = (\Add1~30_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datac => \LessThan1~10_combout\,
	combout => \ws_cnt~22_combout\);

-- Location: FF_X27_Y28_N17
\ws_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(15));

-- Location: LCCOMB_X27_Y27_N0
\Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (ws_cnt(16) & (\Add1~31\ $ (GND))) # (!ws_cnt(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((ws_cnt(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X28_Y28_N6
\ws_cnt~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~21_combout\ = (\Add1~32_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~32_combout\,
	datad => \LessThan1~10_combout\,
	combout => \ws_cnt~21_combout\);

-- Location: FF_X28_Y28_N7
\ws_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~21_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(16));

-- Location: LCCOMB_X27_Y27_N2
\Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (ws_cnt(17) & (!\Add1~33\)) # (!ws_cnt(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!ws_cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X29_Y28_N0
\ws_cnt~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~20_combout\ = (\Add1~34_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datad => \LessThan1~10_combout\,
	combout => \ws_cnt~20_combout\);

-- Location: FF_X28_Y28_N13
\ws_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \ws_cnt~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(17));

-- Location: LCCOMB_X27_Y27_N4
\Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (ws_cnt(18) & (\Add1~35\ $ (GND))) # (!ws_cnt(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((ws_cnt(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X28_Y28_N18
\ws_cnt~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~19_combout\ = (\LessThan1~10_combout\ & \Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~10_combout\,
	datad => \Add1~36_combout\,
	combout => \ws_cnt~19_combout\);

-- Location: FF_X28_Y28_N19
\ws_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~19_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(18));

-- Location: LCCOMB_X27_Y27_N6
\Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (ws_cnt(19) & (!\Add1~37\)) # (!ws_cnt(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!ws_cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X26_Y27_N12
\ws_cnt~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~18_combout\ = (\Add1~38_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~38_combout\,
	datac => \LessThan1~10_combout\,
	combout => \ws_cnt~18_combout\);

-- Location: FF_X26_Y27_N13
\ws_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(19));

-- Location: LCCOMB_X27_Y27_N8
\Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (ws_cnt(20) & (\Add1~39\ $ (GND))) # (!ws_cnt(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((ws_cnt(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X26_Y27_N2
\ws_cnt~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~17_combout\ = (\LessThan1~10_combout\ & \Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~10_combout\,
	datad => \Add1~40_combout\,
	combout => \ws_cnt~17_combout\);

-- Location: FF_X26_Y27_N3
\ws_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~17_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(20));

-- Location: LCCOMB_X27_Y27_N10
\Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (ws_cnt(21) & (!\Add1~41\)) # (!ws_cnt(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!ws_cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X26_Y27_N20
\ws_cnt~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~16_combout\ = (\LessThan1~10_combout\ & \Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~10_combout\,
	datad => \Add1~42_combout\,
	combout => \ws_cnt~16_combout\);

-- Location: FF_X26_Y27_N21
\ws_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(21));

-- Location: LCCOMB_X27_Y27_N12
\Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (ws_cnt(22) & (\Add1~43\ $ (GND))) # (!ws_cnt(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((ws_cnt(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X26_Y27_N22
\ws_cnt~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~15_combout\ = (\Add1~44_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datac => \LessThan1~10_combout\,
	combout => \ws_cnt~15_combout\);

-- Location: FF_X26_Y27_N23
\ws_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~15_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(22));

-- Location: LCCOMB_X27_Y27_N14
\Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (ws_cnt(23) & (!\Add1~45\)) # (!ws_cnt(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!ws_cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X26_Y27_N30
\ws_cnt~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~8_combout\ = (\LessThan1~10_combout\ & \Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~10_combout\,
	datad => \Add1~46_combout\,
	combout => \ws_cnt~8_combout\);

-- Location: FF_X26_Y27_N31
\ws_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(23));

-- Location: LCCOMB_X27_Y27_N16
\Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (ws_cnt(24) & (\Add1~47\ $ (GND))) # (!ws_cnt(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((ws_cnt(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X26_Y27_N4
\ws_cnt~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~7_combout\ = (\LessThan1~10_combout\ & \Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~10_combout\,
	datad => \Add1~48_combout\,
	combout => \ws_cnt~7_combout\);

-- Location: FF_X26_Y27_N5
\ws_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~7_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(24));

-- Location: LCCOMB_X27_Y27_N18
\Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (ws_cnt(25) & (!\Add1~49\)) # (!ws_cnt(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!ws_cnt(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: LCCOMB_X26_Y27_N10
\ws_cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~6_combout\ = (\LessThan1~10_combout\ & \Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~10_combout\,
	datad => \Add1~50_combout\,
	combout => \ws_cnt~6_combout\);

-- Location: FF_X26_Y27_N11
\ws_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(25));

-- Location: LCCOMB_X27_Y27_N20
\Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (ws_cnt(26) & (\Add1~51\ $ (GND))) # (!ws_cnt(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((ws_cnt(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: LCCOMB_X26_Y27_N8
\ws_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~5_combout\ = (\LessThan1~10_combout\ & \Add1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan1~10_combout\,
	datad => \Add1~52_combout\,
	combout => \ws_cnt~5_combout\);

-- Location: FF_X26_Y27_N9
\ws_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(26));

-- Location: LCCOMB_X27_Y27_N22
\Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (ws_cnt(27) & (!\Add1~53\)) # (!ws_cnt(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!ws_cnt(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X32_Y27_N18
\ws_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~4_combout\ = (\Add1~54_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~54_combout\,
	datad => \LessThan1~10_combout\,
	combout => \ws_cnt~4_combout\);

-- Location: FF_X32_Y27_N19
\ws_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(27));

-- Location: LCCOMB_X27_Y27_N24
\Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (ws_cnt(28) & (\Add1~55\ $ (GND))) # (!ws_cnt(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((ws_cnt(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: LCCOMB_X32_Y27_N24
\ws_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~3_combout\ = (\Add1~56_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~56_combout\,
	datad => \LessThan1~10_combout\,
	combout => \ws_cnt~3_combout\);

-- Location: FF_X32_Y27_N25
\ws_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(28));

-- Location: LCCOMB_X27_Y27_N26
\Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (ws_cnt(29) & (!\Add1~57\)) # (!ws_cnt(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!ws_cnt(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: LCCOMB_X32_Y27_N14
\ws_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~2_combout\ = (\Add1~58_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~58_combout\,
	datad => \LessThan1~10_combout\,
	combout => \ws_cnt~2_combout\);

-- Location: FF_X32_Y27_N15
\ws_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(29));

-- Location: LCCOMB_X27_Y27_N28
\Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (ws_cnt(30) & (\Add1~59\ $ (GND))) # (!ws_cnt(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((ws_cnt(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ws_cnt(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X32_Y27_N12
\ws_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~1_combout\ = (\LessThan1~10_combout\ & \Add1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~10_combout\,
	datad => \Add1~60_combout\,
	combout => \ws_cnt~1_combout\);

-- Location: FF_X32_Y27_N13
\ws_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(30));

-- Location: LCCOMB_X27_Y27_N30
\Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = \Add1~61\ $ (ws_cnt(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => ws_cnt(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: LCCOMB_X28_Y28_N28
\ws_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ws_cnt~0_combout\ = (\Add1~62_combout\ & \LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~62_combout\,
	datad => \LessThan1~10_combout\,
	combout => \ws_cnt~0_combout\);

-- Location: FF_X28_Y28_N29
\ws_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_cnt~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ws_cnt(31));

-- Location: LCCOMB_X26_Y27_N0
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!ws_cnt(23) & (!ws_cnt(26) & (!ws_cnt(24) & !ws_cnt(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(23),
	datab => ws_cnt(26),
	datac => ws_cnt(24),
	datad => ws_cnt(25),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X26_Y28_N24
\LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((!ws_cnt(2)) # (!ws_cnt(4))) # (!ws_cnt(5))) # (!ws_cnt(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(3),
	datab => ws_cnt(5),
	datac => ws_cnt(4),
	datad => ws_cnt(2),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X28_Y28_N14
\LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!ws_cnt(1)) # (!ws_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(0),
	datac => ws_cnt(1),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X32_Y27_N0
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!ws_cnt(30) & (!ws_cnt(27) & (!ws_cnt(29) & !ws_cnt(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(30),
	datab => ws_cnt(27),
	datac => ws_cnt(29),
	datad => ws_cnt(28),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y28_N4
\LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (\LessThan1~1_combout\ & (\LessThan1~0_combout\ & ((\LessThan1~2_combout\) # (\LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datab => \LessThan1~2_combout\,
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X28_Y28_N26
\LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (!ws_cnt(8) & (!ws_cnt(7) & (!ws_cnt(10) & !ws_cnt(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(8),
	datab => ws_cnt(7),
	datac => ws_cnt(10),
	datad => ws_cnt(9),
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X28_Y28_N0
\LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!ws_cnt(17) & (!ws_cnt(16) & (!ws_cnt(15) & !ws_cnt(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(17),
	datab => ws_cnt(16),
	datac => ws_cnt(15),
	datad => ws_cnt(18),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X26_Y27_N18
\LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!ws_cnt(19) & (!ws_cnt(21) & (!ws_cnt(22) & !ws_cnt(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(19),
	datab => ws_cnt(21),
	datac => ws_cnt(22),
	datad => ws_cnt(20),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X28_Y28_N8
\LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!ws_cnt(14) & (!ws_cnt(13) & (!ws_cnt(11) & !ws_cnt(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(14),
	datab => ws_cnt(13),
	datac => ws_cnt(11),
	datad => ws_cnt(12),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X28_Y28_N20
\LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (\LessThan1~8_combout\ & (\LessThan1~6_combout\ & (\LessThan1~5_combout\ & \LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~8_combout\,
	datab => \LessThan1~6_combout\,
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X28_Y28_N2
\LessThan1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (ws_cnt(31)) # ((!ws_cnt(6) & (\LessThan1~4_combout\ & \LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ws_cnt(6),
	datab => ws_cnt(31),
	datac => \LessThan1~4_combout\,
	datad => \LessThan1~9_combout\,
	combout => \LessThan1~10_combout\);

-- Location: LCCOMB_X28_Y28_N16
\l_data_rx[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[10]~0_combout\ = (!\LessThan1~10_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~10_combout\,
	datad => \LessThan0~10_combout\,
	combout => \l_data_rx[10]~0_combout\);

-- Location: FF_X24_Y27_N25
ws_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \ws_int~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ws_int~q\);

-- Location: IOIBUF_X30_Y29_N15
\r_data_tx[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(23),
	o => \r_data_tx[23]~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\r_data_tx[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(21),
	o => \r_data_tx[21]~input_o\);

-- Location: IOIBUF_X9_Y29_N29
\r_data_tx[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(14),
	o => \r_data_tx[14]~input_o\);

-- Location: IOIBUF_X7_Y29_N29
\r_data_tx[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(13),
	o => \r_data_tx[13]~input_o\);

-- Location: IOIBUF_X23_Y29_N22
\r_data_tx[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(12),
	o => \r_data_tx[12]~input_o\);

-- Location: IOIBUF_X9_Y29_N1
\r_data_tx[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(8),
	o => \r_data_tx[8]~input_o\);

-- Location: IOIBUF_X21_Y29_N22
\r_data_tx[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(7),
	o => \r_data_tx[7]~input_o\);

-- Location: IOIBUF_X28_Y29_N1
\r_data_tx[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(6),
	o => \r_data_tx[6]~input_o\);

-- Location: IOIBUF_X21_Y29_N15
\r_data_tx[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(5),
	o => \r_data_tx[5]~input_o\);

-- Location: IOIBUF_X9_Y29_N8
\r_data_tx[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(4),
	o => \r_data_tx[4]~input_o\);

-- Location: IOIBUF_X7_Y29_N15
\r_data_tx[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(0),
	o => \r_data_tx[0]~input_o\);

-- Location: LCCOMB_X29_Y28_N10
\r_data_tx_int~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~25_combout\ = (\LessThan1~10_combout\ & ((r_data_tx_int(0)))) # (!\LessThan1~10_combout\ & (\r_data_tx[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datac => \r_data_tx[0]~input_o\,
	datad => r_data_tx_int(0),
	combout => \r_data_tx_int~25_combout\);

-- Location: LCCOMB_X26_Y28_N22
\LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!\Add1~6_combout\ & (!\Add1~4_combout\ & ((!\Add1~2_combout\) # (!\Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~0_combout\,
	datac => \Add1~2_combout\,
	datad => \Add1~4_combout\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X26_Y28_N28
\process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\sclk_int~q\ & ((\LessThan4~0_combout\) # ((!\Add1~10_combout\) # (!\Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \sclk_int~q\,
	datac => \Add1~8_combout\,
	datad => \Add1~10_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X28_Y27_N8
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\Add1~40_combout\ & (!\Add1~38_combout\ & (!\Add1~36_combout\ & !\Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \Add1~38_combout\,
	datac => \Add1~36_combout\,
	datad => \Add1~42_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X28_Y27_N14
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (!\Add1~24_combout\ & (!\Add1~22_combout\ & (!\Add1~26_combout\ & !\Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \Add1~22_combout\,
	datac => \Add1~26_combout\,
	datad => \Add1~20_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X28_Y28_N30
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\Add1~12_combout\ & (!\Add1~14_combout\ & (!\Add1~16_combout\ & !\Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add1~14_combout\,
	datac => \Add1~16_combout\,
	datad => \Add1~18_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X28_Y27_N20
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (!\Add1~32_combout\ & (!\Add1~28_combout\ & (!\Add1~30_combout\ & !\Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datab => \Add1~28_combout\,
	datac => \Add1~30_combout\,
	datad => \Add1~34_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X28_Y27_N10
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (!\Add1~44_combout\ & (\process_0~2_combout\ & (\process_0~1_combout\ & \process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datab => \process_0~2_combout\,
	datac => \process_0~1_combout\,
	datad => \process_0~3_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X28_Y27_N16
\process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (!\Add1~48_combout\ & (!\Add1~46_combout\ & (\process_0~0_combout\ & \process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datab => \Add1~46_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~4_combout\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X28_Y27_N2
\process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (!\Add1~54_combout\ & (!\Add1~50_combout\ & (!\Add1~52_combout\ & \process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datab => \Add1~50_combout\,
	datac => \Add1~52_combout\,
	datad => \process_0~5_combout\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X28_Y27_N24
\process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (!\Add1~58_combout\ & (!\Add1~56_combout\ & (!\Add1~60_combout\ & \process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datab => \Add1~56_combout\,
	datac => \Add1~60_combout\,
	datad => \process_0~6_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X28_Y27_N6
\process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\sclk_int~q\ & ((\Add1~62_combout\) # ((\process_0~8_combout\ & \process_0~7_combout\)))) # (!\sclk_int~q\ & (((\process_0~8_combout\ & \process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sclk_int~q\,
	datab => \Add1~62_combout\,
	datac => \process_0~8_combout\,
	datad => \process_0~7_combout\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X29_Y28_N16
\r_data_tx_int~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~26_combout\ = (\r_data_tx_int~25_combout\ & (((!\LessThan1~10_combout\) # (!\process_0~9_combout\)) # (!\ws_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_data_tx_int~25_combout\,
	datab => \ws_int~q\,
	datac => \process_0~9_combout\,
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~26_combout\);

-- Location: FF_X29_Y28_N17
\r_data_tx_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~26_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(0));

-- Location: IOIBUF_X28_Y29_N15
\r_data_tx[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(1),
	o => \r_data_tx[1]~input_o\);

-- Location: LCCOMB_X29_Y28_N30
\r_data_tx_int~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~24_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(0))) # (!\LessThan1~10_combout\ & ((\r_data_tx[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datab => r_data_tx_int(0),
	datad => \r_data_tx[1]~input_o\,
	combout => \r_data_tx_int~24_combout\);

-- Location: LCCOMB_X28_Y27_N28
\r_data_tx_int[23]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int[23]~1_combout\ = (\sclk_int~q\ & ((\Add1~62_combout\) # ((\process_0~8_combout\ & \process_0~7_combout\)))) # (!\sclk_int~q\ & (((\process_0~8_combout\ & \process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sclk_int~q\,
	datab => \Add1~62_combout\,
	datac => \process_0~8_combout\,
	datad => \process_0~7_combout\,
	combout => \r_data_tx_int[23]~1_combout\);

-- Location: LCCOMB_X28_Y27_N22
\r_data_tx_int[23]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int[23]~2_combout\ = (!\LessThan0~10_combout\ & (((\ws_int~q\ & \r_data_tx_int[23]~1_combout\)) # (!\LessThan1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws_int~q\,
	datab => \LessThan0~10_combout\,
	datac => \LessThan1~10_combout\,
	datad => \r_data_tx_int[23]~1_combout\,
	combout => \r_data_tx_int[23]~2_combout\);

-- Location: FF_X29_Y27_N15
\r_data_tx_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \r_data_tx_int~24_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(1));

-- Location: IOIBUF_X28_Y0_N8
\r_data_tx[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(2),
	o => \r_data_tx[2]~input_o\);

-- Location: LCCOMB_X29_Y28_N22
\r_data_tx_int~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~23_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(1))) # (!\LessThan1~10_combout\ & ((\r_data_tx[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_data_tx_int(1),
	datac => \r_data_tx[2]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~23_combout\);

-- Location: FF_X29_Y28_N23
\r_data_tx_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~23_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(2));

-- Location: IOIBUF_X26_Y29_N1
\r_data_tx[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(3),
	o => \r_data_tx[3]~input_o\);

-- Location: LCCOMB_X29_Y28_N24
\r_data_tx_int~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~22_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(2))) # (!\LessThan1~10_combout\ & ((\r_data_tx[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data_tx_int(2),
	datac => \LessThan1~10_combout\,
	datad => \r_data_tx[3]~input_o\,
	combout => \r_data_tx_int~22_combout\);

-- Location: FF_X29_Y28_N25
\r_data_tx_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(3));

-- Location: LCCOMB_X29_Y28_N2
\r_data_tx_int~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~21_combout\ = (\LessThan1~10_combout\ & ((r_data_tx_int(3)))) # (!\LessThan1~10_combout\ & (\r_data_tx[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datab => \r_data_tx[4]~input_o\,
	datad => r_data_tx_int(3),
	combout => \r_data_tx_int~21_combout\);

-- Location: FF_X29_Y28_N3
\r_data_tx_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~21_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(4));

-- Location: LCCOMB_X29_Y28_N20
\r_data_tx_int~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~20_combout\ = (\LessThan1~10_combout\ & ((r_data_tx_int(4)))) # (!\LessThan1~10_combout\ & (\r_data_tx[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datac => \r_data_tx[5]~input_o\,
	datad => r_data_tx_int(4),
	combout => \r_data_tx_int~20_combout\);

-- Location: FF_X29_Y28_N21
\r_data_tx_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(5));

-- Location: LCCOMB_X29_Y27_N30
\r_data_tx_int~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~19_combout\ = (\LessThan1~10_combout\ & ((r_data_tx_int(5)))) # (!\LessThan1~10_combout\ & (\r_data_tx[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_data_tx[6]~input_o\,
	datab => r_data_tx_int(5),
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~19_combout\);

-- Location: FF_X29_Y27_N31
\r_data_tx_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~19_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(6));

-- Location: LCCOMB_X29_Y27_N0
\r_data_tx_int~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~18_combout\ = (\LessThan1~10_combout\ & ((r_data_tx_int(6)))) # (!\LessThan1~10_combout\ & (\r_data_tx[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_data_tx[7]~input_o\,
	datac => r_data_tx_int(6),
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~18_combout\);

-- Location: FF_X29_Y27_N1
\r_data_tx_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(7));

-- Location: LCCOMB_X29_Y27_N26
\r_data_tx_int~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~17_combout\ = (\LessThan1~10_combout\ & ((r_data_tx_int(7)))) # (!\LessThan1~10_combout\ & (\r_data_tx[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_data_tx[8]~input_o\,
	datab => r_data_tx_int(7),
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~17_combout\);

-- Location: FF_X29_Y27_N27
\r_data_tx_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~17_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(8));

-- Location: IOIBUF_X14_Y29_N29
\r_data_tx[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(9),
	o => \r_data_tx[9]~input_o\);

-- Location: LCCOMB_X29_Y27_N28
\r_data_tx_int~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~16_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(8))) # (!\LessThan1~10_combout\ & ((\r_data_tx[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data_tx_int(8),
	datac => \r_data_tx[9]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~16_combout\);

-- Location: FF_X29_Y27_N29
\r_data_tx_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(9));

-- Location: IOIBUF_X37_Y29_N1
\r_data_tx[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(10),
	o => \r_data_tx[10]~input_o\);

-- Location: LCCOMB_X29_Y27_N10
\r_data_tx_int~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~15_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(9))) # (!\LessThan1~10_combout\ & ((\r_data_tx[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_data_tx_int(9),
	datac => \r_data_tx[10]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~15_combout\);

-- Location: FF_X29_Y27_N11
\r_data_tx_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~15_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(10));

-- Location: IOIBUF_X41_Y27_N8
\r_data_tx[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(11),
	o => \r_data_tx[11]~input_o\);

-- Location: LCCOMB_X29_Y27_N8
\r_data_tx_int~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~14_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(10))) # (!\LessThan1~10_combout\ & ((\r_data_tx[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data_tx_int(10),
	datac => \r_data_tx[11]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~14_combout\);

-- Location: FF_X29_Y27_N9
\r_data_tx_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(11));

-- Location: LCCOMB_X29_Y27_N16
\r_data_tx_int~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~13_combout\ = (\LessThan1~10_combout\ & ((r_data_tx_int(11)))) # (!\LessThan1~10_combout\ & (\r_data_tx[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_data_tx[12]~input_o\,
	datac => r_data_tx_int(11),
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~13_combout\);

-- Location: FF_X29_Y27_N17
\r_data_tx_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~13_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(12));

-- Location: LCCOMB_X29_Y27_N14
\r_data_tx_int~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~12_combout\ = (\LessThan1~10_combout\ & ((r_data_tx_int(12)))) # (!\LessThan1~10_combout\ & (\r_data_tx[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_data_tx[13]~input_o\,
	datab => r_data_tx_int(12),
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~12_combout\);

-- Location: FF_X28_Y27_N5
\r_data_tx_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \r_data_tx_int~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(13));

-- Location: LCCOMB_X29_Y27_N22
\r_data_tx_int~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~11_combout\ = (\LessThan1~10_combout\ & ((r_data_tx_int(13)))) # (!\LessThan1~10_combout\ & (\r_data_tx[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_data_tx[14]~input_o\,
	datac => r_data_tx_int(13),
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~11_combout\);

-- Location: FF_X29_Y27_N23
\r_data_tx_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~11_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(14));

-- Location: IOIBUF_X32_Y29_N8
\r_data_tx[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(15),
	o => \r_data_tx[15]~input_o\);

-- Location: LCCOMB_X29_Y27_N4
\r_data_tx_int~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~10_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(14))) # (!\LessThan1~10_combout\ & ((\r_data_tx[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data_tx_int(14),
	datac => \r_data_tx[15]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~10_combout\);

-- Location: FF_X29_Y27_N5
\r_data_tx_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(15));

-- Location: IOIBUF_X37_Y29_N15
\r_data_tx[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(16),
	o => \r_data_tx[16]~input_o\);

-- Location: LCCOMB_X29_Y27_N6
\r_data_tx_int~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~9_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(15))) # (!\LessThan1~10_combout\ & ((\r_data_tx[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~10_combout\,
	datac => r_data_tx_int(15),
	datad => \r_data_tx[16]~input_o\,
	combout => \r_data_tx_int~9_combout\);

-- Location: FF_X29_Y27_N7
\r_data_tx_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~9_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(16));

-- Location: IOIBUF_X32_Y29_N15
\r_data_tx[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(17),
	o => \r_data_tx[17]~input_o\);

-- Location: LCCOMB_X29_Y27_N24
\r_data_tx_int~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~8_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(16))) # (!\LessThan1~10_combout\ & ((\r_data_tx[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data_tx_int(16),
	datac => \r_data_tx[17]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~8_combout\);

-- Location: FF_X29_Y27_N25
\r_data_tx_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(17));

-- Location: IOIBUF_X26_Y29_N15
\r_data_tx[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(18),
	o => \r_data_tx[18]~input_o\);

-- Location: LCCOMB_X29_Y27_N2
\r_data_tx_int~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~7_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(17))) # (!\LessThan1~10_combout\ & ((\r_data_tx[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_data_tx_int(17),
	datac => \r_data_tx[18]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~7_combout\);

-- Location: FF_X29_Y27_N3
\r_data_tx_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~7_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(18));

-- Location: IOIBUF_X9_Y29_N15
\r_data_tx[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(19),
	o => \r_data_tx[19]~input_o\);

-- Location: LCCOMB_X29_Y27_N20
\r_data_tx_int~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~6_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(18))) # (!\LessThan1~10_combout\ & ((\r_data_tx[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_data_tx_int(18),
	datac => \r_data_tx[19]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~6_combout\);

-- Location: FF_X29_Y27_N21
\r_data_tx_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(19));

-- Location: IOIBUF_X37_Y29_N22
\r_data_tx[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(20),
	o => \r_data_tx[20]~input_o\);

-- Location: LCCOMB_X29_Y27_N18
\r_data_tx_int~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~5_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(19))) # (!\LessThan1~10_combout\ & ((\r_data_tx[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_data_tx_int(19),
	datac => \r_data_tx[20]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~5_combout\);

-- Location: FF_X29_Y27_N19
\r_data_tx_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(20));

-- Location: LCCOMB_X29_Y27_N12
\r_data_tx_int~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~4_combout\ = (\LessThan1~10_combout\ & ((r_data_tx_int(20)))) # (!\LessThan1~10_combout\ & (\r_data_tx[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_data_tx[21]~input_o\,
	datab => r_data_tx_int(20),
	datad => \LessThan1~10_combout\,
	combout => \r_data_tx_int~4_combout\);

-- Location: FF_X28_Y27_N27
\r_data_tx_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \r_data_tx_int~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(21));

-- Location: IOIBUF_X35_Y29_N15
\r_data_tx[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_data_tx(22),
	o => \r_data_tx[22]~input_o\);

-- Location: LCCOMB_X28_Y27_N18
\r_data_tx_int~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~3_combout\ = (\LessThan1~10_combout\ & (r_data_tx_int(21))) # (!\LessThan1~10_combout\ & ((\r_data_tx[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data_tx_int(21),
	datab => \LessThan1~10_combout\,
	datad => \r_data_tx[22]~input_o\,
	combout => \r_data_tx_int~3_combout\);

-- Location: FF_X28_Y27_N19
\r_data_tx_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(22));

-- Location: LCCOMB_X29_Y28_N12
\r_data_tx_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_tx_int~0_combout\ = (\LessThan1~10_combout\ & ((r_data_tx_int(22)))) # (!\LessThan1~10_combout\ & (\r_data_tx[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datab => \r_data_tx[23]~input_o\,
	datad => r_data_tx_int(22),
	combout => \r_data_tx_int~0_combout\);

-- Location: FF_X29_Y28_N13
\r_data_tx_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_tx_int~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_tx_int[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_tx_int(23));

-- Location: IOIBUF_X30_Y29_N29
\l_data_tx[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(23),
	o => \l_data_tx[23]~input_o\);

-- Location: IOIBUF_X41_Y22_N1
\l_data_tx[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(22),
	o => \l_data_tx[22]~input_o\);

-- Location: IOIBUF_X30_Y29_N8
\l_data_tx[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(21),
	o => \l_data_tx[21]~input_o\);

-- Location: IOIBUF_X30_Y29_N1
\l_data_tx[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(19),
	o => \l_data_tx[19]~input_o\);

-- Location: IOIBUF_X30_Y29_N22
\l_data_tx[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(18),
	o => \l_data_tx[18]~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\l_data_tx[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(15),
	o => \l_data_tx[15]~input_o\);

-- Location: IOIBUF_X41_Y26_N1
\l_data_tx[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(12),
	o => \l_data_tx[12]~input_o\);

-- Location: IOIBUF_X41_Y24_N15
\l_data_tx[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(8),
	o => \l_data_tx[8]~input_o\);

-- Location: IOIBUF_X9_Y29_N22
\l_data_tx[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(6),
	o => \l_data_tx[6]~input_o\);

-- Location: IOIBUF_X19_Y29_N29
\l_data_tx[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(2),
	o => \l_data_tx[2]~input_o\);

-- Location: IOIBUF_X21_Y29_N29
\l_data_tx[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(1),
	o => \l_data_tx[1]~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\l_data_tx[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(0),
	o => \l_data_tx[0]~input_o\);

-- Location: LCCOMB_X29_Y28_N28
\l_data_tx_int~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~24_combout\ = (\LessThan1~10_combout\ & ((l_data_tx_int(0)))) # (!\LessThan1~10_combout\ & (\l_data_tx[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datac => \l_data_tx[0]~input_o\,
	datad => l_data_tx_int(0),
	combout => \l_data_tx_int~24_combout\);

-- Location: LCCOMB_X29_Y28_N8
\l_data_tx_int~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~25_combout\ = (\l_data_tx_int~24_combout\ & (((\ws_int~q\) # (!\process_0~9_combout\)) # (!\LessThan1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datab => \ws_int~q\,
	datac => \process_0~9_combout\,
	datad => \l_data_tx_int~24_combout\,
	combout => \l_data_tx_int~25_combout\);

-- Location: FF_X29_Y28_N9
\l_data_tx_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_tx_int~25_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(0));

-- Location: LCCOMB_X30_Y27_N6
\l_data_tx_int~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~23_combout\ = (\LessThan1~10_combout\ & ((l_data_tx_int(0)))) # (!\LessThan1~10_combout\ & (\l_data_tx[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l_data_tx[1]~input_o\,
	datab => l_data_tx_int(0),
	datad => \LessThan1~10_combout\,
	combout => \l_data_tx_int~23_combout\);

-- Location: LCCOMB_X28_Y27_N12
\l_data_tx_int[23]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int[23]~1_combout\ = (!\LessThan0~10_combout\ & (((!\ws_int~q\ & \process_0~9_combout\)) # (!\LessThan1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ws_int~q\,
	datab => \LessThan0~10_combout\,
	datac => \LessThan1~10_combout\,
	datad => \process_0~9_combout\,
	combout => \l_data_tx_int[23]~1_combout\);

-- Location: FF_X30_Y27_N7
\l_data_tx_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_tx_int~23_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(1));

-- Location: LCCOMB_X26_Y27_N6
\l_data_tx_int~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~22_combout\ = (\LessThan1~10_combout\ & ((l_data_tx_int(1)))) # (!\LessThan1~10_combout\ & (\l_data_tx[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l_data_tx[2]~input_o\,
	datac => \LessThan1~10_combout\,
	datad => l_data_tx_int(1),
	combout => \l_data_tx_int~22_combout\);

-- Location: FF_X26_Y27_N7
\l_data_tx_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_tx_int~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(2));

-- Location: IOIBUF_X39_Y29_N29
\l_data_tx[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(3),
	o => \l_data_tx[3]~input_o\);

-- Location: LCCOMB_X32_Y27_N22
\l_data_tx_int~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~21_combout\ = (\LessThan1~10_combout\ & (l_data_tx_int(2))) # (!\LessThan1~10_combout\ & ((\l_data_tx[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => l_data_tx_int(2),
	datac => \l_data_tx[3]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \l_data_tx_int~21_combout\);

-- Location: FF_X32_Y27_N23
\l_data_tx_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_tx_int~21_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(3));

-- Location: IOIBUF_X35_Y29_N1
\l_data_tx[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(4),
	o => \l_data_tx[4]~input_o\);

-- Location: LCCOMB_X32_Y27_N16
\l_data_tx_int~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~20_combout\ = (\LessThan1~10_combout\ & (l_data_tx_int(3))) # (!\LessThan1~10_combout\ & ((\l_data_tx[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => l_data_tx_int(3),
	datac => \l_data_tx[4]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \l_data_tx_int~20_combout\);

-- Location: FF_X30_Y27_N19
\l_data_tx_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(4));

-- Location: IOIBUF_X16_Y29_N22
\l_data_tx[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(5),
	o => \l_data_tx[5]~input_o\);

-- Location: LCCOMB_X26_Y27_N28
\l_data_tx_int~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~19_combout\ = (\LessThan1~10_combout\ & (l_data_tx_int(4))) # (!\LessThan1~10_combout\ & ((\l_data_tx[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => l_data_tx_int(4),
	datac => \LessThan1~10_combout\,
	datad => \l_data_tx[5]~input_o\,
	combout => \l_data_tx_int~19_combout\);

-- Location: FF_X26_Y27_N29
\l_data_tx_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_tx_int~19_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(5));

-- Location: LCCOMB_X26_Y27_N24
\l_data_tx_int~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~18_combout\ = (\LessThan1~10_combout\ & ((l_data_tx_int(5)))) # (!\LessThan1~10_combout\ & (\l_data_tx[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l_data_tx[6]~input_o\,
	datac => \LessThan1~10_combout\,
	datad => l_data_tx_int(5),
	combout => \l_data_tx_int~18_combout\);

-- Location: FF_X26_Y27_N25
\l_data_tx_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_tx_int~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(6));

-- Location: IOIBUF_X26_Y29_N29
\l_data_tx[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(7),
	o => \l_data_tx[7]~input_o\);

-- Location: LCCOMB_X26_Y27_N14
\l_data_tx_int~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~17_combout\ = (\LessThan1~10_combout\ & (l_data_tx_int(6))) # (!\LessThan1~10_combout\ & ((\l_data_tx[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => l_data_tx_int(6),
	datac => \LessThan1~10_combout\,
	datad => \l_data_tx[7]~input_o\,
	combout => \l_data_tx_int~17_combout\);

-- Location: FF_X30_Y27_N5
\l_data_tx_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~17_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(7));

-- Location: LCCOMB_X30_Y27_N8
\l_data_tx_int~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~16_combout\ = (\LessThan1~10_combout\ & ((l_data_tx_int(7)))) # (!\LessThan1~10_combout\ & (\l_data_tx[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l_data_tx[8]~input_o\,
	datac => l_data_tx_int(7),
	datad => \LessThan1~10_combout\,
	combout => \l_data_tx_int~16_combout\);

-- Location: FF_X27_Y27_N19
\l_data_tx_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(8));

-- Location: IOIBUF_X37_Y29_N8
\l_data_tx[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(9),
	o => \l_data_tx[9]~input_o\);

-- Location: LCCOMB_X26_Y27_N26
\l_data_tx_int~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~15_combout\ = (\LessThan1~10_combout\ & (l_data_tx_int(8))) # (!\LessThan1~10_combout\ & ((\l_data_tx[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => l_data_tx_int(8),
	datac => \LessThan1~10_combout\,
	datad => \l_data_tx[9]~input_o\,
	combout => \l_data_tx_int~15_combout\);

-- Location: FF_X27_Y27_N31
\l_data_tx_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~15_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(9));

-- Location: IOIBUF_X41_Y24_N8
\l_data_tx[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(10),
	o => \l_data_tx[10]~input_o\);

-- Location: LCCOMB_X30_Y27_N22
\l_data_tx_int~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~14_combout\ = (\LessThan1~10_combout\ & (l_data_tx_int(9))) # (!\LessThan1~10_combout\ & ((\l_data_tx[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~10_combout\,
	datac => l_data_tx_int(9),
	datad => \l_data_tx[10]~input_o\,
	combout => \l_data_tx_int~14_combout\);

-- Location: FF_X27_Y27_N21
\l_data_tx_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(10));

-- Location: IOIBUF_X41_Y27_N22
\l_data_tx[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(11),
	o => \l_data_tx[11]~input_o\);

-- Location: LCCOMB_X30_Y27_N28
\l_data_tx_int~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~13_combout\ = (\LessThan1~10_combout\ & (l_data_tx_int(10))) # (!\LessThan1~10_combout\ & ((\l_data_tx[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => l_data_tx_int(10),
	datac => \l_data_tx[11]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \l_data_tx_int~13_combout\);

-- Location: FF_X30_Y27_N29
\l_data_tx_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_tx_int~13_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(11));

-- Location: LCCOMB_X30_Y27_N12
\l_data_tx_int~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~12_combout\ = (\LessThan1~10_combout\ & ((l_data_tx_int(11)))) # (!\LessThan1~10_combout\ & (\l_data_tx[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l_data_tx[12]~input_o\,
	datac => \LessThan1~10_combout\,
	datad => l_data_tx_int(11),
	combout => \l_data_tx_int~12_combout\);

-- Location: FF_X30_Y27_N13
\l_data_tx_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_tx_int~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(12));

-- Location: IOIBUF_X41_Y24_N1
\l_data_tx[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(13),
	o => \l_data_tx[13]~input_o\);

-- Location: LCCOMB_X30_Y27_N14
\l_data_tx_int~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~11_combout\ = (\LessThan1~10_combout\ & (l_data_tx_int(12))) # (!\LessThan1~10_combout\ & ((\l_data_tx[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => l_data_tx_int(12),
	datac => \l_data_tx[13]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \l_data_tx_int~11_combout\);

-- Location: FF_X27_Y27_N7
\l_data_tx_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~11_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(13));

-- Location: IOIBUF_X35_Y29_N8
\l_data_tx[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(14),
	o => \l_data_tx[14]~input_o\);

-- Location: LCCOMB_X31_Y27_N22
\l_data_tx_int~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~10_combout\ = (\LessThan1~10_combout\ & (l_data_tx_int(13))) # (!\LessThan1~10_combout\ & ((\l_data_tx[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => l_data_tx_int(13),
	datab => \l_data_tx[14]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \l_data_tx_int~10_combout\);

-- Location: FF_X27_Y27_N5
\l_data_tx_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(14));

-- Location: LCCOMB_X26_Y27_N16
\l_data_tx_int~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~9_combout\ = (\LessThan1~10_combout\ & ((l_data_tx_int(14)))) # (!\LessThan1~10_combout\ & (\l_data_tx[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l_data_tx[15]~input_o\,
	datac => \LessThan1~10_combout\,
	datad => l_data_tx_int(14),
	combout => \l_data_tx_int~9_combout\);

-- Location: FF_X27_Y27_N13
\l_data_tx_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~9_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(15));

-- Location: IOIBUF_X30_Y0_N29
\l_data_tx[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(16),
	o => \l_data_tx[16]~input_o\);

-- Location: LCCOMB_X30_Y27_N18
\l_data_tx_int~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~8_combout\ = (\LessThan1~10_combout\ & (l_data_tx_int(15))) # (!\LessThan1~10_combout\ & ((\l_data_tx[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datab => l_data_tx_int(15),
	datad => \l_data_tx[16]~input_o\,
	combout => \l_data_tx_int~8_combout\);

-- Location: FF_X27_Y27_N9
\l_data_tx_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(16));

-- Location: IOIBUF_X41_Y25_N15
\l_data_tx[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(17),
	o => \l_data_tx[17]~input_o\);

-- Location: LCCOMB_X30_Y27_N20
\l_data_tx_int~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~7_combout\ = (\LessThan1~10_combout\ & (l_data_tx_int(16))) # (!\LessThan1~10_combout\ & ((\l_data_tx[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => l_data_tx_int(16),
	datac => \LessThan1~10_combout\,
	datad => \l_data_tx[17]~input_o\,
	combout => \l_data_tx_int~7_combout\);

-- Location: FF_X30_Y27_N21
\l_data_tx_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_tx_int~7_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(17));

-- Location: LCCOMB_X30_Y27_N24
\l_data_tx_int~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~6_combout\ = (\LessThan1~10_combout\ & ((l_data_tx_int(17)))) # (!\LessThan1~10_combout\ & (\l_data_tx[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l_data_tx[18]~input_o\,
	datab => l_data_tx_int(17),
	datad => \LessThan1~10_combout\,
	combout => \l_data_tx_int~6_combout\);

-- Location: FF_X30_Y27_N25
\l_data_tx_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_tx_int~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(18));

-- Location: LCCOMB_X30_Y27_N30
\l_data_tx_int~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~5_combout\ = (\LessThan1~10_combout\ & ((l_data_tx_int(18)))) # (!\LessThan1~10_combout\ & (\l_data_tx[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~10_combout\,
	datac => \l_data_tx[19]~input_o\,
	datad => l_data_tx_int(18),
	combout => \l_data_tx_int~5_combout\);

-- Location: FF_X27_Y27_N27
\l_data_tx_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(19));

-- Location: IOIBUF_X41_Y27_N1
\l_data_tx[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l_data_tx(20),
	o => \l_data_tx[20]~input_o\);

-- Location: LCCOMB_X30_Y27_N2
\l_data_tx_int~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~4_combout\ = (\LessThan1~10_combout\ & (l_data_tx_int(19))) # (!\LessThan1~10_combout\ & ((\l_data_tx[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => l_data_tx_int(19),
	datac => \l_data_tx[20]~input_o\,
	datad => \LessThan1~10_combout\,
	combout => \l_data_tx_int~4_combout\);

-- Location: FF_X27_Y27_N29
\l_data_tx_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(20));

-- Location: LCCOMB_X30_Y27_N4
\l_data_tx_int~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~3_combout\ = (\LessThan1~10_combout\ & ((l_data_tx_int(20)))) # (!\LessThan1~10_combout\ & (\l_data_tx[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~10_combout\,
	datab => \l_data_tx[21]~input_o\,
	datad => l_data_tx_int(20),
	combout => \l_data_tx_int~3_combout\);

-- Location: FF_X27_Y27_N1
\l_data_tx_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(21));

-- Location: LCCOMB_X30_Y27_N0
\l_data_tx_int~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~2_combout\ = (\LessThan1~10_combout\ & ((l_data_tx_int(21)))) # (!\LessThan1~10_combout\ & (\l_data_tx[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \l_data_tx[22]~input_o\,
	datac => \LessThan1~10_combout\,
	datad => l_data_tx_int(21),
	combout => \l_data_tx_int~2_combout\);

-- Location: FF_X30_Y27_N1
\l_data_tx_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_tx_int~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(22));

-- Location: LCCOMB_X30_Y27_N10
\l_data_tx_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_tx_int~0_combout\ = (\LessThan1~10_combout\ & ((l_data_tx_int(22)))) # (!\LessThan1~10_combout\ & (\l_data_tx[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l_data_tx[23]~input_o\,
	datab => l_data_tx_int(22),
	datad => \LessThan1~10_combout\,
	combout => \l_data_tx_int~0_combout\);

-- Location: FF_X27_Y27_N11
\l_data_tx_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \l_data_tx_int~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_tx_int[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_tx_int(23));

-- Location: LCCOMB_X29_Y28_N18
\sd_tx~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd_tx~0_combout\ = (\ws_int~q\ & (r_data_tx_int(23))) # (!\ws_int~q\ & ((l_data_tx_int(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_data_tx_int(23),
	datac => \ws_int~q\,
	datad => l_data_tx_int(23),
	combout => \sd_tx~0_combout\);

-- Location: LCCOMB_X28_Y27_N4
\r_data_rx_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[0]~0_combout\ = (\LessThan1~10_combout\ & !\LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~10_combout\,
	datad => \LessThan0~10_combout\,
	combout => \r_data_rx_int[0]~0_combout\);

-- Location: LCCOMB_X29_Y26_N0
\sd_tx~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd_tx~1_combout\ = (\r_data_rx_int[0]~0_combout\ & ((\process_0~9_combout\ & (\sd_tx~0_combout\)) # (!\process_0~9_combout\ & ((\sd_tx~reg0_q\))))) # (!\r_data_rx_int[0]~0_combout\ & (((\sd_tx~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_tx~0_combout\,
	datab => \r_data_rx_int[0]~0_combout\,
	datac => \sd_tx~reg0_q\,
	datad => \process_0~9_combout\,
	combout => \sd_tx~1_combout\);

-- Location: FF_X29_Y26_N1
\sd_tx~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \sd_tx~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_tx~reg0_q\);

-- Location: IOIBUF_X23_Y29_N1
\sd_rx~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sd_rx,
	o => \sd_rx~input_o\);

-- Location: LCCOMB_X31_Y27_N20
\l_data_rx_int[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[0]~feeder_combout\ = \sd_rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_rx~input_o\,
	combout => \l_data_rx_int[0]~feeder_combout\);

-- Location: LCCOMB_X32_Y27_N26
\process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (!\Add1~52_combout\ & (!\Add1~54_combout\ & (!\Add1~56_combout\ & !\Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~52_combout\,
	datab => \Add1~54_combout\,
	datac => \Add1~56_combout\,
	datad => \Add1~58_combout\,
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X32_Y27_N30
\process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (!\Add1~44_combout\ & (!\Add1~50_combout\ & (!\Add1~48_combout\ & !\Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datab => \Add1~50_combout\,
	datac => \Add1~48_combout\,
	datad => \Add1~46_combout\,
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X32_Y27_N8
\process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (\process_0~1_combout\ & (\process_0~2_combout\ & (\process_0~3_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \process_0~2_combout\,
	datac => \process_0~3_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X26_Y28_N20
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!\Add1~6_combout\ & (!\Add1~2_combout\ & !\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datac => \Add1~2_combout\,
	datad => \Add1~4_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y28_N30
\r_data_rx_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[0]~1_combout\ = (\Add1~10_combout\ & ((\LessThan2~0_combout\) # (!\Add1~8_combout\))) # (!\Add1~10_combout\ & ((\Add1~8_combout\) # (!\LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datac => \Add1~8_combout\,
	datad => \LessThan2~0_combout\,
	combout => \r_data_rx_int[0]~1_combout\);

-- Location: LCCOMB_X32_Y27_N28
\l_data_rx_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[0]~0_combout\ = (!\sclk_int~q\ & (!\ws_int~q\ & (\r_data_rx_int[0]~1_combout\ & \r_data_rx_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sclk_int~q\,
	datab => \ws_int~q\,
	datac => \r_data_rx_int[0]~1_combout\,
	datad => \r_data_rx_int[0]~0_combout\,
	combout => \l_data_rx_int[0]~0_combout\);

-- Location: LCCOMB_X32_Y27_N2
\l_data_rx_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[0]~1_combout\ = (\process_0~12_combout\ & (\process_0~11_combout\ & \l_data_rx_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~12_combout\,
	datac => \process_0~11_combout\,
	datad => \l_data_rx_int[0]~0_combout\,
	combout => \l_data_rx_int[0]~1_combout\);

-- Location: LCCOMB_X32_Y27_N20
\l_data_rx_int[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[0]~2_combout\ = (!\Add1~62_combout\ & (!\Add1~60_combout\ & (\process_0~10_combout\ & \l_data_rx_int[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~62_combout\,
	datab => \Add1~60_combout\,
	datac => \process_0~10_combout\,
	datad => \l_data_rx_int[0]~1_combout\,
	combout => \l_data_rx_int[0]~2_combout\);

-- Location: FF_X31_Y27_N21
\l_data_rx_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(0));

-- Location: LCCOMB_X31_Y27_N4
\l_data_rx[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[0]~reg0feeder_combout\ = l_data_rx_int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(0),
	combout => \l_data_rx[0]~reg0feeder_combout\);

-- Location: FF_X31_Y27_N5
\l_data_rx[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[0]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[0]~reg0_q\);

-- Location: LCCOMB_X31_Y27_N6
\l_data_rx_int[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[1]~feeder_combout\ = l_data_rx_int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(0),
	combout => \l_data_rx_int[1]~feeder_combout\);

-- Location: FF_X31_Y27_N7
\l_data_rx_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(1));

-- Location: LCCOMB_X31_Y27_N2
\l_data_rx[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[1]~reg0feeder_combout\ = l_data_rx_int(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(1),
	combout => \l_data_rx[1]~reg0feeder_combout\);

-- Location: FF_X31_Y27_N3
\l_data_rx[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[1]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[1]~reg0_q\);

-- Location: LCCOMB_X31_Y27_N28
\l_data_rx_int[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[2]~feeder_combout\ = l_data_rx_int(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(1),
	combout => \l_data_rx_int[2]~feeder_combout\);

-- Location: FF_X31_Y27_N29
\l_data_rx_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(2));

-- Location: LCCOMB_X31_Y27_N14
\l_data_rx[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[2]~reg0feeder_combout\ = l_data_rx_int(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(2),
	combout => \l_data_rx[2]~reg0feeder_combout\);

-- Location: FF_X31_Y27_N15
\l_data_rx[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[2]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[2]~reg0_q\);

-- Location: LCCOMB_X31_Y27_N30
\l_data_rx_int[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[3]~feeder_combout\ = l_data_rx_int(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(2),
	combout => \l_data_rx_int[3]~feeder_combout\);

-- Location: FF_X31_Y27_N31
\l_data_rx_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(3));

-- Location: LCCOMB_X31_Y27_N0
\l_data_rx[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[3]~reg0feeder_combout\ = l_data_rx_int(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(3),
	combout => \l_data_rx[3]~reg0feeder_combout\);

-- Location: FF_X31_Y27_N1
\l_data_rx[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[3]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[3]~reg0_q\);

-- Location: LCCOMB_X31_Y27_N16
\l_data_rx_int[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[4]~feeder_combout\ = l_data_rx_int(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(3),
	combout => \l_data_rx_int[4]~feeder_combout\);

-- Location: FF_X31_Y27_N17
\l_data_rx_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(4));

-- Location: LCCOMB_X31_Y27_N24
\l_data_rx[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[4]~reg0feeder_combout\ = l_data_rx_int(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(4),
	combout => \l_data_rx[4]~reg0feeder_combout\);

-- Location: FF_X31_Y27_N25
\l_data_rx[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[4]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[4]~reg0_q\);

-- Location: LCCOMB_X31_Y27_N26
\l_data_rx_int[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[5]~feeder_combout\ = l_data_rx_int(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(4),
	combout => \l_data_rx_int[5]~feeder_combout\);

-- Location: FF_X31_Y27_N27
\l_data_rx_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(5));

-- Location: FF_X31_Y27_N13
\l_data_rx[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => l_data_rx_int(5),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[5]~reg0_q\);

-- Location: FF_X31_Y27_N23
\l_data_rx_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => l_data_rx_int(5),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(6));

-- Location: FF_X31_Y27_N19
\l_data_rx[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => l_data_rx_int(6),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[6]~reg0_q\);

-- Location: FF_X31_Y27_N9
\l_data_rx_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => l_data_rx_int(6),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(7));

-- Location: FF_X30_Y27_N17
\l_data_rx[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => l_data_rx_int(7),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[7]~reg0_q\);

-- Location: FF_X31_Y27_N11
\l_data_rx_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => l_data_rx_int(7),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(8));

-- Location: LCCOMB_X33_Y27_N8
\l_data_rx[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[8]~reg0feeder_combout\ = l_data_rx_int(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(8),
	combout => \l_data_rx[8]~reg0feeder_combout\);

-- Location: FF_X33_Y27_N9
\l_data_rx[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[8]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[8]~reg0_q\);

-- Location: LCCOMB_X33_Y27_N24
\l_data_rx_int[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[9]~feeder_combout\ = l_data_rx_int(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(8),
	combout => \l_data_rx_int[9]~feeder_combout\);

-- Location: FF_X33_Y27_N25
\l_data_rx_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(9));

-- Location: LCCOMB_X33_Y27_N30
\l_data_rx[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[9]~reg0feeder_combout\ = l_data_rx_int(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(9),
	combout => \l_data_rx[9]~reg0feeder_combout\);

-- Location: FF_X33_Y27_N31
\l_data_rx[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[9]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[9]~reg0_q\);

-- Location: LCCOMB_X33_Y27_N22
\l_data_rx_int[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[10]~feeder_combout\ = l_data_rx_int(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(9),
	combout => \l_data_rx_int[10]~feeder_combout\);

-- Location: FF_X33_Y27_N23
\l_data_rx_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(10));

-- Location: LCCOMB_X36_Y27_N8
\l_data_rx[10]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[10]~reg0feeder_combout\ = l_data_rx_int(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(10),
	combout => \l_data_rx[10]~reg0feeder_combout\);

-- Location: FF_X36_Y27_N9
\l_data_rx[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[10]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[10]~reg0_q\);

-- Location: FF_X33_Y27_N13
\l_data_rx_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => l_data_rx_int(10),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(11));

-- Location: LCCOMB_X36_Y27_N30
\l_data_rx[11]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[11]~reg0feeder_combout\ = l_data_rx_int(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(11),
	combout => \l_data_rx[11]~reg0feeder_combout\);

-- Location: FF_X36_Y27_N31
\l_data_rx[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[11]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[11]~reg0_q\);

-- Location: LCCOMB_X33_Y27_N6
\l_data_rx_int[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[12]~feeder_combout\ = l_data_rx_int(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(11),
	combout => \l_data_rx_int[12]~feeder_combout\);

-- Location: FF_X33_Y27_N7
\l_data_rx_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(12));

-- Location: LCCOMB_X33_Y27_N20
\l_data_rx[12]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[12]~reg0feeder_combout\ = l_data_rx_int(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(12),
	combout => \l_data_rx[12]~reg0feeder_combout\);

-- Location: FF_X33_Y27_N21
\l_data_rx[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[12]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[12]~reg0_q\);

-- Location: LCCOMB_X33_Y27_N28
\l_data_rx_int[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[13]~feeder_combout\ = l_data_rx_int(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(12),
	combout => \l_data_rx_int[13]~feeder_combout\);

-- Location: FF_X33_Y27_N29
\l_data_rx_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(13));

-- Location: LCCOMB_X33_Y27_N26
\l_data_rx[13]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[13]~reg0feeder_combout\ = l_data_rx_int(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(13),
	combout => \l_data_rx[13]~reg0feeder_combout\);

-- Location: FF_X33_Y27_N27
\l_data_rx[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[13]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[13]~reg0_q\);

-- Location: LCCOMB_X33_Y27_N10
\l_data_rx_int[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[14]~feeder_combout\ = l_data_rx_int(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(13),
	combout => \l_data_rx_int[14]~feeder_combout\);

-- Location: FF_X33_Y27_N11
\l_data_rx_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(14));

-- Location: LCCOMB_X33_Y27_N0
\l_data_rx[14]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[14]~reg0feeder_combout\ = l_data_rx_int(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(14),
	combout => \l_data_rx[14]~reg0feeder_combout\);

-- Location: FF_X33_Y27_N1
\l_data_rx[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[14]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[14]~reg0_q\);

-- Location: LCCOMB_X33_Y27_N4
\l_data_rx_int[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[15]~feeder_combout\ = l_data_rx_int(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(14),
	combout => \l_data_rx_int[15]~feeder_combout\);

-- Location: FF_X33_Y27_N5
\l_data_rx_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(15));

-- Location: LCCOMB_X36_Y27_N4
\l_data_rx[15]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[15]~reg0feeder_combout\ = l_data_rx_int(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(15),
	combout => \l_data_rx[15]~reg0feeder_combout\);

-- Location: FF_X36_Y27_N5
\l_data_rx[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[15]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[15]~reg0_q\);

-- Location: FF_X33_Y27_N3
\l_data_rx_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => l_data_rx_int(15),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(16));

-- Location: LCCOMB_X36_Y27_N18
\l_data_rx[16]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[16]~reg0feeder_combout\ = l_data_rx_int(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(16),
	combout => \l_data_rx[16]~reg0feeder_combout\);

-- Location: FF_X36_Y27_N19
\l_data_rx[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[16]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[16]~reg0_q\);

-- Location: LCCOMB_X33_Y27_N16
\l_data_rx_int[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[17]~feeder_combout\ = l_data_rx_int(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(16),
	combout => \l_data_rx_int[17]~feeder_combout\);

-- Location: FF_X33_Y27_N17
\l_data_rx_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(17));

-- Location: LCCOMB_X33_Y27_N14
\l_data_rx[17]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[17]~reg0feeder_combout\ = l_data_rx_int(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(17),
	combout => \l_data_rx[17]~reg0feeder_combout\);

-- Location: FF_X33_Y27_N15
\l_data_rx[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[17]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[17]~reg0_q\);

-- Location: LCCOMB_X33_Y27_N18
\l_data_rx_int[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[18]~feeder_combout\ = l_data_rx_int(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(17),
	combout => \l_data_rx_int[18]~feeder_combout\);

-- Location: FF_X33_Y27_N19
\l_data_rx_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[18]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(18));

-- Location: LCCOMB_X36_Y27_N0
\l_data_rx[18]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[18]~reg0feeder_combout\ = l_data_rx_int(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(18),
	combout => \l_data_rx[18]~reg0feeder_combout\);

-- Location: FF_X36_Y27_N1
\l_data_rx[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[18]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[18]~reg0_q\);

-- Location: LCCOMB_X36_Y27_N12
\l_data_rx_int[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[19]~feeder_combout\ = l_data_rx_int(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(18),
	combout => \l_data_rx_int[19]~feeder_combout\);

-- Location: FF_X36_Y27_N13
\l_data_rx_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(19));

-- Location: LCCOMB_X36_Y27_N26
\l_data_rx[19]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[19]~reg0feeder_combout\ = l_data_rx_int(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(19),
	combout => \l_data_rx[19]~reg0feeder_combout\);

-- Location: FF_X36_Y27_N27
\l_data_rx[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[19]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[19]~reg0_q\);

-- Location: LCCOMB_X36_Y27_N6
\l_data_rx_int[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[20]~feeder_combout\ = l_data_rx_int(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(19),
	combout => \l_data_rx_int[20]~feeder_combout\);

-- Location: FF_X36_Y27_N7
\l_data_rx_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(20));

-- Location: LCCOMB_X36_Y27_N20
\l_data_rx[20]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[20]~reg0feeder_combout\ = l_data_rx_int(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(20),
	combout => \l_data_rx[20]~reg0feeder_combout\);

-- Location: FF_X36_Y27_N21
\l_data_rx[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[20]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[20]~reg0_q\);

-- Location: LCCOMB_X36_Y27_N16
\l_data_rx_int[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[21]~feeder_combout\ = l_data_rx_int(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(20),
	combout => \l_data_rx_int[21]~feeder_combout\);

-- Location: FF_X36_Y27_N17
\l_data_rx_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(21));

-- Location: LCCOMB_X36_Y27_N10
\l_data_rx[21]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[21]~reg0feeder_combout\ = l_data_rx_int(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(21),
	combout => \l_data_rx[21]~reg0feeder_combout\);

-- Location: FF_X36_Y27_N11
\l_data_rx[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[21]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[21]~reg0_q\);

-- Location: LCCOMB_X36_Y27_N2
\l_data_rx_int[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[22]~feeder_combout\ = l_data_rx_int(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(21),
	combout => \l_data_rx_int[22]~feeder_combout\);

-- Location: FF_X36_Y27_N3
\l_data_rx_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[22]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(22));

-- Location: LCCOMB_X36_Y27_N28
\l_data_rx[22]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[22]~reg0feeder_combout\ = l_data_rx_int(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(22),
	combout => \l_data_rx[22]~reg0feeder_combout\);

-- Location: FF_X36_Y27_N29
\l_data_rx[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[22]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[22]~reg0_q\);

-- Location: LCCOMB_X36_Y27_N24
\l_data_rx_int[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx_int[23]~feeder_combout\ = l_data_rx_int(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(22),
	combout => \l_data_rx_int[23]~feeder_combout\);

-- Location: FF_X36_Y27_N25
\l_data_rx_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx_int[23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => l_data_rx_int(23));

-- Location: LCCOMB_X36_Y27_N14
\l_data_rx[23]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \l_data_rx[23]~reg0feeder_combout\ = l_data_rx_int(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => l_data_rx_int(23),
	combout => \l_data_rx[23]~reg0feeder_combout\);

-- Location: FF_X36_Y27_N15
\l_data_rx[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \l_data_rx[23]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \l_data_rx[23]~reg0_q\);

-- Location: LCCOMB_X28_Y27_N30
\r_data_rx_int[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[0]~2_combout\ = (!\sclk_int~q\ & (!\Add1~62_combout\ & \r_data_rx_int[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sclk_int~q\,
	datab => \Add1~62_combout\,
	datad => \r_data_rx_int[0]~1_combout\,
	combout => \r_data_rx_int[0]~2_combout\);

-- Location: LCCOMB_X28_Y27_N0
\r_data_rx_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[0]~3_combout\ = (\r_data_rx_int[0]~2_combout\ & (\ws_int~q\ & (\r_data_rx_int[0]~0_combout\ & \process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_data_rx_int[0]~2_combout\,
	datab => \ws_int~q\,
	datac => \r_data_rx_int[0]~0_combout\,
	datad => \process_0~7_combout\,
	combout => \r_data_rx_int[0]~3_combout\);

-- Location: FF_X23_Y27_N21
\r_data_rx_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => \sd_rx~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(0));

-- Location: LCCOMB_X23_Y28_N12
\r_data_rx[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[0]~reg0feeder_combout\ = r_data_rx_int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(0),
	combout => \r_data_rx[0]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N13
\r_data_rx[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[0]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[0]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N2
\r_data_rx_int[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[1]~feeder_combout\ = r_data_rx_int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(0),
	combout => \r_data_rx_int[1]~feeder_combout\);

-- Location: FF_X23_Y27_N3
\r_data_rx_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx_int[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(1));

-- Location: LCCOMB_X23_Y28_N18
\r_data_rx[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[1]~reg0feeder_combout\ = r_data_rx_int(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(1),
	combout => \r_data_rx[1]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N19
\r_data_rx[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[1]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[1]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N8
\r_data_rx_int[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[2]~feeder_combout\ = r_data_rx_int(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(1),
	combout => \r_data_rx_int[2]~feeder_combout\);

-- Location: FF_X23_Y27_N9
\r_data_rx_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx_int[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(2));

-- Location: LCCOMB_X23_Y28_N4
\r_data_rx[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[2]~reg0feeder_combout\ = r_data_rx_int(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(2),
	combout => \r_data_rx[2]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N5
\r_data_rx[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[2]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[2]~reg0_q\);

-- Location: FF_X23_Y27_N7
\r_data_rx_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(2),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(3));

-- Location: LCCOMB_X23_Y28_N6
\r_data_rx[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[3]~reg0feeder_combout\ = r_data_rx_int(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(3),
	combout => \r_data_rx[3]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N7
\r_data_rx[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[3]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[3]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N28
\r_data_rx_int[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[4]~feeder_combout\ = r_data_rx_int(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(3),
	combout => \r_data_rx_int[4]~feeder_combout\);

-- Location: FF_X23_Y27_N29
\r_data_rx_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx_int[4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(4));

-- Location: FF_X23_Y28_N29
\r_data_rx[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(4),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[4]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N14
\r_data_rx_int[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[5]~feeder_combout\ = r_data_rx_int(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(4),
	combout => \r_data_rx_int[5]~feeder_combout\);

-- Location: FF_X23_Y27_N15
\r_data_rx_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx_int[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(5));

-- Location: LCCOMB_X24_Y27_N18
\r_data_rx[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[5]~reg0feeder_combout\ = r_data_rx_int(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(5),
	combout => \r_data_rx[5]~reg0feeder_combout\);

-- Location: FF_X24_Y27_N19
\r_data_rx[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[5]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[5]~reg0_q\);

-- Location: FF_X23_Y27_N1
\r_data_rx_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(5),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(6));

-- Location: LCCOMB_X23_Y28_N10
\r_data_rx[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[6]~reg0feeder_combout\ = r_data_rx_int(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(6),
	combout => \r_data_rx[6]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N11
\r_data_rx[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[6]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[6]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N18
\r_data_rx_int[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[7]~feeder_combout\ = r_data_rx_int(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(6),
	combout => \r_data_rx_int[7]~feeder_combout\);

-- Location: FF_X23_Y27_N19
\r_data_rx_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx_int[7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(7));

-- Location: LCCOMB_X24_Y28_N0
\r_data_rx[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[7]~reg0feeder_combout\ = r_data_rx_int(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(7),
	combout => \r_data_rx[7]~reg0feeder_combout\);

-- Location: FF_X24_Y28_N1
\r_data_rx[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[7]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[7]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N24
\r_data_rx_int[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[8]~feeder_combout\ = r_data_rx_int(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(7),
	combout => \r_data_rx_int[8]~feeder_combout\);

-- Location: FF_X23_Y27_N25
\r_data_rx_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx_int[8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(8));

-- Location: FF_X23_Y28_N25
\r_data_rx[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(8),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[8]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N10
\r_data_rx_int[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[9]~feeder_combout\ = r_data_rx_int(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(8),
	combout => \r_data_rx_int[9]~feeder_combout\);

-- Location: FF_X23_Y27_N11
\r_data_rx_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx_int[9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(9));

-- Location: FF_X23_Y28_N23
\r_data_rx[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(9),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[9]~reg0_q\);

-- Location: FF_X27_Y27_N25
\r_data_rx_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(9),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(10));

-- Location: LCCOMB_X24_Y28_N2
\r_data_rx[10]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[10]~reg0feeder_combout\ = r_data_rx_int(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(10),
	combout => \r_data_rx[10]~reg0feeder_combout\);

-- Location: FF_X24_Y28_N3
\r_data_rx[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[10]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[10]~reg0_q\);

-- Location: FF_X27_Y27_N17
\r_data_rx_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(10),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(11));

-- Location: FF_X27_Y28_N21
\r_data_rx[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(11),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[11]~reg0_q\);

-- Location: FF_X27_Y27_N15
\r_data_rx_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(11),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(12));

-- Location: FF_X26_Y28_N13
\r_data_rx[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(12),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[12]~reg0_q\);

-- Location: FF_X27_Y27_N23
\r_data_rx_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(12),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(13));

-- Location: FF_X29_Y26_N15
\r_data_rx[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(13),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[13]~reg0_q\);

-- Location: FF_X27_Y27_N3
\r_data_rx_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(13),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(14));

-- Location: FF_X30_Y27_N27
\r_data_rx[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(14),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[14]~reg0_q\);

-- Location: FF_X24_Y27_N9
\r_data_rx_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(14),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(15));

-- Location: FF_X24_Y27_N13
\r_data_rx[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(15),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[15]~reg0_q\);

-- Location: FF_X24_Y27_N15
\r_data_rx_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(15),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(16));

-- Location: FF_X24_Y27_N27
\r_data_rx[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(16),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[16]~reg0_q\);

-- Location: FF_X24_Y27_N17
\r_data_rx_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(16),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(17));

-- Location: LCCOMB_X24_Y27_N20
\r_data_rx[17]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[17]~reg0feeder_combout\ = r_data_rx_int(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(17),
	combout => \r_data_rx[17]~reg0feeder_combout\);

-- Location: FF_X24_Y27_N21
\r_data_rx[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[17]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[17]~reg0_q\);

-- Location: LCCOMB_X24_Y27_N10
\r_data_rx_int[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[18]~feeder_combout\ = r_data_rx_int(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(17),
	combout => \r_data_rx_int[18]~feeder_combout\);

-- Location: FF_X24_Y27_N11
\r_data_rx_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx_int[18]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(18));

-- Location: LCCOMB_X24_Y27_N2
\r_data_rx[18]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[18]~reg0feeder_combout\ = r_data_rx_int(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(18),
	combout => \r_data_rx[18]~reg0feeder_combout\);

-- Location: FF_X24_Y27_N3
\r_data_rx[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[18]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[18]~reg0_q\);

-- Location: LCCOMB_X24_Y27_N0
\r_data_rx_int[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[19]~feeder_combout\ = r_data_rx_int(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(18),
	combout => \r_data_rx_int[19]~feeder_combout\);

-- Location: FF_X24_Y27_N1
\r_data_rx_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx_int[19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(19));

-- Location: LCCOMB_X23_Y28_N20
\r_data_rx[19]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[19]~reg0feeder_combout\ = r_data_rx_int(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(19),
	combout => \r_data_rx[19]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N21
\r_data_rx[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[19]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[19]~reg0_q\);

-- Location: LCCOMB_X24_Y27_N22
\r_data_rx_int[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[20]~feeder_combout\ = r_data_rx_int(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(19),
	combout => \r_data_rx_int[20]~feeder_combout\);

-- Location: FF_X24_Y27_N23
\r_data_rx_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx_int[20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(20));

-- Location: FF_X24_Y27_N29
\r_data_rx[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(20),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[20]~reg0_q\);

-- Location: FF_X24_Y27_N5
\r_data_rx_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(20),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(21));

-- Location: FF_X24_Y27_N31
\r_data_rx[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	asdata => r_data_rx_int(21),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[21]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N12
\r_data_rx_int[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[22]~feeder_combout\ = r_data_rx_int(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(21),
	combout => \r_data_rx_int[22]~feeder_combout\);

-- Location: FF_X23_Y27_N13
\r_data_rx_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx_int[22]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(22));

-- Location: LCCOMB_X23_Y28_N26
\r_data_rx[22]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[22]~reg0feeder_combout\ = r_data_rx_int(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(22),
	combout => \r_data_rx[22]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N27
\r_data_rx[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[22]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[22]~reg0_q\);

-- Location: LCCOMB_X23_Y27_N26
\r_data_rx_int[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx_int[23]~feeder_combout\ = r_data_rx_int(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(22),
	combout => \r_data_rx_int[23]~feeder_combout\);

-- Location: FF_X23_Y27_N27
\r_data_rx_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx_int[23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \r_data_rx_int[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_data_rx_int(23));

-- Location: LCCOMB_X23_Y28_N0
\r_data_rx[23]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_data_rx[23]~reg0feeder_combout\ = r_data_rx_int(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_data_rx_int(23),
	combout => \r_data_rx[23]~reg0feeder_combout\);

-- Location: FF_X23_Y28_N1
\r_data_rx[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk~inputclkctrl_outclk\,
	d => \r_data_rx[23]~reg0feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \l_data_rx[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_data_rx[23]~reg0_q\);

ww_sclk <= \sclk~output_o\;

ww_ws <= \ws~output_o\;

ww_sd_tx <= \sd_tx~output_o\;

ww_l_data_rx(0) <= \l_data_rx[0]~output_o\;

ww_l_data_rx(1) <= \l_data_rx[1]~output_o\;

ww_l_data_rx(2) <= \l_data_rx[2]~output_o\;

ww_l_data_rx(3) <= \l_data_rx[3]~output_o\;

ww_l_data_rx(4) <= \l_data_rx[4]~output_o\;

ww_l_data_rx(5) <= \l_data_rx[5]~output_o\;

ww_l_data_rx(6) <= \l_data_rx[6]~output_o\;

ww_l_data_rx(7) <= \l_data_rx[7]~output_o\;

ww_l_data_rx(8) <= \l_data_rx[8]~output_o\;

ww_l_data_rx(9) <= \l_data_rx[9]~output_o\;

ww_l_data_rx(10) <= \l_data_rx[10]~output_o\;

ww_l_data_rx(11) <= \l_data_rx[11]~output_o\;

ww_l_data_rx(12) <= \l_data_rx[12]~output_o\;

ww_l_data_rx(13) <= \l_data_rx[13]~output_o\;

ww_l_data_rx(14) <= \l_data_rx[14]~output_o\;

ww_l_data_rx(15) <= \l_data_rx[15]~output_o\;

ww_l_data_rx(16) <= \l_data_rx[16]~output_o\;

ww_l_data_rx(17) <= \l_data_rx[17]~output_o\;

ww_l_data_rx(18) <= \l_data_rx[18]~output_o\;

ww_l_data_rx(19) <= \l_data_rx[19]~output_o\;

ww_l_data_rx(20) <= \l_data_rx[20]~output_o\;

ww_l_data_rx(21) <= \l_data_rx[21]~output_o\;

ww_l_data_rx(22) <= \l_data_rx[22]~output_o\;

ww_l_data_rx(23) <= \l_data_rx[23]~output_o\;

ww_r_data_rx(0) <= \r_data_rx[0]~output_o\;

ww_r_data_rx(1) <= \r_data_rx[1]~output_o\;

ww_r_data_rx(2) <= \r_data_rx[2]~output_o\;

ww_r_data_rx(3) <= \r_data_rx[3]~output_o\;

ww_r_data_rx(4) <= \r_data_rx[4]~output_o\;

ww_r_data_rx(5) <= \r_data_rx[5]~output_o\;

ww_r_data_rx(6) <= \r_data_rx[6]~output_o\;

ww_r_data_rx(7) <= \r_data_rx[7]~output_o\;

ww_r_data_rx(8) <= \r_data_rx[8]~output_o\;

ww_r_data_rx(9) <= \r_data_rx[9]~output_o\;

ww_r_data_rx(10) <= \r_data_rx[10]~output_o\;

ww_r_data_rx(11) <= \r_data_rx[11]~output_o\;

ww_r_data_rx(12) <= \r_data_rx[12]~output_o\;

ww_r_data_rx(13) <= \r_data_rx[13]~output_o\;

ww_r_data_rx(14) <= \r_data_rx[14]~output_o\;

ww_r_data_rx(15) <= \r_data_rx[15]~output_o\;

ww_r_data_rx(16) <= \r_data_rx[16]~output_o\;

ww_r_data_rx(17) <= \r_data_rx[17]~output_o\;

ww_r_data_rx(18) <= \r_data_rx[18]~output_o\;

ww_r_data_rx(19) <= \r_data_rx[19]~output_o\;

ww_r_data_rx(20) <= \r_data_rx[20]~output_o\;

ww_r_data_rx(21) <= \r_data_rx[21]~output_o\;

ww_r_data_rx(22) <= \r_data_rx[22]~output_o\;

ww_r_data_rx(23) <= \r_data_rx[23]~output_o\;
END structure;


