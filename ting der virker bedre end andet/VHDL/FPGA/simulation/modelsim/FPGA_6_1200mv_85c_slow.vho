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

-- DATE "05/07/2019 11:02:20"

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

ENTITY 	FPGA IS
    PORT (
	reset_n : IN std_logic;
	ecg_sclk : IN std_logic;
	ecg_ss_n : IN std_logic;
	ecg_mosi : IN std_logic;
	ecg_rx_req : IN std_logic;
	ecg_st_load_en : IN std_logic;
	ecg_st_load_ecg_trdy : IN std_logic;
	ecg_st_load_ecg_rrdy : IN std_logic;
	ecg_st_load_ecg_roe : IN std_logic;
	ecg_tx_load_en : IN std_logic;
	ecg_tx_load_data : IN std_logic_vector(7 DOWNTO 0);
	ecg_trdy : BUFFER std_logic;
	ecg_rrdy : BUFFER std_logic;
	ecg_roe : BUFFER std_logic;
	ecg_busy : OUT std_logic;
	ecg_miso : OUT std_logic;
	rec_sclk : IN std_logic;
	rec_ss_n : IN std_logic;
	rec_mosi : IN std_logic;
	rec_rx_req : IN std_logic;
	rec_st_load_en : IN std_logic;
	rec_st_load_rec_trdy : IN std_logic;
	rec_st_load_rec_rrdy : IN std_logic;
	rec_st_load_rec_roe : IN std_logic;
	rec_tx_load_en : IN std_logic;
	rec_trdy : BUFFER std_logic;
	rec_rrdy : BUFFER std_logic;
	rec_roe : BUFFER std_logic;
	rec_rx_data : OUT std_logic_vector(7 DOWNTO 0);
	rec_busy : OUT std_logic;
	rec_miso : OUT std_logic
	);
END FPGA;

-- Design Ports Information
-- ecg_trdy	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_rrdy	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_roe	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_busy	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_miso	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_trdy	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rrdy	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_roe	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[1]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[5]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[6]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_busy	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_miso	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_ss_n	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_ss_n	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_req	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_mosi	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_sclk	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_ecg_trdy	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_en	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_en	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_rx_req	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_ecg_rrdy	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_ecg_roe	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_mosi	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_sclk	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_rec_trdy	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_tx_load_en	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_en	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_rec_rrdy	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_rec_roe	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[7]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[5]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[4]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[0]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FPGA IS
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
SIGNAL ww_ecg_sclk : std_logic;
SIGNAL ww_ecg_ss_n : std_logic;
SIGNAL ww_ecg_mosi : std_logic;
SIGNAL ww_ecg_rx_req : std_logic;
SIGNAL ww_ecg_st_load_en : std_logic;
SIGNAL ww_ecg_st_load_ecg_trdy : std_logic;
SIGNAL ww_ecg_st_load_ecg_rrdy : std_logic;
SIGNAL ww_ecg_st_load_ecg_roe : std_logic;
SIGNAL ww_ecg_tx_load_en : std_logic;
SIGNAL ww_ecg_tx_load_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ecg_trdy : std_logic;
SIGNAL ww_ecg_rrdy : std_logic;
SIGNAL ww_ecg_roe : std_logic;
SIGNAL ww_ecg_busy : std_logic;
SIGNAL ww_ecg_miso : std_logic;
SIGNAL ww_rec_sclk : std_logic;
SIGNAL ww_rec_ss_n : std_logic;
SIGNAL ww_rec_mosi : std_logic;
SIGNAL ww_rec_rx_req : std_logic;
SIGNAL ww_rec_st_load_en : std_logic;
SIGNAL ww_rec_st_load_rec_trdy : std_logic;
SIGNAL ww_rec_st_load_rec_rrdy : std_logic;
SIGNAL ww_rec_st_load_rec_roe : std_logic;
SIGNAL ww_rec_tx_load_en : std_logic;
SIGNAL ww_rec_trdy : std_logic;
SIGNAL ww_rec_rrdy : std_logic;
SIGNAL ww_rec_roe : std_logic;
SIGNAL ww_rec_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rec_busy : std_logic;
SIGNAL ww_rec_miso : std_logic;
SIGNAL \process_1~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ecg_tx_buf[0]~43clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rec_tx_buf[0]~43clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_3~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ecg_miso~output_o\ : std_logic;
SIGNAL \rec_miso~output_o\ : std_logic;
SIGNAL \ecg_trdy~output_o\ : std_logic;
SIGNAL \ecg_rrdy~output_o\ : std_logic;
SIGNAL \ecg_roe~output_o\ : std_logic;
SIGNAL \ecg_busy~output_o\ : std_logic;
SIGNAL \rec_trdy~output_o\ : std_logic;
SIGNAL \rec_rrdy~output_o\ : std_logic;
SIGNAL \rec_roe~output_o\ : std_logic;
SIGNAL \rec_rx_data[0]~output_o\ : std_logic;
SIGNAL \rec_rx_data[1]~output_o\ : std_logic;
SIGNAL \rec_rx_data[2]~output_o\ : std_logic;
SIGNAL \rec_rx_data[3]~output_o\ : std_logic;
SIGNAL \rec_rx_data[4]~output_o\ : std_logic;
SIGNAL \rec_rx_data[5]~output_o\ : std_logic;
SIGNAL \rec_rx_data[6]~output_o\ : std_logic;
SIGNAL \rec_rx_data[7]~output_o\ : std_logic;
SIGNAL \rec_busy~output_o\ : std_logic;
SIGNAL \ecg_sclk~input_o\ : std_logic;
SIGNAL \ecg_mosi~input_o\ : std_logic;
SIGNAL \ecg_bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \ecg_ss_n~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \ecg_bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \ecg_rd_add~0_combout\ : std_logic;
SIGNAL \ecg_rd_add~q\ : std_logic;
SIGNAL \ecg_tx_load_data[7]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_en~input_o\ : std_logic;
SIGNAL \ecg_tx_buf[0]~43_combout\ : std_logic;
SIGNAL \ecg_tx_buf[0]~43clkctrl_outclk\ : std_logic;
SIGNAL \ecg_tx_buf[7]~1_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[6]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[5]~input_o\ : std_logic;
SIGNAL \ecg_tx_buf[5]~11_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[4]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[3]~input_o\ : std_logic;
SIGNAL \ecg_tx_buf[3]~21_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[2]~input_o\ : std_logic;
SIGNAL \ecg_tx_buf[2]~26_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[1]~input_o\ : std_logic;
SIGNAL \ecg_tx_buf[1]~31_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[0]~input_o\ : std_logic;
SIGNAL \ecg_tx_buf[0]~36_combout\ : std_logic;
SIGNAL \ecg_tx_buf[0]~39_combout\ : std_logic;
SIGNAL \ecg_tx_buf[7]~0_combout\ : std_logic;
SIGNAL \ecg_bit_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \ecg_bit_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \ecg_bit_cnt[8]~feeder_combout\ : std_logic;
SIGNAL \ecg_bit_cnt[13]~feeder_combout\ : std_logic;
SIGNAL \ecg_bit_cnt[14]~feeder_combout\ : std_logic;
SIGNAL \ecg_bit_cnt[16]~feeder_combout\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \process_1~9_combout\ : std_logic;
SIGNAL \ecg_tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \ecg_tx_buf[0]~38_combout\ : std_logic;
SIGNAL \ecg_tx_buf[0]~37_combout\ : std_logic;
SIGNAL \ecg_tx_buf[1]~34_combout\ : std_logic;
SIGNAL \ecg_tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \ecg_tx_buf[1]~33_combout\ : std_logic;
SIGNAL \ecg_tx_buf[1]~32_combout\ : std_logic;
SIGNAL \ecg_tx_buf[2]~29_combout\ : std_logic;
SIGNAL \ecg_tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \ecg_tx_buf[2]~28_combout\ : std_logic;
SIGNAL \ecg_tx_buf[2]~27_combout\ : std_logic;
SIGNAL \ecg_tx_buf[3]~24_combout\ : std_logic;
SIGNAL \ecg_tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \ecg_tx_buf[3]~23_combout\ : std_logic;
SIGNAL \ecg_tx_buf[3]~22_combout\ : std_logic;
SIGNAL \ecg_tx_buf[4]~16_combout\ : std_logic;
SIGNAL \ecg_tx_buf[4]~19_combout\ : std_logic;
SIGNAL \ecg_tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \ecg_tx_buf[4]~18_combout\ : std_logic;
SIGNAL \ecg_tx_buf[4]~17_combout\ : std_logic;
SIGNAL \ecg_tx_buf[5]~14_combout\ : std_logic;
SIGNAL \ecg_tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \ecg_tx_buf[5]~13_combout\ : std_logic;
SIGNAL \ecg_tx_buf[5]~12_combout\ : std_logic;
SIGNAL \ecg_tx_buf[6]~6_combout\ : std_logic;
SIGNAL \ecg_tx_buf[6]~9_combout\ : std_logic;
SIGNAL \ecg_tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \ecg_tx_buf[6]~8_combout\ : std_logic;
SIGNAL \ecg_tx_buf[6]~7_combout\ : std_logic;
SIGNAL \ecg_tx_buf[7]~4_combout\ : std_logic;
SIGNAL \ecg_tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \ecg_tx_buf[7]~3_combout\ : std_logic;
SIGNAL \ecg_tx_buf[7]~2_combout\ : std_logic;
SIGNAL \ecg_st_load_ecg_trdy~input_o\ : std_logic;
SIGNAL \ecg_st_load_en~input_o\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \ecg_trdy~8_combout\ : std_logic;
SIGNAL \ecg_trdy~1_combout\ : std_logic;
SIGNAL \ecg_wr_add~0_combout\ : std_logic;
SIGNAL \ecg_wr_add~q\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \ecg_trdy~7_combout\ : std_logic;
SIGNAL \ecg_trdy~3_combout\ : std_logic;
SIGNAL \ecg_trdy~0_combout\ : std_logic;
SIGNAL \ecg_trdy~reg0_emulated_q\ : std_logic;
SIGNAL \ecg_trdy~2_combout\ : std_logic;
SIGNAL \ecg_rx_req~input_o\ : std_logic;
SIGNAL \ecg_st_load_ecg_rrdy~input_o\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \ecg_rrdy~1_combout\ : std_logic;
SIGNAL \ecg_rrdy~7_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \ecg_rrdy~3_combout\ : std_logic;
SIGNAL \ecg_rrdy~0_combout\ : std_logic;
SIGNAL \ecg_rrdy~reg0_emulated_q\ : std_logic;
SIGNAL \ecg_rrdy~2_combout\ : std_logic;
SIGNAL \ecg_st_load_ecg_roe~input_o\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \ecg_roe~1_combout\ : std_logic;
SIGNAL \ecg_roe~6_combout\ : std_logic;
SIGNAL \ecg_roe~7_combout\ : std_logic;
SIGNAL \ecg_roe~3_combout\ : std_logic;
SIGNAL \ecg_roe~0_combout\ : std_logic;
SIGNAL \ecg_roe~reg0_emulated_q\ : std_logic;
SIGNAL \ecg_roe~2_combout\ : std_logic;
SIGNAL \ecg_miso~1_combout\ : std_logic;
SIGNAL \ecg_miso~2_combout\ : std_logic;
SIGNAL \ecg_miso~3_combout\ : std_logic;
SIGNAL \ecg_miso~4_combout\ : std_logic;
SIGNAL \ecg_miso~5_combout\ : std_logic;
SIGNAL \ecg_miso~reg0_q\ : std_logic;
SIGNAL \ecg_miso~enfeeder_combout\ : std_logic;
SIGNAL \ecg_miso~en_q\ : std_logic;
SIGNAL \rec_sclk~input_o\ : std_logic;
SIGNAL \rec_mosi~input_o\ : std_logic;
SIGNAL \rec_bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \rec_ss_n~input_o\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \rec_bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \rec_rd_add~0_combout\ : std_logic;
SIGNAL \rec_rd_add~q\ : std_logic;
SIGNAL \rec_tx_load_en~input_o\ : std_logic;
SIGNAL \rec_tx_buf[0]~43_combout\ : std_logic;
SIGNAL \rec_tx_buf[0]~43clkctrl_outclk\ : std_logic;
SIGNAL \ecg_rx_buf[7]~0_combout\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \process_1~10_combout\ : std_logic;
SIGNAL \process_1~10clkctrl_outclk\ : std_logic;
SIGNAL \rec_tx_buf[7]~1_combout\ : std_logic;
SIGNAL \ecg_rx_buf[6]~1_combout\ : std_logic;
SIGNAL \rec_tx_buf[6]~6_combout\ : std_logic;
SIGNAL \ecg_rx_buf[5]~2_combout\ : std_logic;
SIGNAL \rec_tx_buf[5]~11_combout\ : std_logic;
SIGNAL \ecg_rx_buf[3]~4_combout\ : std_logic;
SIGNAL \rec_tx_buf[3]~21_combout\ : std_logic;
SIGNAL \ecg_rx_buf[2]~5_combout\ : std_logic;
SIGNAL \rec_tx_buf[2]~26_combout\ : std_logic;
SIGNAL \ecg_rx_buf[0]~7_combout\ : std_logic;
SIGNAL \rec_tx_buf[0]~36_combout\ : std_logic;
SIGNAL \rec_tx_buf[0]~39_combout\ : std_logic;
SIGNAL \rec_tx_buf[7]~0_combout\ : std_logic;
SIGNAL \rec_bit_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \rec_bit_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \rec_bit_cnt[9]~feeder_combout\ : std_logic;
SIGNAL \rec_bit_cnt[10]~feeder_combout\ : std_logic;
SIGNAL \process_3~9_combout\ : std_logic;
SIGNAL \process_3~10_combout\ : std_logic;
SIGNAL \process_3~11_combout\ : std_logic;
SIGNAL \rec_tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \rec_tx_buf[0]~38_combout\ : std_logic;
SIGNAL \rec_tx_buf[0]~37_combout\ : std_logic;
SIGNAL \ecg_rx_buf[1]~6_combout\ : std_logic;
SIGNAL \rec_tx_buf[1]~31_combout\ : std_logic;
SIGNAL \rec_tx_buf[1]~34_combout\ : std_logic;
SIGNAL \rec_tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \rec_tx_buf[1]~33_combout\ : std_logic;
SIGNAL \rec_tx_buf[1]~32_combout\ : std_logic;
SIGNAL \rec_tx_buf[2]~29_combout\ : std_logic;
SIGNAL \rec_tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \rec_tx_buf[2]~28_combout\ : std_logic;
SIGNAL \rec_tx_buf[2]~27_combout\ : std_logic;
SIGNAL \rec_tx_buf[3]~24_combout\ : std_logic;
SIGNAL \rec_tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \rec_tx_buf[3]~23_combout\ : std_logic;
SIGNAL \rec_tx_buf[3]~22_combout\ : std_logic;
SIGNAL \ecg_rx_buf[4]~3_combout\ : std_logic;
SIGNAL \rec_tx_buf[4]~16_combout\ : std_logic;
SIGNAL \rec_tx_buf[4]~19_combout\ : std_logic;
SIGNAL \rec_tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \rec_tx_buf[4]~18_combout\ : std_logic;
SIGNAL \rec_tx_buf[4]~17_combout\ : std_logic;
SIGNAL \rec_tx_buf[5]~14_combout\ : std_logic;
SIGNAL \rec_tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \rec_tx_buf[5]~13_combout\ : std_logic;
SIGNAL \rec_tx_buf[5]~12_combout\ : std_logic;
SIGNAL \rec_tx_buf[6]~9_combout\ : std_logic;
SIGNAL \rec_tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \rec_tx_buf[6]~8_combout\ : std_logic;
SIGNAL \rec_tx_buf[6]~7_combout\ : std_logic;
SIGNAL \rec_tx_buf[7]~4_combout\ : std_logic;
SIGNAL \rec_tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \rec_tx_buf[7]~3_combout\ : std_logic;
SIGNAL \rec_tx_buf[7]~2_combout\ : std_logic;
SIGNAL \rec_st_load_rec_trdy~input_o\ : std_logic;
SIGNAL \rec_st_load_en~input_o\ : std_logic;
SIGNAL \rec_trdy~8_combout\ : std_logic;
SIGNAL \rec_wr_add~0_combout\ : std_logic;
SIGNAL \rec_wr_add~q\ : std_logic;
SIGNAL \process_3~1_combout\ : std_logic;
SIGNAL \process_3~4_combout\ : std_logic;
SIGNAL \process_3~2_combout\ : std_logic;
SIGNAL \rec_trdy~1_combout\ : std_logic;
SIGNAL \rec_trdy~7_combout\ : std_logic;
SIGNAL \rec_trdy~3_combout\ : std_logic;
SIGNAL \rec_trdy~0_combout\ : std_logic;
SIGNAL \rec_trdy~reg0_emulated_q\ : std_logic;
SIGNAL \rec_trdy~2_combout\ : std_logic;
SIGNAL \rec_st_load_rec_roe~input_o\ : std_logic;
SIGNAL \process_3~8_combout\ : std_logic;
SIGNAL \rec_roe~1_combout\ : std_logic;
SIGNAL \rec_roe~7_combout\ : std_logic;
SIGNAL \rec_roe~6_combout\ : std_logic;
SIGNAL \rec_rx_req~input_o\ : std_logic;
SIGNAL \rec_st_load_rec_rrdy~input_o\ : std_logic;
SIGNAL \process_3~5_combout\ : std_logic;
SIGNAL \process_3~6_combout\ : std_logic;
SIGNAL \rec_rrdy~1_combout\ : std_logic;
SIGNAL \rec_rrdy~7_combout\ : std_logic;
SIGNAL \process_3~3_combout\ : std_logic;
SIGNAL \rec_rrdy~3_combout\ : std_logic;
SIGNAL \rec_rrdy~0_combout\ : std_logic;
SIGNAL \rec_rrdy~reg0_emulated_q\ : std_logic;
SIGNAL \rec_rrdy~2_combout\ : std_logic;
SIGNAL \process_3~7_combout\ : std_logic;
SIGNAL \rec_roe~3_combout\ : std_logic;
SIGNAL \rec_roe~0_combout\ : std_logic;
SIGNAL \rec_roe~reg0_emulated_q\ : std_logic;
SIGNAL \rec_roe~2_combout\ : std_logic;
SIGNAL \rec_miso~1_combout\ : std_logic;
SIGNAL \rec_miso~2_combout\ : std_logic;
SIGNAL \rec_miso~3_combout\ : std_logic;
SIGNAL \rec_miso~4_combout\ : std_logic;
SIGNAL \rec_miso~5_combout\ : std_logic;
SIGNAL \rec_miso~reg0_q\ : std_logic;
SIGNAL \rec_miso~enfeeder_combout\ : std_logic;
SIGNAL \rec_miso~en_q\ : std_logic;
SIGNAL \rec_rx_buf[0]~0_combout\ : std_logic;
SIGNAL \process_3~0_combout\ : std_logic;
SIGNAL \process_3~0clkctrl_outclk\ : std_logic;
SIGNAL \rec_rx_data[0]$latch~combout\ : std_logic;
SIGNAL \rec_rx_buf[1]~1_combout\ : std_logic;
SIGNAL \rec_rx_data[1]$latch~combout\ : std_logic;
SIGNAL \rec_rx_buf[2]~2_combout\ : std_logic;
SIGNAL \rec_rx_data[2]$latch~combout\ : std_logic;
SIGNAL \rec_rx_buf[3]~3_combout\ : std_logic;
SIGNAL \rec_rx_data[3]$latch~combout\ : std_logic;
SIGNAL \rec_rx_buf[4]~4_combout\ : std_logic;
SIGNAL \rec_rx_data[4]$latch~combout\ : std_logic;
SIGNAL \rec_rx_buf[5]~5_combout\ : std_logic;
SIGNAL \rec_rx_data[5]$latch~combout\ : std_logic;
SIGNAL \rec_rx_buf[6]~6_combout\ : std_logic;
SIGNAL \rec_rx_data[6]$latch~combout\ : std_logic;
SIGNAL \rec_rx_buf[7]~7_combout\ : std_logic;
SIGNAL \rec_rx_data[7]$latch~combout\ : std_logic;
SIGNAL rec_rx_buf : std_logic_vector(7 DOWNTO 0);
SIGNAL rec_bit_cnt : std_logic_vector(16 DOWNTO 0);
SIGNAL ecg_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ecg_rx_buf : std_logic_vector(7 DOWNTO 0);
SIGNAL ecg_bit_cnt : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_ecg_rrdy~0_combout\ : std_logic;
SIGNAL \ALT_INV_ecg_trdy~0_combout\ : std_logic;
SIGNAL \ALT_INV_rec_sclk~input_o\ : std_logic;
SIGNAL \ALT_INV_ecg_sclk~input_o\ : std_logic;
SIGNAL \ALT_INV_rec_ss_n~input_o\ : std_logic;
SIGNAL \ALT_INV_ecg_ss_n~input_o\ : std_logic;
SIGNAL \ALT_INV_rec_tx_buf[7]~0_combout\ : std_logic;
SIGNAL \ALT_INV_ecg_tx_buf[7]~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_2~0_combout\ : std_logic;
SIGNAL \ALT_INV_rec_roe~0_combout\ : std_logic;
SIGNAL \ALT_INV_rec_rrdy~0_combout\ : std_logic;
SIGNAL \ALT_INV_rec_trdy~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ecg_roe~0_combout\ : std_logic;

BEGIN

ww_reset_n <= reset_n;
ww_ecg_sclk <= ecg_sclk;
ww_ecg_ss_n <= ecg_ss_n;
ww_ecg_mosi <= ecg_mosi;
ww_ecg_rx_req <= ecg_rx_req;
ww_ecg_st_load_en <= ecg_st_load_en;
ww_ecg_st_load_ecg_trdy <= ecg_st_load_ecg_trdy;
ww_ecg_st_load_ecg_rrdy <= ecg_st_load_ecg_rrdy;
ww_ecg_st_load_ecg_roe <= ecg_st_load_ecg_roe;
ww_ecg_tx_load_en <= ecg_tx_load_en;
ww_ecg_tx_load_data <= ecg_tx_load_data;
ecg_trdy <= ww_ecg_trdy;
ecg_rrdy <= ww_ecg_rrdy;
ecg_roe <= ww_ecg_roe;
ecg_busy <= ww_ecg_busy;
ecg_miso <= ww_ecg_miso;
ww_rec_sclk <= rec_sclk;
ww_rec_ss_n <= rec_ss_n;
ww_rec_mosi <= rec_mosi;
ww_rec_rx_req <= rec_rx_req;
ww_rec_st_load_en <= rec_st_load_en;
ww_rec_st_load_rec_trdy <= rec_st_load_rec_trdy;
ww_rec_st_load_rec_rrdy <= rec_st_load_rec_rrdy;
ww_rec_st_load_rec_roe <= rec_st_load_rec_roe;
ww_rec_tx_load_en <= rec_tx_load_en;
rec_trdy <= ww_rec_trdy;
rec_rrdy <= ww_rec_rrdy;
rec_roe <= ww_rec_roe;
rec_rx_data <= ww_rec_rx_data;
rec_busy <= ww_rec_busy;
rec_miso <= ww_rec_miso;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\process_1~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_1~10_combout\);

\ecg_tx_buf[0]~43clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ecg_tx_buf[0]~43_combout\);

\rec_tx_buf[0]~43clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rec_tx_buf[0]~43_combout\);

\process_3~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_3~0_combout\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);
\ALT_INV_ecg_rrdy~0_combout\ <= NOT \ecg_rrdy~0_combout\;
\ALT_INV_ecg_trdy~0_combout\ <= NOT \ecg_trdy~0_combout\;
\ALT_INV_rec_sclk~input_o\ <= NOT \rec_sclk~input_o\;
\ALT_INV_ecg_sclk~input_o\ <= NOT \ecg_sclk~input_o\;
\ALT_INV_rec_ss_n~input_o\ <= NOT \rec_ss_n~input_o\;
\ALT_INV_ecg_ss_n~input_o\ <= NOT \ecg_ss_n~input_o\;
\ALT_INV_rec_tx_buf[7]~0_combout\ <= NOT \rec_tx_buf[7]~0_combout\;
\ALT_INV_ecg_tx_buf[7]~0_combout\ <= NOT \ecg_tx_buf[7]~0_combout\;
\ALT_INV_process_2~0_combout\ <= NOT \process_2~0_combout\;
\ALT_INV_rec_roe~0_combout\ <= NOT \rec_roe~0_combout\;
\ALT_INV_rec_rrdy~0_combout\ <= NOT \rec_rrdy~0_combout\;
\ALT_INV_rec_trdy~0_combout\ <= NOT \rec_trdy~0_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_ecg_roe~0_combout\ <= NOT \ecg_roe~0_combout\;

-- Location: IOOBUF_X32_Y0_N16
\ecg_miso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ecg_miso~reg0_q\,
	oe => \ecg_miso~en_q\,
	devoe => ww_devoe,
	o => \ecg_miso~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\rec_miso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_miso~reg0_q\,
	oe => \rec_miso~en_q\,
	devoe => ww_devoe,
	o => \rec_miso~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\ecg_trdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ecg_trdy~2_combout\,
	devoe => ww_devoe,
	o => \ecg_trdy~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\ecg_rrdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ecg_rrdy~2_combout\,
	devoe => ww_devoe,
	o => \ecg_rrdy~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\ecg_roe~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ecg_roe~2_combout\,
	devoe => ww_devoe,
	o => \ecg_roe~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\ecg_busy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ecg_ss_n~input_o\,
	devoe => ww_devoe,
	o => \ecg_busy~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\rec_trdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_trdy~2_combout\,
	devoe => ww_devoe,
	o => \rec_trdy~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\rec_rrdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_rrdy~2_combout\,
	devoe => ww_devoe,
	o => \rec_rrdy~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\rec_roe~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_roe~2_combout\,
	devoe => ww_devoe,
	o => \rec_roe~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\rec_rx_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_rx_data[0]$latch~combout\,
	devoe => ww_devoe,
	o => \rec_rx_data[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\rec_rx_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_rx_data[1]$latch~combout\,
	devoe => ww_devoe,
	o => \rec_rx_data[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\rec_rx_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_rx_data[2]$latch~combout\,
	devoe => ww_devoe,
	o => \rec_rx_data[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\rec_rx_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_rx_data[3]$latch~combout\,
	devoe => ww_devoe,
	o => \rec_rx_data[3]~output_o\);

-- Location: IOOBUF_X41_Y2_N2
\rec_rx_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_rx_data[4]$latch~combout\,
	devoe => ww_devoe,
	o => \rec_rx_data[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\rec_rx_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_rx_data[5]$latch~combout\,
	devoe => ww_devoe,
	o => \rec_rx_data[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\rec_rx_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_rx_data[6]$latch~combout\,
	devoe => ww_devoe,
	o => \rec_rx_data[6]~output_o\);

-- Location: IOOBUF_X41_Y2_N23
\rec_rx_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_rx_data[7]$latch~combout\,
	devoe => ww_devoe,
	o => \rec_rx_data[7]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\rec_busy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_rec_ss_n~input_o\,
	devoe => ww_devoe,
	o => \rec_busy~output_o\);

-- Location: IOIBUF_X26_Y0_N1
\ecg_sclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_sclk,
	o => \ecg_sclk~input_o\);

-- Location: IOIBUF_X39_Y0_N15
\ecg_mosi~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_mosi,
	o => \ecg_mosi~input_o\);

-- Location: LCCOMB_X28_Y4_N0
\ecg_bit_cnt[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_bit_cnt[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \ecg_bit_cnt[1]~feeder_combout\);

-- Location: IOIBUF_X21_Y0_N1
\reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\ecg_ss_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_ss_n,
	o => \ecg_ss_n~input_o\);

-- Location: LCCOMB_X28_Y4_N30
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\ecg_ss_n~input_o\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datad => \ecg_ss_n~input_o\,
	combout => \process_0~0_combout\);

-- Location: FF_X28_Y4_N1
\ecg_bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_bit_cnt[1]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(1));

-- Location: LCCOMB_X28_Y4_N2
\ecg_bit_cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_bit_cnt[2]~0_combout\ = !ecg_bit_cnt(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ecg_bit_cnt(1),
	combout => \ecg_bit_cnt[2]~0_combout\);

-- Location: FF_X28_Y4_N3
\ecg_bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_bit_cnt[2]~0_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(2));

-- Location: LCCOMB_X26_Y4_N30
\ecg_rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rd_add~0_combout\ = (ecg_bit_cnt(2) & (\ecg_mosi~input_o\)) # (!ecg_bit_cnt(2) & ((\ecg_rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datac => \ecg_rd_add~q\,
	datad => ecg_bit_cnt(2),
	combout => \ecg_rd_add~0_combout\);

-- Location: FF_X26_Y4_N31
ecg_rd_add : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_rd_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_rd_add~q\);

-- Location: IOIBUF_X19_Y0_N22
\ecg_tx_load_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(7),
	o => \ecg_tx_load_data[7]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\ecg_tx_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_en,
	o => \ecg_tx_load_en~input_o\);

-- Location: LCCOMB_X27_Y1_N24
\ecg_tx_buf[0]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[0]~43_combout\ = (\ecg_tx_load_en~input_o\ & (\reset_n~input_o\ & \ecg_ss_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_load_en~input_o\,
	datac => \reset_n~input_o\,
	datad => \ecg_ss_n~input_o\,
	combout => \ecg_tx_buf[0]~43_combout\);

-- Location: CLKCTRL_G18
\ecg_tx_buf[0]~43clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ecg_tx_buf[0]~43clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ecg_tx_buf[0]~43clkctrl_outclk\);

-- Location: LCCOMB_X26_Y1_N0
\ecg_tx_buf[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[7]~1_combout\ = (\reset_n~input_o\ & ((GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & (\ecg_tx_load_data[7]~input_o\)) # (!GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & ((\ecg_tx_buf[7]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \ecg_tx_load_data[7]~input_o\,
	datac => \ecg_tx_buf[7]~1_combout\,
	datad => \ecg_tx_buf[0]~43clkctrl_outclk\,
	combout => \ecg_tx_buf[7]~1_combout\);

-- Location: IOIBUF_X19_Y0_N8
\ecg_tx_load_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(6),
	o => \ecg_tx_load_data[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\ecg_tx_load_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(5),
	o => \ecg_tx_load_data[5]~input_o\);

-- Location: LCCOMB_X26_Y1_N4
\ecg_tx_buf[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[5]~11_combout\ = (\reset_n~input_o\ & ((GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & (\ecg_tx_load_data[5]~input_o\)) # (!GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & ((\ecg_tx_buf[5]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \ecg_tx_load_data[5]~input_o\,
	datac => \ecg_tx_buf[5]~11_combout\,
	datad => \ecg_tx_buf[0]~43clkctrl_outclk\,
	combout => \ecg_tx_buf[5]~11_combout\);

-- Location: IOIBUF_X19_Y0_N15
\ecg_tx_load_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(4),
	o => \ecg_tx_load_data[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\ecg_tx_load_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(3),
	o => \ecg_tx_load_data[3]~input_o\);

-- Location: LCCOMB_X27_Y1_N26
\ecg_tx_buf[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[3]~21_combout\ = (\reset_n~input_o\ & ((GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & (\ecg_tx_load_data[3]~input_o\)) # (!GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & ((\ecg_tx_buf[3]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \ecg_tx_load_data[3]~input_o\,
	datac => \ecg_tx_buf[3]~21_combout\,
	datad => \ecg_tx_buf[0]~43clkctrl_outclk\,
	combout => \ecg_tx_buf[3]~21_combout\);

-- Location: IOIBUF_X26_Y0_N29
\ecg_tx_load_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(2),
	o => \ecg_tx_load_data[2]~input_o\);

-- Location: LCCOMB_X26_Y1_N8
\ecg_tx_buf[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[2]~26_combout\ = (\reset_n~input_o\ & ((GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & (\ecg_tx_load_data[2]~input_o\)) # (!GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & ((\ecg_tx_buf[2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \ecg_tx_load_data[2]~input_o\,
	datac => \ecg_tx_buf[2]~26_combout\,
	datad => \ecg_tx_buf[0]~43clkctrl_outclk\,
	combout => \ecg_tx_buf[2]~26_combout\);

-- Location: IOIBUF_X26_Y0_N15
\ecg_tx_load_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(1),
	o => \ecg_tx_load_data[1]~input_o\);

-- Location: LCCOMB_X26_Y1_N18
\ecg_tx_buf[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[1]~31_combout\ = (\reset_n~input_o\ & ((GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & (\ecg_tx_load_data[1]~input_o\)) # (!GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & ((\ecg_tx_buf[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[1]~input_o\,
	datab => \ecg_tx_buf[1]~31_combout\,
	datac => \reset_n~input_o\,
	datad => \ecg_tx_buf[0]~43clkctrl_outclk\,
	combout => \ecg_tx_buf[1]~31_combout\);

-- Location: IOIBUF_X39_Y0_N22
\ecg_tx_load_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(0),
	o => \ecg_tx_load_data[0]~input_o\);

-- Location: LCCOMB_X29_Y1_N16
\ecg_tx_buf[0]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[0]~36_combout\ = (\reset_n~input_o\ & ((GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & (\ecg_tx_load_data[0]~input_o\)) # (!GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & ((\ecg_tx_buf[0]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[0]~input_o\,
	datab => \reset_n~input_o\,
	datac => \ecg_tx_buf[0]~36_combout\,
	datad => \ecg_tx_buf[0]~43clkctrl_outclk\,
	combout => \ecg_tx_buf[0]~36_combout\);

-- Location: LCCOMB_X27_Y1_N14
\ecg_tx_buf[0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[0]~39_combout\ = \ecg_tx_buf[7]~2_combout\ $ (\ecg_tx_buf[0]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_tx_buf[7]~2_combout\,
	datad => \ecg_tx_buf[0]~36_combout\,
	combout => \ecg_tx_buf[0]~39_combout\);

-- Location: LCCOMB_X27_Y1_N16
\ecg_tx_buf[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[7]~0_combout\ = (\ecg_tx_buf[0]~43_combout\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \ecg_tx_buf[0]~43_combout\,
	combout => \ecg_tx_buf[7]~0_combout\);

-- Location: LCCOMB_X28_Y4_N6
\ecg_bit_cnt[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_bit_cnt[3]~feeder_combout\ = ecg_bit_cnt(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ecg_bit_cnt(2),
	combout => \ecg_bit_cnt[3]~feeder_combout\);

-- Location: FF_X28_Y4_N7
\ecg_bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_bit_cnt[3]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(3));

-- Location: FF_X28_Y4_N27
\ecg_bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => ecg_bit_cnt(3),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(4));

-- Location: LCCOMB_X28_Y4_N26
\process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (!ecg_bit_cnt(3) & (ecg_bit_cnt(1) & (!ecg_bit_cnt(4) & !ecg_bit_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ecg_bit_cnt(3),
	datab => ecg_bit_cnt(1),
	datac => ecg_bit_cnt(4),
	datad => ecg_bit_cnt(2),
	combout => \process_1~8_combout\);

-- Location: FF_X28_Y4_N15
\ecg_bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => ecg_bit_cnt(4),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(5));

-- Location: FF_X28_Y4_N17
\ecg_bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => ecg_bit_cnt(5),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(6));

-- Location: LCCOMB_X28_Y4_N18
\ecg_bit_cnt[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_bit_cnt[7]~feeder_combout\ = ecg_bit_cnt(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ecg_bit_cnt(6),
	combout => \ecg_bit_cnt[7]~feeder_combout\);

-- Location: FF_X28_Y4_N19
\ecg_bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_bit_cnt[7]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(7));

-- Location: LCCOMB_X28_Y4_N28
\ecg_bit_cnt[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_bit_cnt[8]~feeder_combout\ = ecg_bit_cnt(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ecg_bit_cnt(7),
	combout => \ecg_bit_cnt[8]~feeder_combout\);

-- Location: FF_X28_Y4_N29
\ecg_bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_bit_cnt[8]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(8));

-- Location: FF_X28_Y4_N23
\ecg_bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => ecg_bit_cnt(8),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(9));

-- Location: FF_X28_Y4_N5
\ecg_bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => ecg_bit_cnt(9),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(10));

-- Location: FF_X28_Y4_N25
\ecg_bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => ecg_bit_cnt(10),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(11));

-- Location: FF_X28_Y4_N11
\ecg_bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => ecg_bit_cnt(11),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(12));

-- Location: LCCOMB_X29_Y4_N30
\ecg_bit_cnt[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_bit_cnt[13]~feeder_combout\ = ecg_bit_cnt(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ecg_bit_cnt(12),
	combout => \ecg_bit_cnt[13]~feeder_combout\);

-- Location: FF_X29_Y4_N31
\ecg_bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_bit_cnt[13]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(13));

-- Location: LCCOMB_X27_Y3_N28
\ecg_bit_cnt[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_bit_cnt[14]~feeder_combout\ = ecg_bit_cnt(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ecg_bit_cnt(13),
	combout => \ecg_bit_cnt[14]~feeder_combout\);

-- Location: FF_X27_Y3_N29
\ecg_bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_bit_cnt[14]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(14));

-- Location: FF_X28_Y4_N31
\ecg_bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => ecg_bit_cnt(14),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(15));

-- Location: LCCOMB_X28_Y4_N8
\ecg_bit_cnt[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_bit_cnt[16]~feeder_combout\ = ecg_bit_cnt(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => ecg_bit_cnt(15),
	combout => \ecg_bit_cnt[16]~feeder_combout\);

-- Location: FF_X28_Y4_N9
\ecg_bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_bit_cnt[16]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_bit_cnt(16));

-- Location: LCCOMB_X28_Y4_N14
\process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (!ecg_bit_cnt(16) & (!ecg_bit_cnt(6) & (!ecg_bit_cnt(5) & !ecg_bit_cnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ecg_bit_cnt(16),
	datab => ecg_bit_cnt(6),
	datac => ecg_bit_cnt(5),
	datad => ecg_bit_cnt(7),
	combout => \process_1~7_combout\);

-- Location: LCCOMB_X27_Y1_N2
\process_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~9_combout\ = (\process_1~8_combout\ & (\process_1~7_combout\ & !\ecg_rd_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~8_combout\,
	datac => \process_1~7_combout\,
	datad => \ecg_rd_add~q\,
	combout => \process_1~9_combout\);

-- Location: FF_X27_Y1_N15
\ecg_tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_tx_buf[0]~39_combout\,
	clrn => \ALT_INV_ecg_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_tx_buf[0]~_emulated_q\);

-- Location: LCCOMB_X29_Y1_N18
\ecg_tx_buf[0]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[0]~38_combout\ = \ecg_tx_buf[0]~_emulated_q\ $ (\ecg_tx_buf[0]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_tx_buf[0]~_emulated_q\,
	datad => \ecg_tx_buf[0]~36_combout\,
	combout => \ecg_tx_buf[0]~38_combout\);

-- Location: LCCOMB_X29_Y1_N2
\ecg_tx_buf[0]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[0]~37_combout\ = (\reset_n~input_o\ & ((\ecg_tx_buf[0]~43_combout\ & (\ecg_tx_load_data[0]~input_o\)) # (!\ecg_tx_buf[0]~43_combout\ & ((\ecg_tx_buf[0]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[0]~input_o\,
	datab => \reset_n~input_o\,
	datac => \ecg_tx_buf[0]~43_combout\,
	datad => \ecg_tx_buf[0]~38_combout\,
	combout => \ecg_tx_buf[0]~37_combout\);

-- Location: LCCOMB_X27_Y1_N0
\ecg_tx_buf[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[1]~34_combout\ = \ecg_tx_buf[1]~31_combout\ $ (\ecg_tx_buf[0]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_buf[1]~31_combout\,
	datad => \ecg_tx_buf[0]~37_combout\,
	combout => \ecg_tx_buf[1]~34_combout\);

-- Location: FF_X27_Y1_N1
\ecg_tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_tx_buf[1]~34_combout\,
	clrn => \ALT_INV_ecg_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_tx_buf[1]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N14
\ecg_tx_buf[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[1]~33_combout\ = \ecg_tx_buf[1]~_emulated_q\ $ (\ecg_tx_buf[1]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_tx_buf[1]~_emulated_q\,
	datad => \ecg_tx_buf[1]~31_combout\,
	combout => \ecg_tx_buf[1]~33_combout\);

-- Location: LCCOMB_X27_Y1_N22
\ecg_tx_buf[1]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[1]~32_combout\ = (\reset_n~input_o\ & ((\ecg_tx_buf[0]~43_combout\ & (\ecg_tx_load_data[1]~input_o\)) # (!\ecg_tx_buf[0]~43_combout\ & ((\ecg_tx_buf[1]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_buf[0]~43_combout\,
	datab => \ecg_tx_load_data[1]~input_o\,
	datac => \reset_n~input_o\,
	datad => \ecg_tx_buf[1]~33_combout\,
	combout => \ecg_tx_buf[1]~32_combout\);

-- Location: LCCOMB_X27_Y1_N20
\ecg_tx_buf[2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[2]~29_combout\ = \ecg_tx_buf[2]~26_combout\ $ (\ecg_tx_buf[1]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_tx_buf[2]~26_combout\,
	datad => \ecg_tx_buf[1]~32_combout\,
	combout => \ecg_tx_buf[2]~29_combout\);

-- Location: FF_X27_Y1_N21
\ecg_tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_tx_buf[2]~29_combout\,
	clrn => \ALT_INV_ecg_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_tx_buf[2]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N28
\ecg_tx_buf[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[2]~28_combout\ = \ecg_tx_buf[2]~_emulated_q\ $ (\ecg_tx_buf[2]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_buf[2]~_emulated_q\,
	datac => \ecg_tx_buf[2]~26_combout\,
	combout => \ecg_tx_buf[2]~28_combout\);

-- Location: LCCOMB_X27_Y1_N8
\ecg_tx_buf[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[2]~27_combout\ = (\reset_n~input_o\ & ((\ecg_tx_buf[0]~43_combout\ & (\ecg_tx_load_data[2]~input_o\)) # (!\ecg_tx_buf[0]~43_combout\ & ((\ecg_tx_buf[2]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_buf[0]~43_combout\,
	datab => \ecg_tx_load_data[2]~input_o\,
	datac => \reset_n~input_o\,
	datad => \ecg_tx_buf[2]~28_combout\,
	combout => \ecg_tx_buf[2]~27_combout\);

-- Location: LCCOMB_X27_Y1_N4
\ecg_tx_buf[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[3]~24_combout\ = \ecg_tx_buf[3]~21_combout\ $ (\ecg_tx_buf[2]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_tx_buf[3]~21_combout\,
	datad => \ecg_tx_buf[2]~27_combout\,
	combout => \ecg_tx_buf[3]~24_combout\);

-- Location: FF_X27_Y1_N5
\ecg_tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_tx_buf[3]~24_combout\,
	clrn => \ALT_INV_ecg_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_tx_buf[3]~_emulated_q\);

-- Location: LCCOMB_X27_Y1_N28
\ecg_tx_buf[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[3]~23_combout\ = \ecg_tx_buf[3]~_emulated_q\ $ (\ecg_tx_buf[3]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_buf[3]~_emulated_q\,
	datac => \ecg_tx_buf[3]~21_combout\,
	combout => \ecg_tx_buf[3]~23_combout\);

-- Location: LCCOMB_X27_Y1_N18
\ecg_tx_buf[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[3]~22_combout\ = (\reset_n~input_o\ & ((\ecg_tx_buf[0]~43_combout\ & (\ecg_tx_load_data[3]~input_o\)) # (!\ecg_tx_buf[0]~43_combout\ & ((\ecg_tx_buf[3]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_buf[0]~43_combout\,
	datab => \reset_n~input_o\,
	datac => \ecg_tx_load_data[3]~input_o\,
	datad => \ecg_tx_buf[3]~23_combout\,
	combout => \ecg_tx_buf[3]~22_combout\);

-- Location: LCCOMB_X26_Y1_N22
\ecg_tx_buf[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[4]~16_combout\ = (\reset_n~input_o\ & ((GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & (\ecg_tx_load_data[4]~input_o\)) # (!GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & ((\ecg_tx_buf[4]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \ecg_tx_load_data[4]~input_o\,
	datac => \ecg_tx_buf[4]~16_combout\,
	datad => \ecg_tx_buf[0]~43clkctrl_outclk\,
	combout => \ecg_tx_buf[4]~16_combout\);

-- Location: LCCOMB_X27_Y1_N6
\ecg_tx_buf[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[4]~19_combout\ = \ecg_tx_buf[3]~22_combout\ $ (\ecg_tx_buf[4]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_tx_buf[3]~22_combout\,
	datad => \ecg_tx_buf[4]~16_combout\,
	combout => \ecg_tx_buf[4]~19_combout\);

-- Location: FF_X27_Y1_N7
\ecg_tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_tx_buf[4]~19_combout\,
	clrn => \ALT_INV_ecg_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_tx_buf[4]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N12
\ecg_tx_buf[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[4]~18_combout\ = \ecg_tx_buf[4]~_emulated_q\ $ (\ecg_tx_buf[4]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_buf[4]~_emulated_q\,
	datac => \ecg_tx_buf[4]~16_combout\,
	combout => \ecg_tx_buf[4]~18_combout\);

-- Location: LCCOMB_X26_Y1_N2
\ecg_tx_buf[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[4]~17_combout\ = (\reset_n~input_o\ & ((\ecg_tx_buf[0]~43_combout\ & (\ecg_tx_load_data[4]~input_o\)) # (!\ecg_tx_buf[0]~43_combout\ & ((\ecg_tx_buf[4]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \ecg_tx_load_data[4]~input_o\,
	datac => \ecg_tx_buf[0]~43_combout\,
	datad => \ecg_tx_buf[4]~18_combout\,
	combout => \ecg_tx_buf[4]~17_combout\);

-- Location: LCCOMB_X27_Y1_N30
\ecg_tx_buf[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[5]~14_combout\ = \ecg_tx_buf[5]~11_combout\ $ (\ecg_tx_buf[4]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_tx_buf[5]~11_combout\,
	datad => \ecg_tx_buf[4]~17_combout\,
	combout => \ecg_tx_buf[5]~14_combout\);

-- Location: FF_X27_Y1_N31
\ecg_tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_tx_buf[5]~14_combout\,
	clrn => \ALT_INV_ecg_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_tx_buf[5]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N16
\ecg_tx_buf[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[5]~13_combout\ = \ecg_tx_buf[5]~_emulated_q\ $ (\ecg_tx_buf[5]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_buf[5]~_emulated_q\,
	datac => \ecg_tx_buf[5]~11_combout\,
	combout => \ecg_tx_buf[5]~13_combout\);

-- Location: LCCOMB_X26_Y1_N6
\ecg_tx_buf[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[5]~12_combout\ = (\reset_n~input_o\ & ((\ecg_tx_buf[0]~43_combout\ & (\ecg_tx_load_data[5]~input_o\)) # (!\ecg_tx_buf[0]~43_combout\ & ((\ecg_tx_buf[5]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \ecg_tx_load_data[5]~input_o\,
	datac => \ecg_tx_buf[0]~43_combout\,
	datad => \ecg_tx_buf[5]~13_combout\,
	combout => \ecg_tx_buf[5]~12_combout\);

-- Location: LCCOMB_X26_Y1_N30
\ecg_tx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[6]~6_combout\ = (\reset_n~input_o\ & ((GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & (\ecg_tx_load_data[6]~input_o\)) # (!GLOBAL(\ecg_tx_buf[0]~43clkctrl_outclk\) & ((\ecg_tx_buf[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \ecg_tx_load_data[6]~input_o\,
	datac => \ecg_tx_buf[6]~6_combout\,
	datad => \ecg_tx_buf[0]~43clkctrl_outclk\,
	combout => \ecg_tx_buf[6]~6_combout\);

-- Location: LCCOMB_X27_Y1_N12
\ecg_tx_buf[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[6]~9_combout\ = \ecg_tx_buf[5]~12_combout\ $ (\ecg_tx_buf[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_buf[5]~12_combout\,
	datac => \ecg_tx_buf[6]~6_combout\,
	combout => \ecg_tx_buf[6]~9_combout\);

-- Location: FF_X27_Y1_N13
\ecg_tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_tx_buf[6]~9_combout\,
	clrn => \ALT_INV_ecg_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_tx_buf[6]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N20
\ecg_tx_buf[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[6]~8_combout\ = \ecg_tx_buf[6]~_emulated_q\ $ (\ecg_tx_buf[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_buf[6]~_emulated_q\,
	datac => \ecg_tx_buf[6]~6_combout\,
	combout => \ecg_tx_buf[6]~8_combout\);

-- Location: LCCOMB_X26_Y1_N10
\ecg_tx_buf[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[6]~7_combout\ = (\reset_n~input_o\ & ((\ecg_tx_buf[0]~43_combout\ & (\ecg_tx_load_data[6]~input_o\)) # (!\ecg_tx_buf[0]~43_combout\ & ((\ecg_tx_buf[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \ecg_tx_load_data[6]~input_o\,
	datac => \ecg_tx_buf[0]~43_combout\,
	datad => \ecg_tx_buf[6]~8_combout\,
	combout => \ecg_tx_buf[6]~7_combout\);

-- Location: LCCOMB_X27_Y1_N10
\ecg_tx_buf[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[7]~4_combout\ = \ecg_tx_buf[7]~1_combout\ $ (\ecg_tx_buf[6]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_tx_buf[7]~1_combout\,
	datad => \ecg_tx_buf[6]~7_combout\,
	combout => \ecg_tx_buf[7]~4_combout\);

-- Location: FF_X27_Y1_N11
\ecg_tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_tx_buf[7]~4_combout\,
	clrn => \ALT_INV_ecg_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_tx_buf[7]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N24
\ecg_tx_buf[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[7]~3_combout\ = \ecg_tx_buf[7]~_emulated_q\ $ (\ecg_tx_buf[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_tx_buf[7]~_emulated_q\,
	datad => \ecg_tx_buf[7]~1_combout\,
	combout => \ecg_tx_buf[7]~3_combout\);

-- Location: LCCOMB_X26_Y1_N26
\ecg_tx_buf[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_tx_buf[7]~2_combout\ = (\reset_n~input_o\ & ((\ecg_tx_buf[0]~43_combout\ & (\ecg_tx_load_data[7]~input_o\)) # (!\ecg_tx_buf[0]~43_combout\ & ((\ecg_tx_buf[7]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \ecg_tx_load_data[7]~input_o\,
	datac => \ecg_tx_buf[0]~43_combout\,
	datad => \ecg_tx_buf[7]~3_combout\,
	combout => \ecg_tx_buf[7]~2_combout\);

-- Location: IOIBUF_X26_Y0_N8
\ecg_st_load_ecg_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_ecg_trdy,
	o => \ecg_st_load_ecg_trdy~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\ecg_st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_en,
	o => \ecg_st_load_en~input_o\);

-- Location: LCCOMB_X27_Y4_N26
\process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (\ecg_st_load_en~input_o\ & \ecg_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_st_load_en~input_o\,
	datad => \ecg_ss_n~input_o\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X27_Y4_N22
\process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = ((!\ecg_st_load_ecg_trdy~input_o\ & \process_1~3_combout\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \ecg_st_load_ecg_trdy~input_o\,
	datac => \process_1~3_combout\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X26_Y4_N4
\ecg_trdy~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_trdy~8_combout\ = (\ecg_ss_n~input_o\ & ((\ecg_st_load_en~input_o\ & ((\ecg_st_load_ecg_trdy~input_o\))) # (!\ecg_st_load_en~input_o\ & (\ecg_tx_load_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_en~input_o\,
	datab => \ecg_st_load_ecg_trdy~input_o\,
	datac => \ecg_st_load_en~input_o\,
	datad => \ecg_ss_n~input_o\,
	combout => \ecg_trdy~8_combout\);

-- Location: LCCOMB_X26_Y4_N20
\ecg_trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_trdy~1_combout\ = (!\process_1~1_combout\ & ((\ecg_trdy~8_combout\) # (\ecg_trdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~1_combout\,
	datac => \ecg_trdy~8_combout\,
	datad => \ecg_trdy~1_combout\,
	combout => \ecg_trdy~1_combout\);

-- Location: LCCOMB_X28_Y4_N4
\ecg_wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_wr_add~0_combout\ = (ecg_bit_cnt(1) & ((\ecg_wr_add~q\))) # (!ecg_bit_cnt(1) & (\ecg_mosi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_wr_add~q\,
	datad => ecg_bit_cnt(1),
	combout => \ecg_wr_add~0_combout\);

-- Location: FF_X27_Y4_N5
ecg_wr_add : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	asdata => \ecg_wr_add~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_wr_add~q\);

-- Location: LCCOMB_X27_Y4_N20
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\ecg_wr_add~q\ & ecg_bit_cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_wr_add~q\,
	datad => ecg_bit_cnt(9),
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X26_Y4_N24
\ecg_trdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_trdy~7_combout\ = (!\process_1~0_combout\ & (\ecg_trdy~2_combout\ & ((\ecg_rd_add~q\) # (!ecg_bit_cnt(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_rd_add~q\,
	datab => ecg_bit_cnt(16),
	datac => \process_1~0_combout\,
	datad => \ecg_trdy~2_combout\,
	combout => \ecg_trdy~7_combout\);

-- Location: LCCOMB_X26_Y4_N8
\ecg_trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_trdy~3_combout\ = \ecg_trdy~1_combout\ $ (((\ecg_trdy~7_combout\) # ((\ecg_mosi~input_o\ & \process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_trdy~1_combout\,
	datac => \process_1~0_combout\,
	datad => \ecg_trdy~7_combout\,
	combout => \ecg_trdy~3_combout\);

-- Location: LCCOMB_X26_Y4_N14
\ecg_trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_trdy~0_combout\ = (\ecg_trdy~8_combout\) # (\process_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_trdy~8_combout\,
	datad => \process_1~1_combout\,
	combout => \ecg_trdy~0_combout\);

-- Location: FF_X26_Y4_N9
\ecg_trdy~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_trdy~3_combout\,
	clrn => \ALT_INV_ecg_trdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_trdy~reg0_emulated_q\);

-- Location: LCCOMB_X26_Y4_N2
\ecg_trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_trdy~2_combout\ = (!\process_1~1_combout\ & ((\ecg_trdy~8_combout\) # (\ecg_trdy~1_combout\ $ (\ecg_trdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_trdy~1_combout\,
	datab => \ecg_trdy~reg0_emulated_q\,
	datac => \ecg_trdy~8_combout\,
	datad => \process_1~1_combout\,
	combout => \ecg_trdy~2_combout\);

-- Location: IOIBUF_X26_Y0_N22
\ecg_rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_rx_req,
	o => \ecg_rx_req~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\ecg_st_load_ecg_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_ecg_rrdy,
	o => \ecg_st_load_ecg_rrdy~input_o\);

-- Location: LCCOMB_X26_Y4_N22
\process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\ecg_st_load_en~input_o\ & !\ecg_st_load_ecg_rrdy~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_st_load_en~input_o\,
	datac => \ecg_st_load_ecg_rrdy~input_o\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X27_Y4_N30
\process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = ((\ecg_ss_n~input_o\ & ((\ecg_rx_req~input_o\) # (\process_1~4_combout\)))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_rx_req~input_o\,
	datab => \process_1~4_combout\,
	datac => \reset_n~input_o\,
	datad => \ecg_ss_n~input_o\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X27_Y4_N8
\ecg_rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rrdy~1_combout\ = (!\process_1~5_combout\ & ((\process_1~3_combout\) # (\ecg_rrdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~3_combout\,
	datac => \process_1~5_combout\,
	datad => \ecg_rrdy~1_combout\,
	combout => \ecg_rrdy~1_combout\);

-- Location: LCCOMB_X27_Y4_N14
\ecg_rrdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rrdy~7_combout\ = (\ecg_rrdy~2_combout\) # ((!\ecg_wr_add~q\ & ecg_bit_cnt(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_wr_add~q\,
	datac => ecg_bit_cnt(16),
	datad => \ecg_rrdy~2_combout\,
	combout => \ecg_rrdy~7_combout\);

-- Location: LCCOMB_X28_Y4_N22
\process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (ecg_bit_cnt(10) & \ecg_wr_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ecg_bit_cnt(10),
	datad => \ecg_wr_add~q\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X27_Y4_N18
\ecg_rrdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rrdy~3_combout\ = \ecg_rrdy~1_combout\ $ (((\process_1~2_combout\ & (\ecg_mosi~input_o\)) # (!\process_1~2_combout\ & ((\ecg_rrdy~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_rrdy~1_combout\,
	datac => \ecg_rrdy~7_combout\,
	datad => \process_1~2_combout\,
	combout => \ecg_rrdy~3_combout\);

-- Location: LCCOMB_X27_Y4_N10
\ecg_rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rrdy~0_combout\ = (\process_1~5_combout\) # (\process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_1~5_combout\,
	datad => \process_1~3_combout\,
	combout => \ecg_rrdy~0_combout\);

-- Location: FF_X27_Y4_N19
\ecg_rrdy~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_rrdy~3_combout\,
	clrn => \ALT_INV_ecg_rrdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_rrdy~reg0_emulated_q\);

-- Location: LCCOMB_X27_Y4_N28
\ecg_rrdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rrdy~2_combout\ = (!\process_1~5_combout\ & ((\process_1~3_combout\) # (\ecg_rrdy~1_combout\ $ (\ecg_rrdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_rrdy~1_combout\,
	datab => \ecg_rrdy~reg0_emulated_q\,
	datac => \process_1~5_combout\,
	datad => \process_1~3_combout\,
	combout => \ecg_rrdy~2_combout\);

-- Location: IOIBUF_X41_Y4_N1
\ecg_st_load_ecg_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_ecg_roe,
	o => \ecg_st_load_ecg_roe~input_o\);

-- Location: LCCOMB_X27_Y4_N16
\process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = ((\process_1~3_combout\ & !\ecg_st_load_ecg_roe~input_o\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datac => \process_1~3_combout\,
	datad => \ecg_st_load_ecg_roe~input_o\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X27_Y4_N24
\ecg_roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_roe~1_combout\ = (!\process_1~6_combout\ & ((\process_1~3_combout\) # (\ecg_roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~3_combout\,
	datac => \process_1~6_combout\,
	datad => \ecg_roe~1_combout\,
	combout => \ecg_roe~1_combout\);

-- Location: LCCOMB_X28_Y4_N24
\ecg_roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_roe~6_combout\ = \ecg_roe~1_combout\ $ (((\ecg_mosi~input_o\) # ((!ecg_bit_cnt(11)) # (!\ecg_wr_add~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_wr_add~q\,
	datac => ecg_bit_cnt(11),
	datad => \ecg_roe~1_combout\,
	combout => \ecg_roe~6_combout\);

-- Location: LCCOMB_X28_Y4_N20
\ecg_roe~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_roe~7_combout\ = (\ecg_wr_add~q\ & (((ecg_bit_cnt(11))))) # (!\ecg_wr_add~q\ & (ecg_bit_cnt(16) & ((\ecg_rrdy~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ecg_bit_cnt(16),
	datab => \ecg_wr_add~q\,
	datac => ecg_bit_cnt(11),
	datad => \ecg_rrdy~2_combout\,
	combout => \ecg_roe~7_combout\);

-- Location: LCCOMB_X28_Y4_N12
\ecg_roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_roe~3_combout\ = \ecg_roe~6_combout\ $ (((!\ecg_roe~2_combout\ & !\ecg_roe~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_roe~6_combout\,
	datac => \ecg_roe~2_combout\,
	datad => \ecg_roe~7_combout\,
	combout => \ecg_roe~3_combout\);

-- Location: LCCOMB_X27_Y4_N6
\ecg_roe~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_roe~0_combout\ = (\process_1~3_combout\) # (\process_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_1~3_combout\,
	datad => \process_1~6_combout\,
	combout => \ecg_roe~0_combout\);

-- Location: FF_X28_Y4_N13
\ecg_roe~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_roe~3_combout\,
	clrn => \ALT_INV_ecg_roe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_roe~reg0_emulated_q\);

-- Location: LCCOMB_X27_Y4_N0
\ecg_roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_roe~2_combout\ = (!\process_1~6_combout\ & ((\process_1~3_combout\) # (\ecg_roe~1_combout\ $ (\ecg_roe~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~3_combout\,
	datab => \ecg_roe~1_combout\,
	datac => \ecg_roe~reg0_emulated_q\,
	datad => \process_1~6_combout\,
	combout => \ecg_roe~2_combout\);

-- Location: LCCOMB_X27_Y4_N2
\ecg_miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_miso~1_combout\ = (ecg_bit_cnt(9) & (\ecg_rrdy~2_combout\)) # (!ecg_bit_cnt(9) & ((\ecg_roe~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_rrdy~2_combout\,
	datac => ecg_bit_cnt(9),
	datad => \ecg_roe~2_combout\,
	combout => \ecg_miso~1_combout\);

-- Location: LCCOMB_X26_Y4_N16
\ecg_miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_miso~2_combout\ = (ecg_bit_cnt(8) & (\ecg_trdy~2_combout\)) # (!ecg_bit_cnt(8) & ((\ecg_miso~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ecg_bit_cnt(8),
	datac => \ecg_trdy~2_combout\,
	datad => \ecg_miso~1_combout\,
	combout => \ecg_miso~2_combout\);

-- Location: LCCOMB_X26_Y4_N28
\ecg_miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_miso~3_combout\ = (\ecg_rd_add~q\ & ((\ecg_miso~2_combout\))) # (!\ecg_rd_add~q\ & (\ecg_tx_buf[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_rd_add~q\,
	datac => \ecg_tx_buf[7]~2_combout\,
	datad => \ecg_miso~2_combout\,
	combout => \ecg_miso~3_combout\);

-- Location: LCCOMB_X27_Y4_N4
\ecg_miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_miso~4_combout\ = (ecg_bit_cnt(10) & (!ecg_bit_cnt(9) & !ecg_bit_cnt(8))) # (!ecg_bit_cnt(10) & (ecg_bit_cnt(9) $ (ecg_bit_cnt(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ecg_bit_cnt(10),
	datab => ecg_bit_cnt(9),
	datad => ecg_bit_cnt(8),
	combout => \ecg_miso~4_combout\);

-- Location: LCCOMB_X26_Y4_N18
\ecg_miso~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_miso~5_combout\ = (\ecg_rd_add~q\ & (((\ecg_miso~4_combout\)))) # (!\ecg_rd_add~q\ & (\process_1~7_combout\ & (\process_1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_rd_add~q\,
	datab => \process_1~7_combout\,
	datac => \process_1~8_combout\,
	datad => \ecg_miso~4_combout\,
	combout => \ecg_miso~5_combout\);

-- Location: FF_X26_Y4_N29
\ecg_miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_miso~3_combout\,
	ena => \ecg_miso~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_miso~reg0_q\);

-- Location: LCCOMB_X29_Y4_N20
\ecg_miso~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_miso~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \ecg_miso~enfeeder_combout\);

-- Location: FF_X29_Y4_N21
\ecg_miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_miso~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \ecg_miso~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_miso~en_q\);

-- Location: IOIBUF_X28_Y0_N8
\rec_sclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_sclk,
	o => \rec_sclk~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\rec_mosi~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_mosi,
	o => \rec_mosi~input_o\);

-- Location: LCCOMB_X27_Y2_N8
\rec_bit_cnt[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_bit_cnt[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rec_bit_cnt[1]~feeder_combout\);

-- Location: IOIBUF_X28_Y0_N1
\rec_ss_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_ss_n,
	o => \rec_ss_n~input_o\);

-- Location: LCCOMB_X28_Y2_N16
\process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (\rec_ss_n~input_o\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datad => \rec_ss_n~input_o\,
	combout => \process_2~0_combout\);

-- Location: FF_X27_Y2_N9
\rec_bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_bit_cnt[1]~feeder_combout\,
	clrn => \ALT_INV_process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(1));

-- Location: LCCOMB_X28_Y2_N20
\rec_bit_cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_bit_cnt[2]~0_combout\ = !rec_bit_cnt(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rec_bit_cnt(1),
	combout => \rec_bit_cnt[2]~0_combout\);

-- Location: FF_X28_Y2_N21
\rec_bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_bit_cnt[2]~0_combout\,
	clrn => \ALT_INV_process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(2));

-- Location: LCCOMB_X28_Y1_N16
\rec_rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rd_add~0_combout\ = (rec_bit_cnt(2) & (\rec_mosi~input_o\)) # (!rec_bit_cnt(2) & ((\rec_rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datac => \rec_rd_add~q\,
	datad => rec_bit_cnt(2),
	combout => \rec_rd_add~0_combout\);

-- Location: FF_X28_Y1_N17
rec_rd_add : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_rd_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_rd_add~q\);

-- Location: IOIBUF_X35_Y0_N22
\rec_tx_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_tx_load_en,
	o => \rec_tx_load_en~input_o\);

-- Location: LCCOMB_X28_Y3_N0
\rec_tx_buf[0]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[0]~43_combout\ = (\rec_tx_load_en~input_o\ & (\reset_n~input_o\ & \rec_ss_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_tx_load_en~input_o\,
	datac => \reset_n~input_o\,
	datad => \rec_ss_n~input_o\,
	combout => \rec_tx_buf[0]~43_combout\);

-- Location: CLKCTRL_G15
\rec_tx_buf[0]~43clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rec_tx_buf[0]~43clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rec_tx_buf[0]~43clkctrl_outclk\);

-- Location: LCCOMB_X27_Y3_N30
\ecg_rx_buf[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rx_buf[7]~0_combout\ = (\ecg_wr_add~q\ & (((ecg_rx_buf(7))))) # (!\ecg_wr_add~q\ & ((ecg_bit_cnt(9) & ((\ecg_mosi~input_o\))) # (!ecg_bit_cnt(9) & (ecg_rx_buf(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_wr_add~q\,
	datab => ecg_bit_cnt(9),
	datac => ecg_rx_buf(7),
	datad => \ecg_mosi~input_o\,
	combout => \ecg_rx_buf[7]~0_combout\);

-- Location: CLKCTRL_G19
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

-- Location: FF_X27_Y3_N31
\ecg_rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_rx_buf[7]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_rx_buf(7));

-- Location: LCCOMB_X27_Y4_N12
\process_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~10_combout\ = (\ecg_rx_req~input_o\ & \ecg_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_rx_req~input_o\,
	datad => \ecg_ss_n~input_o\,
	combout => \process_1~10_combout\);

-- Location: CLKCTRL_G16
\process_1~10clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_1~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_1~10clkctrl_outclk\);

-- Location: LCCOMB_X28_Y1_N2
\ecg_rx_data[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- ecg_rx_data(7) = (\reset_n~input_o\ & ((GLOBAL(\process_1~10clkctrl_outclk\) & ((ecg_rx_buf(7)))) # (!GLOBAL(\process_1~10clkctrl_outclk\) & (ecg_rx_data(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ecg_rx_data(7),
	datab => \reset_n~input_o\,
	datac => ecg_rx_buf(7),
	datad => \process_1~10clkctrl_outclk\,
	combout => ecg_rx_data(7));

-- Location: LCCOMB_X28_Y1_N20
\rec_tx_buf[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[7]~1_combout\ = (\reset_n~input_o\ & ((GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & ((ecg_rx_data(7)))) # (!GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & (\rec_tx_buf[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_tx_buf[7]~1_combout\,
	datac => \rec_tx_buf[0]~43clkctrl_outclk\,
	datad => ecg_rx_data(7),
	combout => \rec_tx_buf[7]~1_combout\);

-- Location: LCCOMB_X27_Y3_N4
\ecg_rx_buf[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rx_buf[6]~1_combout\ = (ecg_bit_cnt(10) & ((\ecg_wr_add~q\ & ((ecg_rx_buf(6)))) # (!\ecg_wr_add~q\ & (\ecg_mosi~input_o\)))) # (!ecg_bit_cnt(10) & (((ecg_rx_buf(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => ecg_bit_cnt(10),
	datac => ecg_rx_buf(6),
	datad => \ecg_wr_add~q\,
	combout => \ecg_rx_buf[6]~1_combout\);

-- Location: FF_X27_Y3_N5
\ecg_rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_rx_buf[6]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_rx_buf(6));

-- Location: LCCOMB_X28_Y3_N12
\ecg_rx_data[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- ecg_rx_data(6) = (\reset_n~input_o\ & ((GLOBAL(\process_1~10clkctrl_outclk\) & ((ecg_rx_buf(6)))) # (!GLOBAL(\process_1~10clkctrl_outclk\) & (ecg_rx_data(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ecg_rx_data(6),
	datab => \reset_n~input_o\,
	datac => ecg_rx_buf(6),
	datad => \process_1~10clkctrl_outclk\,
	combout => ecg_rx_data(6));

-- Location: LCCOMB_X28_Y3_N22
\rec_tx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[6]~6_combout\ = (\reset_n~input_o\ & ((GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & ((ecg_rx_data(6)))) # (!GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & (\rec_tx_buf[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_tx_buf[6]~6_combout\,
	datab => \reset_n~input_o\,
	datac => \rec_tx_buf[0]~43clkctrl_outclk\,
	datad => ecg_rx_data(6),
	combout => \rec_tx_buf[6]~6_combout\);

-- Location: LCCOMB_X27_Y3_N18
\ecg_rx_buf[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rx_buf[5]~2_combout\ = (\ecg_wr_add~q\ & (((ecg_rx_buf(5))))) # (!\ecg_wr_add~q\ & ((ecg_bit_cnt(11) & ((\ecg_mosi~input_o\))) # (!ecg_bit_cnt(11) & (ecg_rx_buf(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_wr_add~q\,
	datab => ecg_bit_cnt(11),
	datac => ecg_rx_buf(5),
	datad => \ecg_mosi~input_o\,
	combout => \ecg_rx_buf[5]~2_combout\);

-- Location: FF_X27_Y3_N19
\ecg_rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_rx_buf[5]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_rx_buf(5));

-- Location: LCCOMB_X29_Y3_N6
\ecg_rx_data[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- ecg_rx_data(5) = (\reset_n~input_o\ & ((GLOBAL(\process_1~10clkctrl_outclk\) & ((ecg_rx_buf(5)))) # (!GLOBAL(\process_1~10clkctrl_outclk\) & (ecg_rx_data(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ecg_rx_data(5),
	datab => \reset_n~input_o\,
	datac => ecg_rx_buf(5),
	datad => \process_1~10clkctrl_outclk\,
	combout => ecg_rx_data(5));

-- Location: LCCOMB_X29_Y3_N0
\rec_tx_buf[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[5]~11_combout\ = (\reset_n~input_o\ & ((GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & ((ecg_rx_data(5)))) # (!GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & (\rec_tx_buf[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_tx_buf[5]~11_combout\,
	datac => \rec_tx_buf[0]~43clkctrl_outclk\,
	datad => ecg_rx_data(5),
	combout => \rec_tx_buf[5]~11_combout\);

-- Location: LCCOMB_X27_Y3_N26
\ecg_rx_buf[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rx_buf[3]~4_combout\ = (ecg_bit_cnt(13) & ((\ecg_wr_add~q\ & ((ecg_rx_buf(3)))) # (!\ecg_wr_add~q\ & (\ecg_mosi~input_o\)))) # (!ecg_bit_cnt(13) & (((ecg_rx_buf(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => ecg_bit_cnt(13),
	datac => ecg_rx_buf(3),
	datad => \ecg_wr_add~q\,
	combout => \ecg_rx_buf[3]~4_combout\);

-- Location: FF_X27_Y3_N27
\ecg_rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_rx_buf[3]~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_rx_buf(3));

-- Location: LCCOMB_X27_Y3_N10
\ecg_rx_data[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- ecg_rx_data(3) = (\reset_n~input_o\ & ((GLOBAL(\process_1~10clkctrl_outclk\) & ((ecg_rx_buf(3)))) # (!GLOBAL(\process_1~10clkctrl_outclk\) & (ecg_rx_data(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ecg_rx_data(3),
	datab => \reset_n~input_o\,
	datac => ecg_rx_buf(3),
	datad => \process_1~10clkctrl_outclk\,
	combout => ecg_rx_data(3));

-- Location: LCCOMB_X27_Y3_N8
\rec_tx_buf[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[3]~21_combout\ = (\reset_n~input_o\ & ((GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & ((ecg_rx_data(3)))) # (!GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & (\rec_tx_buf[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_tx_buf[3]~21_combout\,
	datac => \rec_tx_buf[0]~43clkctrl_outclk\,
	datad => ecg_rx_data(3),
	combout => \rec_tx_buf[3]~21_combout\);

-- Location: LCCOMB_X27_Y3_N22
\ecg_rx_buf[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rx_buf[2]~5_combout\ = (ecg_bit_cnt(14) & ((\ecg_wr_add~q\ & ((ecg_rx_buf(2)))) # (!\ecg_wr_add~q\ & (\ecg_mosi~input_o\)))) # (!ecg_bit_cnt(14) & (((ecg_rx_buf(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => ecg_bit_cnt(14),
	datac => ecg_rx_buf(2),
	datad => \ecg_wr_add~q\,
	combout => \ecg_rx_buf[2]~5_combout\);

-- Location: FF_X27_Y3_N23
\ecg_rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_rx_buf[2]~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_rx_buf(2));

-- Location: LCCOMB_X27_Y3_N6
\ecg_rx_data[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- ecg_rx_data(2) = (\reset_n~input_o\ & ((GLOBAL(\process_1~10clkctrl_outclk\) & ((ecg_rx_buf(2)))) # (!GLOBAL(\process_1~10clkctrl_outclk\) & (ecg_rx_data(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ecg_rx_data(2),
	datab => \reset_n~input_o\,
	datac => ecg_rx_buf(2),
	datad => \process_1~10clkctrl_outclk\,
	combout => ecg_rx_data(2));

-- Location: LCCOMB_X27_Y3_N24
\rec_tx_buf[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[2]~26_combout\ = (\reset_n~input_o\ & ((GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & ((ecg_rx_data(2)))) # (!GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & (\rec_tx_buf[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_tx_buf[2]~26_combout\,
	datac => \rec_tx_buf[0]~43clkctrl_outclk\,
	datad => ecg_rx_data(2),
	combout => \rec_tx_buf[2]~26_combout\);

-- Location: LCCOMB_X29_Y3_N22
\ecg_rx_buf[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rx_buf[0]~7_combout\ = (\ecg_wr_add~q\ & (((ecg_rx_buf(0))))) # (!\ecg_wr_add~q\ & ((ecg_bit_cnt(16) & (\ecg_mosi~input_o\)) # (!ecg_bit_cnt(16) & ((ecg_rx_buf(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_wr_add~q\,
	datab => \ecg_mosi~input_o\,
	datac => ecg_rx_buf(0),
	datad => ecg_bit_cnt(16),
	combout => \ecg_rx_buf[0]~7_combout\);

-- Location: FF_X29_Y3_N23
\ecg_rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_rx_buf[0]~7_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_rx_buf(0));

-- Location: LCCOMB_X29_Y3_N2
\ecg_rx_data[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- ecg_rx_data(0) = (\reset_n~input_o\ & ((GLOBAL(\process_1~10clkctrl_outclk\) & (ecg_rx_buf(0))) # (!GLOBAL(\process_1~10clkctrl_outclk\) & ((ecg_rx_data(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => ecg_rx_buf(0),
	datac => ecg_rx_data(0),
	datad => \process_1~10clkctrl_outclk\,
	combout => ecg_rx_data(0));

-- Location: LCCOMB_X29_Y3_N4
\rec_tx_buf[0]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[0]~36_combout\ = (\reset_n~input_o\ & ((GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & ((ecg_rx_data(0)))) # (!GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & (\rec_tx_buf[0]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_tx_buf[0]~36_combout\,
	datac => \rec_tx_buf[0]~43clkctrl_outclk\,
	datad => ecg_rx_data(0),
	combout => \rec_tx_buf[0]~36_combout\);

-- Location: LCCOMB_X28_Y3_N14
\rec_tx_buf[0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[0]~39_combout\ = \rec_tx_buf[0]~36_combout\ $ (\rec_tx_buf[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_tx_buf[0]~36_combout\,
	datad => \rec_tx_buf[7]~2_combout\,
	combout => \rec_tx_buf[0]~39_combout\);

-- Location: LCCOMB_X28_Y3_N6
\rec_tx_buf[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[7]~0_combout\ = (\rec_tx_buf[0]~43_combout\) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \rec_tx_buf[0]~43_combout\,
	combout => \rec_tx_buf[7]~0_combout\);

-- Location: LCCOMB_X28_Y2_N6
\rec_bit_cnt[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_bit_cnt[3]~feeder_combout\ = rec_bit_cnt(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rec_bit_cnt(2),
	combout => \rec_bit_cnt[3]~feeder_combout\);

-- Location: FF_X28_Y2_N7
\rec_bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_bit_cnt[3]~feeder_combout\,
	clrn => \ALT_INV_process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(3));

-- Location: FF_X28_Y2_N5
\rec_bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => rec_bit_cnt(3),
	clrn => \ALT_INV_process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(4));

-- Location: FF_X28_Y2_N15
\rec_bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => rec_bit_cnt(4),
	clrn => \ALT_INV_process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(5));

-- Location: FF_X28_Y2_N1
\rec_bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => rec_bit_cnt(5),
	clrn => \ALT_INV_process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(6));

-- Location: LCCOMB_X28_Y2_N26
\rec_bit_cnt[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_bit_cnt[7]~feeder_combout\ = rec_bit_cnt(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rec_bit_cnt(6),
	combout => \rec_bit_cnt[7]~feeder_combout\);

-- Location: FF_X28_Y2_N27
\rec_bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_bit_cnt[7]~feeder_combout\,
	clrn => \ALT_INV_process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(7));

-- Location: FF_X28_Y2_N11
\rec_bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => rec_bit_cnt(7),
	clrn => \ALT_INV_process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(8));

-- Location: LCCOMB_X28_Y2_N18
\rec_bit_cnt[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_bit_cnt[9]~feeder_combout\ = rec_bit_cnt(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rec_bit_cnt(8),
	combout => \rec_bit_cnt[9]~feeder_combout\);

-- Location: FF_X28_Y2_N19
\rec_bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_bit_cnt[9]~feeder_combout\,
	clrn => \ALT_INV_process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(9));

-- Location: LCCOMB_X28_Y2_N2
\rec_bit_cnt[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_bit_cnt[10]~feeder_combout\ = rec_bit_cnt(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rec_bit_cnt(9),
	combout => \rec_bit_cnt[10]~feeder_combout\);

-- Location: FF_X28_Y2_N3
\rec_bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_bit_cnt[10]~feeder_combout\,
	clrn => \ALT_INV_process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(10));

-- Location: FF_X28_Y2_N9
\rec_bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => rec_bit_cnt(10),
	clrn => \ALT_INV_process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(11));

-- Location: FF_X28_Y2_N23
\rec_bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => rec_bit_cnt(11),
	clrn => \ALT_INV_process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(12));

-- Location: FF_X28_Y2_N13
\rec_bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => rec_bit_cnt(12),
	clrn => \ALT_INV_process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(13));

-- Location: FF_X28_Y2_N31
\rec_bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => rec_bit_cnt(13),
	clrn => \ALT_INV_process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(14));

-- Location: FF_X28_Y2_N17
\rec_bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => rec_bit_cnt(14),
	clrn => \ALT_INV_process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(15));

-- Location: FF_X28_Y2_N29
\rec_bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => rec_bit_cnt(15),
	clrn => \ALT_INV_process_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_bit_cnt(16));

-- Location: LCCOMB_X28_Y2_N14
\process_3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_3~9_combout\ = (!rec_bit_cnt(7) & (!rec_bit_cnt(16) & (!rec_bit_cnt(5) & !rec_bit_cnt(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rec_bit_cnt(7),
	datab => rec_bit_cnt(16),
	datac => rec_bit_cnt(5),
	datad => rec_bit_cnt(6),
	combout => \process_3~9_combout\);

-- Location: LCCOMB_X28_Y2_N4
\process_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_3~10_combout\ = (!rec_bit_cnt(3) & (!rec_bit_cnt(2) & (!rec_bit_cnt(4) & rec_bit_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rec_bit_cnt(3),
	datab => rec_bit_cnt(2),
	datac => rec_bit_cnt(4),
	datad => rec_bit_cnt(1),
	combout => \process_3~10_combout\);

-- Location: LCCOMB_X28_Y3_N16
\process_3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_3~11_combout\ = (\process_3~9_combout\ & (\process_3~10_combout\ & !\rec_rd_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_3~9_combout\,
	datac => \process_3~10_combout\,
	datad => \rec_rd_add~q\,
	combout => \process_3~11_combout\);

-- Location: FF_X28_Y3_N15
\rec_tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_tx_buf[0]~39_combout\,
	clrn => \ALT_INV_rec_tx_buf[7]~0_combout\,
	ena => \process_3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_tx_buf[0]~_emulated_q\);

-- Location: LCCOMB_X29_Y3_N26
\rec_tx_buf[0]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[0]~38_combout\ = \rec_tx_buf[0]~36_combout\ $ (\rec_tx_buf[0]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_tx_buf[0]~36_combout\,
	datad => \rec_tx_buf[0]~_emulated_q\,
	combout => \rec_tx_buf[0]~38_combout\);

-- Location: LCCOMB_X29_Y3_N12
\rec_tx_buf[0]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[0]~37_combout\ = (\reset_n~input_o\ & ((\rec_tx_buf[0]~43_combout\ & ((ecg_rx_data(0)))) # (!\rec_tx_buf[0]~43_combout\ & (\rec_tx_buf[0]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_tx_buf[0]~43_combout\,
	datac => \rec_tx_buf[0]~38_combout\,
	datad => ecg_rx_data(0),
	combout => \rec_tx_buf[0]~37_combout\);

-- Location: LCCOMB_X29_Y3_N16
\ecg_rx_buf[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rx_buf[1]~6_combout\ = (\ecg_wr_add~q\ & (((ecg_rx_buf(1))))) # (!\ecg_wr_add~q\ & ((ecg_bit_cnt(15) & (\ecg_mosi~input_o\)) # (!ecg_bit_cnt(15) & ((ecg_rx_buf(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_wr_add~q\,
	datab => \ecg_mosi~input_o\,
	datac => ecg_rx_buf(1),
	datad => ecg_bit_cnt(15),
	combout => \ecg_rx_buf[1]~6_combout\);

-- Location: FF_X29_Y3_N17
\ecg_rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_rx_buf[1]~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_rx_buf(1));

-- Location: LCCOMB_X29_Y3_N18
\ecg_rx_data[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- ecg_rx_data(1) = (\reset_n~input_o\ & ((GLOBAL(\process_1~10clkctrl_outclk\) & (ecg_rx_buf(1))) # (!GLOBAL(\process_1~10clkctrl_outclk\) & ((ecg_rx_data(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => ecg_rx_buf(1),
	datac => ecg_rx_data(1),
	datad => \process_1~10clkctrl_outclk\,
	combout => ecg_rx_data(1));

-- Location: LCCOMB_X29_Y3_N24
\rec_tx_buf[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[1]~31_combout\ = (\reset_n~input_o\ & ((GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & ((ecg_rx_data(1)))) # (!GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & (\rec_tx_buf[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_tx_buf[1]~31_combout\,
	datac => \rec_tx_buf[0]~43clkctrl_outclk\,
	datad => ecg_rx_data(1),
	combout => \rec_tx_buf[1]~31_combout\);

-- Location: LCCOMB_X29_Y3_N28
\rec_tx_buf[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[1]~34_combout\ = \rec_tx_buf[0]~37_combout\ $ (\rec_tx_buf[1]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_tx_buf[0]~37_combout\,
	datad => \rec_tx_buf[1]~31_combout\,
	combout => \rec_tx_buf[1]~34_combout\);

-- Location: FF_X29_Y3_N29
\rec_tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_tx_buf[1]~34_combout\,
	clrn => \ALT_INV_rec_tx_buf[7]~0_combout\,
	ena => \process_3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_tx_buf[1]~_emulated_q\);

-- Location: LCCOMB_X29_Y3_N10
\rec_tx_buf[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[1]~33_combout\ = \rec_tx_buf[1]~_emulated_q\ $ (\rec_tx_buf[1]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_tx_buf[1]~_emulated_q\,
	datad => \rec_tx_buf[1]~31_combout\,
	combout => \rec_tx_buf[1]~33_combout\);

-- Location: LCCOMB_X28_Y3_N8
\rec_tx_buf[1]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[1]~32_combout\ = (\reset_n~input_o\ & ((\rec_tx_buf[0]~43_combout\ & ((ecg_rx_data(1)))) # (!\rec_tx_buf[0]~43_combout\ & (\rec_tx_buf[1]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_tx_buf[0]~43_combout\,
	datab => \reset_n~input_o\,
	datac => \rec_tx_buf[1]~33_combout\,
	datad => ecg_rx_data(1),
	combout => \rec_tx_buf[1]~32_combout\);

-- Location: LCCOMB_X28_Y3_N10
\rec_tx_buf[2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[2]~29_combout\ = \rec_tx_buf[2]~26_combout\ $ (\rec_tx_buf[1]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_tx_buf[2]~26_combout\,
	datad => \rec_tx_buf[1]~32_combout\,
	combout => \rec_tx_buf[2]~29_combout\);

-- Location: FF_X28_Y3_N11
\rec_tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_tx_buf[2]~29_combout\,
	clrn => \ALT_INV_rec_tx_buf[7]~0_combout\,
	ena => \process_3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_tx_buf[2]~_emulated_q\);

-- Location: LCCOMB_X27_Y3_N12
\rec_tx_buf[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[2]~28_combout\ = \rec_tx_buf[2]~_emulated_q\ $ (\rec_tx_buf[2]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_tx_buf[2]~_emulated_q\,
	datad => \rec_tx_buf[2]~26_combout\,
	combout => \rec_tx_buf[2]~28_combout\);

-- Location: LCCOMB_X29_Y3_N14
\rec_tx_buf[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[2]~27_combout\ = (\reset_n~input_o\ & ((\rec_tx_buf[0]~43_combout\ & ((ecg_rx_data(2)))) # (!\rec_tx_buf[0]~43_combout\ & (\rec_tx_buf[2]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_tx_buf[0]~43_combout\,
	datac => \rec_tx_buf[2]~28_combout\,
	datad => ecg_rx_data(2),
	combout => \rec_tx_buf[2]~27_combout\);

-- Location: LCCOMB_X29_Y3_N20
\rec_tx_buf[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[3]~24_combout\ = \rec_tx_buf[2]~27_combout\ $ (\rec_tx_buf[3]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_tx_buf[2]~27_combout\,
	datad => \rec_tx_buf[3]~21_combout\,
	combout => \rec_tx_buf[3]~24_combout\);

-- Location: FF_X29_Y3_N21
\rec_tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_tx_buf[3]~24_combout\,
	clrn => \ALT_INV_rec_tx_buf[7]~0_combout\,
	ena => \process_3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_tx_buf[3]~_emulated_q\);

-- Location: LCCOMB_X27_Y3_N16
\rec_tx_buf[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[3]~23_combout\ = \rec_tx_buf[3]~21_combout\ $ (\rec_tx_buf[3]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_tx_buf[3]~21_combout\,
	datad => \rec_tx_buf[3]~_emulated_q\,
	combout => \rec_tx_buf[3]~23_combout\);

-- Location: LCCOMB_X28_Y3_N4
\rec_tx_buf[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[3]~22_combout\ = (\reset_n~input_o\ & ((\rec_tx_buf[0]~43_combout\ & ((ecg_rx_data(3)))) # (!\rec_tx_buf[0]~43_combout\ & (\rec_tx_buf[3]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_tx_buf[0]~43_combout\,
	datab => \reset_n~input_o\,
	datac => \rec_tx_buf[3]~23_combout\,
	datad => ecg_rx_data(3),
	combout => \rec_tx_buf[3]~22_combout\);

-- Location: LCCOMB_X27_Y3_N14
\ecg_rx_buf[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_rx_buf[4]~3_combout\ = (ecg_bit_cnt(12) & ((\ecg_wr_add~q\ & ((ecg_rx_buf(4)))) # (!\ecg_wr_add~q\ & (\ecg_mosi~input_o\)))) # (!ecg_bit_cnt(12) & (((ecg_rx_buf(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => ecg_bit_cnt(12),
	datac => ecg_rx_buf(4),
	datad => \ecg_wr_add~q\,
	combout => \ecg_rx_buf[4]~3_combout\);

-- Location: FF_X27_Y3_N15
\ecg_rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_rx_buf[4]~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ecg_rx_buf(4));

-- Location: LCCOMB_X27_Y3_N2
\ecg_rx_data[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- ecg_rx_data(4) = (\reset_n~input_o\ & ((GLOBAL(\process_1~10clkctrl_outclk\) & ((ecg_rx_buf(4)))) # (!GLOBAL(\process_1~10clkctrl_outclk\) & (ecg_rx_data(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => ecg_rx_data(4),
	datac => ecg_rx_buf(4),
	datad => \process_1~10clkctrl_outclk\,
	combout => ecg_rx_data(4));

-- Location: LCCOMB_X27_Y3_N20
\rec_tx_buf[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[4]~16_combout\ = (\reset_n~input_o\ & ((GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & ((ecg_rx_data(4)))) # (!GLOBAL(\rec_tx_buf[0]~43clkctrl_outclk\) & (\rec_tx_buf[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_tx_buf[4]~16_combout\,
	datac => \rec_tx_buf[0]~43clkctrl_outclk\,
	datad => ecg_rx_data(4),
	combout => \rec_tx_buf[4]~16_combout\);

-- Location: LCCOMB_X28_Y3_N24
\rec_tx_buf[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[4]~19_combout\ = \rec_tx_buf[3]~22_combout\ $ (\rec_tx_buf[4]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_tx_buf[3]~22_combout\,
	datad => \rec_tx_buf[4]~16_combout\,
	combout => \rec_tx_buf[4]~19_combout\);

-- Location: FF_X28_Y3_N25
\rec_tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_tx_buf[4]~19_combout\,
	clrn => \ALT_INV_rec_tx_buf[7]~0_combout\,
	ena => \process_3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_tx_buf[4]~_emulated_q\);

-- Location: LCCOMB_X27_Y3_N0
\rec_tx_buf[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[4]~18_combout\ = \rec_tx_buf[4]~_emulated_q\ $ (\rec_tx_buf[4]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_tx_buf[4]~_emulated_q\,
	datad => \rec_tx_buf[4]~16_combout\,
	combout => \rec_tx_buf[4]~18_combout\);

-- Location: LCCOMB_X28_Y3_N28
\rec_tx_buf[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[4]~17_combout\ = (\reset_n~input_o\ & ((\rec_tx_buf[0]~43_combout\ & ((ecg_rx_data(4)))) # (!\rec_tx_buf[0]~43_combout\ & (\rec_tx_buf[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_tx_buf[0]~43_combout\,
	datab => \reset_n~input_o\,
	datac => \rec_tx_buf[4]~18_combout\,
	datad => ecg_rx_data(4),
	combout => \rec_tx_buf[4]~17_combout\);

-- Location: LCCOMB_X28_Y3_N30
\rec_tx_buf[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[5]~14_combout\ = \rec_tx_buf[5]~11_combout\ $ (\rec_tx_buf[4]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_tx_buf[5]~11_combout\,
	datad => \rec_tx_buf[4]~17_combout\,
	combout => \rec_tx_buf[5]~14_combout\);

-- Location: FF_X28_Y3_N31
\rec_tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_tx_buf[5]~14_combout\,
	clrn => \ALT_INV_rec_tx_buf[7]~0_combout\,
	ena => \process_3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_tx_buf[5]~_emulated_q\);

-- Location: LCCOMB_X29_Y3_N8
\rec_tx_buf[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[5]~13_combout\ = \rec_tx_buf[5]~_emulated_q\ $ (\rec_tx_buf[5]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_tx_buf[5]~_emulated_q\,
	datad => \rec_tx_buf[5]~11_combout\,
	combout => \rec_tx_buf[5]~13_combout\);

-- Location: LCCOMB_X29_Y3_N30
\rec_tx_buf[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[5]~12_combout\ = (\reset_n~input_o\ & ((\rec_tx_buf[0]~43_combout\ & ((ecg_rx_data(5)))) # (!\rec_tx_buf[0]~43_combout\ & (\rec_tx_buf[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_tx_buf[0]~43_combout\,
	datac => \rec_tx_buf[5]~13_combout\,
	datad => ecg_rx_data(5),
	combout => \rec_tx_buf[5]~12_combout\);

-- Location: LCCOMB_X28_Y3_N2
\rec_tx_buf[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[6]~9_combout\ = \rec_tx_buf[6]~6_combout\ $ (\rec_tx_buf[5]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_tx_buf[6]~6_combout\,
	datac => \rec_tx_buf[5]~12_combout\,
	combout => \rec_tx_buf[6]~9_combout\);

-- Location: FF_X28_Y3_N3
\rec_tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_tx_buf[6]~9_combout\,
	clrn => \ALT_INV_rec_tx_buf[7]~0_combout\,
	ena => \process_3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_tx_buf[6]~_emulated_q\);

-- Location: LCCOMB_X28_Y3_N26
\rec_tx_buf[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[6]~8_combout\ = \rec_tx_buf[6]~6_combout\ $ (\rec_tx_buf[6]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_tx_buf[6]~6_combout\,
	datad => \rec_tx_buf[6]~_emulated_q\,
	combout => \rec_tx_buf[6]~8_combout\);

-- Location: LCCOMB_X28_Y3_N18
\rec_tx_buf[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[6]~7_combout\ = (\reset_n~input_o\ & ((\rec_tx_buf[0]~43_combout\ & ((ecg_rx_data(6)))) # (!\rec_tx_buf[0]~43_combout\ & (\rec_tx_buf[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_tx_buf[0]~43_combout\,
	datac => \rec_tx_buf[6]~8_combout\,
	datad => ecg_rx_data(6),
	combout => \rec_tx_buf[6]~7_combout\);

-- Location: LCCOMB_X28_Y3_N20
\rec_tx_buf[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[7]~4_combout\ = \rec_tx_buf[7]~1_combout\ $ (\rec_tx_buf[6]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_tx_buf[7]~1_combout\,
	datac => \rec_tx_buf[6]~7_combout\,
	combout => \rec_tx_buf[7]~4_combout\);

-- Location: FF_X28_Y3_N21
\rec_tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_tx_buf[7]~4_combout\,
	clrn => \ALT_INV_rec_tx_buf[7]~0_combout\,
	ena => \process_3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_tx_buf[7]~_emulated_q\);

-- Location: LCCOMB_X28_Y1_N22
\rec_tx_buf[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[7]~3_combout\ = \rec_tx_buf[7]~_emulated_q\ $ (\rec_tx_buf[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_tx_buf[7]~_emulated_q\,
	datad => \rec_tx_buf[7]~1_combout\,
	combout => \rec_tx_buf[7]~3_combout\);

-- Location: LCCOMB_X28_Y1_N12
\rec_tx_buf[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_tx_buf[7]~2_combout\ = (\reset_n~input_o\ & ((\rec_tx_buf[0]~43_combout\ & ((ecg_rx_data(7)))) # (!\rec_tx_buf[0]~43_combout\ & (\rec_tx_buf[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_tx_buf[0]~43_combout\,
	datab => \reset_n~input_o\,
	datac => \rec_tx_buf[7]~3_combout\,
	datad => ecg_rx_data(7),
	combout => \rec_tx_buf[7]~2_combout\);

-- Location: IOIBUF_X32_Y0_N8
\rec_st_load_rec_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_rec_trdy,
	o => \rec_st_load_rec_trdy~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\rec_st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_en,
	o => \rec_st_load_en~input_o\);

-- Location: LCCOMB_X28_Y1_N30
\rec_trdy~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_trdy~8_combout\ = (\rec_ss_n~input_o\ & ((\rec_st_load_en~input_o\ & (\rec_st_load_rec_trdy~input_o\)) # (!\rec_st_load_en~input_o\ & ((\rec_tx_load_en~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_st_load_rec_trdy~input_o\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_st_load_en~input_o\,
	datad => \rec_tx_load_en~input_o\,
	combout => \rec_trdy~8_combout\);

-- Location: LCCOMB_X28_Y1_N26
\rec_wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_wr_add~0_combout\ = (rec_bit_cnt(1) & ((\rec_wr_add~q\))) # (!rec_bit_cnt(1) & (\rec_mosi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datac => \rec_wr_add~q\,
	datad => rec_bit_cnt(1),
	combout => \rec_wr_add~0_combout\);

-- Location: FF_X28_Y1_N27
rec_wr_add : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_wr_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_wr_add~q\);

-- Location: LCCOMB_X28_Y2_N30
\process_3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_3~1_combout\ = (\rec_wr_add~q\ & rec_bit_cnt(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_wr_add~q\,
	datad => rec_bit_cnt(9),
	combout => \process_3~1_combout\);

-- Location: LCCOMB_X29_Y1_N4
\process_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_3~4_combout\ = (\rec_st_load_en~input_o\ & \rec_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_st_load_en~input_o\,
	datad => \rec_ss_n~input_o\,
	combout => \process_3~4_combout\);

-- Location: LCCOMB_X28_Y1_N24
\process_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_3~2_combout\ = ((!\rec_st_load_rec_trdy~input_o\ & \process_3~4_combout\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datac => \rec_st_load_rec_trdy~input_o\,
	datad => \process_3~4_combout\,
	combout => \process_3~2_combout\);

-- Location: LCCOMB_X28_Y1_N14
\rec_trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_trdy~1_combout\ = (!\process_3~2_combout\ & ((\rec_trdy~8_combout\) # (\rec_trdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_trdy~8_combout\,
	datac => \rec_trdy~1_combout\,
	datad => \process_3~2_combout\,
	combout => \rec_trdy~1_combout\);

-- Location: LCCOMB_X28_Y1_N10
\rec_trdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_trdy~7_combout\ = (!\process_3~1_combout\ & (\rec_trdy~2_combout\ & ((\rec_rd_add~q\) # (!rec_bit_cnt(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_rd_add~q\,
	datab => rec_bit_cnt(16),
	datac => \process_3~1_combout\,
	datad => \rec_trdy~2_combout\,
	combout => \rec_trdy~7_combout\);

-- Location: LCCOMB_X28_Y1_N8
\rec_trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_trdy~3_combout\ = \rec_trdy~1_combout\ $ (((\rec_trdy~7_combout\) # ((\process_3~1_combout\ & \rec_mosi~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_3~1_combout\,
	datab => \rec_mosi~input_o\,
	datac => \rec_trdy~1_combout\,
	datad => \rec_trdy~7_combout\,
	combout => \rec_trdy~3_combout\);

-- Location: LCCOMB_X28_Y1_N4
\rec_trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_trdy~0_combout\ = (\rec_trdy~8_combout\) # (\process_3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_trdy~8_combout\,
	datad => \process_3~2_combout\,
	combout => \rec_trdy~0_combout\);

-- Location: FF_X28_Y1_N9
\rec_trdy~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_trdy~3_combout\,
	clrn => \ALT_INV_rec_trdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_trdy~reg0_emulated_q\);

-- Location: LCCOMB_X28_Y1_N18
\rec_trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_trdy~2_combout\ = (!\process_3~2_combout\ & ((\rec_trdy~8_combout\) # (\rec_trdy~reg0_emulated_q\ $ (\rec_trdy~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_trdy~8_combout\,
	datab => \rec_trdy~reg0_emulated_q\,
	datac => \rec_trdy~1_combout\,
	datad => \process_3~2_combout\,
	combout => \rec_trdy~2_combout\);

-- Location: IOIBUF_X30_Y0_N8
\rec_st_load_rec_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_rec_roe,
	o => \rec_st_load_rec_roe~input_o\);

-- Location: LCCOMB_X29_Y1_N0
\process_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_3~8_combout\ = ((\process_3~4_combout\ & !\rec_st_load_rec_roe~input_o\)) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datac => \process_3~4_combout\,
	datad => \rec_st_load_rec_roe~input_o\,
	combout => \process_3~8_combout\);

-- Location: LCCOMB_X29_Y1_N28
\rec_roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_roe~1_combout\ = (!\process_3~8_combout\ & ((\process_3~4_combout\) # (\rec_roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_3~4_combout\,
	datac => \process_3~8_combout\,
	datad => \rec_roe~1_combout\,
	combout => \rec_roe~1_combout\);

-- Location: LCCOMB_X28_Y2_N8
\rec_roe~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_roe~7_combout\ = (\rec_mosi~input_o\ & (rec_bit_cnt(11) & \rec_wr_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datac => rec_bit_cnt(11),
	datad => \rec_wr_add~q\,
	combout => \rec_roe~7_combout\);

-- Location: LCCOMB_X29_Y1_N30
\rec_roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_roe~6_combout\ = (\rec_roe~2_combout\ & ((!rec_bit_cnt(11)) # (!\rec_wr_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_wr_add~q\,
	datac => \rec_roe~2_combout\,
	datad => rec_bit_cnt(11),
	combout => \rec_roe~6_combout\);

-- Location: IOIBUF_X32_Y0_N29
\rec_rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_rx_req,
	o => \rec_rx_req~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\rec_st_load_rec_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_rec_rrdy,
	o => \rec_st_load_rec_rrdy~input_o\);

-- Location: LCCOMB_X29_Y1_N14
\process_3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_3~5_combout\ = (\rec_st_load_en~input_o\ & !\rec_st_load_rec_rrdy~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_st_load_en~input_o\,
	datad => \rec_st_load_rec_rrdy~input_o\,
	combout => \process_3~5_combout\);

-- Location: LCCOMB_X29_Y1_N6
\process_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_3~6_combout\ = ((\rec_ss_n~input_o\ & ((\rec_rx_req~input_o\) # (\process_3~5_combout\)))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_rx_req~input_o\,
	datab => \reset_n~input_o\,
	datac => \process_3~5_combout\,
	datad => \rec_ss_n~input_o\,
	combout => \process_3~6_combout\);

-- Location: LCCOMB_X30_Y1_N20
\rec_rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rrdy~1_combout\ = (!\process_3~6_combout\ & ((\process_3~4_combout\) # (\rec_rrdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_3~4_combout\,
	datac => \process_3~6_combout\,
	datad => \rec_rrdy~1_combout\,
	combout => \rec_rrdy~1_combout\);

-- Location: LCCOMB_X30_Y1_N8
\rec_rrdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rrdy~7_combout\ = (\rec_rrdy~2_combout\) # ((!\rec_wr_add~q\ & rec_bit_cnt(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_wr_add~q\,
	datac => \rec_rrdy~2_combout\,
	datad => rec_bit_cnt(16),
	combout => \rec_rrdy~7_combout\);

-- Location: LCCOMB_X28_Y2_N12
\process_3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_3~3_combout\ = (\rec_wr_add~q\ & rec_bit_cnt(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_wr_add~q\,
	datad => rec_bit_cnt(10),
	combout => \process_3~3_combout\);

-- Location: LCCOMB_X30_Y1_N24
\rec_rrdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rrdy~3_combout\ = \rec_rrdy~1_combout\ $ (((\process_3~3_combout\ & (\rec_mosi~input_o\)) # (!\process_3~3_combout\ & ((\rec_rrdy~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_rrdy~1_combout\,
	datac => \rec_rrdy~7_combout\,
	datad => \process_3~3_combout\,
	combout => \rec_rrdy~3_combout\);

-- Location: LCCOMB_X30_Y1_N18
\rec_rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rrdy~0_combout\ = (\process_3~6_combout\) # (\process_3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_3~6_combout\,
	datac => \process_3~4_combout\,
	combout => \rec_rrdy~0_combout\);

-- Location: FF_X30_Y1_N25
\rec_rrdy~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_rrdy~3_combout\,
	clrn => \ALT_INV_rec_rrdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_rrdy~reg0_emulated_q\);

-- Location: LCCOMB_X30_Y1_N30
\rec_rrdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rrdy~2_combout\ = (!\process_3~6_combout\ & ((\process_3~4_combout\) # (\rec_rrdy~1_combout\ $ (\rec_rrdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_rrdy~1_combout\,
	datab => \process_3~6_combout\,
	datac => \process_3~4_combout\,
	datad => \rec_rrdy~reg0_emulated_q\,
	combout => \rec_rrdy~2_combout\);

-- Location: LCCOMB_X29_Y1_N20
\process_3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_3~7_combout\ = (!\rec_wr_add~q\ & (rec_bit_cnt(16) & \rec_rrdy~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_wr_add~q\,
	datac => rec_bit_cnt(16),
	datad => \rec_rrdy~2_combout\,
	combout => \process_3~7_combout\);

-- Location: LCCOMB_X29_Y1_N22
\rec_roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_roe~3_combout\ = \rec_roe~1_combout\ $ (((\rec_roe~7_combout\) # ((\rec_roe~6_combout\) # (\process_3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_roe~7_combout\,
	datab => \rec_roe~1_combout\,
	datac => \rec_roe~6_combout\,
	datad => \process_3~7_combout\,
	combout => \rec_roe~3_combout\);

-- Location: LCCOMB_X29_Y1_N10
\rec_roe~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_roe~0_combout\ = (\process_3~4_combout\) # (\process_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_3~4_combout\,
	datad => \process_3~8_combout\,
	combout => \rec_roe~0_combout\);

-- Location: FF_X29_Y1_N23
\rec_roe~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_roe~3_combout\,
	clrn => \ALT_INV_rec_roe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_roe~reg0_emulated_q\);

-- Location: LCCOMB_X29_Y1_N26
\rec_roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_roe~2_combout\ = (!\process_3~8_combout\ & ((\process_3~4_combout\) # (\rec_roe~1_combout\ $ (\rec_roe~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_roe~1_combout\,
	datab => \process_3~4_combout\,
	datac => \rec_roe~reg0_emulated_q\,
	datad => \process_3~8_combout\,
	combout => \rec_roe~2_combout\);

-- Location: LCCOMB_X29_Y1_N24
\rec_miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_miso~1_combout\ = (rec_bit_cnt(9) & ((\rec_rrdy~2_combout\))) # (!rec_bit_cnt(9) & (\rec_roe~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rec_bit_cnt(9),
	datac => \rec_roe~2_combout\,
	datad => \rec_rrdy~2_combout\,
	combout => \rec_miso~1_combout\);

-- Location: LCCOMB_X28_Y1_N6
\rec_miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_miso~2_combout\ = (rec_bit_cnt(8) & (\rec_trdy~2_combout\)) # (!rec_bit_cnt(8) & ((\rec_miso~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rec_bit_cnt(8),
	datac => \rec_trdy~2_combout\,
	datad => \rec_miso~1_combout\,
	combout => \rec_miso~2_combout\);

-- Location: LCCOMB_X28_Y1_N28
\rec_miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_miso~3_combout\ = (\rec_rd_add~q\ & ((\rec_miso~2_combout\))) # (!\rec_rd_add~q\ & (\rec_tx_buf[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_rd_add~q\,
	datab => \rec_tx_buf[7]~2_combout\,
	datad => \rec_miso~2_combout\,
	combout => \rec_miso~3_combout\);

-- Location: LCCOMB_X28_Y2_N28
\rec_miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_miso~4_combout\ = (rec_bit_cnt(8) & (!rec_bit_cnt(9) & !rec_bit_cnt(10))) # (!rec_bit_cnt(8) & (rec_bit_cnt(9) $ (rec_bit_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rec_bit_cnt(8),
	datab => rec_bit_cnt(9),
	datad => rec_bit_cnt(10),
	combout => \rec_miso~4_combout\);

-- Location: LCCOMB_X28_Y1_N0
\rec_miso~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_miso~5_combout\ = (\rec_rd_add~q\ & (\rec_miso~4_combout\)) # (!\rec_rd_add~q\ & (((\process_3~9_combout\ & \process_3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_miso~4_combout\,
	datab => \rec_rd_add~q\,
	datac => \process_3~9_combout\,
	datad => \process_3~10_combout\,
	combout => \rec_miso~5_combout\);

-- Location: FF_X28_Y1_N29
\rec_miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_miso~3_combout\,
	ena => \rec_miso~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_miso~reg0_q\);

-- Location: LCCOMB_X28_Y2_N24
\rec_miso~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_miso~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rec_miso~enfeeder_combout\);

-- Location: FF_X28_Y2_N25
\rec_miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_miso~enfeeder_combout\,
	clrn => \ALT_INV_process_2~0_combout\,
	ena => \rec_miso~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_miso~en_q\);

-- Location: LCCOMB_X29_Y2_N16
\rec_rx_buf[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_buf[0]~0_combout\ = (\rec_wr_add~q\ & (((rec_rx_buf(0))))) # (!\rec_wr_add~q\ & ((rec_bit_cnt(16) & (\rec_mosi~input_o\)) # (!rec_bit_cnt(16) & ((rec_rx_buf(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_wr_add~q\,
	datac => rec_rx_buf(0),
	datad => rec_bit_cnt(16),
	combout => \rec_rx_buf[0]~0_combout\);

-- Location: FF_X29_Y2_N17
\rec_rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_rx_buf[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_rx_buf(0));

-- Location: LCCOMB_X29_Y1_N12
\process_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_3~0_combout\ = (\rec_rx_req~input_o\ & \rec_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_rx_req~input_o\,
	datad => \rec_ss_n~input_o\,
	combout => \process_3~0_combout\);

-- Location: CLKCTRL_G17
\process_3~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_3~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_3~0clkctrl_outclk\);

-- Location: LCCOMB_X29_Y2_N28
\rec_rx_data[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_data[0]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_3~0clkctrl_outclk\) & ((rec_rx_buf(0)))) # (!GLOBAL(\process_3~0clkctrl_outclk\) & (\rec_rx_data[0]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_rx_data[0]$latch~combout\,
	datac => rec_rx_buf(0),
	datad => \process_3~0clkctrl_outclk\,
	combout => \rec_rx_data[0]$latch~combout\);

-- Location: LCCOMB_X29_Y2_N26
\rec_rx_buf[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_buf[1]~1_combout\ = (\rec_wr_add~q\ & (((rec_rx_buf(1))))) # (!\rec_wr_add~q\ & ((rec_bit_cnt(15) & (\rec_mosi~input_o\)) # (!rec_bit_cnt(15) & ((rec_rx_buf(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_wr_add~q\,
	datac => rec_rx_buf(1),
	datad => rec_bit_cnt(15),
	combout => \rec_rx_buf[1]~1_combout\);

-- Location: FF_X29_Y2_N27
\rec_rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_rx_buf[1]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_rx_buf(1));

-- Location: LCCOMB_X29_Y2_N6
\rec_rx_data[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_data[1]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_3~0clkctrl_outclk\) & ((rec_rx_buf(1)))) # (!GLOBAL(\process_3~0clkctrl_outclk\) & (\rec_rx_data[1]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_rx_data[1]$latch~combout\,
	datab => \reset_n~input_o\,
	datac => rec_rx_buf(1),
	datad => \process_3~0clkctrl_outclk\,
	combout => \rec_rx_data[1]$latch~combout\);

-- Location: LCCOMB_X29_Y2_N24
\rec_rx_buf[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_buf[2]~2_combout\ = (\rec_wr_add~q\ & (((rec_rx_buf(2))))) # (!\rec_wr_add~q\ & ((rec_bit_cnt(14) & (\rec_mosi~input_o\)) # (!rec_bit_cnt(14) & ((rec_rx_buf(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_wr_add~q\,
	datac => rec_rx_buf(2),
	datad => rec_bit_cnt(14),
	combout => \rec_rx_buf[2]~2_combout\);

-- Location: FF_X29_Y2_N25
\rec_rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_rx_buf[2]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_rx_buf(2));

-- Location: LCCOMB_X29_Y2_N8
\rec_rx_data[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_data[2]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_3~0clkctrl_outclk\) & ((rec_rx_buf(2)))) # (!GLOBAL(\process_3~0clkctrl_outclk\) & (\rec_rx_data[2]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_rx_data[2]$latch~combout\,
	datac => rec_rx_buf(2),
	datad => \process_3~0clkctrl_outclk\,
	combout => \rec_rx_data[2]$latch~combout\);

-- Location: LCCOMB_X29_Y2_N10
\rec_rx_buf[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_buf[3]~3_combout\ = (\rec_wr_add~q\ & (((rec_rx_buf(3))))) # (!\rec_wr_add~q\ & ((rec_bit_cnt(13) & (\rec_mosi~input_o\)) # (!rec_bit_cnt(13) & ((rec_rx_buf(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_wr_add~q\,
	datac => rec_rx_buf(3),
	datad => rec_bit_cnt(13),
	combout => \rec_rx_buf[3]~3_combout\);

-- Location: FF_X29_Y2_N11
\rec_rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_rx_buf[3]~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_rx_buf(3));

-- Location: LCCOMB_X29_Y2_N2
\rec_rx_data[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_data[3]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_3~0clkctrl_outclk\) & ((rec_rx_buf(3)))) # (!GLOBAL(\process_3~0clkctrl_outclk\) & (\rec_rx_data[3]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_rx_data[3]$latch~combout\,
	datac => rec_rx_buf(3),
	datad => \process_3~0clkctrl_outclk\,
	combout => \rec_rx_data[3]$latch~combout\);

-- Location: LCCOMB_X29_Y2_N4
\rec_rx_buf[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_buf[4]~4_combout\ = (\rec_wr_add~q\ & (((rec_rx_buf(4))))) # (!\rec_wr_add~q\ & ((rec_bit_cnt(12) & (\rec_mosi~input_o\)) # (!rec_bit_cnt(12) & ((rec_rx_buf(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_wr_add~q\,
	datac => rec_rx_buf(4),
	datad => rec_bit_cnt(12),
	combout => \rec_rx_buf[4]~4_combout\);

-- Location: FF_X29_Y2_N5
\rec_rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_rx_buf[4]~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_rx_buf(4));

-- Location: LCCOMB_X29_Y2_N0
\rec_rx_data[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_data[4]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_3~0clkctrl_outclk\) & ((rec_rx_buf(4)))) # (!GLOBAL(\process_3~0clkctrl_outclk\) & (\rec_rx_data[4]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_rx_data[4]$latch~combout\,
	datac => rec_rx_buf(4),
	datad => \process_3~0clkctrl_outclk\,
	combout => \rec_rx_data[4]$latch~combout\);

-- Location: LCCOMB_X29_Y2_N22
\rec_rx_buf[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_buf[5]~5_combout\ = (rec_bit_cnt(11) & ((\rec_wr_add~q\ & (rec_rx_buf(5))) # (!\rec_wr_add~q\ & ((\rec_mosi~input_o\))))) # (!rec_bit_cnt(11) & (((rec_rx_buf(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rec_bit_cnt(11),
	datab => \rec_wr_add~q\,
	datac => rec_rx_buf(5),
	datad => \rec_mosi~input_o\,
	combout => \rec_rx_buf[5]~5_combout\);

-- Location: FF_X29_Y2_N23
\rec_rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_rx_buf[5]~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_rx_buf(5));

-- Location: LCCOMB_X29_Y2_N18
\rec_rx_data[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_data[5]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_3~0clkctrl_outclk\) & ((rec_rx_buf(5)))) # (!GLOBAL(\process_3~0clkctrl_outclk\) & (\rec_rx_data[5]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \rec_rx_data[5]$latch~combout\,
	datac => rec_rx_buf(5),
	datad => \process_3~0clkctrl_outclk\,
	combout => \rec_rx_data[5]$latch~combout\);

-- Location: LCCOMB_X29_Y2_N20
\rec_rx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_buf[6]~6_combout\ = (rec_bit_cnt(10) & ((\rec_wr_add~q\ & (rec_rx_buf(6))) # (!\rec_wr_add~q\ & ((\rec_mosi~input_o\))))) # (!rec_bit_cnt(10) & (((rec_rx_buf(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rec_bit_cnt(10),
	datab => \rec_wr_add~q\,
	datac => rec_rx_buf(6),
	datad => \rec_mosi~input_o\,
	combout => \rec_rx_buf[6]~6_combout\);

-- Location: FF_X29_Y2_N21
\rec_rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_rx_buf[6]~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_rx_buf(6));

-- Location: LCCOMB_X29_Y2_N12
\rec_rx_data[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_data[6]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_3~0clkctrl_outclk\) & ((rec_rx_buf(6)))) # (!GLOBAL(\process_3~0clkctrl_outclk\) & (\rec_rx_data[6]$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_rx_data[6]$latch~combout\,
	datab => \reset_n~input_o\,
	datac => rec_rx_buf(6),
	datad => \process_3~0clkctrl_outclk\,
	combout => \rec_rx_data[6]$latch~combout\);

-- Location: LCCOMB_X29_Y2_N14
\rec_rx_buf[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_buf[7]~7_combout\ = (\rec_wr_add~q\ & (((rec_rx_buf(7))))) # (!\rec_wr_add~q\ & ((rec_bit_cnt(9) & (\rec_mosi~input_o\)) # (!rec_bit_cnt(9) & ((rec_rx_buf(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_wr_add~q\,
	datac => rec_rx_buf(7),
	datad => rec_bit_cnt(9),
	combout => \rec_rx_buf[7]~7_combout\);

-- Location: FF_X29_Y2_N15
\rec_rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_rx_buf[7]~7_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rec_rx_buf(7));

-- Location: LCCOMB_X29_Y2_N30
\rec_rx_data[7]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_rx_data[7]$latch~combout\ = (\reset_n~input_o\ & ((GLOBAL(\process_3~0clkctrl_outclk\) & (rec_rx_buf(7))) # (!GLOBAL(\process_3~0clkctrl_outclk\) & ((\rec_rx_data[7]$latch~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rec_rx_buf(7),
	datab => \reset_n~input_o\,
	datac => \rec_rx_data[7]$latch~combout\,
	datad => \process_3~0clkctrl_outclk\,
	combout => \rec_rx_data[7]$latch~combout\);

ww_ecg_trdy <= \ecg_trdy~output_o\;

ww_ecg_rrdy <= \ecg_rrdy~output_o\;

ww_ecg_roe <= \ecg_roe~output_o\;

ww_ecg_busy <= \ecg_busy~output_o\;

ww_ecg_miso <= \ecg_miso~output_o\;

ww_rec_trdy <= \rec_trdy~output_o\;

ww_rec_rrdy <= \rec_rrdy~output_o\;

ww_rec_roe <= \rec_roe~output_o\;

ww_rec_rx_data(0) <= \rec_rx_data[0]~output_o\;

ww_rec_rx_data(1) <= \rec_rx_data[1]~output_o\;

ww_rec_rx_data(2) <= \rec_rx_data[2]~output_o\;

ww_rec_rx_data(3) <= \rec_rx_data[3]~output_o\;

ww_rec_rx_data(4) <= \rec_rx_data[4]~output_o\;

ww_rec_rx_data(5) <= \rec_rx_data[5]~output_o\;

ww_rec_rx_data(6) <= \rec_rx_data[6]~output_o\;

ww_rec_rx_data(7) <= \rec_rx_data[7]~output_o\;

ww_rec_busy <= \rec_busy~output_o\;

ww_rec_miso <= \rec_miso~output_o\;
END structure;


