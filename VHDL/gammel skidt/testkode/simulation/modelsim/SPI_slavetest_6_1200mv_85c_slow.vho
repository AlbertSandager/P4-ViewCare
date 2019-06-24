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

-- DATE "05/14/2019 10:57:53"

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

ENTITY 	SPI_slavetest IS
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
	tx_load_data : IN std_logic_vector(23 DOWNTO 0);
	trdy : BUFFER std_logic;
	rrdy : BUFFER std_logic;
	roe : BUFFER std_logic;
	rx_data : BUFFER std_logic_vector(23 DOWNTO 0);
	busy : BUFFER std_logic;
	miso : BUFFER std_logic
	);
END SPI_slavetest;

-- Design Ports Information
-- trdy	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rrdy	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- roe	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[4]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[6]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[7]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[9]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[10]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[11]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[12]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[13]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[14]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[15]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[16]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[17]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[18]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[19]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[20]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[21]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[22]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_data[23]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- miso	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ss_n	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_req	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mosi	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclk	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_trdy	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_en	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_en	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_rrdy	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- st_load_roe	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[23]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[22]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[21]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[20]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[19]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[18]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[17]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[16]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[15]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[14]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[13]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[12]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[11]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[10]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[9]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[8]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[7]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[4]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_load_data[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SPI_slavetest IS
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
SIGNAL ww_tx_load_data : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_trdy : std_logic;
SIGNAL ww_rrdy : std_logic;
SIGNAL ww_roe : std_logic;
SIGNAL ww_rx_data : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_busy : std_logic;
SIGNAL ww_miso : std_logic;
SIGNAL \tx_buf[0]~123clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \rd_add~0_combout\ : std_logic;
SIGNAL \rd_add~q\ : std_logic;
SIGNAL \tx_load_en~input_o\ : std_logic;
SIGNAL \tx_buf[0]~123_combout\ : std_logic;
SIGNAL \tx_load_data[23]~input_o\ : std_logic;
SIGNAL \tx_load_data[22]~input_o\ : std_logic;
SIGNAL \tx_buf[0]~123clkctrl_outclk\ : std_logic;
SIGNAL \tx_buf[22]~6_combout\ : std_logic;
SIGNAL \tx_load_data[21]~input_o\ : std_logic;
SIGNAL \tx_buf[21]~11_combout\ : std_logic;
SIGNAL \tx_load_data[20]~input_o\ : std_logic;
SIGNAL \tx_load_data[19]~input_o\ : std_logic;
SIGNAL \tx_load_data[18]~input_o\ : std_logic;
SIGNAL \tx_buf[18]~26_combout\ : std_logic;
SIGNAL \tx_load_data[17]~input_o\ : std_logic;
SIGNAL \tx_buf[17]~31_combout\ : std_logic;
SIGNAL \tx_load_data[16]~input_o\ : std_logic;
SIGNAL \tx_buf[16]~36_combout\ : std_logic;
SIGNAL \tx_load_data[15]~input_o\ : std_logic;
SIGNAL \tx_buf[15]~41_combout\ : std_logic;
SIGNAL \tx_load_data[14]~input_o\ : std_logic;
SIGNAL \tx_load_data[13]~input_o\ : std_logic;
SIGNAL \tx_buf[13]~51_combout\ : std_logic;
SIGNAL \tx_load_data[12]~input_o\ : std_logic;
SIGNAL \tx_buf[12]~56_combout\ : std_logic;
SIGNAL \tx_load_data[11]~input_o\ : std_logic;
SIGNAL \tx_buf[11]~61_combout\ : std_logic;
SIGNAL \tx_load_data[9]~input_o\ : std_logic;
SIGNAL \tx_buf[9]~71_combout\ : std_logic;
SIGNAL \tx_load_data[8]~input_o\ : std_logic;
SIGNAL \tx_buf[8]~76_combout\ : std_logic;
SIGNAL \tx_load_data[7]~input_o\ : std_logic;
SIGNAL \tx_buf[7]~81_combout\ : std_logic;
SIGNAL \tx_load_data[6]~input_o\ : std_logic;
SIGNAL \tx_load_data[5]~input_o\ : std_logic;
SIGNAL \tx_buf[5]~91_combout\ : std_logic;
SIGNAL \tx_load_data[4]~input_o\ : std_logic;
SIGNAL \tx_load_data[3]~input_o\ : std_logic;
SIGNAL \tx_buf[3]~101_combout\ : std_logic;
SIGNAL \tx_load_data[2]~input_o\ : std_logic;
SIGNAL \tx_buf[2]~106_combout\ : std_logic;
SIGNAL \tx_load_data[1]~input_o\ : std_logic;
SIGNAL \tx_buf[1]~111_combout\ : std_logic;
SIGNAL \tx_load_data[0]~input_o\ : std_logic;
SIGNAL \tx_buf[0]~116_combout\ : std_logic;
SIGNAL \tx_buf[0]~119_combout\ : std_logic;
SIGNAL \tx_buf[23]~0_combout\ : std_logic;
SIGNAL \bit_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \bit_cnt[5]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[8]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[13]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[15]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[16]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[19]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[20]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[21]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[23]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[25]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[26]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[27]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[30]~feeder_combout\ : std_logic;
SIGNAL \bit_cnt[32]~feeder_combout\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \process_1~9_combout\ : std_logic;
SIGNAL \tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[0]~118_combout\ : std_logic;
SIGNAL \tx_buf[0]~117_combout\ : std_logic;
SIGNAL \tx_buf[1]~114_combout\ : std_logic;
SIGNAL \tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[1]~113_combout\ : std_logic;
SIGNAL \tx_buf[1]~112_combout\ : std_logic;
SIGNAL \tx_buf[2]~109_combout\ : std_logic;
SIGNAL \tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[2]~108_combout\ : std_logic;
SIGNAL \tx_buf[2]~107_combout\ : std_logic;
SIGNAL \tx_buf[3]~104_combout\ : std_logic;
SIGNAL \tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[3]~103_combout\ : std_logic;
SIGNAL \tx_buf[3]~102_combout\ : std_logic;
SIGNAL \tx_buf[4]~96_combout\ : std_logic;
SIGNAL \tx_buf[4]~99_combout\ : std_logic;
SIGNAL \tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[4]~98_combout\ : std_logic;
SIGNAL \tx_buf[4]~97_combout\ : std_logic;
SIGNAL \tx_buf[5]~94_combout\ : std_logic;
SIGNAL \tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[5]~93_combout\ : std_logic;
SIGNAL \tx_buf[5]~92_combout\ : std_logic;
SIGNAL \tx_buf[6]~86_combout\ : std_logic;
SIGNAL \tx_buf[6]~89_combout\ : std_logic;
SIGNAL \tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[6]~88_combout\ : std_logic;
SIGNAL \tx_buf[6]~87_combout\ : std_logic;
SIGNAL \tx_buf[7]~84_combout\ : std_logic;
SIGNAL \tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[7]~83_combout\ : std_logic;
SIGNAL \tx_buf[7]~82_combout\ : std_logic;
SIGNAL \tx_buf[8]~79_combout\ : std_logic;
SIGNAL \tx_buf[8]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[8]~78_combout\ : std_logic;
SIGNAL \tx_buf[8]~77_combout\ : std_logic;
SIGNAL \tx_buf[9]~74_combout\ : std_logic;
SIGNAL \tx_buf[9]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[9]~73_combout\ : std_logic;
SIGNAL \tx_buf[9]~72_combout\ : std_logic;
SIGNAL \tx_load_data[10]~input_o\ : std_logic;
SIGNAL \tx_buf[10]~66_combout\ : std_logic;
SIGNAL \tx_buf[10]~69_combout\ : std_logic;
SIGNAL \tx_buf[10]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[10]~68_combout\ : std_logic;
SIGNAL \tx_buf[10]~67_combout\ : std_logic;
SIGNAL \tx_buf[11]~64_combout\ : std_logic;
SIGNAL \tx_buf[11]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[11]~63_combout\ : std_logic;
SIGNAL \tx_buf[11]~62_combout\ : std_logic;
SIGNAL \tx_buf[12]~59_combout\ : std_logic;
SIGNAL \tx_buf[12]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[12]~58_combout\ : std_logic;
SIGNAL \tx_buf[12]~57_combout\ : std_logic;
SIGNAL \tx_buf[13]~54_combout\ : std_logic;
SIGNAL \tx_buf[13]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[13]~53_combout\ : std_logic;
SIGNAL \tx_buf[13]~52_combout\ : std_logic;
SIGNAL \tx_buf[14]~46_combout\ : std_logic;
SIGNAL \tx_buf[14]~49_combout\ : std_logic;
SIGNAL \tx_buf[14]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[14]~48_combout\ : std_logic;
SIGNAL \tx_buf[14]~47_combout\ : std_logic;
SIGNAL \tx_buf[15]~44_combout\ : std_logic;
SIGNAL \tx_buf[15]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[15]~43_combout\ : std_logic;
SIGNAL \tx_buf[15]~42_combout\ : std_logic;
SIGNAL \tx_buf[16]~39_combout\ : std_logic;
SIGNAL \tx_buf[16]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[16]~38_combout\ : std_logic;
SIGNAL \tx_buf[16]~37_combout\ : std_logic;
SIGNAL \tx_buf[17]~34_combout\ : std_logic;
SIGNAL \tx_buf[17]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[17]~33_combout\ : std_logic;
SIGNAL \tx_buf[17]~32_combout\ : std_logic;
SIGNAL \tx_buf[18]~29_combout\ : std_logic;
SIGNAL \tx_buf[18]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[18]~28_combout\ : std_logic;
SIGNAL \tx_buf[18]~27_combout\ : std_logic;
SIGNAL \tx_buf[19]~21_combout\ : std_logic;
SIGNAL \tx_buf[19]~24_combout\ : std_logic;
SIGNAL \tx_buf[19]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[19]~23_combout\ : std_logic;
SIGNAL \tx_buf[19]~22_combout\ : std_logic;
SIGNAL \tx_buf[20]~16_combout\ : std_logic;
SIGNAL \tx_buf[20]~19_combout\ : std_logic;
SIGNAL \tx_buf[20]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[20]~18_combout\ : std_logic;
SIGNAL \tx_buf[20]~17_combout\ : std_logic;
SIGNAL \tx_buf[21]~14_combout\ : std_logic;
SIGNAL \tx_buf[21]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[21]~13_combout\ : std_logic;
SIGNAL \tx_buf[21]~12_combout\ : std_logic;
SIGNAL \tx_buf[22]~9_combout\ : std_logic;
SIGNAL \tx_buf[22]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[22]~8_combout\ : std_logic;
SIGNAL \tx_buf[22]~7_combout\ : std_logic;
SIGNAL \tx_buf[23]~1_combout\ : std_logic;
SIGNAL \tx_buf[23]~4_combout\ : std_logic;
SIGNAL \tx_buf[23]~_emulated_q\ : std_logic;
SIGNAL \tx_buf[23]~3_combout\ : std_logic;
SIGNAL \tx_buf[23]~2_combout\ : std_logic;
SIGNAL \st_load_trdy~input_o\ : std_logic;
SIGNAL \st_load_en~input_o\ : std_logic;
SIGNAL \trdy~8_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \trdy~1_combout\ : std_logic;
SIGNAL \wr_add~0_combout\ : std_logic;
SIGNAL \wr_add~q\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \trdy~7_combout\ : std_logic;
SIGNAL \trdy~3_combout\ : std_logic;
SIGNAL \trdy~0_combout\ : std_logic;
SIGNAL \trdy~reg0_emulated_q\ : std_logic;
SIGNAL \trdy~2_combout\ : std_logic;
SIGNAL \st_load_rrdy~input_o\ : std_logic;
SIGNAL \rx_req~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \rrdy~1_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \rrdy~7_combout\ : std_logic;
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
SIGNAL \miso~2_combout\ : std_logic;
SIGNAL \miso~3_combout\ : std_logic;
SIGNAL \miso~4_combout\ : std_logic;
SIGNAL \miso~5_combout\ : std_logic;
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
SIGNAL rx_buf : std_logic_vector(23 DOWNTO 0);
SIGNAL bit_cnt : std_logic_vector(32 DOWNTO 0);
SIGNAL \ALT_INV_sclk~input_o\ : std_logic;
SIGNAL \ALT_INV_ss_n~input_o\ : std_logic;
SIGNAL \ALT_INV_tx_buf[23]~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_roe~0_combout\ : std_logic;
SIGNAL \ALT_INV_rrdy~0_combout\ : std_logic;
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

\tx_buf[0]~123clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tx_buf[0]~123_combout\);

\process_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_1~0_combout\);
\ALT_INV_sclk~input_o\ <= NOT \sclk~input_o\;
\ALT_INV_ss_n~input_o\ <= NOT \ss_n~input_o\;
\ALT_INV_tx_buf[23]~0_combout\ <= NOT \tx_buf[23]~0_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_roe~0_combout\ <= NOT \roe~0_combout\;
\ALT_INV_rrdy~0_combout\ <= NOT \rrdy~0_combout\;
\ALT_INV_trdy~0_combout\ <= NOT \trdy~0_combout\;

-- Location: IOOBUF_X32_Y0_N16
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

-- Location: IOOBUF_X28_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X23_Y0_N23
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

-- Location: IOOBUF_X30_Y0_N23
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

-- Location: IOOBUF_X32_Y0_N30
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

-- Location: IOOBUF_X41_Y2_N16
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X41_Y6_N23
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

-- Location: IOOBUF_X35_Y0_N30
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

-- Location: IOOBUF_X9_Y0_N23
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

-- Location: IOOBUF_X30_Y0_N30
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

-- Location: IOOBUF_X30_Y0_N2
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

-- Location: IOOBUF_X37_Y0_N2
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

-- Location: IOOBUF_X9_Y0_N9
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

-- Location: IOOBUF_X11_Y0_N30
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

-- Location: IOOBUF_X19_Y0_N16
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

-- Location: IOOBUF_X19_Y0_N23
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

-- Location: IOOBUF_X23_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N30
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

-- Location: IOOBUF_X39_Y0_N23
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

-- Location: IOOBUF_X7_Y0_N9
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

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X9_Y0_N30
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

-- Location: IOOBUF_X16_Y0_N30
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X28_Y0_N16
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

-- Location: IOIBUF_X26_Y0_N1
\sclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sclk,
	o => \sclk~input_o\);

-- Location: IOIBUF_X39_Y0_N15
\mosi~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mosi,
	o => \mosi~input_o\);

-- Location: LCCOMB_X23_Y3_N22
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

-- Location: IOIBUF_X28_Y0_N29
\ss_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ss_n,
	o => \ss_n~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: LCCOMB_X23_Y2_N16
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\ss_n~input_o\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_n~input_o\,
	datad => \reset_n~input_o\,
	combout => \process_0~0_combout\);

-- Location: FF_X23_Y3_N23
\bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[1]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(1));

-- Location: LCCOMB_X23_Y3_N12
\bit_cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[2]~0_combout\ = !bit_cnt(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_cnt(1),
	combout => \bit_cnt[2]~0_combout\);

-- Location: FF_X23_Y3_N13
\bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[2]~0_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(2));

-- Location: LCCOMB_X24_Y1_N16
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

-- Location: FF_X24_Y1_N17
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

-- Location: IOIBUF_X26_Y0_N8
\tx_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_en,
	o => \tx_load_en~input_o\);

-- Location: LCCOMB_X22_Y1_N24
\tx_buf[0]~123\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~123_combout\ = (\tx_load_en~input_o\ & (\reset_n~input_o\ & \ss_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_load_en~input_o\,
	datac => \reset_n~input_o\,
	datad => \ss_n~input_o\,
	combout => \tx_buf[0]~123_combout\);

-- Location: IOIBUF_X21_Y29_N22
\tx_load_data[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(23),
	o => \tx_load_data[23]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\tx_load_data[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(22),
	o => \tx_load_data[22]~input_o\);

-- Location: CLKCTRL_G18
\tx_buf[0]~123clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tx_buf[0]~123clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tx_buf[0]~123clkctrl_outclk\);

-- Location: LCCOMB_X21_Y1_N30
\tx_buf[22]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[22]~6_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_load_data[22]~input_o\))) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_buf[22]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[22]~6_combout\,
	datab => \tx_load_data[22]~input_o\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[22]~6_combout\);

-- Location: IOIBUF_X14_Y0_N22
\tx_load_data[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(21),
	o => \tx_load_data[21]~input_o\);

-- Location: LCCOMB_X22_Y1_N8
\tx_buf[21]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[21]~11_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[21]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[21]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[21]~input_o\,
	datac => \tx_buf[21]~11_combout\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[21]~11_combout\);

-- Location: IOIBUF_X16_Y0_N1
\tx_load_data[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(20),
	o => \tx_load_data[20]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\tx_load_data[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(19),
	o => \tx_load_data[19]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\tx_load_data[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(18),
	o => \tx_load_data[18]~input_o\);

-- Location: LCCOMB_X23_Y1_N6
\tx_buf[18]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[18]~26_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_load_data[18]~input_o\))) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_buf[18]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[18]~26_combout\,
	datab => \tx_load_data[18]~input_o\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[18]~26_combout\);

-- Location: IOIBUF_X35_Y0_N1
\tx_load_data[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(17),
	o => \tx_load_data[17]~input_o\);

-- Location: LCCOMB_X24_Y2_N18
\tx_buf[17]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[17]~31_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[17]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[17]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[17]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[17]~31_combout\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[17]~31_combout\);

-- Location: IOIBUF_X28_Y0_N1
\tx_load_data[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(16),
	o => \tx_load_data[16]~input_o\);

-- Location: LCCOMB_X24_Y1_N8
\tx_buf[16]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[16]~36_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[16]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[16]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[16]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[16]~36_combout\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[16]~36_combout\);

-- Location: IOIBUF_X32_Y0_N1
\tx_load_data[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(15),
	o => \tx_load_data[15]~input_o\);

-- Location: LCCOMB_X24_Y1_N30
\tx_buf[15]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[15]~41_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[15]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[15]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[15]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[15]~41_combout\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[15]~41_combout\);

-- Location: IOIBUF_X16_Y0_N22
\tx_load_data[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(14),
	o => \tx_load_data[14]~input_o\);

-- Location: IOIBUF_X19_Y29_N29
\tx_load_data[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(13),
	o => \tx_load_data[13]~input_o\);

-- Location: LCCOMB_X19_Y1_N6
\tx_buf[13]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[13]~51_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_load_data[13]~input_o\))) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_buf[13]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[13]~51_combout\,
	datab => \reset_n~input_o\,
	datac => \tx_load_data[13]~input_o\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[13]~51_combout\);

-- Location: IOIBUF_X41_Y3_N8
\tx_load_data[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(12),
	o => \tx_load_data[12]~input_o\);

-- Location: LCCOMB_X19_Y1_N4
\tx_buf[12]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[12]~56_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[12]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[12]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[12]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[12]~56_combout\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[12]~56_combout\);

-- Location: IOIBUF_X11_Y0_N8
\tx_load_data[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(11),
	o => \tx_load_data[11]~input_o\);

-- Location: LCCOMB_X19_Y1_N14
\tx_buf[11]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[11]~61_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[11]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[11]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[11]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[11]~61_combout\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[11]~61_combout\);

-- Location: IOIBUF_X32_Y0_N8
\tx_load_data[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(9),
	o => \tx_load_data[9]~input_o\);

-- Location: LCCOMB_X21_Y1_N8
\tx_buf[9]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[9]~71_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[9]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[9]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[9]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[9]~71_combout\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[9]~71_combout\);

-- Location: IOIBUF_X23_Y0_N8
\tx_load_data[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(8),
	o => \tx_load_data[8]~input_o\);

-- Location: LCCOMB_X20_Y1_N4
\tx_buf[8]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[8]~76_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[8]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[8]~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[8]~input_o\,
	datac => \tx_buf[8]~76_combout\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[8]~76_combout\);

-- Location: IOIBUF_X28_Y0_N8
\tx_load_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(7),
	o => \tx_load_data[7]~input_o\);

-- Location: LCCOMB_X20_Y1_N22
\tx_buf[7]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~81_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[7]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[7]~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[7]~input_o\,
	datac => \tx_buf[7]~81_combout\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[7]~81_combout\);

-- Location: IOIBUF_X9_Y0_N15
\tx_load_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(6),
	o => \tx_load_data[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\tx_load_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(5),
	o => \tx_load_data[5]~input_o\);

-- Location: LCCOMB_X21_Y1_N12
\tx_buf[5]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[5]~91_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_load_data[5]~input_o\))) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_buf[5]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[5]~91_combout\,
	datab => \tx_load_data[5]~input_o\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[5]~91_combout\);

-- Location: IOIBUF_X26_Y0_N22
\tx_load_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(4),
	o => \tx_load_data[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\tx_load_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(3),
	o => \tx_load_data[3]~input_o\);

-- Location: LCCOMB_X21_Y1_N26
\tx_buf[3]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[3]~101_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_load_data[3]~input_o\))) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_buf[3]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[3]~101_combout\,
	datab => \tx_load_data[3]~input_o\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[3]~101_combout\);

-- Location: IOIBUF_X32_Y0_N22
\tx_load_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(2),
	o => \tx_load_data[2]~input_o\);

-- Location: LCCOMB_X24_Y1_N12
\tx_buf[2]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[2]~106_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[2]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[2]~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[2]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[0]~123clkctrl_outclk\,
	datad => \tx_buf[2]~106_combout\,
	combout => \tx_buf[2]~106_combout\);

-- Location: IOIBUF_X30_Y0_N8
\tx_load_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(1),
	o => \tx_load_data[1]~input_o\);

-- Location: LCCOMB_X26_Y1_N18
\tx_buf[1]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~111_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[1]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[1]~111_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[1]~input_o\,
	datab => \tx_buf[1]~111_combout\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[1]~111_combout\);

-- Location: IOIBUF_X19_Y0_N29
\tx_load_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(0),
	o => \tx_load_data[0]~input_o\);

-- Location: LCCOMB_X26_Y1_N28
\tx_buf[0]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~116_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[0]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[0]~116_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[0]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[0]~116_combout\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[0]~116_combout\);

-- Location: LCCOMB_X23_Y1_N24
\tx_buf[0]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~119_combout\ = \tx_buf[23]~2_combout\ $ (\tx_buf[0]~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[23]~2_combout\,
	datad => \tx_buf[0]~116_combout\,
	combout => \tx_buf[0]~119_combout\);

-- Location: LCCOMB_X22_Y1_N12
\tx_buf[23]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[23]~0_combout\ = (\tx_buf[0]~123_combout\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~123_combout\,
	combout => \tx_buf[23]~0_combout\);

-- Location: LCCOMB_X23_Y3_N26
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

-- Location: FF_X23_Y3_N27
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

-- Location: FF_X23_Y3_N21
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

-- Location: LCCOMB_X23_Y3_N14
\process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (!bit_cnt(3) & (!bit_cnt(4) & (bit_cnt(1) & !bit_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(3),
	datab => bit_cnt(4),
	datac => bit_cnt(1),
	datad => bit_cnt(2),
	combout => \process_1~8_combout\);

-- Location: LCCOMB_X23_Y3_N10
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

-- Location: FF_X23_Y3_N11
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

-- Location: FF_X23_Y3_N25
\bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(5),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(6));

-- Location: LCCOMB_X23_Y3_N2
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

-- Location: FF_X23_Y3_N3
\bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[7]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(7));

-- Location: LCCOMB_X27_Y2_N22
\bit_cnt[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[8]~feeder_combout\ = bit_cnt(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(7),
	combout => \bit_cnt[8]~feeder_combout\);

-- Location: FF_X27_Y2_N23
\bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[8]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(8));

-- Location: FF_X27_Y2_N25
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

-- Location: FF_X23_Y2_N27
\bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(9),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(10));

-- Location: FF_X23_Y2_N5
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

-- Location: FF_X23_Y2_N29
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

-- Location: LCCOMB_X27_Y2_N0
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

-- Location: FF_X27_Y2_N1
\bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[13]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(13));

-- Location: FF_X23_Y2_N19
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

-- Location: LCCOMB_X23_Y2_N12
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

-- Location: FF_X23_Y2_N13
\bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[15]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(15));

-- Location: LCCOMB_X26_Y2_N16
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

-- Location: FF_X26_Y2_N17
\bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[16]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(16));

-- Location: FF_X23_Y2_N15
\bit_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(16),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(17));

-- Location: FF_X23_Y2_N7
\bit_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(17),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(18));

-- Location: LCCOMB_X23_Y2_N24
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

-- Location: FF_X23_Y2_N25
\bit_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[19]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(19));

-- Location: LCCOMB_X27_Y2_N6
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

-- Location: FF_X27_Y2_N7
\bit_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[20]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(20));

-- Location: LCCOMB_X27_Y2_N20
\bit_cnt[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[21]~feeder_combout\ = bit_cnt(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(20),
	combout => \bit_cnt[21]~feeder_combout\);

-- Location: FF_X27_Y2_N21
\bit_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[21]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(21));

-- Location: FF_X24_Y2_N21
\bit_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(21),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(22));

-- Location: LCCOMB_X27_Y2_N26
\bit_cnt[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[23]~feeder_combout\ = bit_cnt(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bit_cnt(22),
	combout => \bit_cnt[23]~feeder_combout\);

-- Location: FF_X27_Y2_N27
\bit_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[23]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(23));

-- Location: FF_X27_Y2_N13
\bit_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(23),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(24));

-- Location: LCCOMB_X27_Y2_N30
\bit_cnt[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[25]~feeder_combout\ = bit_cnt(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(24),
	combout => \bit_cnt[25]~feeder_combout\);

-- Location: FF_X27_Y2_N31
\bit_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[25]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(25));

-- Location: LCCOMB_X22_Y2_N26
\bit_cnt[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[26]~feeder_combout\ = bit_cnt(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(25),
	combout => \bit_cnt[26]~feeder_combout\);

-- Location: FF_X22_Y2_N27
\bit_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[26]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(26));

-- Location: LCCOMB_X27_Y2_N28
\bit_cnt[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bit_cnt[27]~feeder_combout\ = bit_cnt(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bit_cnt(26),
	combout => \bit_cnt[27]~feeder_combout\);

-- Location: FF_X27_Y2_N29
\bit_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[27]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(27));

-- Location: FF_X23_Y2_N23
\bit_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(27),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(28));

-- Location: FF_X23_Y2_N3
\bit_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(28),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(29));

-- Location: LCCOMB_X23_Y2_N30
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

-- Location: FF_X23_Y2_N31
\bit_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[30]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(30));

-- Location: FF_X23_Y2_N17
\bit_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	asdata => bit_cnt(30),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(31));

-- Location: LCCOMB_X23_Y2_N0
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

-- Location: FF_X23_Y2_N1
\bit_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \bit_cnt[32]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(32));

-- Location: LCCOMB_X23_Y3_N16
\process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (!bit_cnt(5) & (!bit_cnt(6) & (!bit_cnt(7) & !bit_cnt(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(5),
	datab => bit_cnt(6),
	datac => bit_cnt(7),
	datad => bit_cnt(32),
	combout => \process_1~7_combout\);

-- Location: LCCOMB_X24_Y1_N10
\process_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~9_combout\ = (\process_1~8_combout\ & (\process_1~7_combout\ & !\rd_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~8_combout\,
	datac => \process_1~7_combout\,
	datad => \rd_add~q\,
	combout => \process_1~9_combout\);

-- Location: FF_X23_Y1_N25
\tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[0]~119_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[0]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N0
\tx_buf[0]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~118_combout\ = \tx_buf[0]~_emulated_q\ $ (\tx_buf[0]~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[0]~_emulated_q\,
	datad => \tx_buf[0]~116_combout\,
	combout => \tx_buf[0]~118_combout\);

-- Location: LCCOMB_X26_Y1_N14
\tx_buf[0]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[0]~117_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[0]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[0]~118_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[0]~input_o\,
	datac => \tx_buf[0]~123_combout\,
	datad => \tx_buf[0]~118_combout\,
	combout => \tx_buf[0]~117_combout\);

-- Location: LCCOMB_X26_Y1_N22
\tx_buf[1]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~114_combout\ = \tx_buf[1]~111_combout\ $ (\tx_buf[0]~117_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[1]~111_combout\,
	datac => \tx_buf[0]~117_combout\,
	combout => \tx_buf[1]~114_combout\);

-- Location: FF_X26_Y1_N23
\tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[1]~114_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[1]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N16
\tx_buf[1]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~113_combout\ = \tx_buf[1]~_emulated_q\ $ (\tx_buf[1]~111_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[1]~_emulated_q\,
	datad => \tx_buf[1]~111_combout\,
	combout => \tx_buf[1]~113_combout\);

-- Location: LCCOMB_X26_Y1_N26
\tx_buf[1]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[1]~112_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[1]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[1]~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[1]~input_o\,
	datac => \tx_buf[0]~123_combout\,
	datad => \tx_buf[1]~113_combout\,
	combout => \tx_buf[1]~112_combout\);

-- Location: LCCOMB_X26_Y1_N12
\tx_buf[2]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[2]~109_combout\ = \tx_buf[2]~106_combout\ $ (\tx_buf[1]~112_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[2]~106_combout\,
	datac => \tx_buf[1]~112_combout\,
	combout => \tx_buf[2]~109_combout\);

-- Location: FF_X26_Y1_N13
\tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[2]~109_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[2]~_emulated_q\);

-- Location: LCCOMB_X24_Y1_N0
\tx_buf[2]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[2]~108_combout\ = \tx_buf[2]~_emulated_q\ $ (\tx_buf[2]~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[2]~_emulated_q\,
	datad => \tx_buf[2]~106_combout\,
	combout => \tx_buf[2]~108_combout\);

-- Location: LCCOMB_X24_Y1_N26
\tx_buf[2]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[2]~107_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[2]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[2]~108_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[2]~input_o\,
	datac => \tx_buf[0]~123_combout\,
	datad => \tx_buf[2]~108_combout\,
	combout => \tx_buf[2]~107_combout\);

-- Location: LCCOMB_X24_Y1_N22
\tx_buf[3]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[3]~104_combout\ = \tx_buf[3]~101_combout\ $ (\tx_buf[2]~107_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[3]~101_combout\,
	datad => \tx_buf[2]~107_combout\,
	combout => \tx_buf[3]~104_combout\);

-- Location: FF_X24_Y1_N23
\tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[3]~104_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[3]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N10
\tx_buf[3]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[3]~103_combout\ = \tx_buf[3]~101_combout\ $ (\tx_buf[3]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[3]~101_combout\,
	datad => \tx_buf[3]~_emulated_q\,
	combout => \tx_buf[3]~103_combout\);

-- Location: LCCOMB_X21_Y1_N16
\tx_buf[3]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[3]~102_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[3]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[3]~103_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_buf[0]~123_combout\,
	datac => \tx_load_data[3]~input_o\,
	datad => \tx_buf[3]~103_combout\,
	combout => \tx_buf[3]~102_combout\);

-- Location: LCCOMB_X26_Y1_N24
\tx_buf[4]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[4]~96_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[4]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[4]~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[4]~input_o\,
	datab => \tx_buf[4]~96_combout\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[4]~96_combout\);

-- Location: LCCOMB_X22_Y1_N10
\tx_buf[4]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[4]~99_combout\ = \tx_buf[3]~102_combout\ $ (\tx_buf[4]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[3]~102_combout\,
	datad => \tx_buf[4]~96_combout\,
	combout => \tx_buf[4]~99_combout\);

-- Location: FF_X22_Y1_N11
\tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[4]~99_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[4]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N20
\tx_buf[4]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[4]~98_combout\ = \tx_buf[4]~_emulated_q\ $ (\tx_buf[4]~96_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[4]~_emulated_q\,
	datad => \tx_buf[4]~96_combout\,
	combout => \tx_buf[4]~98_combout\);

-- Location: LCCOMB_X26_Y1_N30
\tx_buf[4]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[4]~97_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[4]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[4]~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[4]~input_o\,
	datac => \tx_buf[0]~123_combout\,
	datad => \tx_buf[4]~98_combout\,
	combout => \tx_buf[4]~97_combout\);

-- Location: LCCOMB_X22_Y1_N30
\tx_buf[5]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[5]~94_combout\ = \tx_buf[5]~91_combout\ $ (\tx_buf[4]~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[5]~91_combout\,
	datad => \tx_buf[4]~97_combout\,
	combout => \tx_buf[5]~94_combout\);

-- Location: FF_X22_Y1_N31
\tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[5]~94_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[5]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N24
\tx_buf[5]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[5]~93_combout\ = \tx_buf[5]~_emulated_q\ $ (\tx_buf[5]~91_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[5]~_emulated_q\,
	datad => \tx_buf[5]~91_combout\,
	combout => \tx_buf[5]~93_combout\);

-- Location: LCCOMB_X22_Y1_N16
\tx_buf[5]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[5]~92_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & ((\tx_load_data[5]~input_o\))) # (!\tx_buf[0]~123_combout\ & (\tx_buf[5]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_buf[0]~123_combout\,
	datac => \tx_buf[5]~93_combout\,
	datad => \tx_load_data[5]~input_o\,
	combout => \tx_buf[5]~92_combout\);

-- Location: LCCOMB_X21_Y1_N2
\tx_buf[6]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~86_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[6]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[6]~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[6]~input_o\,
	datab => \tx_buf[6]~86_combout\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[6]~86_combout\);

-- Location: LCCOMB_X22_Y1_N2
\tx_buf[6]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~89_combout\ = \tx_buf[5]~92_combout\ $ (\tx_buf[6]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[5]~92_combout\,
	datad => \tx_buf[6]~86_combout\,
	combout => \tx_buf[6]~89_combout\);

-- Location: FF_X22_Y1_N3
\tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[6]~89_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[6]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N28
\tx_buf[6]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~88_combout\ = \tx_buf[6]~_emulated_q\ $ (\tx_buf[6]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[6]~_emulated_q\,
	datad => \tx_buf[6]~86_combout\,
	combout => \tx_buf[6]~88_combout\);

-- Location: LCCOMB_X21_Y1_N14
\tx_buf[6]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[6]~87_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[6]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[6]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_buf[0]~123_combout\,
	datac => \tx_load_data[6]~input_o\,
	datad => \tx_buf[6]~88_combout\,
	combout => \tx_buf[6]~87_combout\);

-- Location: LCCOMB_X22_Y1_N14
\tx_buf[7]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~84_combout\ = \tx_buf[6]~87_combout\ $ (\tx_buf[7]~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[6]~87_combout\,
	datad => \tx_buf[7]~81_combout\,
	combout => \tx_buf[7]~84_combout\);

-- Location: FF_X22_Y1_N15
\tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[7]~84_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[7]~_emulated_q\);

-- Location: LCCOMB_X20_Y1_N14
\tx_buf[7]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~83_combout\ = \tx_buf[7]~81_combout\ $ (\tx_buf[7]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[7]~81_combout\,
	datad => \tx_buf[7]~_emulated_q\,
	combout => \tx_buf[7]~83_combout\);

-- Location: LCCOMB_X20_Y1_N12
\tx_buf[7]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[7]~82_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & ((\tx_load_data[7]~input_o\))) # (!\tx_buf[0]~123_combout\ & (\tx_buf[7]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[0]~123_combout\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[7]~83_combout\,
	datad => \tx_load_data[7]~input_o\,
	combout => \tx_buf[7]~82_combout\);

-- Location: LCCOMB_X20_Y1_N26
\tx_buf[8]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[8]~79_combout\ = \tx_buf[8]~76_combout\ $ (\tx_buf[7]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[8]~76_combout\,
	datac => \tx_buf[7]~82_combout\,
	combout => \tx_buf[8]~79_combout\);

-- Location: FF_X20_Y1_N27
\tx_buf[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[8]~79_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[8]~_emulated_q\);

-- Location: LCCOMB_X20_Y1_N24
\tx_buf[8]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[8]~78_combout\ = \tx_buf[8]~_emulated_q\ $ (\tx_buf[8]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[8]~_emulated_q\,
	datac => \tx_buf[8]~76_combout\,
	combout => \tx_buf[8]~78_combout\);

-- Location: LCCOMB_X21_Y1_N18
\tx_buf[8]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[8]~77_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[8]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[8]~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_buf[0]~123_combout\,
	datac => \tx_load_data[8]~input_o\,
	datad => \tx_buf[8]~78_combout\,
	combout => \tx_buf[8]~77_combout\);

-- Location: LCCOMB_X21_Y1_N4
\tx_buf[9]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[9]~74_combout\ = \tx_buf[9]~71_combout\ $ (\tx_buf[8]~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[9]~71_combout\,
	datac => \tx_buf[8]~77_combout\,
	combout => \tx_buf[9]~74_combout\);

-- Location: FF_X21_Y1_N5
\tx_buf[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[9]~74_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[9]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N6
\tx_buf[9]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[9]~73_combout\ = \tx_buf[9]~_emulated_q\ $ (\tx_buf[9]~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[9]~_emulated_q\,
	datac => \tx_buf[9]~71_combout\,
	combout => \tx_buf[9]~73_combout\);

-- Location: LCCOMB_X21_Y1_N0
\tx_buf[9]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[9]~72_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[9]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[9]~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_buf[0]~123_combout\,
	datac => \tx_load_data[9]~input_o\,
	datad => \tx_buf[9]~73_combout\,
	combout => \tx_buf[9]~72_combout\);

-- Location: IOIBUF_X19_Y0_N8
\tx_load_data[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_load_data(10),
	o => \tx_load_data[10]~input_o\);

-- Location: LCCOMB_X20_Y1_N18
\tx_buf[10]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[10]~66_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_load_data[10]~input_o\))) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_buf[10]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_buf[10]~66_combout\,
	datac => \tx_load_data[10]~input_o\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[10]~66_combout\);

-- Location: LCCOMB_X21_Y1_N22
\tx_buf[10]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[10]~69_combout\ = \tx_buf[9]~72_combout\ $ (\tx_buf[10]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[9]~72_combout\,
	datad => \tx_buf[10]~66_combout\,
	combout => \tx_buf[10]~69_combout\);

-- Location: FF_X21_Y1_N23
\tx_buf[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[10]~69_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[10]~_emulated_q\);

-- Location: LCCOMB_X20_Y1_N30
\tx_buf[10]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[10]~68_combout\ = \tx_buf[10]~_emulated_q\ $ (\tx_buf[10]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[10]~_emulated_q\,
	datad => \tx_buf[10]~66_combout\,
	combout => \tx_buf[10]~68_combout\);

-- Location: LCCOMB_X20_Y1_N20
\tx_buf[10]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[10]~67_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & ((\tx_load_data[10]~input_o\))) # (!\tx_buf[0]~123_combout\ & (\tx_buf[10]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[10]~68_combout\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[0]~123_combout\,
	datad => \tx_load_data[10]~input_o\,
	combout => \tx_buf[10]~67_combout\);

-- Location: LCCOMB_X20_Y1_N28
\tx_buf[11]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[11]~64_combout\ = \tx_buf[10]~67_combout\ $ (\tx_buf[11]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[10]~67_combout\,
	datad => \tx_buf[11]~61_combout\,
	combout => \tx_buf[11]~64_combout\);

-- Location: FF_X20_Y1_N29
\tx_buf[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[11]~64_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[11]~_emulated_q\);

-- Location: LCCOMB_X19_Y1_N28
\tx_buf[11]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[11]~63_combout\ = \tx_buf[11]~61_combout\ $ (\tx_buf[11]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[11]~61_combout\,
	datad => \tx_buf[11]~_emulated_q\,
	combout => \tx_buf[11]~63_combout\);

-- Location: LCCOMB_X19_Y1_N26
\tx_buf[11]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[11]~62_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[11]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[11]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_buf[0]~123_combout\,
	datac => \tx_load_data[11]~input_o\,
	datad => \tx_buf[11]~63_combout\,
	combout => \tx_buf[11]~62_combout\);

-- Location: LCCOMB_X19_Y1_N30
\tx_buf[12]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[12]~59_combout\ = \tx_buf[12]~56_combout\ $ (\tx_buf[11]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[12]~56_combout\,
	datad => \tx_buf[11]~62_combout\,
	combout => \tx_buf[12]~59_combout\);

-- Location: FF_X19_Y1_N31
\tx_buf[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[12]~59_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[12]~_emulated_q\);

-- Location: LCCOMB_X19_Y1_N0
\tx_buf[12]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[12]~58_combout\ = \tx_buf[12]~_emulated_q\ $ (\tx_buf[12]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[12]~_emulated_q\,
	datac => \tx_buf[12]~56_combout\,
	combout => \tx_buf[12]~58_combout\);

-- Location: LCCOMB_X19_Y1_N2
\tx_buf[12]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[12]~57_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[12]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[12]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[12]~input_o\,
	datac => \tx_buf[0]~123_combout\,
	datad => \tx_buf[12]~58_combout\,
	combout => \tx_buf[12]~57_combout\);

-- Location: LCCOMB_X19_Y1_N8
\tx_buf[13]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[13]~54_combout\ = \tx_buf[13]~51_combout\ $ (\tx_buf[12]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[13]~51_combout\,
	datac => \tx_buf[12]~57_combout\,
	combout => \tx_buf[13]~54_combout\);

-- Location: FF_X19_Y1_N9
\tx_buf[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[13]~54_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[13]~_emulated_q\);

-- Location: LCCOMB_X19_Y1_N10
\tx_buf[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[13]~53_combout\ = \tx_buf[13]~_emulated_q\ $ (\tx_buf[13]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[13]~_emulated_q\,
	datad => \tx_buf[13]~51_combout\,
	combout => \tx_buf[13]~53_combout\);

-- Location: LCCOMB_X19_Y1_N16
\tx_buf[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[13]~52_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[13]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[13]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[13]~input_o\,
	datab => \tx_buf[0]~123_combout\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[13]~53_combout\,
	combout => \tx_buf[13]~52_combout\);

-- Location: LCCOMB_X19_Y1_N20
\tx_buf[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[14]~46_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_load_data[14]~input_o\))) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_buf[14]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_buf[14]~46_combout\,
	datac => \tx_load_data[14]~input_o\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[14]~46_combout\);

-- Location: LCCOMB_X19_Y1_N22
\tx_buf[14]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[14]~49_combout\ = \tx_buf[13]~52_combout\ $ (\tx_buf[14]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[13]~52_combout\,
	datad => \tx_buf[14]~46_combout\,
	combout => \tx_buf[14]~49_combout\);

-- Location: FF_X19_Y1_N23
\tx_buf[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[14]~49_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[14]~_emulated_q\);

-- Location: LCCOMB_X19_Y1_N24
\tx_buf[14]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[14]~48_combout\ = \tx_buf[14]~_emulated_q\ $ (\tx_buf[14]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[14]~_emulated_q\,
	datad => \tx_buf[14]~46_combout\,
	combout => \tx_buf[14]~48_combout\);

-- Location: LCCOMB_X19_Y1_N18
\tx_buf[14]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[14]~47_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[14]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[14]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_buf[0]~123_combout\,
	datac => \tx_load_data[14]~input_o\,
	datad => \tx_buf[14]~48_combout\,
	combout => \tx_buf[14]~47_combout\);

-- Location: LCCOMB_X19_Y1_N12
\tx_buf[15]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[15]~44_combout\ = \tx_buf[14]~47_combout\ $ (\tx_buf[15]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[14]~47_combout\,
	datad => \tx_buf[15]~41_combout\,
	combout => \tx_buf[15]~44_combout\);

-- Location: FF_X19_Y1_N13
\tx_buf[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[15]~44_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[15]~_emulated_q\);

-- Location: LCCOMB_X24_Y1_N18
\tx_buf[15]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[15]~43_combout\ = \tx_buf[15]~41_combout\ $ (\tx_buf[15]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[15]~41_combout\,
	datad => \tx_buf[15]~_emulated_q\,
	combout => \tx_buf[15]~43_combout\);

-- Location: LCCOMB_X24_Y1_N28
\tx_buf[15]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[15]~42_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[15]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[15]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[15]~input_o\,
	datac => \tx_buf[0]~123_combout\,
	datad => \tx_buf[15]~43_combout\,
	combout => \tx_buf[15]~42_combout\);

-- Location: LCCOMB_X24_Y1_N20
\tx_buf[16]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[16]~39_combout\ = \tx_buf[16]~36_combout\ $ (\tx_buf[15]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[16]~36_combout\,
	datad => \tx_buf[15]~42_combout\,
	combout => \tx_buf[16]~39_combout\);

-- Location: FF_X24_Y1_N21
\tx_buf[16]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[16]~39_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[16]~_emulated_q\);

-- Location: LCCOMB_X24_Y1_N2
\tx_buf[16]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[16]~38_combout\ = \tx_buf[16]~36_combout\ $ (\tx_buf[16]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[16]~36_combout\,
	datad => \tx_buf[16]~_emulated_q\,
	combout => \tx_buf[16]~38_combout\);

-- Location: LCCOMB_X24_Y1_N24
\tx_buf[16]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[16]~37_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[16]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[16]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[16]~input_o\,
	datac => \tx_buf[0]~123_combout\,
	datad => \tx_buf[16]~38_combout\,
	combout => \tx_buf[16]~37_combout\);

-- Location: LCCOMB_X23_Y1_N16
\tx_buf[17]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[17]~34_combout\ = \tx_buf[17]~31_combout\ $ (\tx_buf[16]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[17]~31_combout\,
	datac => \tx_buf[16]~37_combout\,
	combout => \tx_buf[17]~34_combout\);

-- Location: FF_X23_Y1_N17
\tx_buf[17]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[17]~34_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[17]~_emulated_q\);

-- Location: LCCOMB_X24_Y2_N30
\tx_buf[17]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[17]~33_combout\ = \tx_buf[17]~_emulated_q\ $ (\tx_buf[17]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[17]~_emulated_q\,
	datad => \tx_buf[17]~31_combout\,
	combout => \tx_buf[17]~33_combout\);

-- Location: LCCOMB_X23_Y1_N2
\tx_buf[17]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[17]~32_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[17]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[17]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[17]~input_o\,
	datac => \tx_buf[0]~123_combout\,
	datad => \tx_buf[17]~33_combout\,
	combout => \tx_buf[17]~32_combout\);

-- Location: LCCOMB_X23_Y1_N26
\tx_buf[18]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[18]~29_combout\ = \tx_buf[18]~26_combout\ $ (\tx_buf[17]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[18]~26_combout\,
	datad => \tx_buf[17]~32_combout\,
	combout => \tx_buf[18]~29_combout\);

-- Location: FF_X23_Y1_N27
\tx_buf[18]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[18]~29_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[18]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N20
\tx_buf[18]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[18]~28_combout\ = \tx_buf[18]~_emulated_q\ $ (\tx_buf[18]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[18]~_emulated_q\,
	datad => \tx_buf[18]~26_combout\,
	combout => \tx_buf[18]~28_combout\);

-- Location: LCCOMB_X23_Y1_N14
\tx_buf[18]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[18]~27_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[18]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[18]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_load_data[18]~input_o\,
	datac => \tx_buf[0]~123_combout\,
	datad => \tx_buf[18]~28_combout\,
	combout => \tx_buf[18]~27_combout\);

-- Location: LCCOMB_X23_Y1_N0
\tx_buf[19]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[19]~21_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[19]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[19]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[19]~input_o\,
	datab => \tx_buf[19]~21_combout\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[19]~21_combout\);

-- Location: LCCOMB_X23_Y1_N8
\tx_buf[19]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[19]~24_combout\ = \tx_buf[18]~27_combout\ $ (\tx_buf[19]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[18]~27_combout\,
	datad => \tx_buf[19]~21_combout\,
	combout => \tx_buf[19]~24_combout\);

-- Location: FF_X23_Y1_N9
\tx_buf[19]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[19]~24_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[19]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N10
\tx_buf[19]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[19]~23_combout\ = \tx_buf[19]~_emulated_q\ $ (\tx_buf[19]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[19]~_emulated_q\,
	datad => \tx_buf[19]~21_combout\,
	combout => \tx_buf[19]~23_combout\);

-- Location: LCCOMB_X23_Y1_N12
\tx_buf[19]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[19]~22_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[19]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[19]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[19]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[0]~123_combout\,
	datad => \tx_buf[19]~23_combout\,
	combout => \tx_buf[19]~22_combout\);

-- Location: LCCOMB_X23_Y1_N30
\tx_buf[20]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[20]~16_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_load_data[20]~input_o\)) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_buf[20]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[20]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[20]~16_combout\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[20]~16_combout\);

-- Location: LCCOMB_X23_Y1_N22
\tx_buf[20]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[20]~19_combout\ = \tx_buf[19]~22_combout\ $ (\tx_buf[20]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[19]~22_combout\,
	datac => \tx_buf[20]~16_combout\,
	combout => \tx_buf[20]~19_combout\);

-- Location: FF_X23_Y1_N23
\tx_buf[20]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[20]~19_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[20]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N28
\tx_buf[20]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[20]~18_combout\ = \tx_buf[20]~_emulated_q\ $ (\tx_buf[20]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[20]~_emulated_q\,
	datac => \tx_buf[20]~16_combout\,
	combout => \tx_buf[20]~18_combout\);

-- Location: LCCOMB_X23_Y1_N18
\tx_buf[20]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[20]~17_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[20]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[20]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_load_data[20]~input_o\,
	datab => \reset_n~input_o\,
	datac => \tx_buf[0]~123_combout\,
	datad => \tx_buf[20]~18_combout\,
	combout => \tx_buf[20]~17_combout\);

-- Location: LCCOMB_X23_Y1_N4
\tx_buf[21]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[21]~14_combout\ = \tx_buf[21]~11_combout\ $ (\tx_buf[20]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[21]~11_combout\,
	datac => \tx_buf[20]~17_combout\,
	combout => \tx_buf[21]~14_combout\);

-- Location: FF_X23_Y1_N5
\tx_buf[21]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[21]~14_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[21]~_emulated_q\);

-- Location: LCCOMB_X22_Y1_N28
\tx_buf[21]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[21]~13_combout\ = \tx_buf[21]~_emulated_q\ $ (\tx_buf[21]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[21]~_emulated_q\,
	datac => \tx_buf[21]~11_combout\,
	combout => \tx_buf[21]~13_combout\);

-- Location: LCCOMB_X22_Y1_N20
\tx_buf[21]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[21]~12_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[21]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[21]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_buf[0]~123_combout\,
	datac => \tx_load_data[21]~input_o\,
	datad => \tx_buf[21]~13_combout\,
	combout => \tx_buf[21]~12_combout\);

-- Location: LCCOMB_X22_Y1_N22
\tx_buf[22]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[22]~9_combout\ = \tx_buf[21]~12_combout\ $ (\tx_buf[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[21]~12_combout\,
	datad => \tx_buf[22]~6_combout\,
	combout => \tx_buf[22]~9_combout\);

-- Location: FF_X22_Y1_N23
\tx_buf[22]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[22]~9_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[22]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N20
\tx_buf[22]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[22]~8_combout\ = \tx_buf[22]~6_combout\ $ (\tx_buf[22]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[22]~6_combout\,
	datad => \tx_buf[22]~_emulated_q\,
	combout => \tx_buf[22]~8_combout\);

-- Location: LCCOMB_X22_Y1_N4
\tx_buf[22]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[22]~7_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[22]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[22]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \tx_buf[0]~123_combout\,
	datac => \tx_load_data[22]~input_o\,
	datad => \tx_buf[22]~8_combout\,
	combout => \tx_buf[22]~7_combout\);

-- Location: LCCOMB_X22_Y1_N6
\tx_buf[23]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[23]~1_combout\ = (\reset_n~input_o\ & ((GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & ((\tx_load_data[23]~input_o\))) # (!GLOBAL(\tx_buf[0]~123clkctrl_outclk\) & (\tx_buf[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[23]~1_combout\,
	datab => \tx_load_data[23]~input_o\,
	datac => \reset_n~input_o\,
	datad => \tx_buf[0]~123clkctrl_outclk\,
	combout => \tx_buf[23]~1_combout\);

-- Location: LCCOMB_X22_Y1_N26
\tx_buf[23]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[23]~4_combout\ = \tx_buf[22]~7_combout\ $ (\tx_buf[23]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_buf[22]~7_combout\,
	datad => \tx_buf[23]~1_combout\,
	combout => \tx_buf[23]~4_combout\);

-- Location: FF_X22_Y1_N27
\tx_buf[23]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sclk~input_o\,
	d => \tx_buf[23]~4_combout\,
	clrn => \ALT_INV_tx_buf[23]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_buf[23]~_emulated_q\);

-- Location: LCCOMB_X22_Y1_N0
\tx_buf[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[23]~3_combout\ = \tx_buf[23]~_emulated_q\ $ (\tx_buf[23]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tx_buf[23]~_emulated_q\,
	datad => \tx_buf[23]~1_combout\,
	combout => \tx_buf[23]~3_combout\);

-- Location: LCCOMB_X22_Y1_N18
\tx_buf[23]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tx_buf[23]~2_combout\ = (\reset_n~input_o\ & ((\tx_buf[0]~123_combout\ & (\tx_load_data[23]~input_o\)) # (!\tx_buf[0]~123_combout\ & ((\tx_buf[23]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_buf[0]~123_combout\,
	datab => \reset_n~input_o\,
	datac => \tx_load_data[23]~input_o\,
	datad => \tx_buf[23]~3_combout\,
	combout => \tx_buf[23]~2_combout\);

-- Location: IOIBUF_X30_Y0_N15
\st_load_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_trdy,
	o => \st_load_trdy~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_en,
	o => \st_load_en~input_o\);

-- Location: LCCOMB_X26_Y2_N26
\trdy~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~8_combout\ = (\ss_n~input_o\ & ((\st_load_en~input_o\ & (\st_load_trdy~input_o\)) # (!\st_load_en~input_o\ & ((\tx_load_en~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ss_n~input_o\,
	datab => \st_load_trdy~input_o\,
	datac => \tx_load_en~input_o\,
	datad => \st_load_en~input_o\,
	combout => \trdy~8_combout\);

-- Location: LCCOMB_X24_Y2_N2
\process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\ss_n~input_o\ & \st_load_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ss_n~input_o\,
	datad => \st_load_en~input_o\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X23_Y2_N28
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

-- Location: LCCOMB_X23_Y2_N14
\trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~1_combout\ = (!\process_1~2_combout\ & ((\trdy~8_combout\) # (\trdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trdy~8_combout\,
	datab => \process_1~2_combout\,
	datad => \trdy~1_combout\,
	combout => \trdy~1_combout\);

-- Location: LCCOMB_X26_Y3_N28
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

-- Location: FF_X26_Y3_N29
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

-- Location: LCCOMB_X27_Y2_N18
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

-- Location: LCCOMB_X23_Y2_N8
\trdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~7_combout\ = (\trdy~2_combout\ & (!\process_1~1_combout\ & ((\rd_add~q\) # (!bit_cnt(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trdy~2_combout\,
	datab => bit_cnt(32),
	datac => \rd_add~q\,
	datad => \process_1~1_combout\,
	combout => \trdy~7_combout\);

-- Location: LCCOMB_X23_Y2_N20
\trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~3_combout\ = \trdy~1_combout\ $ (((\trdy~7_combout\) # ((\mosi~input_o\ & \process_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \process_1~1_combout\,
	datac => \trdy~7_combout\,
	datad => \trdy~1_combout\,
	combout => \trdy~3_combout\);

-- Location: LCCOMB_X23_Y2_N2
\trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~0_combout\ = (\trdy~8_combout\) # (\process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trdy~8_combout\,
	datad => \process_1~2_combout\,
	combout => \trdy~0_combout\);

-- Location: FF_X23_Y2_N21
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

-- Location: LCCOMB_X23_Y2_N10
\trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \trdy~2_combout\ = (!\process_1~2_combout\ & ((\trdy~8_combout\) # (\trdy~1_combout\ $ (\trdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trdy~1_combout\,
	datab => \trdy~8_combout\,
	datac => \trdy~reg0_emulated_q\,
	datad => \process_1~2_combout\,
	combout => \trdy~2_combout\);

-- Location: IOIBUF_X11_Y0_N1
\st_load_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_rrdy,
	o => \st_load_rrdy~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_req,
	o => \rx_req~input_o\);

-- Location: LCCOMB_X22_Y3_N22
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\ss_n~input_o\ & \rx_req~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ss_n~input_o\,
	datad => \rx_req~input_o\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X22_Y3_N0
\process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (\process_1~0_combout\) # (((\process_1~4_combout\ & !\st_load_rrdy~input_o\)) # (!\reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \st_load_rrdy~input_o\,
	datac => \process_1~0_combout\,
	datad => \reset_n~input_o\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X22_Y3_N16
\rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~1_combout\ = (!\process_1~5_combout\ & ((\process_1~4_combout\) # (\rrdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~5_combout\,
	datac => \process_1~4_combout\,
	datad => \rrdy~1_combout\,
	combout => \rrdy~1_combout\);

-- Location: LCCOMB_X23_Y2_N6
\process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (bit_cnt(10) & \wr_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(10),
	datad => \wr_add~q\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X22_Y3_N4
\rrdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~7_combout\ = (\rrdy~2_combout\) # ((!\wr_add~q\ & bit_cnt(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_add~q\,
	datac => \rrdy~2_combout\,
	datad => bit_cnt(32),
	combout => \rrdy~7_combout\);

-- Location: LCCOMB_X22_Y3_N8
\rrdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rrdy~3_combout\ = \rrdy~1_combout\ $ (((\process_1~3_combout\ & (\mosi~input_o\)) # (!\process_1~3_combout\ & ((\rrdy~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \process_1~3_combout\,
	datac => \rrdy~7_combout\,
	datad => \rrdy~1_combout\,
	combout => \rrdy~3_combout\);

-- Location: LCCOMB_X22_Y3_N20
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

-- Location: FF_X22_Y3_N9
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

-- Location: LCCOMB_X22_Y3_N30
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

-- Location: IOIBUF_X14_Y0_N1
\st_load_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_st_load_roe,
	o => \st_load_roe~input_o\);

-- Location: LCCOMB_X22_Y3_N10
\process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = ((\process_1~4_combout\ & !\st_load_roe~input_o\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datac => \st_load_roe~input_o\,
	datad => \reset_n~input_o\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X22_Y3_N24
\roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~1_combout\ = (!\process_1~6_combout\ & ((\process_1~4_combout\) # (\roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datac => \process_1~6_combout\,
	datad => \roe~1_combout\,
	combout => \roe~1_combout\);

-- Location: LCCOMB_X23_Y2_N4
\roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~6_combout\ = (\wr_add~q\ & (((!bit_cnt(11))) # (!\mosi~input_o\))) # (!\wr_add~q\ & (((!bit_cnt(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(32),
	datac => bit_cnt(11),
	datad => \wr_add~q\,
	combout => \roe~6_combout\);

-- Location: LCCOMB_X22_Y3_N18
\roe~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~7_combout\ = (\wr_add~q\ & (\roe~6_combout\ & ((bit_cnt(11)) # (!\roe~2_combout\)))) # (!\wr_add~q\ & (!\roe~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \roe~2_combout\,
	datab => \roe~6_combout\,
	datac => \wr_add~q\,
	datad => bit_cnt(11),
	combout => \roe~7_combout\);

-- Location: LCCOMB_X22_Y3_N26
\roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~3_combout\ = \roe~1_combout\ $ ((((\rrdy~2_combout\ & !\roe~6_combout\)) # (!\roe~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \roe~1_combout\,
	datab => \rrdy~2_combout\,
	datac => \roe~6_combout\,
	datad => \roe~7_combout\,
	combout => \roe~3_combout\);

-- Location: LCCOMB_X22_Y3_N28
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

-- Location: FF_X22_Y3_N27
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

-- Location: LCCOMB_X22_Y3_N12
\roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \roe~2_combout\ = (!\process_1~6_combout\ & ((\process_1~4_combout\) # (\roe~1_combout\ $ (\roe~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~4_combout\,
	datab => \roe~1_combout\,
	datac => \roe~reg0_emulated_q\,
	datad => \process_1~6_combout\,
	combout => \roe~2_combout\);

-- Location: LCCOMB_X22_Y3_N14
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

-- Location: LCCOMB_X23_Y3_N28
\miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~2_combout\ = (bit_cnt(8) & (\trdy~2_combout\)) # (!bit_cnt(8) & ((\miso~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(8),
	datac => \trdy~2_combout\,
	datad => \miso~1_combout\,
	combout => \miso~2_combout\);

-- Location: LCCOMB_X23_Y3_N4
\miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~3_combout\ = (\rd_add~q\ & ((\miso~2_combout\))) # (!\rd_add~q\ & (\tx_buf[23]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_add~q\,
	datac => \tx_buf[23]~2_combout\,
	datad => \miso~2_combout\,
	combout => \miso~3_combout\);

-- Location: LCCOMB_X23_Y3_N24
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

-- Location: LCCOMB_X23_Y3_N0
\miso~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \miso~5_combout\ = (\rd_add~q\ & (((\miso~4_combout\)))) # (!\rd_add~q\ & (\process_1~8_combout\ & (\process_1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~8_combout\,
	datab => \process_1~7_combout\,
	datac => \miso~4_combout\,
	datad => \rd_add~q\,
	combout => \miso~5_combout\);

-- Location: FF_X23_Y3_N5
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

-- Location: LCCOMB_X23_Y3_N30
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

-- Location: FF_X23_Y3_N31
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
	ena => \miso~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \miso~en_q\);

-- Location: LCCOMB_X26_Y2_N0
\rx_buf[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[0]~0_combout\ = (bit_cnt(32) & ((\wr_add~q\ & (rx_buf(0))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(32) & (((rx_buf(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(32),
	datab => \wr_add~q\,
	datac => rx_buf(0),
	datad => \mosi~input_o\,
	combout => \rx_buf[0]~0_combout\);

-- Location: FF_X26_Y2_N1
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

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X26_Y2_N22
\rx_data[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[0]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(0)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[0]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[0]$latch~combout\,
	datab => \reset_n~input_o\,
	datac => rx_buf(0),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[0]$latch~combout\);

-- Location: LCCOMB_X24_Y2_N12
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

-- Location: FF_X24_Y2_N13
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

-- Location: LCCOMB_X24_Y2_N4
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

-- Location: LCCOMB_X26_Y2_N6
\rx_buf[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[2]~2_combout\ = (\wr_add~q\ & (((rx_buf(2))))) # (!\wr_add~q\ & ((bit_cnt(30) & (\mosi~input_o\)) # (!bit_cnt(30) & ((rx_buf(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(2),
	datad => bit_cnt(30),
	combout => \rx_buf[2]~2_combout\);

-- Location: FF_X26_Y2_N7
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

-- Location: LCCOMB_X26_Y2_N12
\rx_data[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[2]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(2)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[2]$latch~combout\,
	datab => \reset_n~input_o\,
	datac => rx_buf(2),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[2]$latch~combout\);

-- Location: LCCOMB_X24_Y2_N14
\rx_buf[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[3]~3_combout\ = (bit_cnt(29) & ((\wr_add~q\ & (rx_buf(3))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(29) & (((rx_buf(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(29),
	datab => \wr_add~q\,
	datac => rx_buf(3),
	datad => \mosi~input_o\,
	combout => \rx_buf[3]~3_combout\);

-- Location: FF_X24_Y2_N15
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

-- Location: LCCOMB_X24_Y2_N26
\rx_data[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[3]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(3))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[3]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(3),
	datab => \reset_n~input_o\,
	datac => \rx_data[3]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[3]$latch~combout\);

-- Location: LCCOMB_X24_Y2_N8
\rx_buf[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[4]~4_combout\ = (\wr_add~q\ & (((rx_buf(4))))) # (!\wr_add~q\ & ((bit_cnt(28) & (\mosi~input_o\)) # (!bit_cnt(28) & ((rx_buf(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(4),
	datad => bit_cnt(28),
	combout => \rx_buf[4]~4_combout\);

-- Location: FF_X24_Y2_N9
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

-- Location: LCCOMB_X24_Y2_N16
\rx_data[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[4]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(4))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[4]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(4),
	datab => \rx_data[4]$latch~combout\,
	datac => \reset_n~input_o\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[4]$latch~combout\);

-- Location: LCCOMB_X22_Y2_N0
\rx_buf[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[5]~5_combout\ = (bit_cnt(27) & ((\wr_add~q\ & ((rx_buf(5)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(27) & (((rx_buf(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(27),
	datac => rx_buf(5),
	datad => \wr_add~q\,
	combout => \rx_buf[5]~5_combout\);

-- Location: FF_X22_Y2_N1
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

-- Location: LCCOMB_X22_Y2_N24
\rx_data[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[5]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(5)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[5]$latch~combout\,
	datab => rx_buf(5),
	datac => \reset_n~input_o\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[5]$latch~combout\);

-- Location: LCCOMB_X22_Y2_N6
\rx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[6]~6_combout\ = (bit_cnt(26) & ((\wr_add~q\ & ((rx_buf(6)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(26) & (((rx_buf(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(26),
	datac => rx_buf(6),
	datad => \wr_add~q\,
	combout => \rx_buf[6]~6_combout\);

-- Location: FF_X22_Y2_N7
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

-- Location: LCCOMB_X22_Y2_N14
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

-- Location: LCCOMB_X27_Y1_N16
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

-- Location: FF_X27_Y1_N17
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

-- Location: LCCOMB_X27_Y1_N28
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

-- Location: LCCOMB_X27_Y1_N6
\rx_buf[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[8]~8_combout\ = (\wr_add~q\ & (((rx_buf(8))))) # (!\wr_add~q\ & ((bit_cnt(24) & (\mosi~input_o\)) # (!bit_cnt(24) & ((rx_buf(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(8),
	datad => bit_cnt(24),
	combout => \rx_buf[8]~8_combout\);

-- Location: FF_X27_Y1_N7
\rx_buf[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[8]~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(8));

-- Location: LCCOMB_X27_Y1_N18
\rx_data[8]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[8]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(8)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[8]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[8]$latch~combout\,
	datab => rx_buf(8),
	datac => \reset_n~input_o\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[8]$latch~combout\);

-- Location: LCCOMB_X27_Y1_N24
\rx_buf[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[9]~9_combout\ = (\wr_add~q\ & (((rx_buf(9))))) # (!\wr_add~q\ & ((bit_cnt(23) & (\mosi~input_o\)) # (!bit_cnt(23) & ((rx_buf(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(9),
	datad => bit_cnt(23),
	combout => \rx_buf[9]~9_combout\);

-- Location: FF_X27_Y1_N25
\rx_buf[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[9]~9_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(9));

-- Location: LCCOMB_X27_Y1_N0
\rx_data[9]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[9]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(9))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[9]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(9),
	datab => \rx_data[9]$latch~combout\,
	datac => \reset_n~input_o\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[9]$latch~combout\);

-- Location: LCCOMB_X27_Y1_N14
\rx_buf[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[10]~10_combout\ = (\wr_add~q\ & (((rx_buf(10))))) # (!\wr_add~q\ & ((bit_cnt(22) & (\mosi~input_o\)) # (!bit_cnt(22) & ((rx_buf(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(10),
	datad => bit_cnt(22),
	combout => \rx_buf[10]~10_combout\);

-- Location: FF_X27_Y1_N15
\rx_buf[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[10]~10_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(10));

-- Location: LCCOMB_X27_Y1_N22
\rx_data[10]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[10]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(10))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[10]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => rx_buf(10),
	datac => \rx_data[10]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[10]$latch~combout\);

-- Location: LCCOMB_X27_Y1_N12
\rx_buf[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[11]~11_combout\ = (\wr_add~q\ & (((rx_buf(11))))) # (!\wr_add~q\ & ((bit_cnt(21) & (\mosi~input_o\)) # (!bit_cnt(21) & ((rx_buf(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(11),
	datad => bit_cnt(21),
	combout => \rx_buf[11]~11_combout\);

-- Location: FF_X27_Y1_N13
\rx_buf[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[11]~11_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(11));

-- Location: LCCOMB_X27_Y1_N8
\rx_data[11]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[11]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(11))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[11]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(11),
	datab => \reset_n~input_o\,
	datac => \rx_data[11]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[11]$latch~combout\);

-- Location: LCCOMB_X27_Y1_N2
\rx_buf[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[12]~12_combout\ = (\wr_add~q\ & (((rx_buf(12))))) # (!\wr_add~q\ & ((bit_cnt(20) & (\mosi~input_o\)) # (!bit_cnt(20) & ((rx_buf(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(12),
	datad => bit_cnt(20),
	combout => \rx_buf[12]~12_combout\);

-- Location: FF_X27_Y1_N3
\rx_buf[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[12]~12_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(12));

-- Location: LCCOMB_X27_Y1_N26
\rx_data[12]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[12]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(12))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[12]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => rx_buf(12),
	datac => \rx_data[12]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[12]$latch~combout\);

-- Location: LCCOMB_X26_Y2_N8
\rx_buf[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[13]~13_combout\ = (\wr_add~q\ & (((rx_buf(13))))) # (!\wr_add~q\ & ((bit_cnt(19) & (\mosi~input_o\)) # (!bit_cnt(19) & ((rx_buf(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(13),
	datad => bit_cnt(19),
	combout => \rx_buf[13]~13_combout\);

-- Location: FF_X26_Y2_N9
\rx_buf[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[13]~13_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(13));

-- Location: LCCOMB_X26_Y2_N2
\rx_data[13]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[13]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(13)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[13]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[13]$latch~combout\,
	datab => \reset_n~input_o\,
	datac => rx_buf(13),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[13]$latch~combout\);

-- Location: LCCOMB_X24_Y2_N6
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

-- Location: FF_X24_Y2_N7
\rx_buf[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[14]~14_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(14));

-- Location: LCCOMB_X24_Y2_N22
\rx_data[14]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[14]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(14))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[14]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(14),
	datab => \reset_n~input_o\,
	datac => \rx_data[14]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[14]$latch~combout\);

-- Location: LCCOMB_X24_Y3_N20
\rx_buf[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[15]~15_combout\ = (\wr_add~q\ & (((rx_buf(15))))) # (!\wr_add~q\ & ((bit_cnt(17) & (\mosi~input_o\)) # (!bit_cnt(17) & ((rx_buf(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(15),
	datad => bit_cnt(17),
	combout => \rx_buf[15]~15_combout\);

-- Location: FF_X24_Y3_N21
\rx_buf[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[15]~15_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(15));

-- Location: LCCOMB_X24_Y3_N26
\rx_data[15]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[15]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(15))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[15]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => rx_buf(15),
	datac => \rx_data[15]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[15]$latch~combout\);

-- Location: LCCOMB_X26_Y2_N10
\rx_buf[16]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[16]~16_combout\ = (\wr_add~q\ & (((rx_buf(16))))) # (!\wr_add~q\ & ((bit_cnt(16) & (\mosi~input_o\)) # (!bit_cnt(16) & ((rx_buf(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(16),
	datad => bit_cnt(16),
	combout => \rx_buf[16]~16_combout\);

-- Location: FF_X26_Y2_N11
\rx_buf[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[16]~16_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(16));

-- Location: LCCOMB_X26_Y2_N4
\rx_data[16]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[16]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(16)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[16]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rx_data[16]$latch~combout\,
	datac => rx_buf(16),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[16]$latch~combout\);

-- Location: LCCOMB_X26_Y2_N24
\rx_buf[17]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[17]~17_combout\ = (bit_cnt(15) & ((\wr_add~q\ & (rx_buf(17))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(15) & (((rx_buf(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(15),
	datab => \wr_add~q\,
	datac => rx_buf(17),
	datad => \mosi~input_o\,
	combout => \rx_buf[17]~17_combout\);

-- Location: FF_X26_Y2_N25
\rx_buf[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[17]~17_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(17));

-- Location: LCCOMB_X26_Y2_N18
\rx_data[17]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[17]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(17)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[17]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rx_data[17]$latch~combout\,
	datac => rx_buf(17),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[17]$latch~combout\);

-- Location: LCCOMB_X26_Y2_N30
\rx_buf[18]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[18]~18_combout\ = (bit_cnt(14) & ((\wr_add~q\ & (rx_buf(18))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(14) & (((rx_buf(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(14),
	datab => \wr_add~q\,
	datac => rx_buf(18),
	datad => \mosi~input_o\,
	combout => \rx_buf[18]~18_combout\);

-- Location: FF_X26_Y2_N31
\rx_buf[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[18]~18_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(18));

-- Location: LCCOMB_X26_Y2_N28
\rx_data[18]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[18]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(18)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[18]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rx_data[18]$latch~combout\,
	datac => rx_buf(18),
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[18]$latch~combout\);

-- Location: LCCOMB_X22_Y2_N4
\rx_buf[19]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[19]~19_combout\ = (bit_cnt(13) & ((\wr_add~q\ & ((rx_buf(19)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(13) & (((rx_buf(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(13),
	datab => \mosi~input_o\,
	datac => rx_buf(19),
	datad => \wr_add~q\,
	combout => \rx_buf[19]~19_combout\);

-- Location: FF_X22_Y2_N5
\rx_buf[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[19]~19_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(19));

-- Location: LCCOMB_X22_Y2_N8
\rx_data[19]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[19]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(19))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[19]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => rx_buf(19),
	datac => \rx_data[19]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[19]$latch~combout\);

-- Location: LCCOMB_X22_Y2_N30
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

-- Location: FF_X22_Y2_N31
\rx_buf[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[20]~20_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(20));

-- Location: LCCOMB_X22_Y2_N22
\rx_data[20]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[20]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(20))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[20]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(20),
	datab => \reset_n~input_o\,
	datac => \rx_data[20]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[20]$latch~combout\);

-- Location: LCCOMB_X22_Y2_N28
\rx_buf[21]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[21]~21_combout\ = (bit_cnt(11) & ((\wr_add~q\ & ((rx_buf(21)))) # (!\wr_add~q\ & (\mosi~input_o\)))) # (!bit_cnt(11) & (((rx_buf(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => bit_cnt(11),
	datac => rx_buf(21),
	datad => \wr_add~q\,
	combout => \rx_buf[21]~21_combout\);

-- Location: FF_X22_Y2_N29
\rx_buf[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[21]~21_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(21));

-- Location: LCCOMB_X22_Y2_N12
\rx_data[21]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[21]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & ((rx_buf(21)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (\rx_data[21]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_data[21]$latch~combout\,
	datab => rx_buf(21),
	datac => \reset_n~input_o\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[21]$latch~combout\);

-- Location: LCCOMB_X24_Y2_N28
\rx_buf[22]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[22]~22_combout\ = (bit_cnt(10) & ((\wr_add~q\ & (rx_buf(22))) # (!\wr_add~q\ & ((\mosi~input_o\))))) # (!bit_cnt(10) & (((rx_buf(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(10),
	datab => \wr_add~q\,
	datac => rx_buf(22),
	datad => \mosi~input_o\,
	combout => \rx_buf[22]~22_combout\);

-- Location: FF_X24_Y2_N29
\rx_buf[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[22]~22_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(22));

-- Location: LCCOMB_X24_Y2_N24
\rx_data[22]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[22]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(22))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[22]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(22),
	datab => \rx_data[22]$latch~combout\,
	datac => \reset_n~input_o\,
	datad => \process_1~0clkctrl_outclk\,
	combout => \rx_data[22]$latch~combout\);

-- Location: LCCOMB_X26_Y2_N20
\rx_buf[23]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_buf[23]~23_combout\ = (\wr_add~q\ & (((rx_buf(23))))) # (!\wr_add~q\ & ((bit_cnt(9) & (\mosi~input_o\)) # (!bit_cnt(9) & ((rx_buf(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mosi~input_o\,
	datab => \wr_add~q\,
	datac => rx_buf(23),
	datad => bit_cnt(9),
	combout => \rx_buf[23]~23_combout\);

-- Location: FF_X26_Y2_N21
\rx_buf[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sclk~input_o\,
	d => \rx_buf[23]~23_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rx_buf(23));

-- Location: LCCOMB_X26_Y2_N14
\rx_data[23]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rx_data[23]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_1~0clkctrl_outclk\) & (rx_buf(23))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & ((\rx_data[23]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rx_buf(23),
	datab => \reset_n~input_o\,
	datac => \rx_data[23]$latch~combout\,
	datad => \process_1~0clkctrl_outclk\,
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


