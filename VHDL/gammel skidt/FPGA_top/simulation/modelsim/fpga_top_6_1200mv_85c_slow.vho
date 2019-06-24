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

-- DATE "05/08/2019 13:45:31"

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

ENTITY 	fpga_top IS
    PORT (
	reset_n_ex : IN std_logic;
	mclk_ex : IN std_logic;
	sclk_ex : OUT std_logic;
	ws_ex : OUT std_logic;
	sd_rx_ex : IN std_logic;
	MX_OUT_ex : OUT std_logic_vector(23 DOWNTO 0);
	SEL_ex : IN std_logic_vector(1 DOWNTO 0)
	);
END fpga_top;

-- Design Ports Information
-- sclk_ex	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ws_ex	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[0]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[2]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[4]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[6]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[9]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[10]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[11]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[12]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[13]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[14]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[15]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[16]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[17]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[18]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[19]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[20]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[21]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[22]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT_ex[23]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_ex[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_ex[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mclk_ex	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n_ex	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sd_rx_ex	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fpga_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n_ex : std_logic;
SIGNAL ww_mclk_ex : std_logic;
SIGNAL ww_sclk_ex : std_logic;
SIGNAL ww_ws_ex : std_logic;
SIGNAL ww_sd_rx_ex : std_logic;
SIGNAL ww_MX_OUT_ex : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_SEL_ex : std_logic_vector(1 DOWNTO 0);
SIGNAL \mclk_ex~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n_ex~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sclk_ex~output_o\ : std_logic;
SIGNAL \ws_ex~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[0]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[1]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[2]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[3]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[4]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[5]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[6]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[7]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[8]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[9]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[10]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[11]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[12]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[13]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[14]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[15]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[16]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[17]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[18]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[19]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[20]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[21]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[22]~output_o\ : std_logic;
SIGNAL \MX_OUT_ex[23]~output_o\ : std_logic;
SIGNAL \mclk_ex~input_o\ : std_logic;
SIGNAL \mclk_ex~inputclkctrl_outclk\ : std_logic;
SIGNAL \w1|sclk_int~0_combout\ : std_logic;
SIGNAL \reset_n_ex~input_o\ : std_logic;
SIGNAL \reset_n_ex~inputclkctrl_outclk\ : std_logic;
SIGNAL \w1|sclk_cnt[0]~32_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[0]~33\ : std_logic;
SIGNAL \w1|sclk_cnt[1]~34_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[1]~35\ : std_logic;
SIGNAL \w1|sclk_cnt[2]~36_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[2]~37\ : std_logic;
SIGNAL \w1|sclk_cnt[3]~38_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[3]~39\ : std_logic;
SIGNAL \w1|sclk_cnt[4]~40_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[4]~41\ : std_logic;
SIGNAL \w1|sclk_cnt[5]~42_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[5]~43\ : std_logic;
SIGNAL \w1|sclk_cnt[6]~44_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[6]~45\ : std_logic;
SIGNAL \w1|sclk_cnt[7]~46_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[7]~47\ : std_logic;
SIGNAL \w1|sclk_cnt[8]~48_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[8]~49\ : std_logic;
SIGNAL \w1|sclk_cnt[9]~50_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[9]~51\ : std_logic;
SIGNAL \w1|sclk_cnt[10]~52_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[10]~53\ : std_logic;
SIGNAL \w1|sclk_cnt[11]~54_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[11]~55\ : std_logic;
SIGNAL \w1|sclk_cnt[12]~56_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[12]~57\ : std_logic;
SIGNAL \w1|sclk_cnt[13]~58_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[13]~59\ : std_logic;
SIGNAL \w1|sclk_cnt[14]~60_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[14]~61\ : std_logic;
SIGNAL \w1|sclk_cnt[15]~62_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[15]~63\ : std_logic;
SIGNAL \w1|sclk_cnt[16]~64_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[16]~65\ : std_logic;
SIGNAL \w1|sclk_cnt[17]~66_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[17]~67\ : std_logic;
SIGNAL \w1|sclk_cnt[18]~68_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[18]~69\ : std_logic;
SIGNAL \w1|sclk_cnt[19]~70_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[19]~71\ : std_logic;
SIGNAL \w1|sclk_cnt[20]~72_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[20]~73\ : std_logic;
SIGNAL \w1|sclk_cnt[21]~74_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[21]~75\ : std_logic;
SIGNAL \w1|sclk_cnt[22]~76_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[22]~77\ : std_logic;
SIGNAL \w1|sclk_cnt[23]~78_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[23]~79\ : std_logic;
SIGNAL \w1|sclk_cnt[24]~80_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[24]~81\ : std_logic;
SIGNAL \w1|sclk_cnt[25]~82_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[25]~83\ : std_logic;
SIGNAL \w1|sclk_cnt[26]~84_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[26]~85\ : std_logic;
SIGNAL \w1|sclk_cnt[27]~86_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[27]~87\ : std_logic;
SIGNAL \w1|sclk_cnt[28]~88_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[28]~89\ : std_logic;
SIGNAL \w1|sclk_cnt[29]~90_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[29]~91\ : std_logic;
SIGNAL \w1|sclk_cnt[30]~92_combout\ : std_logic;
SIGNAL \w1|sclk_cnt[30]~93\ : std_logic;
SIGNAL \w1|sclk_cnt[31]~94_combout\ : std_logic;
SIGNAL \w1|LessThan0~5_combout\ : std_logic;
SIGNAL \w1|LessThan0~6_combout\ : std_logic;
SIGNAL \w1|LessThan0~2_combout\ : std_logic;
SIGNAL \w1|LessThan0~3_combout\ : std_logic;
SIGNAL \w1|LessThan0~1_combout\ : std_logic;
SIGNAL \w1|LessThan0~0_combout\ : std_logic;
SIGNAL \w1|LessThan0~4_combout\ : std_logic;
SIGNAL \w1|LessThan0~7_combout\ : std_logic;
SIGNAL \w1|LessThan0~8_combout\ : std_logic;
SIGNAL \w1|LessThan0~9_combout\ : std_logic;
SIGNAL \w1|LessThan0~10_combout\ : std_logic;
SIGNAL \w1|sclk_int~q\ : std_logic;
SIGNAL \w1|ws_int~1_combout\ : std_logic;
SIGNAL \w1|Add1~0_combout\ : std_logic;
SIGNAL \w1|ws_cnt~14_combout\ : std_logic;
SIGNAL \w1|Add1~1\ : std_logic;
SIGNAL \w1|Add1~2_combout\ : std_logic;
SIGNAL \w1|ws_cnt~13_combout\ : std_logic;
SIGNAL \w1|Add1~3\ : std_logic;
SIGNAL \w1|Add1~4_combout\ : std_logic;
SIGNAL \w1|ws_cnt~12_combout\ : std_logic;
SIGNAL \w1|Add1~5\ : std_logic;
SIGNAL \w1|Add1~6_combout\ : std_logic;
SIGNAL \w1|ws_cnt~11_combout\ : std_logic;
SIGNAL \w1|Add1~7\ : std_logic;
SIGNAL \w1|Add1~8_combout\ : std_logic;
SIGNAL \w1|ws_cnt~10_combout\ : std_logic;
SIGNAL \w1|Add1~9\ : std_logic;
SIGNAL \w1|Add1~10_combout\ : std_logic;
SIGNAL \w1|ws_cnt~9_combout\ : std_logic;
SIGNAL \w1|Add1~11\ : std_logic;
SIGNAL \w1|Add1~12_combout\ : std_logic;
SIGNAL \w1|ws_cnt~31_combout\ : std_logic;
SIGNAL \w1|Add1~13\ : std_logic;
SIGNAL \w1|Add1~14_combout\ : std_logic;
SIGNAL \w1|ws_cnt~30_combout\ : std_logic;
SIGNAL \w1|Add1~15\ : std_logic;
SIGNAL \w1|Add1~16_combout\ : std_logic;
SIGNAL \w1|ws_cnt~29_combout\ : std_logic;
SIGNAL \w1|Add1~17\ : std_logic;
SIGNAL \w1|Add1~18_combout\ : std_logic;
SIGNAL \w1|ws_cnt~28_combout\ : std_logic;
SIGNAL \w1|Add1~19\ : std_logic;
SIGNAL \w1|Add1~20_combout\ : std_logic;
SIGNAL \w1|ws_cnt~27_combout\ : std_logic;
SIGNAL \w1|Add1~21\ : std_logic;
SIGNAL \w1|Add1~22_combout\ : std_logic;
SIGNAL \w1|ws_cnt~26_combout\ : std_logic;
SIGNAL \w1|Add1~23\ : std_logic;
SIGNAL \w1|Add1~24_combout\ : std_logic;
SIGNAL \w1|ws_cnt~25_combout\ : std_logic;
SIGNAL \w1|Add1~25\ : std_logic;
SIGNAL \w1|Add1~26_combout\ : std_logic;
SIGNAL \w1|ws_cnt~24_combout\ : std_logic;
SIGNAL \w1|Add1~27\ : std_logic;
SIGNAL \w1|Add1~28_combout\ : std_logic;
SIGNAL \w1|ws_cnt~23_combout\ : std_logic;
SIGNAL \w1|Add1~29\ : std_logic;
SIGNAL \w1|Add1~30_combout\ : std_logic;
SIGNAL \w1|ws_cnt~22_combout\ : std_logic;
SIGNAL \w1|Add1~31\ : std_logic;
SIGNAL \w1|Add1~32_combout\ : std_logic;
SIGNAL \w1|ws_cnt~21_combout\ : std_logic;
SIGNAL \w1|Add1~33\ : std_logic;
SIGNAL \w1|Add1~34_combout\ : std_logic;
SIGNAL \w1|ws_cnt~20_combout\ : std_logic;
SIGNAL \w1|Add1~35\ : std_logic;
SIGNAL \w1|Add1~36_combout\ : std_logic;
SIGNAL \w1|ws_cnt~19_combout\ : std_logic;
SIGNAL \w1|Add1~37\ : std_logic;
SIGNAL \w1|Add1~38_combout\ : std_logic;
SIGNAL \w1|ws_cnt~18_combout\ : std_logic;
SIGNAL \w1|Add1~39\ : std_logic;
SIGNAL \w1|Add1~40_combout\ : std_logic;
SIGNAL \w1|ws_cnt~17_combout\ : std_logic;
SIGNAL \w1|Add1~41\ : std_logic;
SIGNAL \w1|Add1~42_combout\ : std_logic;
SIGNAL \w1|ws_cnt~16_combout\ : std_logic;
SIGNAL \w1|Add1~43\ : std_logic;
SIGNAL \w1|Add1~44_combout\ : std_logic;
SIGNAL \w1|ws_cnt~15_combout\ : std_logic;
SIGNAL \w1|Add1~45\ : std_logic;
SIGNAL \w1|Add1~46_combout\ : std_logic;
SIGNAL \w1|ws_cnt~8_combout\ : std_logic;
SIGNAL \w1|Add1~47\ : std_logic;
SIGNAL \w1|Add1~48_combout\ : std_logic;
SIGNAL \w1|ws_cnt~7_combout\ : std_logic;
SIGNAL \w1|Add1~49\ : std_logic;
SIGNAL \w1|Add1~50_combout\ : std_logic;
SIGNAL \w1|ws_cnt~6_combout\ : std_logic;
SIGNAL \w1|Add1~51\ : std_logic;
SIGNAL \w1|Add1~52_combout\ : std_logic;
SIGNAL \w1|ws_cnt~5_combout\ : std_logic;
SIGNAL \w1|Add1~53\ : std_logic;
SIGNAL \w1|Add1~54_combout\ : std_logic;
SIGNAL \w1|ws_cnt~4_combout\ : std_logic;
SIGNAL \w1|Add1~55\ : std_logic;
SIGNAL \w1|Add1~56_combout\ : std_logic;
SIGNAL \w1|ws_cnt~3_combout\ : std_logic;
SIGNAL \w1|Add1~57\ : std_logic;
SIGNAL \w1|Add1~58_combout\ : std_logic;
SIGNAL \w1|ws_cnt~2_combout\ : std_logic;
SIGNAL \w1|Add1~59\ : std_logic;
SIGNAL \w1|Add1~60_combout\ : std_logic;
SIGNAL \w1|ws_cnt~1_combout\ : std_logic;
SIGNAL \w1|Add1~61\ : std_logic;
SIGNAL \w1|Add1~62_combout\ : std_logic;
SIGNAL \w1|ws_cnt~0_combout\ : std_logic;
SIGNAL \w1|LessThan1~8_combout\ : std_logic;
SIGNAL \w1|LessThan1~7_combout\ : std_logic;
SIGNAL \w1|LessThan1~5_combout\ : std_logic;
SIGNAL \w1|LessThan1~6_combout\ : std_logic;
SIGNAL \w1|LessThan1~9_combout\ : std_logic;
SIGNAL \w1|LessThan1~3_combout\ : std_logic;
SIGNAL \w1|LessThan1~0_combout\ : std_logic;
SIGNAL \w1|LessThan1~2_combout\ : std_logic;
SIGNAL \w1|LessThan1~1_combout\ : std_logic;
SIGNAL \w1|LessThan1~4_combout\ : std_logic;
SIGNAL \w1|LessThan1~10_combout\ : std_logic;
SIGNAL \w1|ws_int~0_combout\ : std_logic;
SIGNAL \w1|ws_int~q\ : std_logic;
SIGNAL \sd_rx_ex~input_o\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~3_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~2_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~4_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~1_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~8_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~7_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~6_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~9_combout\ : std_logic;
SIGNAL \w1|LessThan2~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~5_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~10_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~11_combout\ : std_logic;
SIGNAL \w1|r_data_rx[0]~feeder_combout\ : std_logic;
SIGNAL \SEL_ex[0]~input_o\ : std_logic;
SIGNAL \w1|l_data_rx_int[0]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~15_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~12_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~13_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~14_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[0]~16_combout\ : std_logic;
SIGNAL \w1|l_data_rx_int[0]~0_combout\ : std_logic;
SIGNAL \SEL_ex[1]~input_o\ : std_logic;
SIGNAL \w2|Mux23~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx[1]~feeder_combout\ : std_logic;
SIGNAL \w1|l_data_rx_int[1]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux22~0_combout\ : std_logic;
SIGNAL \w1|l_data_rx[2]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[2]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux21~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[3]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[3]~feeder_combout\ : std_logic;
SIGNAL \w1|l_data_rx_int[3]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux20~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx[4]~feeder_combout\ : std_logic;
SIGNAL \w1|l_data_rx_int[4]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux19~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[5]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[5]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux18~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx[6]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux17~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx[7]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux16~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[8]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[8]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux15~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[9]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[9]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux14~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[10]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[10]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux13~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[11]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[11]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux12~0_combout\ : std_logic;
SIGNAL \w2|Mux11~0_combout\ : std_logic;
SIGNAL \w1|l_data_rx_int[13]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[13]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[13]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux10~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[14]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[14]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux9~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[15]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[15]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux8~0_combout\ : std_logic;
SIGNAL \w1|l_data_rx_int[16]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[16]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[16]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux7~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[17]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[17]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux6~0_combout\ : std_logic;
SIGNAL \w2|Mux5~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx[19]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux4~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx[20]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux3~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[21]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[21]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux2~0_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[22]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[22]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux1~0_combout\ : std_logic;
SIGNAL \w1|l_data_rx_int[23]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx_int[23]~feeder_combout\ : std_logic;
SIGNAL \w1|r_data_rx[23]~feeder_combout\ : std_logic;
SIGNAL \w2|Mux0~0_combout\ : std_logic;
SIGNAL \w1|ws_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \w1|sclk_cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \w1|r_data_rx_int\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \w1|r_data_rx\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \w1|l_data_rx_int\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \w1|l_data_rx\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \w1|ALT_INV_LessThan0~10_combout\ : std_logic;

BEGIN

ww_reset_n_ex <= reset_n_ex;
ww_mclk_ex <= mclk_ex;
sclk_ex <= ww_sclk_ex;
ws_ex <= ww_ws_ex;
ww_sd_rx_ex <= sd_rx_ex;
MX_OUT_ex <= ww_MX_OUT_ex;
ww_SEL_ex <= SEL_ex;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mclk_ex~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mclk_ex~input_o\);

\reset_n_ex~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n_ex~input_o\);
\w1|ALT_INV_LessThan0~10_combout\ <= NOT \w1|LessThan0~10_combout\;

-- Location: IOOBUF_X41_Y10_N2
\sclk_ex~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w1|sclk_int~q\,
	devoe => ww_devoe,
	o => \sclk_ex~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\ws_ex~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w1|ws_int~q\,
	devoe => ww_devoe,
	o => \ws_ex~output_o\);

-- Location: IOOBUF_X41_Y13_N16
\MX_OUT_ex[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux23~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[0]~output_o\);

-- Location: IOOBUF_X41_Y13_N2
\MX_OUT_ex[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux22~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[1]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\MX_OUT_ex[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux21~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[2]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\MX_OUT_ex[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux20~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[3]~output_o\);

-- Location: IOOBUF_X41_Y13_N23
\MX_OUT_ex[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[4]~output_o\);

-- Location: IOOBUF_X41_Y12_N9
\MX_OUT_ex[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[5]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\MX_OUT_ex[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[6]~output_o\);

-- Location: IOOBUF_X41_Y8_N23
\MX_OUT_ex[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[7]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\MX_OUT_ex[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[8]~output_o\);

-- Location: IOOBUF_X41_Y12_N16
\MX_OUT_ex[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[9]~output_o\);

-- Location: IOOBUF_X41_Y8_N2
\MX_OUT_ex[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[10]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\MX_OUT_ex[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[11]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\MX_OUT_ex[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[12]~output_o\);

-- Location: IOOBUF_X41_Y10_N23
\MX_OUT_ex[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[13]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\MX_OUT_ex[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[14]~output_o\);

-- Location: IOOBUF_X41_Y10_N16
\MX_OUT_ex[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[15]~output_o\);

-- Location: IOOBUF_X41_Y2_N16
\MX_OUT_ex[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[16]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\MX_OUT_ex[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[17]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\MX_OUT_ex[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[18]~output_o\);

-- Location: IOOBUF_X41_Y14_N23
\MX_OUT_ex[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[19]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\MX_OUT_ex[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[20]~output_o\);

-- Location: IOOBUF_X41_Y8_N9
\MX_OUT_ex[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[21]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\MX_OUT_ex[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[22]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\MX_OUT_ex[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \w2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \MX_OUT_ex[23]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\mclk_ex~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mclk_ex,
	o => \mclk_ex~input_o\);

-- Location: CLKCTRL_G4
\mclk_ex~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mclk_ex~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mclk_ex~inputclkctrl_outclk\);

-- Location: LCCOMB_X35_Y13_N20
\w1|sclk_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_int~0_combout\ = !\w1|sclk_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|sclk_int~q\,
	combout => \w1|sclk_int~0_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset_n_ex~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n_ex,
	o => \reset_n_ex~input_o\);

-- Location: CLKCTRL_G2
\reset_n_ex~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n_ex~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n_ex~inputclkctrl_outclk\);

-- Location: LCCOMB_X36_Y16_N0
\w1|sclk_cnt[0]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[0]~32_combout\ = \w1|sclk_cnt\(0) $ (VCC)
-- \w1|sclk_cnt[0]~33\ = CARRY(\w1|sclk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(0),
	datad => VCC,
	combout => \w1|sclk_cnt[0]~32_combout\,
	cout => \w1|sclk_cnt[0]~33\);

-- Location: FF_X36_Y16_N1
\w1|sclk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[0]~32_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(0));

-- Location: LCCOMB_X36_Y16_N2
\w1|sclk_cnt[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[1]~34_combout\ = (\w1|sclk_cnt\(1) & (!\w1|sclk_cnt[0]~33\)) # (!\w1|sclk_cnt\(1) & ((\w1|sclk_cnt[0]~33\) # (GND)))
-- \w1|sclk_cnt[1]~35\ = CARRY((!\w1|sclk_cnt[0]~33\) # (!\w1|sclk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(1),
	datad => VCC,
	cin => \w1|sclk_cnt[0]~33\,
	combout => \w1|sclk_cnt[1]~34_combout\,
	cout => \w1|sclk_cnt[1]~35\);

-- Location: FF_X36_Y16_N3
\w1|sclk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[1]~34_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(1));

-- Location: LCCOMB_X36_Y16_N4
\w1|sclk_cnt[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[2]~36_combout\ = (\w1|sclk_cnt\(2) & (\w1|sclk_cnt[1]~35\ $ (GND))) # (!\w1|sclk_cnt\(2) & (!\w1|sclk_cnt[1]~35\ & VCC))
-- \w1|sclk_cnt[2]~37\ = CARRY((\w1|sclk_cnt\(2) & !\w1|sclk_cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(2),
	datad => VCC,
	cin => \w1|sclk_cnt[1]~35\,
	combout => \w1|sclk_cnt[2]~36_combout\,
	cout => \w1|sclk_cnt[2]~37\);

-- Location: FF_X36_Y16_N5
\w1|sclk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[2]~36_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(2));

-- Location: LCCOMB_X36_Y16_N6
\w1|sclk_cnt[3]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[3]~38_combout\ = (\w1|sclk_cnt\(3) & (!\w1|sclk_cnt[2]~37\)) # (!\w1|sclk_cnt\(3) & ((\w1|sclk_cnt[2]~37\) # (GND)))
-- \w1|sclk_cnt[3]~39\ = CARRY((!\w1|sclk_cnt[2]~37\) # (!\w1|sclk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(3),
	datad => VCC,
	cin => \w1|sclk_cnt[2]~37\,
	combout => \w1|sclk_cnt[3]~38_combout\,
	cout => \w1|sclk_cnt[3]~39\);

-- Location: FF_X36_Y16_N7
\w1|sclk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[3]~38_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(3));

-- Location: LCCOMB_X36_Y16_N8
\w1|sclk_cnt[4]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[4]~40_combout\ = (\w1|sclk_cnt\(4) & (\w1|sclk_cnt[3]~39\ $ (GND))) # (!\w1|sclk_cnt\(4) & (!\w1|sclk_cnt[3]~39\ & VCC))
-- \w1|sclk_cnt[4]~41\ = CARRY((\w1|sclk_cnt\(4) & !\w1|sclk_cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(4),
	datad => VCC,
	cin => \w1|sclk_cnt[3]~39\,
	combout => \w1|sclk_cnt[4]~40_combout\,
	cout => \w1|sclk_cnt[4]~41\);

-- Location: FF_X36_Y16_N9
\w1|sclk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[4]~40_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(4));

-- Location: LCCOMB_X36_Y16_N10
\w1|sclk_cnt[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[5]~42_combout\ = (\w1|sclk_cnt\(5) & (!\w1|sclk_cnt[4]~41\)) # (!\w1|sclk_cnt\(5) & ((\w1|sclk_cnt[4]~41\) # (GND)))
-- \w1|sclk_cnt[5]~43\ = CARRY((!\w1|sclk_cnt[4]~41\) # (!\w1|sclk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(5),
	datad => VCC,
	cin => \w1|sclk_cnt[4]~41\,
	combout => \w1|sclk_cnt[5]~42_combout\,
	cout => \w1|sclk_cnt[5]~43\);

-- Location: FF_X36_Y16_N11
\w1|sclk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[5]~42_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(5));

-- Location: LCCOMB_X36_Y16_N12
\w1|sclk_cnt[6]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[6]~44_combout\ = (\w1|sclk_cnt\(6) & (\w1|sclk_cnt[5]~43\ $ (GND))) # (!\w1|sclk_cnt\(6) & (!\w1|sclk_cnt[5]~43\ & VCC))
-- \w1|sclk_cnt[6]~45\ = CARRY((\w1|sclk_cnt\(6) & !\w1|sclk_cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(6),
	datad => VCC,
	cin => \w1|sclk_cnt[5]~43\,
	combout => \w1|sclk_cnt[6]~44_combout\,
	cout => \w1|sclk_cnt[6]~45\);

-- Location: FF_X36_Y16_N13
\w1|sclk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[6]~44_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(6));

-- Location: LCCOMB_X36_Y16_N14
\w1|sclk_cnt[7]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[7]~46_combout\ = (\w1|sclk_cnt\(7) & (!\w1|sclk_cnt[6]~45\)) # (!\w1|sclk_cnt\(7) & ((\w1|sclk_cnt[6]~45\) # (GND)))
-- \w1|sclk_cnt[7]~47\ = CARRY((!\w1|sclk_cnt[6]~45\) # (!\w1|sclk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(7),
	datad => VCC,
	cin => \w1|sclk_cnt[6]~45\,
	combout => \w1|sclk_cnt[7]~46_combout\,
	cout => \w1|sclk_cnt[7]~47\);

-- Location: FF_X36_Y16_N15
\w1|sclk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[7]~46_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(7));

-- Location: LCCOMB_X36_Y16_N16
\w1|sclk_cnt[8]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[8]~48_combout\ = (\w1|sclk_cnt\(8) & (\w1|sclk_cnt[7]~47\ $ (GND))) # (!\w1|sclk_cnt\(8) & (!\w1|sclk_cnt[7]~47\ & VCC))
-- \w1|sclk_cnt[8]~49\ = CARRY((\w1|sclk_cnt\(8) & !\w1|sclk_cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(8),
	datad => VCC,
	cin => \w1|sclk_cnt[7]~47\,
	combout => \w1|sclk_cnt[8]~48_combout\,
	cout => \w1|sclk_cnt[8]~49\);

-- Location: FF_X36_Y16_N17
\w1|sclk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[8]~48_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(8));

-- Location: LCCOMB_X36_Y16_N18
\w1|sclk_cnt[9]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[9]~50_combout\ = (\w1|sclk_cnt\(9) & (!\w1|sclk_cnt[8]~49\)) # (!\w1|sclk_cnt\(9) & ((\w1|sclk_cnt[8]~49\) # (GND)))
-- \w1|sclk_cnt[9]~51\ = CARRY((!\w1|sclk_cnt[8]~49\) # (!\w1|sclk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(9),
	datad => VCC,
	cin => \w1|sclk_cnt[8]~49\,
	combout => \w1|sclk_cnt[9]~50_combout\,
	cout => \w1|sclk_cnt[9]~51\);

-- Location: FF_X36_Y16_N19
\w1|sclk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[9]~50_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(9));

-- Location: LCCOMB_X36_Y16_N20
\w1|sclk_cnt[10]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[10]~52_combout\ = (\w1|sclk_cnt\(10) & (\w1|sclk_cnt[9]~51\ $ (GND))) # (!\w1|sclk_cnt\(10) & (!\w1|sclk_cnt[9]~51\ & VCC))
-- \w1|sclk_cnt[10]~53\ = CARRY((\w1|sclk_cnt\(10) & !\w1|sclk_cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(10),
	datad => VCC,
	cin => \w1|sclk_cnt[9]~51\,
	combout => \w1|sclk_cnt[10]~52_combout\,
	cout => \w1|sclk_cnt[10]~53\);

-- Location: FF_X36_Y16_N21
\w1|sclk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[10]~52_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(10));

-- Location: LCCOMB_X36_Y16_N22
\w1|sclk_cnt[11]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[11]~54_combout\ = (\w1|sclk_cnt\(11) & (!\w1|sclk_cnt[10]~53\)) # (!\w1|sclk_cnt\(11) & ((\w1|sclk_cnt[10]~53\) # (GND)))
-- \w1|sclk_cnt[11]~55\ = CARRY((!\w1|sclk_cnt[10]~53\) # (!\w1|sclk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(11),
	datad => VCC,
	cin => \w1|sclk_cnt[10]~53\,
	combout => \w1|sclk_cnt[11]~54_combout\,
	cout => \w1|sclk_cnt[11]~55\);

-- Location: FF_X36_Y16_N23
\w1|sclk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[11]~54_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(11));

-- Location: LCCOMB_X36_Y16_N24
\w1|sclk_cnt[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[12]~56_combout\ = (\w1|sclk_cnt\(12) & (\w1|sclk_cnt[11]~55\ $ (GND))) # (!\w1|sclk_cnt\(12) & (!\w1|sclk_cnt[11]~55\ & VCC))
-- \w1|sclk_cnt[12]~57\ = CARRY((\w1|sclk_cnt\(12) & !\w1|sclk_cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(12),
	datad => VCC,
	cin => \w1|sclk_cnt[11]~55\,
	combout => \w1|sclk_cnt[12]~56_combout\,
	cout => \w1|sclk_cnt[12]~57\);

-- Location: FF_X36_Y16_N25
\w1|sclk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[12]~56_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(12));

-- Location: LCCOMB_X36_Y16_N26
\w1|sclk_cnt[13]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[13]~58_combout\ = (\w1|sclk_cnt\(13) & (!\w1|sclk_cnt[12]~57\)) # (!\w1|sclk_cnt\(13) & ((\w1|sclk_cnt[12]~57\) # (GND)))
-- \w1|sclk_cnt[13]~59\ = CARRY((!\w1|sclk_cnt[12]~57\) # (!\w1|sclk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(13),
	datad => VCC,
	cin => \w1|sclk_cnt[12]~57\,
	combout => \w1|sclk_cnt[13]~58_combout\,
	cout => \w1|sclk_cnt[13]~59\);

-- Location: FF_X36_Y16_N27
\w1|sclk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[13]~58_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(13));

-- Location: LCCOMB_X36_Y16_N28
\w1|sclk_cnt[14]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[14]~60_combout\ = (\w1|sclk_cnt\(14) & (\w1|sclk_cnt[13]~59\ $ (GND))) # (!\w1|sclk_cnt\(14) & (!\w1|sclk_cnt[13]~59\ & VCC))
-- \w1|sclk_cnt[14]~61\ = CARRY((\w1|sclk_cnt\(14) & !\w1|sclk_cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(14),
	datad => VCC,
	cin => \w1|sclk_cnt[13]~59\,
	combout => \w1|sclk_cnt[14]~60_combout\,
	cout => \w1|sclk_cnt[14]~61\);

-- Location: FF_X36_Y16_N29
\w1|sclk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[14]~60_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(14));

-- Location: LCCOMB_X36_Y16_N30
\w1|sclk_cnt[15]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[15]~62_combout\ = (\w1|sclk_cnt\(15) & (!\w1|sclk_cnt[14]~61\)) # (!\w1|sclk_cnt\(15) & ((\w1|sclk_cnt[14]~61\) # (GND)))
-- \w1|sclk_cnt[15]~63\ = CARRY((!\w1|sclk_cnt[14]~61\) # (!\w1|sclk_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(15),
	datad => VCC,
	cin => \w1|sclk_cnt[14]~61\,
	combout => \w1|sclk_cnt[15]~62_combout\,
	cout => \w1|sclk_cnt[15]~63\);

-- Location: FF_X36_Y16_N31
\w1|sclk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[15]~62_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(15));

-- Location: LCCOMB_X36_Y15_N0
\w1|sclk_cnt[16]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[16]~64_combout\ = (\w1|sclk_cnt\(16) & (\w1|sclk_cnt[15]~63\ $ (GND))) # (!\w1|sclk_cnt\(16) & (!\w1|sclk_cnt[15]~63\ & VCC))
-- \w1|sclk_cnt[16]~65\ = CARRY((\w1|sclk_cnt\(16) & !\w1|sclk_cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(16),
	datad => VCC,
	cin => \w1|sclk_cnt[15]~63\,
	combout => \w1|sclk_cnt[16]~64_combout\,
	cout => \w1|sclk_cnt[16]~65\);

-- Location: FF_X36_Y15_N1
\w1|sclk_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[16]~64_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(16));

-- Location: LCCOMB_X36_Y15_N2
\w1|sclk_cnt[17]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[17]~66_combout\ = (\w1|sclk_cnt\(17) & (!\w1|sclk_cnt[16]~65\)) # (!\w1|sclk_cnt\(17) & ((\w1|sclk_cnt[16]~65\) # (GND)))
-- \w1|sclk_cnt[17]~67\ = CARRY((!\w1|sclk_cnt[16]~65\) # (!\w1|sclk_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(17),
	datad => VCC,
	cin => \w1|sclk_cnt[16]~65\,
	combout => \w1|sclk_cnt[17]~66_combout\,
	cout => \w1|sclk_cnt[17]~67\);

-- Location: FF_X36_Y15_N3
\w1|sclk_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[17]~66_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(17));

-- Location: LCCOMB_X36_Y15_N4
\w1|sclk_cnt[18]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[18]~68_combout\ = (\w1|sclk_cnt\(18) & (\w1|sclk_cnt[17]~67\ $ (GND))) # (!\w1|sclk_cnt\(18) & (!\w1|sclk_cnt[17]~67\ & VCC))
-- \w1|sclk_cnt[18]~69\ = CARRY((\w1|sclk_cnt\(18) & !\w1|sclk_cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(18),
	datad => VCC,
	cin => \w1|sclk_cnt[17]~67\,
	combout => \w1|sclk_cnt[18]~68_combout\,
	cout => \w1|sclk_cnt[18]~69\);

-- Location: FF_X36_Y15_N5
\w1|sclk_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[18]~68_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(18));

-- Location: LCCOMB_X36_Y15_N6
\w1|sclk_cnt[19]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[19]~70_combout\ = (\w1|sclk_cnt\(19) & (!\w1|sclk_cnt[18]~69\)) # (!\w1|sclk_cnt\(19) & ((\w1|sclk_cnt[18]~69\) # (GND)))
-- \w1|sclk_cnt[19]~71\ = CARRY((!\w1|sclk_cnt[18]~69\) # (!\w1|sclk_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(19),
	datad => VCC,
	cin => \w1|sclk_cnt[18]~69\,
	combout => \w1|sclk_cnt[19]~70_combout\,
	cout => \w1|sclk_cnt[19]~71\);

-- Location: FF_X36_Y15_N7
\w1|sclk_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[19]~70_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(19));

-- Location: LCCOMB_X36_Y15_N8
\w1|sclk_cnt[20]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[20]~72_combout\ = (\w1|sclk_cnt\(20) & (\w1|sclk_cnt[19]~71\ $ (GND))) # (!\w1|sclk_cnt\(20) & (!\w1|sclk_cnt[19]~71\ & VCC))
-- \w1|sclk_cnt[20]~73\ = CARRY((\w1|sclk_cnt\(20) & !\w1|sclk_cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(20),
	datad => VCC,
	cin => \w1|sclk_cnt[19]~71\,
	combout => \w1|sclk_cnt[20]~72_combout\,
	cout => \w1|sclk_cnt[20]~73\);

-- Location: FF_X36_Y15_N9
\w1|sclk_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[20]~72_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(20));

-- Location: LCCOMB_X36_Y15_N10
\w1|sclk_cnt[21]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[21]~74_combout\ = (\w1|sclk_cnt\(21) & (!\w1|sclk_cnt[20]~73\)) # (!\w1|sclk_cnt\(21) & ((\w1|sclk_cnt[20]~73\) # (GND)))
-- \w1|sclk_cnt[21]~75\ = CARRY((!\w1|sclk_cnt[20]~73\) # (!\w1|sclk_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(21),
	datad => VCC,
	cin => \w1|sclk_cnt[20]~73\,
	combout => \w1|sclk_cnt[21]~74_combout\,
	cout => \w1|sclk_cnt[21]~75\);

-- Location: FF_X36_Y15_N11
\w1|sclk_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[21]~74_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(21));

-- Location: LCCOMB_X36_Y15_N12
\w1|sclk_cnt[22]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[22]~76_combout\ = (\w1|sclk_cnt\(22) & (\w1|sclk_cnt[21]~75\ $ (GND))) # (!\w1|sclk_cnt\(22) & (!\w1|sclk_cnt[21]~75\ & VCC))
-- \w1|sclk_cnt[22]~77\ = CARRY((\w1|sclk_cnt\(22) & !\w1|sclk_cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(22),
	datad => VCC,
	cin => \w1|sclk_cnt[21]~75\,
	combout => \w1|sclk_cnt[22]~76_combout\,
	cout => \w1|sclk_cnt[22]~77\);

-- Location: FF_X36_Y15_N13
\w1|sclk_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[22]~76_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(22));

-- Location: LCCOMB_X36_Y15_N14
\w1|sclk_cnt[23]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[23]~78_combout\ = (\w1|sclk_cnt\(23) & (!\w1|sclk_cnt[22]~77\)) # (!\w1|sclk_cnt\(23) & ((\w1|sclk_cnt[22]~77\) # (GND)))
-- \w1|sclk_cnt[23]~79\ = CARRY((!\w1|sclk_cnt[22]~77\) # (!\w1|sclk_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(23),
	datad => VCC,
	cin => \w1|sclk_cnt[22]~77\,
	combout => \w1|sclk_cnt[23]~78_combout\,
	cout => \w1|sclk_cnt[23]~79\);

-- Location: FF_X36_Y15_N15
\w1|sclk_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[23]~78_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(23));

-- Location: LCCOMB_X36_Y15_N16
\w1|sclk_cnt[24]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[24]~80_combout\ = (\w1|sclk_cnt\(24) & (\w1|sclk_cnt[23]~79\ $ (GND))) # (!\w1|sclk_cnt\(24) & (!\w1|sclk_cnt[23]~79\ & VCC))
-- \w1|sclk_cnt[24]~81\ = CARRY((\w1|sclk_cnt\(24) & !\w1|sclk_cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(24),
	datad => VCC,
	cin => \w1|sclk_cnt[23]~79\,
	combout => \w1|sclk_cnt[24]~80_combout\,
	cout => \w1|sclk_cnt[24]~81\);

-- Location: FF_X36_Y15_N17
\w1|sclk_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[24]~80_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(24));

-- Location: LCCOMB_X36_Y15_N18
\w1|sclk_cnt[25]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[25]~82_combout\ = (\w1|sclk_cnt\(25) & (!\w1|sclk_cnt[24]~81\)) # (!\w1|sclk_cnt\(25) & ((\w1|sclk_cnt[24]~81\) # (GND)))
-- \w1|sclk_cnt[25]~83\ = CARRY((!\w1|sclk_cnt[24]~81\) # (!\w1|sclk_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(25),
	datad => VCC,
	cin => \w1|sclk_cnt[24]~81\,
	combout => \w1|sclk_cnt[25]~82_combout\,
	cout => \w1|sclk_cnt[25]~83\);

-- Location: FF_X36_Y15_N19
\w1|sclk_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[25]~82_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(25));

-- Location: LCCOMB_X36_Y15_N20
\w1|sclk_cnt[26]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[26]~84_combout\ = (\w1|sclk_cnt\(26) & (\w1|sclk_cnt[25]~83\ $ (GND))) # (!\w1|sclk_cnt\(26) & (!\w1|sclk_cnt[25]~83\ & VCC))
-- \w1|sclk_cnt[26]~85\ = CARRY((\w1|sclk_cnt\(26) & !\w1|sclk_cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(26),
	datad => VCC,
	cin => \w1|sclk_cnt[25]~83\,
	combout => \w1|sclk_cnt[26]~84_combout\,
	cout => \w1|sclk_cnt[26]~85\);

-- Location: FF_X36_Y15_N21
\w1|sclk_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[26]~84_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(26));

-- Location: LCCOMB_X36_Y15_N22
\w1|sclk_cnt[27]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[27]~86_combout\ = (\w1|sclk_cnt\(27) & (!\w1|sclk_cnt[26]~85\)) # (!\w1|sclk_cnt\(27) & ((\w1|sclk_cnt[26]~85\) # (GND)))
-- \w1|sclk_cnt[27]~87\ = CARRY((!\w1|sclk_cnt[26]~85\) # (!\w1|sclk_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(27),
	datad => VCC,
	cin => \w1|sclk_cnt[26]~85\,
	combout => \w1|sclk_cnt[27]~86_combout\,
	cout => \w1|sclk_cnt[27]~87\);

-- Location: FF_X36_Y15_N23
\w1|sclk_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[27]~86_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(27));

-- Location: LCCOMB_X36_Y15_N24
\w1|sclk_cnt[28]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[28]~88_combout\ = (\w1|sclk_cnt\(28) & (\w1|sclk_cnt[27]~87\ $ (GND))) # (!\w1|sclk_cnt\(28) & (!\w1|sclk_cnt[27]~87\ & VCC))
-- \w1|sclk_cnt[28]~89\ = CARRY((\w1|sclk_cnt\(28) & !\w1|sclk_cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(28),
	datad => VCC,
	cin => \w1|sclk_cnt[27]~87\,
	combout => \w1|sclk_cnt[28]~88_combout\,
	cout => \w1|sclk_cnt[28]~89\);

-- Location: FF_X36_Y15_N25
\w1|sclk_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[28]~88_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(28));

-- Location: LCCOMB_X36_Y15_N26
\w1|sclk_cnt[29]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[29]~90_combout\ = (\w1|sclk_cnt\(29) & (!\w1|sclk_cnt[28]~89\)) # (!\w1|sclk_cnt\(29) & ((\w1|sclk_cnt[28]~89\) # (GND)))
-- \w1|sclk_cnt[29]~91\ = CARRY((!\w1|sclk_cnt[28]~89\) # (!\w1|sclk_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(29),
	datad => VCC,
	cin => \w1|sclk_cnt[28]~89\,
	combout => \w1|sclk_cnt[29]~90_combout\,
	cout => \w1|sclk_cnt[29]~91\);

-- Location: FF_X36_Y15_N27
\w1|sclk_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[29]~90_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(29));

-- Location: LCCOMB_X36_Y15_N28
\w1|sclk_cnt[30]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[30]~92_combout\ = (\w1|sclk_cnt\(30) & (\w1|sclk_cnt[29]~91\ $ (GND))) # (!\w1|sclk_cnt\(30) & (!\w1|sclk_cnt[29]~91\ & VCC))
-- \w1|sclk_cnt[30]~93\ = CARRY((\w1|sclk_cnt\(30) & !\w1|sclk_cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|sclk_cnt\(30),
	datad => VCC,
	cin => \w1|sclk_cnt[29]~91\,
	combout => \w1|sclk_cnt[30]~92_combout\,
	cout => \w1|sclk_cnt[30]~93\);

-- Location: FF_X36_Y15_N29
\w1|sclk_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[30]~92_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(30));

-- Location: LCCOMB_X36_Y15_N30
\w1|sclk_cnt[31]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|sclk_cnt[31]~94_combout\ = \w1|sclk_cnt\(31) $ (\w1|sclk_cnt[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(31),
	cin => \w1|sclk_cnt[30]~93\,
	combout => \w1|sclk_cnt[31]~94_combout\);

-- Location: FF_X36_Y15_N31
\w1|sclk_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_cnt[31]~94_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sclr => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_cnt\(31));

-- Location: LCCOMB_X37_Y15_N0
\w1|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan0~5_combout\ = (!\w1|sclk_cnt\(16) & (!\w1|sclk_cnt\(18) & (!\w1|sclk_cnt\(19) & !\w1|sclk_cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(16),
	datab => \w1|sclk_cnt\(18),
	datac => \w1|sclk_cnt\(19),
	datad => \w1|sclk_cnt\(17),
	combout => \w1|LessThan0~5_combout\);

-- Location: LCCOMB_X37_Y15_N22
\w1|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan0~6_combout\ = (!\w1|sclk_cnt\(21) & (!\w1|sclk_cnt\(23) & (!\w1|sclk_cnt\(20) & !\w1|sclk_cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(21),
	datab => \w1|sclk_cnt\(23),
	datac => \w1|sclk_cnt\(20),
	datad => \w1|sclk_cnt\(22),
	combout => \w1|LessThan0~6_combout\);

-- Location: LCCOMB_X37_Y16_N22
\w1|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan0~2_combout\ = (!\w1|sclk_cnt\(8) & (!\w1|sclk_cnt\(10) & (!\w1|sclk_cnt\(11) & !\w1|sclk_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(8),
	datab => \w1|sclk_cnt\(10),
	datac => \w1|sclk_cnt\(11),
	datad => \w1|sclk_cnt\(9),
	combout => \w1|LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y16_N24
\w1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan0~3_combout\ = (!\w1|sclk_cnt\(13) & (!\w1|sclk_cnt\(14) & (!\w1|sclk_cnt\(12) & !\w1|sclk_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(13),
	datab => \w1|sclk_cnt\(14),
	datac => \w1|sclk_cnt\(12),
	datad => \w1|sclk_cnt\(15),
	combout => \w1|LessThan0~3_combout\);

-- Location: LCCOMB_X37_Y16_N4
\w1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan0~1_combout\ = (!\w1|sclk_cnt\(7) & (!\w1|sclk_cnt\(5) & (!\w1|sclk_cnt\(6) & !\w1|sclk_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(7),
	datab => \w1|sclk_cnt\(5),
	datac => \w1|sclk_cnt\(6),
	datad => \w1|sclk_cnt\(4),
	combout => \w1|LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y16_N2
\w1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan0~0_combout\ = (!\w1|sclk_cnt\(3) & (((!\w1|sclk_cnt\(0) & !\w1|sclk_cnt\(1))) # (!\w1|sclk_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(0),
	datab => \w1|sclk_cnt\(3),
	datac => \w1|sclk_cnt\(2),
	datad => \w1|sclk_cnt\(1),
	combout => \w1|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y16_N26
\w1|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan0~4_combout\ = (\w1|LessThan0~2_combout\ & (\w1|LessThan0~3_combout\ & (\w1|LessThan0~1_combout\ & \w1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan0~2_combout\,
	datab => \w1|LessThan0~3_combout\,
	datac => \w1|LessThan0~1_combout\,
	datad => \w1|LessThan0~0_combout\,
	combout => \w1|LessThan0~4_combout\);

-- Location: LCCOMB_X37_Y15_N4
\w1|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan0~7_combout\ = (!\w1|sclk_cnt\(24) & (!\w1|sclk_cnt\(26) & (!\w1|sclk_cnt\(27) & !\w1|sclk_cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(24),
	datab => \w1|sclk_cnt\(26),
	datac => \w1|sclk_cnt\(27),
	datad => \w1|sclk_cnt\(25),
	combout => \w1|LessThan0~7_combout\);

-- Location: LCCOMB_X37_Y15_N2
\w1|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan0~8_combout\ = (!\w1|sclk_cnt\(29) & (!\w1|sclk_cnt\(30) & (\w1|LessThan0~7_combout\ & !\w1|sclk_cnt\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(29),
	datab => \w1|sclk_cnt\(30),
	datac => \w1|LessThan0~7_combout\,
	datad => \w1|sclk_cnt\(28),
	combout => \w1|LessThan0~8_combout\);

-- Location: LCCOMB_X37_Y16_N20
\w1|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan0~9_combout\ = (\w1|LessThan0~5_combout\ & (\w1|LessThan0~6_combout\ & (\w1|LessThan0~4_combout\ & \w1|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan0~5_combout\,
	datab => \w1|LessThan0~6_combout\,
	datac => \w1|LessThan0~4_combout\,
	datad => \w1|LessThan0~8_combout\,
	combout => \w1|LessThan0~9_combout\);

-- Location: LCCOMB_X37_Y16_N18
\w1|LessThan0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan0~10_combout\ = (\w1|sclk_cnt\(31)) # (\w1|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|sclk_cnt\(31),
	datad => \w1|LessThan0~9_combout\,
	combout => \w1|LessThan0~10_combout\);

-- Location: FF_X35_Y13_N21
\w1|sclk_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|sclk_int~0_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|sclk_int~q\);

-- Location: LCCOMB_X38_Y14_N8
\w1|ws_int~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_int~1_combout\ = !\w1|ws_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|ws_int~q\,
	combout => \w1|ws_int~1_combout\);

-- Location: LCCOMB_X36_Y13_N0
\w1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~0_combout\ = \w1|ws_cnt\(0) $ (VCC)
-- \w1|Add1~1\ = CARRY(\w1|ws_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(0),
	datad => VCC,
	combout => \w1|Add1~0_combout\,
	cout => \w1|Add1~1\);

-- Location: LCCOMB_X37_Y13_N12
\w1|ws_cnt~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~14_combout\ = (\w1|Add1~0_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~0_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~14_combout\);

-- Location: FF_X36_Y13_N13
\w1|ws_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~14_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(0));

-- Location: LCCOMB_X36_Y13_N2
\w1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~2_combout\ = (\w1|ws_cnt\(1) & (!\w1|Add1~1\)) # (!\w1|ws_cnt\(1) & ((\w1|Add1~1\) # (GND)))
-- \w1|Add1~3\ = CARRY((!\w1|Add1~1\) # (!\w1|ws_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(1),
	datad => VCC,
	cin => \w1|Add1~1\,
	combout => \w1|Add1~2_combout\,
	cout => \w1|Add1~3\);

-- Location: LCCOMB_X37_Y13_N30
\w1|ws_cnt~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~13_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~2_combout\,
	combout => \w1|ws_cnt~13_combout\);

-- Location: FF_X36_Y13_N5
\w1|ws_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~13_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(1));

-- Location: LCCOMB_X36_Y13_N4
\w1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~4_combout\ = (\w1|ws_cnt\(2) & (\w1|Add1~3\ $ (GND))) # (!\w1|ws_cnt\(2) & (!\w1|Add1~3\ & VCC))
-- \w1|Add1~5\ = CARRY((\w1|ws_cnt\(2) & !\w1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(2),
	datad => VCC,
	cin => \w1|Add1~3\,
	combout => \w1|Add1~4_combout\,
	cout => \w1|Add1~5\);

-- Location: LCCOMB_X37_Y13_N20
\w1|ws_cnt~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~12_combout\ = (\w1|Add1~4_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w1|Add1~4_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~12_combout\);

-- Location: FF_X36_Y13_N17
\w1|ws_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~12_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(2));

-- Location: LCCOMB_X36_Y13_N6
\w1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~6_combout\ = (\w1|ws_cnt\(3) & (!\w1|Add1~5\)) # (!\w1|ws_cnt\(3) & ((\w1|Add1~5\) # (GND)))
-- \w1|Add1~7\ = CARRY((!\w1|Add1~5\) # (!\w1|ws_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(3),
	datad => VCC,
	cin => \w1|Add1~5\,
	combout => \w1|Add1~6_combout\,
	cout => \w1|Add1~7\);

-- Location: LCCOMB_X37_Y13_N18
\w1|ws_cnt~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~11_combout\ = (\w1|Add1~6_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w1|Add1~6_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~11_combout\);

-- Location: FF_X36_Y13_N3
\w1|ws_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~11_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(3));

-- Location: LCCOMB_X36_Y13_N8
\w1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~8_combout\ = (\w1|ws_cnt\(4) & (\w1|Add1~7\ $ (GND))) # (!\w1|ws_cnt\(4) & (!\w1|Add1~7\ & VCC))
-- \w1|Add1~9\ = CARRY((\w1|ws_cnt\(4) & !\w1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(4),
	datad => VCC,
	cin => \w1|Add1~7\,
	combout => \w1|Add1~8_combout\,
	cout => \w1|Add1~9\);

-- Location: LCCOMB_X37_Y13_N0
\w1|ws_cnt~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~10_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~8_combout\,
	combout => \w1|ws_cnt~10_combout\);

-- Location: FF_X36_Y13_N15
\w1|ws_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~10_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(4));

-- Location: LCCOMB_X36_Y13_N10
\w1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~10_combout\ = (\w1|ws_cnt\(5) & (!\w1|Add1~9\)) # (!\w1|ws_cnt\(5) & ((\w1|Add1~9\) # (GND)))
-- \w1|Add1~11\ = CARRY((!\w1|Add1~9\) # (!\w1|ws_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(5),
	datad => VCC,
	cin => \w1|Add1~9\,
	combout => \w1|Add1~10_combout\,
	cout => \w1|Add1~11\);

-- Location: LCCOMB_X37_Y13_N2
\w1|ws_cnt~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~9_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~10_combout\,
	combout => \w1|ws_cnt~9_combout\);

-- Location: FF_X37_Y13_N3
\w1|ws_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|ws_cnt~9_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(5));

-- Location: LCCOMB_X36_Y13_N12
\w1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~12_combout\ = (\w1|ws_cnt\(6) & (\w1|Add1~11\ $ (GND))) # (!\w1|ws_cnt\(6) & (!\w1|Add1~11\ & VCC))
-- \w1|Add1~13\ = CARRY((\w1|ws_cnt\(6) & !\w1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(6),
	datad => VCC,
	cin => \w1|Add1~11\,
	combout => \w1|Add1~12_combout\,
	cout => \w1|Add1~13\);

-- Location: LCCOMB_X37_Y13_N22
\w1|ws_cnt~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~31_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~12_combout\,
	combout => \w1|ws_cnt~31_combout\);

-- Location: FF_X36_Y13_N27
\w1|ws_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~31_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(6));

-- Location: LCCOMB_X36_Y13_N14
\w1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~14_combout\ = (\w1|ws_cnt\(7) & (!\w1|Add1~13\)) # (!\w1|ws_cnt\(7) & ((\w1|Add1~13\) # (GND)))
-- \w1|Add1~15\ = CARRY((!\w1|Add1~13\) # (!\w1|ws_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(7),
	datad => VCC,
	cin => \w1|Add1~13\,
	combout => \w1|Add1~14_combout\,
	cout => \w1|Add1~15\);

-- Location: LCCOMB_X35_Y13_N18
\w1|ws_cnt~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~30_combout\ = (\w1|Add1~14_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|Add1~14_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~30_combout\);

-- Location: FF_X36_Y13_N23
\w1|ws_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~30_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(7));

-- Location: LCCOMB_X36_Y13_N16
\w1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~16_combout\ = (\w1|ws_cnt\(8) & (\w1|Add1~15\ $ (GND))) # (!\w1|ws_cnt\(8) & (!\w1|Add1~15\ & VCC))
-- \w1|Add1~17\ = CARRY((\w1|ws_cnt\(8) & !\w1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(8),
	datad => VCC,
	cin => \w1|Add1~15\,
	combout => \w1|Add1~16_combout\,
	cout => \w1|Add1~17\);

-- Location: LCCOMB_X37_Y13_N8
\w1|ws_cnt~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~29_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~16_combout\,
	combout => \w1|ws_cnt~29_combout\);

-- Location: FF_X36_Y13_N7
\w1|ws_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~29_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(8));

-- Location: LCCOMB_X36_Y13_N18
\w1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~18_combout\ = (\w1|ws_cnt\(9) & (!\w1|Add1~17\)) # (!\w1|ws_cnt\(9) & ((\w1|Add1~17\) # (GND)))
-- \w1|Add1~19\ = CARRY((!\w1|Add1~17\) # (!\w1|ws_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(9),
	datad => VCC,
	cin => \w1|Add1~17\,
	combout => \w1|Add1~18_combout\,
	cout => \w1|Add1~19\);

-- Location: LCCOMB_X35_Y13_N0
\w1|ws_cnt~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~28_combout\ = (\w1|Add1~18_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|Add1~18_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~28_combout\);

-- Location: FF_X36_Y13_N11
\w1|ws_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~28_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(9));

-- Location: LCCOMB_X36_Y13_N20
\w1|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~20_combout\ = (\w1|ws_cnt\(10) & (\w1|Add1~19\ $ (GND))) # (!\w1|ws_cnt\(10) & (!\w1|Add1~19\ & VCC))
-- \w1|Add1~21\ = CARRY((\w1|ws_cnt\(10) & !\w1|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(10),
	datad => VCC,
	cin => \w1|Add1~19\,
	combout => \w1|Add1~20_combout\,
	cout => \w1|Add1~21\);

-- Location: LCCOMB_X35_Y13_N6
\w1|ws_cnt~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~27_combout\ = (\w1|Add1~20_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~20_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~27_combout\);

-- Location: FF_X36_Y13_N21
\w1|ws_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~27_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(10));

-- Location: LCCOMB_X36_Y13_N22
\w1|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~22_combout\ = (\w1|ws_cnt\(11) & (!\w1|Add1~21\)) # (!\w1|ws_cnt\(11) & ((\w1|Add1~21\) # (GND)))
-- \w1|Add1~23\ = CARRY((!\w1|Add1~21\) # (!\w1|ws_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(11),
	datad => VCC,
	cin => \w1|Add1~21\,
	combout => \w1|Add1~22_combout\,
	cout => \w1|Add1~23\);

-- Location: LCCOMB_X37_Y13_N14
\w1|ws_cnt~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~26_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~22_combout\,
	combout => \w1|ws_cnt~26_combout\);

-- Location: FF_X36_Y13_N9
\w1|ws_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~26_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(11));

-- Location: LCCOMB_X36_Y13_N24
\w1|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~24_combout\ = (\w1|ws_cnt\(12) & (\w1|Add1~23\ $ (GND))) # (!\w1|ws_cnt\(12) & (!\w1|Add1~23\ & VCC))
-- \w1|Add1~25\ = CARRY((\w1|ws_cnt\(12) & !\w1|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(12),
	datad => VCC,
	cin => \w1|Add1~23\,
	combout => \w1|Add1~24_combout\,
	cout => \w1|Add1~25\);

-- Location: LCCOMB_X35_Y13_N16
\w1|ws_cnt~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~25_combout\ = (\w1|Add1~24_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|Add1~24_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~25_combout\);

-- Location: FF_X36_Y13_N25
\w1|ws_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~25_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(12));

-- Location: LCCOMB_X36_Y13_N26
\w1|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~26_combout\ = (\w1|ws_cnt\(13) & (!\w1|Add1~25\)) # (!\w1|ws_cnt\(13) & ((\w1|Add1~25\) # (GND)))
-- \w1|Add1~27\ = CARRY((!\w1|Add1~25\) # (!\w1|ws_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(13),
	datad => VCC,
	cin => \w1|Add1~25\,
	combout => \w1|Add1~26_combout\,
	cout => \w1|Add1~27\);

-- Location: LCCOMB_X35_Y13_N26
\w1|ws_cnt~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~24_combout\ = (\w1|Add1~26_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w1|Add1~26_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~24_combout\);

-- Location: FF_X36_Y13_N31
\w1|ws_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~24_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(13));

-- Location: LCCOMB_X36_Y13_N28
\w1|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~28_combout\ = (\w1|ws_cnt\(14) & (\w1|Add1~27\ $ (GND))) # (!\w1|ws_cnt\(14) & (!\w1|Add1~27\ & VCC))
-- \w1|Add1~29\ = CARRY((\w1|ws_cnt\(14) & !\w1|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(14),
	datad => VCC,
	cin => \w1|Add1~27\,
	combout => \w1|Add1~28_combout\,
	cout => \w1|Add1~29\);

-- Location: LCCOMB_X35_Y13_N4
\w1|ws_cnt~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~23_combout\ = (\w1|Add1~28_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w1|Add1~28_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~23_combout\);

-- Location: FF_X36_Y13_N29
\w1|ws_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~23_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(14));

-- Location: LCCOMB_X36_Y13_N30
\w1|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~30_combout\ = (\w1|ws_cnt\(15) & (!\w1|Add1~29\)) # (!\w1|ws_cnt\(15) & ((\w1|Add1~29\) # (GND)))
-- \w1|Add1~31\ = CARRY((!\w1|Add1~29\) # (!\w1|ws_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(15),
	datad => VCC,
	cin => \w1|Add1~29\,
	combout => \w1|Add1~30_combout\,
	cout => \w1|Add1~31\);

-- Location: LCCOMB_X35_Y13_N14
\w1|ws_cnt~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~22_combout\ = (\w1|Add1~30_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|Add1~30_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~22_combout\);

-- Location: FF_X36_Y13_N19
\w1|ws_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~22_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(15));

-- Location: LCCOMB_X36_Y12_N0
\w1|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~32_combout\ = (\w1|ws_cnt\(16) & (\w1|Add1~31\ $ (GND))) # (!\w1|ws_cnt\(16) & (!\w1|Add1~31\ & VCC))
-- \w1|Add1~33\ = CARRY((\w1|ws_cnt\(16) & !\w1|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(16),
	datad => VCC,
	cin => \w1|Add1~31\,
	combout => \w1|Add1~32_combout\,
	cout => \w1|Add1~33\);

-- Location: LCCOMB_X35_Y12_N14
\w1|ws_cnt~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~21_combout\ = (\w1|Add1~32_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w1|Add1~32_combout\,
	datac => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~21_combout\);

-- Location: FF_X35_Y12_N15
\w1|ws_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|ws_cnt~21_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(16));

-- Location: LCCOMB_X36_Y12_N2
\w1|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~34_combout\ = (\w1|ws_cnt\(17) & (!\w1|Add1~33\)) # (!\w1|ws_cnt\(17) & ((\w1|Add1~33\) # (GND)))
-- \w1|Add1~35\ = CARRY((!\w1|Add1~33\) # (!\w1|ws_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(17),
	datad => VCC,
	cin => \w1|Add1~33\,
	combout => \w1|Add1~34_combout\,
	cout => \w1|Add1~35\);

-- Location: LCCOMB_X35_Y12_N0
\w1|ws_cnt~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~20_combout\ = (\w1|Add1~34_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w1|Add1~34_combout\,
	datac => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~20_combout\);

-- Location: FF_X36_Y12_N7
\w1|ws_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~20_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(17));

-- Location: LCCOMB_X36_Y12_N4
\w1|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~36_combout\ = (\w1|ws_cnt\(18) & (\w1|Add1~35\ $ (GND))) # (!\w1|ws_cnt\(18) & (!\w1|Add1~35\ & VCC))
-- \w1|Add1~37\ = CARRY((\w1|ws_cnt\(18) & !\w1|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(18),
	datad => VCC,
	cin => \w1|Add1~35\,
	combout => \w1|Add1~36_combout\,
	cout => \w1|Add1~37\);

-- Location: LCCOMB_X35_Y13_N8
\w1|ws_cnt~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~19_combout\ = (\w1|Add1~36_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|Add1~36_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~19_combout\);

-- Location: FF_X36_Y12_N3
\w1|ws_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~19_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(18));

-- Location: LCCOMB_X36_Y12_N6
\w1|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~38_combout\ = (\w1|ws_cnt\(19) & (!\w1|Add1~37\)) # (!\w1|ws_cnt\(19) & ((\w1|Add1~37\) # (GND)))
-- \w1|Add1~39\ = CARRY((!\w1|Add1~37\) # (!\w1|ws_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(19),
	datad => VCC,
	cin => \w1|Add1~37\,
	combout => \w1|Add1~38_combout\,
	cout => \w1|Add1~39\);

-- Location: LCCOMB_X33_Y12_N4
\w1|ws_cnt~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~18_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan1~10_combout\,
	datac => \w1|Add1~38_combout\,
	combout => \w1|ws_cnt~18_combout\);

-- Location: FF_X36_Y12_N11
\w1|ws_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~18_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(19));

-- Location: LCCOMB_X36_Y12_N8
\w1|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~40_combout\ = (\w1|ws_cnt\(20) & (\w1|Add1~39\ $ (GND))) # (!\w1|ws_cnt\(20) & (!\w1|Add1~39\ & VCC))
-- \w1|Add1~41\ = CARRY((\w1|ws_cnt\(20) & !\w1|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(20),
	datad => VCC,
	cin => \w1|Add1~39\,
	combout => \w1|Add1~40_combout\,
	cout => \w1|Add1~41\);

-- Location: LCCOMB_X35_Y12_N26
\w1|ws_cnt~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~17_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~40_combout\,
	combout => \w1|ws_cnt~17_combout\);

-- Location: FF_X36_Y12_N25
\w1|ws_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~17_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(20));

-- Location: LCCOMB_X36_Y12_N10
\w1|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~42_combout\ = (\w1|ws_cnt\(21) & (!\w1|Add1~41\)) # (!\w1|ws_cnt\(21) & ((\w1|Add1~41\) # (GND)))
-- \w1|Add1~43\ = CARRY((!\w1|Add1~41\) # (!\w1|ws_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(21),
	datad => VCC,
	cin => \w1|Add1~41\,
	combout => \w1|Add1~42_combout\,
	cout => \w1|Add1~43\);

-- Location: LCCOMB_X35_Y12_N2
\w1|ws_cnt~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~16_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan1~10_combout\,
	datac => \w1|Add1~42_combout\,
	combout => \w1|ws_cnt~16_combout\);

-- Location: FF_X35_Y12_N3
\w1|ws_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|ws_cnt~16_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(21));

-- Location: LCCOMB_X36_Y12_N12
\w1|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~44_combout\ = (\w1|ws_cnt\(22) & (\w1|Add1~43\ $ (GND))) # (!\w1|ws_cnt\(22) & (!\w1|Add1~43\ & VCC))
-- \w1|Add1~45\ = CARRY((\w1|ws_cnt\(22) & !\w1|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(22),
	datad => VCC,
	cin => \w1|Add1~43\,
	combout => \w1|Add1~44_combout\,
	cout => \w1|Add1~45\);

-- Location: LCCOMB_X35_Y13_N30
\w1|ws_cnt~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~15_combout\ = (\w1|Add1~44_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~44_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~15_combout\);

-- Location: FF_X36_Y12_N23
\w1|ws_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~15_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(22));

-- Location: LCCOMB_X36_Y12_N14
\w1|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~46_combout\ = (\w1|ws_cnt\(23) & (!\w1|Add1~45\)) # (!\w1|ws_cnt\(23) & ((\w1|Add1~45\) # (GND)))
-- \w1|Add1~47\ = CARRY((!\w1|Add1~45\) # (!\w1|ws_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(23),
	datad => VCC,
	cin => \w1|Add1~45\,
	combout => \w1|Add1~46_combout\,
	cout => \w1|Add1~47\);

-- Location: LCCOMB_X35_Y12_N24
\w1|ws_cnt~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~8_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~46_combout\,
	combout => \w1|ws_cnt~8_combout\);

-- Location: FF_X36_Y12_N27
\w1|ws_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~8_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(23));

-- Location: LCCOMB_X36_Y12_N16
\w1|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~48_combout\ = (\w1|ws_cnt\(24) & (\w1|Add1~47\ $ (GND))) # (!\w1|ws_cnt\(24) & (!\w1|Add1~47\ & VCC))
-- \w1|Add1~49\ = CARRY((\w1|ws_cnt\(24) & !\w1|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(24),
	datad => VCC,
	cin => \w1|Add1~47\,
	combout => \w1|Add1~48_combout\,
	cout => \w1|Add1~49\);

-- Location: LCCOMB_X35_Y12_N6
\w1|ws_cnt~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~7_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~48_combout\,
	combout => \w1|ws_cnt~7_combout\);

-- Location: FF_X36_Y12_N21
\w1|ws_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~7_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(24));

-- Location: LCCOMB_X36_Y12_N18
\w1|Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~50_combout\ = (\w1|ws_cnt\(25) & (!\w1|Add1~49\)) # (!\w1|ws_cnt\(25) & ((\w1|Add1~49\) # (GND)))
-- \w1|Add1~51\ = CARRY((!\w1|Add1~49\) # (!\w1|ws_cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(25),
	datad => VCC,
	cin => \w1|Add1~49\,
	combout => \w1|Add1~50_combout\,
	cout => \w1|Add1~51\);

-- Location: LCCOMB_X35_Y12_N30
\w1|ws_cnt~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~6_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~50_combout\,
	combout => \w1|ws_cnt~6_combout\);

-- Location: FF_X35_Y12_N31
\w1|ws_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|ws_cnt~6_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(25));

-- Location: LCCOMB_X36_Y12_N20
\w1|Add1~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~52_combout\ = (\w1|ws_cnt\(26) & (\w1|Add1~51\ $ (GND))) # (!\w1|ws_cnt\(26) & (!\w1|Add1~51\ & VCC))
-- \w1|Add1~53\ = CARRY((\w1|ws_cnt\(26) & !\w1|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(26),
	datad => VCC,
	cin => \w1|Add1~51\,
	combout => \w1|Add1~52_combout\,
	cout => \w1|Add1~53\);

-- Location: LCCOMB_X35_Y12_N4
\w1|ws_cnt~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~5_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~52_combout\,
	combout => \w1|ws_cnt~5_combout\);

-- Location: FF_X36_Y12_N15
\w1|ws_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|ws_cnt~5_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(26));

-- Location: LCCOMB_X36_Y12_N22
\w1|Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~54_combout\ = (\w1|ws_cnt\(27) & (!\w1|Add1~53\)) # (!\w1|ws_cnt\(27) & ((\w1|Add1~53\) # (GND)))
-- \w1|Add1~55\ = CARRY((!\w1|Add1~53\) # (!\w1|ws_cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(27),
	datad => VCC,
	cin => \w1|Add1~53\,
	combout => \w1|Add1~54_combout\,
	cout => \w1|Add1~55\);

-- Location: LCCOMB_X35_Y12_N10
\w1|ws_cnt~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~4_combout\ = (\w1|Add1~54_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~54_combout\,
	datac => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~4_combout\);

-- Location: FF_X35_Y12_N11
\w1|ws_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|ws_cnt~4_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(27));

-- Location: LCCOMB_X36_Y12_N24
\w1|Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~56_combout\ = (\w1|ws_cnt\(28) & (\w1|Add1~55\ $ (GND))) # (!\w1|ws_cnt\(28) & (!\w1|Add1~55\ & VCC))
-- \w1|Add1~57\ = CARRY((\w1|ws_cnt\(28) & !\w1|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(28),
	datad => VCC,
	cin => \w1|Add1~55\,
	combout => \w1|Add1~56_combout\,
	cout => \w1|Add1~57\);

-- Location: LCCOMB_X35_Y12_N20
\w1|ws_cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~3_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~56_combout\,
	combout => \w1|ws_cnt~3_combout\);

-- Location: FF_X35_Y12_N21
\w1|ws_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|ws_cnt~3_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(28));

-- Location: LCCOMB_X36_Y12_N26
\w1|Add1~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~58_combout\ = (\w1|ws_cnt\(29) & (!\w1|Add1~57\)) # (!\w1|ws_cnt\(29) & ((\w1|Add1~57\) # (GND)))
-- \w1|Add1~59\ = CARRY((!\w1|Add1~57\) # (!\w1|ws_cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(29),
	datad => VCC,
	cin => \w1|Add1~57\,
	combout => \w1|Add1~58_combout\,
	cout => \w1|Add1~59\);

-- Location: LCCOMB_X35_Y12_N22
\w1|ws_cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~2_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~58_combout\,
	combout => \w1|ws_cnt~2_combout\);

-- Location: FF_X35_Y12_N23
\w1|ws_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|ws_cnt~2_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(29));

-- Location: LCCOMB_X36_Y12_N28
\w1|Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~60_combout\ = (\w1|ws_cnt\(30) & (\w1|Add1~59\ $ (GND))) # (!\w1|ws_cnt\(30) & (!\w1|Add1~59\ & VCC))
-- \w1|Add1~61\ = CARRY((\w1|ws_cnt\(30) & !\w1|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(30),
	datad => VCC,
	cin => \w1|Add1~59\,
	combout => \w1|Add1~60_combout\,
	cout => \w1|Add1~61\);

-- Location: LCCOMB_X35_Y12_N12
\w1|ws_cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~1_combout\ = (\w1|LessThan1~10_combout\ & \w1|Add1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|LessThan1~10_combout\,
	datad => \w1|Add1~60_combout\,
	combout => \w1|ws_cnt~1_combout\);

-- Location: FF_X35_Y12_N13
\w1|ws_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|ws_cnt~1_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(30));

-- Location: LCCOMB_X36_Y12_N30
\w1|Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|Add1~62_combout\ = \w1|ws_cnt\(31) $ (\w1|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \w1|ws_cnt\(31),
	cin => \w1|Add1~61\,
	combout => \w1|Add1~62_combout\);

-- Location: LCCOMB_X37_Y13_N24
\w1|ws_cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_cnt~0_combout\ = (\w1|Add1~62_combout\ & \w1|LessThan1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|Add1~62_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_cnt~0_combout\);

-- Location: FF_X37_Y13_N25
\w1|ws_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|ws_cnt~0_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ALT_INV_LessThan0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_cnt\(31));

-- Location: LCCOMB_X35_Y13_N22
\w1|LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan1~8_combout\ = (!\w1|ws_cnt\(10) & (!\w1|ws_cnt\(9) & (!\w1|ws_cnt\(7) & !\w1|ws_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(10),
	datab => \w1|ws_cnt\(9),
	datac => \w1|ws_cnt\(7),
	datad => \w1|ws_cnt\(8),
	combout => \w1|LessThan1~8_combout\);

-- Location: LCCOMB_X35_Y13_N28
\w1|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan1~7_combout\ = (!\w1|ws_cnt\(12) & (!\w1|ws_cnt\(14) & (!\w1|ws_cnt\(11) & !\w1|ws_cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(12),
	datab => \w1|ws_cnt\(14),
	datac => \w1|ws_cnt\(11),
	datad => \w1|ws_cnt\(13),
	combout => \w1|LessThan1~7_combout\);

-- Location: LCCOMB_X35_Y12_N8
\w1|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan1~5_combout\ = (!\w1|ws_cnt\(20) & (!\w1|ws_cnt\(22) & (!\w1|ws_cnt\(19) & !\w1|ws_cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(20),
	datab => \w1|ws_cnt\(22),
	datac => \w1|ws_cnt\(19),
	datad => \w1|ws_cnt\(21),
	combout => \w1|LessThan1~5_combout\);

-- Location: LCCOMB_X35_Y13_N2
\w1|LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan1~6_combout\ = (!\w1|ws_cnt\(16) & (!\w1|ws_cnt\(15) & (!\w1|ws_cnt\(17) & !\w1|ws_cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(16),
	datab => \w1|ws_cnt\(15),
	datac => \w1|ws_cnt\(17),
	datad => \w1|ws_cnt\(18),
	combout => \w1|LessThan1~6_combout\);

-- Location: LCCOMB_X35_Y13_N24
\w1|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan1~9_combout\ = (\w1|LessThan1~8_combout\ & (\w1|LessThan1~7_combout\ & (\w1|LessThan1~5_combout\ & \w1|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan1~8_combout\,
	datab => \w1|LessThan1~7_combout\,
	datac => \w1|LessThan1~5_combout\,
	datad => \w1|LessThan1~6_combout\,
	combout => \w1|LessThan1~9_combout\);

-- Location: LCCOMB_X37_Y13_N26
\w1|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan1~3_combout\ = (!\w1|ws_cnt\(0)) # (!\w1|ws_cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|ws_cnt\(1),
	datad => \w1|ws_cnt\(0),
	combout => \w1|LessThan1~3_combout\);

-- Location: LCCOMB_X35_Y12_N28
\w1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan1~0_combout\ = (!\w1|ws_cnt\(27) & (!\w1|ws_cnt\(28) & (!\w1|ws_cnt\(29) & !\w1|ws_cnt\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(27),
	datab => \w1|ws_cnt\(28),
	datac => \w1|ws_cnt\(29),
	datad => \w1|ws_cnt\(30),
	combout => \w1|LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y13_N4
\w1|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan1~2_combout\ = (((!\w1|ws_cnt\(5)) # (!\w1|ws_cnt\(3))) # (!\w1|ws_cnt\(4))) # (!\w1|ws_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(2),
	datab => \w1|ws_cnt\(4),
	datac => \w1|ws_cnt\(3),
	datad => \w1|ws_cnt\(5),
	combout => \w1|LessThan1~2_combout\);

-- Location: LCCOMB_X35_Y12_N16
\w1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan1~1_combout\ = (!\w1|ws_cnt\(25) & (!\w1|ws_cnt\(26) & (!\w1|ws_cnt\(24) & !\w1|ws_cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(25),
	datab => \w1|ws_cnt\(26),
	datac => \w1|ws_cnt\(24),
	datad => \w1|ws_cnt\(23),
	combout => \w1|LessThan1~1_combout\);

-- Location: LCCOMB_X37_Y13_N28
\w1|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan1~4_combout\ = (\w1|LessThan1~0_combout\ & (\w1|LessThan1~1_combout\ & ((\w1|LessThan1~3_combout\) # (\w1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan1~3_combout\,
	datab => \w1|LessThan1~0_combout\,
	datac => \w1|LessThan1~2_combout\,
	datad => \w1|LessThan1~1_combout\,
	combout => \w1|LessThan1~4_combout\);

-- Location: LCCOMB_X37_Y13_N6
\w1|LessThan1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan1~10_combout\ = (\w1|ws_cnt\(31)) # ((!\w1|ws_cnt\(6) & (\w1|LessThan1~9_combout\ & \w1|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|ws_cnt\(6),
	datab => \w1|ws_cnt\(31),
	datac => \w1|LessThan1~9_combout\,
	datad => \w1|LessThan1~4_combout\,
	combout => \w1|LessThan1~10_combout\);

-- Location: LCCOMB_X37_Y16_N28
\w1|ws_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|ws_int~0_combout\ = (!\w1|sclk_cnt\(31) & (!\w1|LessThan0~9_combout\ & !\w1|LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_cnt\(31),
	datab => \w1|LessThan0~9_combout\,
	datad => \w1|LessThan1~10_combout\,
	combout => \w1|ws_int~0_combout\);

-- Location: FF_X38_Y14_N9
\w1|ws_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|ws_int~1_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|ws_int~q\);

-- Location: IOIBUF_X41_Y12_N22
\sd_rx_ex~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sd_rx_ex,
	o => \sd_rx_ex~input_o\);

-- Location: LCCOMB_X37_Y12_N26
\w1|r_data_rx_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~0_combout\ = (!\w1|sclk_int~q\ & (!\w1|Add1~62_combout\ & (!\w1|Add1~60_combout\ & !\w1|Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|sclk_int~q\,
	datab => \w1|Add1~62_combout\,
	datac => \w1|Add1~60_combout\,
	datad => \w1|Add1~58_combout\,
	combout => \w1|r_data_rx_int[0]~0_combout\);

-- Location: LCCOMB_X37_Y12_N2
\w1|r_data_rx_int[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~3_combout\ = (!\w1|Add1~34_combout\ & (!\w1|Add1~36_combout\ & (!\w1|Add1~38_combout\ & !\w1|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~34_combout\,
	datab => \w1|Add1~36_combout\,
	datac => \w1|Add1~38_combout\,
	datad => \w1|Add1~40_combout\,
	combout => \w1|r_data_rx_int[0]~3_combout\);

-- Location: LCCOMB_X37_Y12_N8
\w1|r_data_rx_int[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~2_combout\ = (!\w1|Add1~44_combout\ & !\w1|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|Add1~44_combout\,
	datad => \w1|Add1~42_combout\,
	combout => \w1|r_data_rx_int[0]~2_combout\);

-- Location: LCCOMB_X37_Y12_N28
\w1|r_data_rx_int[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~4_combout\ = (!\w1|Add1~48_combout\ & (\w1|r_data_rx_int[0]~3_combout\ & (\w1|r_data_rx_int[0]~2_combout\ & !\w1|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~48_combout\,
	datab => \w1|r_data_rx_int[0]~3_combout\,
	datac => \w1|r_data_rx_int[0]~2_combout\,
	datad => \w1|Add1~46_combout\,
	combout => \w1|r_data_rx_int[0]~4_combout\);

-- Location: LCCOMB_X35_Y12_N18
\w1|r_data_rx_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~1_combout\ = (!\w1|Add1~52_combout\ & (!\w1|Add1~50_combout\ & (!\w1|Add1~54_combout\ & !\w1|Add1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~52_combout\,
	datab => \w1|Add1~50_combout\,
	datac => \w1|Add1~54_combout\,
	datad => \w1|Add1~56_combout\,
	combout => \w1|r_data_rx_int[0]~1_combout\);

-- Location: LCCOMB_X37_Y12_N0
\w1|r_data_rx_int[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~8_combout\ = (!\w1|Add1~12_combout\ & !\w1|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w1|Add1~12_combout\,
	datad => \w1|Add1~14_combout\,
	combout => \w1|r_data_rx_int[0]~8_combout\);

-- Location: LCCOMB_X37_Y12_N4
\w1|r_data_rx_int[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~7_combout\ = (!\w1|Add1~24_combout\ & (!\w1|Add1~20_combout\ & (!\w1|Add1~22_combout\ & !\w1|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~24_combout\,
	datab => \w1|Add1~20_combout\,
	datac => \w1|Add1~22_combout\,
	datad => \w1|Add1~18_combout\,
	combout => \w1|r_data_rx_int[0]~7_combout\);

-- Location: LCCOMB_X37_Y12_N6
\w1|r_data_rx_int[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~6_combout\ = (!\w1|Add1~28_combout\ & (!\w1|Add1~30_combout\ & (!\w1|Add1~26_combout\ & !\w1|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~28_combout\,
	datab => \w1|Add1~30_combout\,
	datac => \w1|Add1~26_combout\,
	datad => \w1|Add1~32_combout\,
	combout => \w1|r_data_rx_int[0]~6_combout\);

-- Location: LCCOMB_X37_Y12_N18
\w1|r_data_rx_int[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~9_combout\ = (!\w1|Add1~16_combout\ & (\w1|r_data_rx_int[0]~8_combout\ & (\w1|r_data_rx_int[0]~7_combout\ & \w1|r_data_rx_int[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~16_combout\,
	datab => \w1|r_data_rx_int[0]~8_combout\,
	datac => \w1|r_data_rx_int[0]~7_combout\,
	datad => \w1|r_data_rx_int[0]~6_combout\,
	combout => \w1|r_data_rx_int[0]~9_combout\);

-- Location: LCCOMB_X37_Y13_N16
\w1|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|LessThan2~0_combout\ = (!\w1|Add1~6_combout\ & (!\w1|Add1~4_combout\ & !\w1|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w1|Add1~6_combout\,
	datac => \w1|Add1~4_combout\,
	datad => \w1|Add1~2_combout\,
	combout => \w1|LessThan2~0_combout\);

-- Location: LCCOMB_X37_Y13_N10
\w1|r_data_rx_int[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~5_combout\ = (!\w1|LessThan0~10_combout\ & ((\w1|Add1~8_combout\ & ((\w1|LessThan2~0_combout\) # (!\w1|Add1~10_combout\))) # (!\w1|Add1~8_combout\ & ((\w1|Add1~10_combout\) # (!\w1|LessThan2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~8_combout\,
	datab => \w1|LessThan2~0_combout\,
	datac => \w1|LessThan0~10_combout\,
	datad => \w1|Add1~10_combout\,
	combout => \w1|r_data_rx_int[0]~5_combout\);

-- Location: LCCOMB_X37_Y12_N24
\w1|r_data_rx_int[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~10_combout\ = (\w1|r_data_rx_int[0]~9_combout\ & (\w1|LessThan1~10_combout\ & (\w1|ws_int~q\ & \w1|r_data_rx_int[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|r_data_rx_int[0]~9_combout\,
	datab => \w1|LessThan1~10_combout\,
	datac => \w1|ws_int~q\,
	datad => \w1|r_data_rx_int[0]~5_combout\,
	combout => \w1|r_data_rx_int[0]~10_combout\);

-- Location: LCCOMB_X37_Y12_N22
\w1|r_data_rx_int[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~11_combout\ = (\w1|r_data_rx_int[0]~0_combout\ & (\w1|r_data_rx_int[0]~4_combout\ & (\w1|r_data_rx_int[0]~1_combout\ & \w1|r_data_rx_int[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|r_data_rx_int[0]~0_combout\,
	datab => \w1|r_data_rx_int[0]~4_combout\,
	datac => \w1|r_data_rx_int[0]~1_combout\,
	datad => \w1|r_data_rx_int[0]~10_combout\,
	combout => \w1|r_data_rx_int[0]~11_combout\);

-- Location: FF_X39_Y12_N5
\w1|r_data_rx_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \sd_rx_ex~input_o\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(0));

-- Location: LCCOMB_X38_Y12_N24
\w1|r_data_rx[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[0]~feeder_combout\ = \w1|r_data_rx_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(0),
	combout => \w1|r_data_rx[0]~feeder_combout\);

-- Location: FF_X38_Y12_N25
\w1|r_data_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[0]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(0));

-- Location: IOIBUF_X21_Y0_N8
\SEL_ex[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_ex(0),
	o => \SEL_ex[0]~input_o\);

-- Location: LCCOMB_X38_Y12_N16
\w1|l_data_rx_int[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|l_data_rx_int[0]~feeder_combout\ = \sd_rx_ex~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_rx_ex~input_o\,
	combout => \w1|l_data_rx_int[0]~feeder_combout\);

-- Location: LCCOMB_X37_Y12_N30
\w1|r_data_rx_int[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~15_combout\ = (!\w1|Add1~56_combout\ & !\w1|Add1~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w1|Add1~56_combout\,
	datad => \w1|Add1~58_combout\,
	combout => \w1|r_data_rx_int[0]~15_combout\);

-- Location: LCCOMB_X37_Y12_N12
\w1|r_data_rx_int[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~12_combout\ = (!\w1|Add1~42_combout\ & (!\w1|sclk_int~q\ & (!\w1|Add1~44_combout\ & \w1|r_data_rx_int[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~42_combout\,
	datab => \w1|sclk_int~q\,
	datac => \w1|Add1~44_combout\,
	datad => \w1|r_data_rx_int[0]~9_combout\,
	combout => \w1|r_data_rx_int[0]~12_combout\);

-- Location: LCCOMB_X37_Y12_N10
\w1|r_data_rx_int[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~13_combout\ = (!\w1|Add1~46_combout\ & (\w1|r_data_rx_int[0]~3_combout\ & (!\w1|Add1~48_combout\ & \w1|r_data_rx_int[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~46_combout\,
	datab => \w1|r_data_rx_int[0]~3_combout\,
	datac => \w1|Add1~48_combout\,
	datad => \w1|r_data_rx_int[0]~12_combout\,
	combout => \w1|r_data_rx_int[0]~13_combout\);

-- Location: LCCOMB_X37_Y12_N16
\w1|r_data_rx_int[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~14_combout\ = (!\w1|Add1~50_combout\ & (!\w1|Add1~54_combout\ & (!\w1|Add1~52_combout\ & \w1|r_data_rx_int[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~50_combout\,
	datab => \w1|Add1~54_combout\,
	datac => \w1|Add1~52_combout\,
	datad => \w1|r_data_rx_int[0]~13_combout\,
	combout => \w1|r_data_rx_int[0]~14_combout\);

-- Location: LCCOMB_X37_Y12_N20
\w1|r_data_rx_int[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[0]~16_combout\ = (!\w1|Add1~60_combout\ & (!\w1|Add1~62_combout\ & (\w1|r_data_rx_int[0]~15_combout\ & \w1|r_data_rx_int[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|Add1~60_combout\,
	datab => \w1|Add1~62_combout\,
	datac => \w1|r_data_rx_int[0]~15_combout\,
	datad => \w1|r_data_rx_int[0]~14_combout\,
	combout => \w1|r_data_rx_int[0]~16_combout\);

-- Location: LCCOMB_X37_Y12_N14
\w1|l_data_rx_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|l_data_rx_int[0]~0_combout\ = (\w1|LessThan1~10_combout\ & (\w1|r_data_rx_int[0]~5_combout\ & (!\w1|ws_int~q\ & \w1|r_data_rx_int[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|LessThan1~10_combout\,
	datab => \w1|r_data_rx_int[0]~5_combout\,
	datac => \w1|ws_int~q\,
	datad => \w1|r_data_rx_int[0]~16_combout\,
	combout => \w1|l_data_rx_int[0]~0_combout\);

-- Location: FF_X38_Y12_N17
\w1|l_data_rx_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|l_data_rx_int[0]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(0));

-- Location: FF_X38_Y13_N25
\w1|l_data_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(0),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(0));

-- Location: IOIBUF_X21_Y0_N1
\SEL_ex[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_ex(1),
	o => \SEL_ex[1]~input_o\);

-- Location: LCCOMB_X38_Y13_N24
\w2|Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux23~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & (\w1|r_data_rx\(0))) # (!\SEL_ex[0]~input_o\ & ((\w1|l_data_rx\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|r_data_rx\(0),
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(0),
	datad => \SEL_ex[1]~input_o\,
	combout => \w2|Mux23~0_combout\);

-- Location: FF_X39_Y12_N19
\w1|r_data_rx_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|r_data_rx_int\(0),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(1));

-- Location: LCCOMB_X38_Y12_N22
\w1|r_data_rx[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[1]~feeder_combout\ = \w1|r_data_rx_int\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(1),
	combout => \w1|r_data_rx[1]~feeder_combout\);

-- Location: FF_X38_Y12_N23
\w1|r_data_rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[1]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(1));

-- Location: LCCOMB_X38_Y12_N26
\w1|l_data_rx_int[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|l_data_rx_int[1]~feeder_combout\ = \w1|l_data_rx_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|l_data_rx_int\(0),
	combout => \w1|l_data_rx_int[1]~feeder_combout\);

-- Location: FF_X38_Y12_N27
\w1|l_data_rx_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|l_data_rx_int[1]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(1));

-- Location: FF_X38_Y13_N15
\w1|l_data_rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(1),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(1));

-- Location: LCCOMB_X38_Y13_N14
\w2|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux22~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & (\w1|r_data_rx\(1))) # (!\SEL_ex[0]~input_o\ & ((\w1|l_data_rx\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|r_data_rx\(1),
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(1),
	datad => \SEL_ex[1]~input_o\,
	combout => \w2|Mux22~0_combout\);

-- Location: FF_X38_Y12_N29
\w1|l_data_rx_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(1),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(2));

-- Location: LCCOMB_X38_Y12_N8
\w1|l_data_rx[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|l_data_rx[2]~feeder_combout\ = \w1|l_data_rx_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|l_data_rx_int\(2),
	combout => \w1|l_data_rx[2]~feeder_combout\);

-- Location: FF_X38_Y12_N9
\w1|l_data_rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|l_data_rx[2]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(2));

-- Location: LCCOMB_X39_Y12_N16
\w1|r_data_rx_int[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[2]~feeder_combout\ = \w1|r_data_rx_int\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(1),
	combout => \w1|r_data_rx_int[2]~feeder_combout\);

-- Location: FF_X39_Y12_N17
\w1|r_data_rx_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[2]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(2));

-- Location: FF_X40_Y12_N9
\w1|r_data_rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|r_data_rx_int\(2),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(2));

-- Location: LCCOMB_X40_Y12_N8
\w2|Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux21~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(2)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|l_data_rx\(2),
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|r_data_rx\(2),
	datad => \SEL_ex[1]~input_o\,
	combout => \w2|Mux21~0_combout\);

-- Location: LCCOMB_X39_Y12_N22
\w1|r_data_rx_int[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[3]~feeder_combout\ = \w1|r_data_rx_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(2),
	combout => \w1|r_data_rx_int[3]~feeder_combout\);

-- Location: FF_X39_Y12_N23
\w1|r_data_rx_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[3]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(3));

-- Location: LCCOMB_X38_Y12_N2
\w1|r_data_rx[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[3]~feeder_combout\ = \w1|r_data_rx_int\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(3),
	combout => \w1|r_data_rx[3]~feeder_combout\);

-- Location: FF_X38_Y12_N3
\w1|r_data_rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[3]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(3));

-- Location: LCCOMB_X38_Y12_N10
\w1|l_data_rx_int[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|l_data_rx_int[3]~feeder_combout\ = \w1|l_data_rx_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|l_data_rx_int\(2),
	combout => \w1|l_data_rx_int[3]~feeder_combout\);

-- Location: FF_X38_Y12_N11
\w1|l_data_rx_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|l_data_rx_int[3]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(3));

-- Location: FF_X38_Y13_N9
\w1|l_data_rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(3),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(3));

-- Location: LCCOMB_X38_Y13_N8
\w2|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux20~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & (\w1|r_data_rx\(3))) # (!\SEL_ex[0]~input_o\ & ((\w1|l_data_rx\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|r_data_rx\(3),
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(3),
	datad => \SEL_ex[1]~input_o\,
	combout => \w2|Mux20~0_combout\);

-- Location: FF_X39_Y12_N13
\w1|r_data_rx_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|r_data_rx_int\(3),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(4));

-- Location: LCCOMB_X38_Y13_N10
\w1|r_data_rx[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[4]~feeder_combout\ = \w1|r_data_rx_int\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(4),
	combout => \w1|r_data_rx[4]~feeder_combout\);

-- Location: FF_X38_Y13_N11
\w1|r_data_rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[4]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(4));

-- Location: LCCOMB_X38_Y12_N20
\w1|l_data_rx_int[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|l_data_rx_int[4]~feeder_combout\ = \w1|l_data_rx_int\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|l_data_rx_int\(3),
	combout => \w1|l_data_rx_int[4]~feeder_combout\);

-- Location: FF_X38_Y12_N21
\w1|l_data_rx_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|l_data_rx_int[4]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(4));

-- Location: FF_X38_Y13_N13
\w1|l_data_rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(4),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(4));

-- Location: LCCOMB_X38_Y13_N12
\w2|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux19~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & (\w1|r_data_rx\(4))) # (!\SEL_ex[0]~input_o\ & ((\w1|l_data_rx\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|r_data_rx\(4),
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(4),
	datad => \SEL_ex[1]~input_o\,
	combout => \w2|Mux19~0_combout\);

-- Location: LCCOMB_X39_Y12_N14
\w1|r_data_rx_int[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[5]~feeder_combout\ = \w1|r_data_rx_int\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(4),
	combout => \w1|r_data_rx_int[5]~feeder_combout\);

-- Location: FF_X39_Y12_N15
\w1|r_data_rx_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[5]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(5));

-- Location: LCCOMB_X40_Y12_N22
\w1|r_data_rx[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[5]~feeder_combout\ = \w1|r_data_rx_int\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(5),
	combout => \w1|r_data_rx[5]~feeder_combout\);

-- Location: FF_X40_Y12_N23
\w1|r_data_rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[5]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(5));

-- Location: FF_X37_Y12_N1
\w1|l_data_rx_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(4),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(5));

-- Location: FF_X40_Y12_N17
\w1|l_data_rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(5),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(5));

-- Location: LCCOMB_X40_Y12_N16
\w2|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux18~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & (\w1|r_data_rx\(5))) # (!\SEL_ex[0]~input_o\ & ((\w1|l_data_rx\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|r_data_rx\(5),
	datab => \SEL_ex[1]~input_o\,
	datac => \w1|l_data_rx\(5),
	datad => \SEL_ex[0]~input_o\,
	combout => \w2|Mux18~0_combout\);

-- Location: FF_X39_Y12_N9
\w1|r_data_rx_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|r_data_rx_int\(5),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(6));

-- Location: LCCOMB_X40_Y12_N26
\w1|r_data_rx[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[6]~feeder_combout\ = \w1|r_data_rx_int\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(6),
	combout => \w1|r_data_rx[6]~feeder_combout\);

-- Location: FF_X40_Y12_N27
\w1|r_data_rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[6]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(6));

-- Location: FF_X36_Y12_N13
\w1|l_data_rx_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(5),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(6));

-- Location: FF_X40_Y12_N13
\w1|l_data_rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(6),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(6));

-- Location: LCCOMB_X40_Y12_N12
\w2|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux17~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & (\w1|r_data_rx\(6))) # (!\SEL_ex[0]~input_o\ & ((\w1|l_data_rx\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|r_data_rx\(6),
	datab => \SEL_ex[1]~input_o\,
	datac => \w1|l_data_rx\(6),
	datad => \SEL_ex[0]~input_o\,
	combout => \w2|Mux17~0_combout\);

-- Location: FF_X39_Y12_N3
\w1|r_data_rx_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|r_data_rx_int\(6),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(7));

-- Location: LCCOMB_X40_Y12_N18
\w1|r_data_rx[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[7]~feeder_combout\ = \w1|r_data_rx_int\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(7),
	combout => \w1|r_data_rx[7]~feeder_combout\);

-- Location: FF_X40_Y12_N19
\w1|r_data_rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[7]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(7));

-- Location: FF_X36_Y12_N17
\w1|l_data_rx_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(6),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(7));

-- Location: FF_X40_Y12_N29
\w1|l_data_rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(7),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(7));

-- Location: LCCOMB_X40_Y12_N28
\w2|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux16~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & (\w1|r_data_rx\(7))) # (!\SEL_ex[0]~input_o\ & ((\w1|l_data_rx\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|r_data_rx\(7),
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(7),
	datad => \SEL_ex[1]~input_o\,
	combout => \w2|Mux16~0_combout\);

-- Location: LCCOMB_X39_Y12_N24
\w1|r_data_rx_int[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[8]~feeder_combout\ = \w1|r_data_rx_int\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(7),
	combout => \w1|r_data_rx_int[8]~feeder_combout\);

-- Location: FF_X39_Y12_N25
\w1|r_data_rx_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[8]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(8));

-- Location: LCCOMB_X40_Y12_N10
\w1|r_data_rx[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[8]~feeder_combout\ = \w1|r_data_rx_int\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(8),
	combout => \w1|r_data_rx[8]~feeder_combout\);

-- Location: FF_X40_Y12_N11
\w1|r_data_rx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[8]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(8));

-- Location: FF_X36_Y12_N5
\w1|l_data_rx_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(7),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(8));

-- Location: FF_X40_Y12_N5
\w1|l_data_rx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(8),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(8));

-- Location: LCCOMB_X40_Y12_N4
\w2|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux15~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & (\w1|r_data_rx\(8))) # (!\SEL_ex[0]~input_o\ & ((\w1|l_data_rx\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|r_data_rx\(8),
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(8),
	datad => \SEL_ex[1]~input_o\,
	combout => \w2|Mux15~0_combout\);

-- Location: LCCOMB_X39_Y12_N10
\w1|r_data_rx_int[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[9]~feeder_combout\ = \w1|r_data_rx_int\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(8),
	combout => \w1|r_data_rx_int[9]~feeder_combout\);

-- Location: FF_X39_Y12_N11
\w1|r_data_rx_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[9]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(9));

-- Location: LCCOMB_X40_Y12_N6
\w1|r_data_rx[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[9]~feeder_combout\ = \w1|r_data_rx_int\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(9),
	combout => \w1|r_data_rx[9]~feeder_combout\);

-- Location: FF_X40_Y12_N7
\w1|r_data_rx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[9]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(9));

-- Location: FF_X36_Y12_N19
\w1|l_data_rx_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(8),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(9));

-- Location: FF_X40_Y12_N21
\w1|l_data_rx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(9),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(9));

-- Location: LCCOMB_X40_Y12_N20
\w2|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux14~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & (\w1|r_data_rx\(9))) # (!\SEL_ex[0]~input_o\ & ((\w1|l_data_rx\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|r_data_rx\(9),
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(9),
	datad => \SEL_ex[1]~input_o\,
	combout => \w2|Mux14~0_combout\);

-- Location: LCCOMB_X39_Y12_N28
\w1|r_data_rx_int[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[10]~feeder_combout\ = \w1|r_data_rx_int\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(9),
	combout => \w1|r_data_rx_int[10]~feeder_combout\);

-- Location: FF_X39_Y12_N29
\w1|r_data_rx_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[10]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(10));

-- Location: LCCOMB_X40_Y12_N30
\w1|r_data_rx[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[10]~feeder_combout\ = \w1|r_data_rx_int\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(10),
	combout => \w1|r_data_rx[10]~feeder_combout\);

-- Location: FF_X40_Y12_N31
\w1|r_data_rx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[10]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(10));

-- Location: FF_X36_Y12_N9
\w1|l_data_rx_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(9),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(10));

-- Location: FF_X40_Y12_N25
\w1|l_data_rx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(10),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(10));

-- Location: LCCOMB_X40_Y12_N24
\w2|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux13~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & (\w1|r_data_rx\(10))) # (!\SEL_ex[0]~input_o\ & ((\w1|l_data_rx\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w1|r_data_rx\(10),
	datab => \SEL_ex[1]~input_o\,
	datac => \w1|l_data_rx\(10),
	datad => \SEL_ex[0]~input_o\,
	combout => \w2|Mux13~0_combout\);

-- Location: FF_X36_Y12_N29
\w1|l_data_rx_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(10),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(11));

-- Location: FF_X38_Y14_N13
\w1|l_data_rx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(11),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(11));

-- Location: LCCOMB_X39_Y12_N26
\w1|r_data_rx_int[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[11]~feeder_combout\ = \w1|r_data_rx_int\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(10),
	combout => \w1|r_data_rx_int[11]~feeder_combout\);

-- Location: FF_X39_Y12_N27
\w1|r_data_rx_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[11]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(11));

-- Location: LCCOMB_X38_Y14_N2
\w1|r_data_rx[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[11]~feeder_combout\ = \w1|r_data_rx_int\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(11),
	combout => \w1|r_data_rx[11]~feeder_combout\);

-- Location: FF_X38_Y14_N3
\w1|r_data_rx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[11]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(11));

-- Location: LCCOMB_X38_Y14_N12
\w2|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux12~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(11)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(11),
	datad => \w1|r_data_rx\(11),
	combout => \w2|Mux12~0_combout\);

-- Location: FF_X38_Y14_N5
\w1|l_data_rx_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(11),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(12));

-- Location: FF_X38_Y14_N27
\w1|l_data_rx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(12),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(12));

-- Location: FF_X39_Y12_N21
\w1|r_data_rx_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|r_data_rx_int\(11),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(12));

-- Location: FF_X37_Y16_N29
\w1|r_data_rx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|r_data_rx_int\(12),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(12));

-- Location: LCCOMB_X38_Y14_N26
\w2|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux11~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(12)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(12),
	datad => \w1|r_data_rx\(12),
	combout => \w2|Mux11~0_combout\);

-- Location: LCCOMB_X38_Y12_N14
\w1|l_data_rx_int[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|l_data_rx_int[13]~feeder_combout\ = \w1|l_data_rx_int\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|l_data_rx_int\(12),
	combout => \w1|l_data_rx_int[13]~feeder_combout\);

-- Location: FF_X38_Y12_N15
\w1|l_data_rx_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|l_data_rx_int[13]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(13));

-- Location: FF_X38_Y14_N7
\w1|l_data_rx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(13),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(13));

-- Location: LCCOMB_X39_Y12_N6
\w1|r_data_rx_int[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[13]~feeder_combout\ = \w1|r_data_rx_int\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(12),
	combout => \w1|r_data_rx_int[13]~feeder_combout\);

-- Location: FF_X39_Y12_N7
\w1|r_data_rx_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[13]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(13));

-- Location: LCCOMB_X38_Y14_N28
\w1|r_data_rx[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[13]~feeder_combout\ = \w1|r_data_rx_int\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(13),
	combout => \w1|r_data_rx[13]~feeder_combout\);

-- Location: FF_X38_Y14_N29
\w1|r_data_rx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[13]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(13));

-- Location: LCCOMB_X38_Y14_N6
\w2|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux10~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(13)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(13),
	datad => \w1|r_data_rx\(13),
	combout => \w2|Mux10~0_combout\);

-- Location: FF_X38_Y12_N5
\w1|l_data_rx_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(13),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(14));

-- Location: FF_X38_Y14_N15
\w1|l_data_rx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(14),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(14));

-- Location: LCCOMB_X39_Y12_N0
\w1|r_data_rx_int[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[14]~feeder_combout\ = \w1|r_data_rx_int\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(13),
	combout => \w1|r_data_rx_int[14]~feeder_combout\);

-- Location: FF_X39_Y12_N1
\w1|r_data_rx_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[14]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(14));

-- Location: LCCOMB_X38_Y14_N0
\w1|r_data_rx[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[14]~feeder_combout\ = \w1|r_data_rx_int\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(14),
	combout => \w1|r_data_rx[14]~feeder_combout\);

-- Location: FF_X38_Y14_N1
\w1|r_data_rx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[14]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(14));

-- Location: LCCOMB_X38_Y14_N14
\w2|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux9~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(14)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(14),
	datad => \w1|r_data_rx\(14),
	combout => \w2|Mux9~0_combout\);

-- Location: FF_X38_Y12_N19
\w1|l_data_rx_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(14),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(15));

-- Location: FF_X37_Y14_N7
\w1|l_data_rx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(15),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(15));

-- Location: LCCOMB_X39_Y12_N30
\w1|r_data_rx_int[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[15]~feeder_combout\ = \w1|r_data_rx_int\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(14),
	combout => \w1|r_data_rx_int[15]~feeder_combout\);

-- Location: FF_X39_Y12_N31
\w1|r_data_rx_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[15]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(15));

-- Location: LCCOMB_X36_Y14_N20
\w1|r_data_rx[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[15]~feeder_combout\ = \w1|r_data_rx_int\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(15),
	combout => \w1|r_data_rx[15]~feeder_combout\);

-- Location: FF_X36_Y14_N21
\w1|r_data_rx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[15]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(15));

-- Location: LCCOMB_X37_Y14_N6
\w2|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux8~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(15)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(15),
	datad => \w1|r_data_rx\(15),
	combout => \w2|Mux8~0_combout\);

-- Location: LCCOMB_X38_Y12_N0
\w1|l_data_rx_int[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|l_data_rx_int[16]~feeder_combout\ = \w1|l_data_rx_int\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|l_data_rx_int\(15),
	combout => \w1|l_data_rx_int[16]~feeder_combout\);

-- Location: FF_X38_Y12_N1
\w1|l_data_rx_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|l_data_rx_int[16]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(16));

-- Location: FF_X38_Y14_N21
\w1|l_data_rx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(16),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(16));

-- Location: LCCOMB_X36_Y14_N12
\w1|r_data_rx_int[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[16]~feeder_combout\ = \w1|r_data_rx_int\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(15),
	combout => \w1|r_data_rx_int[16]~feeder_combout\);

-- Location: FF_X36_Y14_N13
\w1|r_data_rx_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[16]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(16));

-- Location: LCCOMB_X37_Y14_N14
\w1|r_data_rx[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[16]~feeder_combout\ = \w1|r_data_rx_int\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(16),
	combout => \w1|r_data_rx[16]~feeder_combout\);

-- Location: FF_X37_Y14_N15
\w1|r_data_rx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[16]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(16));

-- Location: LCCOMB_X38_Y14_N20
\w2|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux7~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(16)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(16),
	datad => \w1|r_data_rx\(16),
	combout => \w2|Mux7~0_combout\);

-- Location: FF_X38_Y12_N31
\w1|l_data_rx_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(16),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(17));

-- Location: FF_X38_Y14_N11
\w1|l_data_rx[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(17),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(17));

-- Location: LCCOMB_X36_Y14_N30
\w1|r_data_rx_int[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[17]~feeder_combout\ = \w1|r_data_rx_int\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(16),
	combout => \w1|r_data_rx_int[17]~feeder_combout\);

-- Location: FF_X36_Y14_N31
\w1|r_data_rx_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[17]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(17));

-- Location: LCCOMB_X37_Y14_N28
\w1|r_data_rx[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[17]~feeder_combout\ = \w1|r_data_rx_int\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(17),
	combout => \w1|r_data_rx[17]~feeder_combout\);

-- Location: FF_X37_Y14_N29
\w1|r_data_rx[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[17]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(17));

-- Location: LCCOMB_X38_Y14_N10
\w2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux6~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(17)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(17),
	datad => \w1|r_data_rx\(17),
	combout => \w2|Mux6~0_combout\);

-- Location: FF_X38_Y12_N13
\w1|l_data_rx_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(17),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(18));

-- Location: FF_X37_Y14_N9
\w1|l_data_rx[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(18),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(18));

-- Location: FF_X36_Y14_N5
\w1|r_data_rx_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|r_data_rx_int\(17),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(18));

-- Location: FF_X37_Y14_N21
\w1|r_data_rx[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|r_data_rx_int\(18),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(18));

-- Location: LCCOMB_X37_Y14_N8
\w2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux5~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(18)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(18),
	datad => \w1|r_data_rx\(18),
	combout => \w2|Mux5~0_combout\);

-- Location: FF_X37_Y14_N23
\w1|l_data_rx_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(18),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(19));

-- Location: FF_X37_Y14_N1
\w1|l_data_rx[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(19),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(19));

-- Location: FF_X36_Y14_N23
\w1|r_data_rx_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|r_data_rx_int\(18),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(19));

-- Location: LCCOMB_X37_Y14_N16
\w1|r_data_rx[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[19]~feeder_combout\ = \w1|r_data_rx_int\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(19),
	combout => \w1|r_data_rx[19]~feeder_combout\);

-- Location: FF_X37_Y14_N17
\w1|r_data_rx[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[19]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(19));

-- Location: LCCOMB_X37_Y14_N0
\w2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux4~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(19)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(19),
	datad => \w1|r_data_rx\(19),
	combout => \w2|Mux4~0_combout\);

-- Location: FF_X36_Y12_N31
\w1|l_data_rx_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(19),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(20));

-- Location: FF_X37_Y14_N19
\w1|l_data_rx[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(20),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(20));

-- Location: FF_X36_Y14_N25
\w1|r_data_rx_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|r_data_rx_int\(19),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(20));

-- Location: LCCOMB_X37_Y14_N24
\w1|r_data_rx[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[20]~feeder_combout\ = \w1|r_data_rx_int\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(20),
	combout => \w1|r_data_rx[20]~feeder_combout\);

-- Location: FF_X37_Y14_N25
\w1|r_data_rx[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[20]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(20));

-- Location: LCCOMB_X37_Y14_N18
\w2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux3~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(20)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(20),
	datad => \w1|r_data_rx\(20),
	combout => \w2|Mux3~0_combout\);

-- Location: FF_X36_Y12_N1
\w1|l_data_rx_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(20),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(21));

-- Location: FF_X37_Y14_N5
\w1|l_data_rx[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(21),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(21));

-- Location: LCCOMB_X36_Y14_N18
\w1|r_data_rx_int[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[21]~feeder_combout\ = \w1|r_data_rx_int\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(20),
	combout => \w1|r_data_rx_int[21]~feeder_combout\);

-- Location: FF_X36_Y14_N19
\w1|r_data_rx_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[21]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(21));

-- Location: LCCOMB_X37_Y14_N12
\w1|r_data_rx[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[21]~feeder_combout\ = \w1|r_data_rx_int\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(21),
	combout => \w1|r_data_rx[21]~feeder_combout\);

-- Location: FF_X37_Y14_N13
\w1|r_data_rx[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[21]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(21));

-- Location: LCCOMB_X37_Y14_N4
\w2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux2~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(21)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(21),
	datad => \w1|r_data_rx\(21),
	combout => \w2|Mux2~0_combout\);

-- Location: FF_X37_Y14_N31
\w1|l_data_rx_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(21),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(22));

-- Location: FF_X37_Y14_N27
\w1|l_data_rx[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(22),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(22));

-- Location: LCCOMB_X36_Y14_N0
\w1|r_data_rx_int[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[22]~feeder_combout\ = \w1|r_data_rx_int\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(21),
	combout => \w1|r_data_rx_int[22]~feeder_combout\);

-- Location: FF_X36_Y14_N1
\w1|r_data_rx_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[22]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(22));

-- Location: LCCOMB_X36_Y14_N14
\w1|r_data_rx[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[22]~feeder_combout\ = \w1|r_data_rx_int\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(22),
	combout => \w1|r_data_rx[22]~feeder_combout\);

-- Location: FF_X36_Y14_N15
\w1|r_data_rx[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[22]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(22));

-- Location: LCCOMB_X37_Y14_N26
\w2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux1~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(22)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(22),
	datad => \w1|r_data_rx\(22),
	combout => \w2|Mux1~0_combout\);

-- Location: LCCOMB_X38_Y12_N6
\w1|l_data_rx_int[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|l_data_rx_int[23]~feeder_combout\ = \w1|l_data_rx_int\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|l_data_rx_int\(22),
	combout => \w1|l_data_rx_int[23]~feeder_combout\);

-- Location: FF_X38_Y12_N7
\w1|l_data_rx_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|l_data_rx_int[23]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|l_data_rx_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx_int\(23));

-- Location: FF_X37_Y14_N3
\w1|l_data_rx[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	asdata => \w1|l_data_rx_int\(23),
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	sload => VCC,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|l_data_rx\(23));

-- Location: LCCOMB_X36_Y14_N10
\w1|r_data_rx_int[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx_int[23]~feeder_combout\ = \w1|r_data_rx_int\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(22),
	combout => \w1|r_data_rx_int[23]~feeder_combout\);

-- Location: FF_X36_Y14_N11
\w1|r_data_rx_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx_int[23]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|r_data_rx_int[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx_int\(23));

-- Location: LCCOMB_X37_Y14_N10
\w1|r_data_rx[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w1|r_data_rx[23]~feeder_combout\ = \w1|r_data_rx_int\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w1|r_data_rx_int\(23),
	combout => \w1|r_data_rx[23]~feeder_combout\);

-- Location: FF_X37_Y14_N11
\w1|r_data_rx[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mclk_ex~inputclkctrl_outclk\,
	d => \w1|r_data_rx[23]~feeder_combout\,
	clrn => \reset_n_ex~inputclkctrl_outclk\,
	ena => \w1|ws_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w1|r_data_rx\(23));

-- Location: LCCOMB_X37_Y14_N2
\w2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \w2|Mux0~0_combout\ = (!\SEL_ex[1]~input_o\ & ((\SEL_ex[0]~input_o\ & ((\w1|r_data_rx\(23)))) # (!\SEL_ex[0]~input_o\ & (\w1|l_data_rx\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ex[1]~input_o\,
	datab => \SEL_ex[0]~input_o\,
	datac => \w1|l_data_rx\(23),
	datad => \w1|r_data_rx\(23),
	combout => \w2|Mux0~0_combout\);

ww_sclk_ex <= \sclk_ex~output_o\;

ww_ws_ex <= \ws_ex~output_o\;

ww_MX_OUT_ex(0) <= \MX_OUT_ex[0]~output_o\;

ww_MX_OUT_ex(1) <= \MX_OUT_ex[1]~output_o\;

ww_MX_OUT_ex(2) <= \MX_OUT_ex[2]~output_o\;

ww_MX_OUT_ex(3) <= \MX_OUT_ex[3]~output_o\;

ww_MX_OUT_ex(4) <= \MX_OUT_ex[4]~output_o\;

ww_MX_OUT_ex(5) <= \MX_OUT_ex[5]~output_o\;

ww_MX_OUT_ex(6) <= \MX_OUT_ex[6]~output_o\;

ww_MX_OUT_ex(7) <= \MX_OUT_ex[7]~output_o\;

ww_MX_OUT_ex(8) <= \MX_OUT_ex[8]~output_o\;

ww_MX_OUT_ex(9) <= \MX_OUT_ex[9]~output_o\;

ww_MX_OUT_ex(10) <= \MX_OUT_ex[10]~output_o\;

ww_MX_OUT_ex(11) <= \MX_OUT_ex[11]~output_o\;

ww_MX_OUT_ex(12) <= \MX_OUT_ex[12]~output_o\;

ww_MX_OUT_ex(13) <= \MX_OUT_ex[13]~output_o\;

ww_MX_OUT_ex(14) <= \MX_OUT_ex[14]~output_o\;

ww_MX_OUT_ex(15) <= \MX_OUT_ex[15]~output_o\;

ww_MX_OUT_ex(16) <= \MX_OUT_ex[16]~output_o\;

ww_MX_OUT_ex(17) <= \MX_OUT_ex[17]~output_o\;

ww_MX_OUT_ex(18) <= \MX_OUT_ex[18]~output_o\;

ww_MX_OUT_ex(19) <= \MX_OUT_ex[19]~output_o\;

ww_MX_OUT_ex(20) <= \MX_OUT_ex[20]~output_o\;

ww_MX_OUT_ex(21) <= \MX_OUT_ex[21]~output_o\;

ww_MX_OUT_ex(22) <= \MX_OUT_ex[22]~output_o\;

ww_MX_OUT_ex(23) <= \MX_OUT_ex[23]~output_o\;
END structure;


