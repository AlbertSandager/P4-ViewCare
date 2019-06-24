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

-- DATE "05/09/2019 12:08:03"

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

ENTITY 	top IS
    PORT (
	ecg_sclk : IN std_logic;
	ecg_ss_n : IN std_logic;
	ecg_mosi : IN std_logic;
	ecg_rx_req : IN std_logic;
	ecg_st_load_en : IN std_logic;
	ecg_st_load_trdy : IN std_logic;
	ecg_st_load_rrdy : IN std_logic;
	ecg_st_load_roe : IN std_logic;
	ecg_tx_load_en : IN std_logic;
	ecg_tx_load_data : IN std_logic_vector(7 DOWNTO 0);
	ecg_trdy : BUFFER std_logic;
	ecg_rrdy : BUFFER std_logic;
	ecg_roe : BUFFER std_logic;
	ecg_busy : BUFFER std_logic;
	ecg_miso : BUFFER std_logic;
	rec_sclk : IN std_logic;
	rec_ss_n : IN std_logic;
	rec_mosi : IN std_logic;
	rec_rx_req : IN std_logic;
	rec_st_load_en : IN std_logic;
	rec_st_load_trdy : IN std_logic;
	rec_st_load_rrdy : IN std_logic;
	rec_st_load_roe : IN std_logic;
	rec_tx_load_en : IN std_logic;
	rec_trdy : BUFFER std_logic;
	rec_rrdy : BUFFER std_logic;
	rec_roe : BUFFER std_logic;
	rec_rx_data : BUFFER std_logic_vector(7 DOWNTO 0);
	rec_busy : BUFFER std_logic;
	rec_miso : BUFFER std_logic;
	rec_selectpins : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- ecg_st_load_en	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_trdy	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_rrdy	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_roe	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_busy	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_miso	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_en	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_trdy	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rrdy	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_roe	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[5]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_busy	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_miso	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_selectpins[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_selectpins[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_ss_n	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_ss_n	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_req	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_mosi	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_sclk	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_mosi	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_sclk	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_en	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_trdy	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_rx_req	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_rrdy	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_roe	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_tx_load_en	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_trdy	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_rrdy	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_roe	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[7]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[6]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ecg_sclk : std_logic;
SIGNAL ww_ecg_ss_n : std_logic;
SIGNAL ww_ecg_mosi : std_logic;
SIGNAL ww_ecg_rx_req : std_logic;
SIGNAL ww_ecg_st_load_en : std_logic;
SIGNAL ww_ecg_st_load_trdy : std_logic;
SIGNAL ww_ecg_st_load_rrdy : std_logic;
SIGNAL ww_ecg_st_load_roe : std_logic;
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
SIGNAL ww_rec_st_load_trdy : std_logic;
SIGNAL ww_rec_st_load_rrdy : std_logic;
SIGNAL ww_rec_st_load_roe : std_logic;
SIGNAL ww_rec_tx_load_en : std_logic;
SIGNAL ww_rec_trdy : std_logic;
SIGNAL ww_rec_rrdy : std_logic;
SIGNAL ww_rec_roe : std_logic;
SIGNAL ww_rec_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rec_busy : std_logic;
SIGNAL ww_rec_miso : std_logic;
SIGNAL ww_rec_selectpins : std_logic_vector(1 DOWNTO 0);
SIGNAL \ecg_spi|process_1~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ecg_spi|process_1~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rec_spi|process_1~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rec_spi|process_1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ecg_st_load_en~input_o\ : std_logic;
SIGNAL \rec_st_load_en~input_o\ : std_logic;
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
SIGNAL \rec_selectpins[0]~output_o\ : std_logic;
SIGNAL \rec_selectpins[1]~output_o\ : std_logic;
SIGNAL \ecg_sclk~input_o\ : std_logic;
SIGNAL \ecg_spi|bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \ecg_ss_n~input_o\ : std_logic;
SIGNAL \ecg_spi|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \ecg_mosi~input_o\ : std_logic;
SIGNAL \ecg_spi|rd_add~0_combout\ : std_logic;
SIGNAL \ecg_spi|rd_add~q\ : std_logic;
SIGNAL \ecg_tx_load_data[7]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[6]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[3]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[2]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_en~input_o\ : std_logic;
SIGNAL \ecg_spi|process_1~1_combout\ : std_logic;
SIGNAL \ecg_spi|process_1~1clkctrl_outclk\ : std_logic;
SIGNAL \ecg_spi|tx_buf[2]~21_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[0]~input_o\ : std_logic;
SIGNAL \ecg_spi|tx_buf[0]~29_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[0]~31_combout\ : std_logic;
SIGNAL \ecg_spi|bit_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi|process_1~7_combout\ : std_logic;
SIGNAL \ecg_spi|bit_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi|bit_cnt[8]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi|bit_cnt[11]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi|bit_cnt[12]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi|bit_cnt[13]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi|bit_cnt[14]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi|bit_cnt[16]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi|process_1~6_combout\ : std_logic;
SIGNAL \ecg_spi|process_1~8_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi|tx_buf[0]~30_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[1]~input_o\ : std_logic;
SIGNAL \ecg_spi|tx_buf[1]~25_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[1]~27_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi|tx_buf[1]~26_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[2]~23_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi|tx_buf[2]~22_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[3]~17_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[3]~19_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi|tx_buf[3]~18_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[4]~input_o\ : std_logic;
SIGNAL \ecg_spi|tx_buf[4]~13_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[4]~15_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi|tx_buf[4]~14_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[5]~input_o\ : std_logic;
SIGNAL \ecg_spi|tx_buf[5]~9_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[5]~11_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi|tx_buf[5]~10_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[6]~5_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[6]~7_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi|tx_buf[6]~6_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[7]~1_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[7]~3_combout\ : std_logic;
SIGNAL \ecg_spi|tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi|tx_buf[7]~2_combout\ : std_logic;
SIGNAL \ecg_st_load_trdy~input_o\ : std_logic;
SIGNAL \ecg_spi|process_1~2_combout\ : std_logic;
SIGNAL \ecg_spi|trdy~1_combout\ : std_logic;
SIGNAL \ecg_spi|wr_add~0_combout\ : std_logic;
SIGNAL \ecg_spi|wr_add~feeder_combout\ : std_logic;
SIGNAL \ecg_spi|wr_add~q\ : std_logic;
SIGNAL \ecg_spi|process_1~0_combout\ : std_logic;
SIGNAL \ecg_spi|trdy~7_combout\ : std_logic;
SIGNAL \ecg_spi|trdy~3_combout\ : std_logic;
SIGNAL \ecg_spi|trdy~0_combout\ : std_logic;
SIGNAL \ecg_spi|trdy~_emulated_q\ : std_logic;
SIGNAL \ecg_spi|trdy~2_combout\ : std_logic;
SIGNAL \ecg_st_load_rrdy~input_o\ : std_logic;
SIGNAL \ecg_rx_req~input_o\ : std_logic;
SIGNAL \ecg_spi|process_1~4_combout\ : std_logic;
SIGNAL \ecg_spi|rrdy~1_combout\ : std_logic;
SIGNAL \ecg_spi|rrdy~6_combout\ : std_logic;
SIGNAL \ecg_spi|process_1~3_combout\ : std_logic;
SIGNAL \ecg_spi|rrdy~3_combout\ : std_logic;
SIGNAL \ecg_spi|rrdy~0_combout\ : std_logic;
SIGNAL \ecg_spi|rrdy~_emulated_q\ : std_logic;
SIGNAL \ecg_spi|rrdy~2_combout\ : std_logic;
SIGNAL \ecg_st_load_roe~input_o\ : std_logic;
SIGNAL \ecg_spi|process_1~5_combout\ : std_logic;
SIGNAL \ecg_spi|roe~1_combout\ : std_logic;
SIGNAL \ecg_spi|roe~6_combout\ : std_logic;
SIGNAL \ecg_spi|roe~7_combout\ : std_logic;
SIGNAL \ecg_spi|roe~3_combout\ : std_logic;
SIGNAL \ecg_spi|roe~0_combout\ : std_logic;
SIGNAL \ecg_spi|roe~_emulated_q\ : std_logic;
SIGNAL \ecg_spi|roe~2_combout\ : std_logic;
SIGNAL \ecg_spi|miso~0_combout\ : std_logic;
SIGNAL \ecg_spi|miso~1_combout\ : std_logic;
SIGNAL \ecg_spi|miso~2_combout\ : std_logic;
SIGNAL \ecg_spi|miso~3_combout\ : std_logic;
SIGNAL \ecg_spi|miso~4_combout\ : std_logic;
SIGNAL \ecg_spi|miso~reg0_q\ : std_logic;
SIGNAL \ecg_spi|miso~enfeeder_combout\ : std_logic;
SIGNAL \ecg_spi|miso~en_q\ : std_logic;
SIGNAL \rec_sclk~input_o\ : std_logic;
SIGNAL \rec_mosi~input_o\ : std_logic;
SIGNAL \rec_spi|bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \rec_ss_n~input_o\ : std_logic;
SIGNAL \rec_spi|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \rec_spi|rd_add~0_combout\ : std_logic;
SIGNAL \rec_spi|rd_add~feeder_combout\ : std_logic;
SIGNAL \rec_spi|rd_add~q\ : std_logic;
SIGNAL \rec_spi|bit_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \rec_st_load_trdy~input_o\ : std_logic;
SIGNAL \rec_tx_load_en~input_o\ : std_logic;
SIGNAL \rec_spi|process_1~2_combout\ : std_logic;
SIGNAL \rec_spi|process_1~3_combout\ : std_logic;
SIGNAL \rec_spi|trdy~1_combout\ : std_logic;
SIGNAL \rec_spi|wr_add~0_combout\ : std_logic;
SIGNAL \rec_spi|wr_add~q\ : std_logic;
SIGNAL \rec_spi|process_1~1_combout\ : std_logic;
SIGNAL \rec_spi|bit_cnt[15]~feeder_combout\ : std_logic;
SIGNAL \rec_spi|trdy~7_combout\ : std_logic;
SIGNAL \rec_spi|trdy~3_combout\ : std_logic;
SIGNAL \rec_spi|trdy~0_combout\ : std_logic;
SIGNAL \rec_spi|trdy~_emulated_q\ : std_logic;
SIGNAL \rec_spi|trdy~2_combout\ : std_logic;
SIGNAL \rec_st_load_rrdy~input_o\ : std_logic;
SIGNAL \rec_rx_req~input_o\ : std_logic;
SIGNAL \rec_spi|process_1~5_combout\ : std_logic;
SIGNAL \rec_spi|rrdy~1_combout\ : std_logic;
SIGNAL \rec_spi|process_1~4_combout\ : std_logic;
SIGNAL \rec_spi|rrdy~6_combout\ : std_logic;
SIGNAL \rec_spi|rrdy~3_combout\ : std_logic;
SIGNAL \rec_spi|rrdy~0_combout\ : std_logic;
SIGNAL \rec_spi|rrdy~_emulated_q\ : std_logic;
SIGNAL \rec_spi|rrdy~2_combout\ : std_logic;
SIGNAL \rec_st_load_roe~input_o\ : std_logic;
SIGNAL \rec_spi|process_1~7_combout\ : std_logic;
SIGNAL \rec_spi|roe~1_combout\ : std_logic;
SIGNAL \rec_spi|roe~7_combout\ : std_logic;
SIGNAL \rec_spi|roe~6_combout\ : std_logic;
SIGNAL \rec_spi|process_1~6_combout\ : std_logic;
SIGNAL \rec_spi|roe~3_combout\ : std_logic;
SIGNAL \rec_spi|roe~0_combout\ : std_logic;
SIGNAL \rec_spi|roe~_emulated_q\ : std_logic;
SIGNAL \rec_spi|roe~2_combout\ : std_logic;
SIGNAL \rec_spi|miso~0_combout\ : std_logic;
SIGNAL \rec_spi|miso~1_combout\ : std_logic;
SIGNAL \ecg_spi|rx_buf[6]~1_combout\ : std_logic;
SIGNAL \ecg_spi|process_1~9_combout\ : std_logic;
SIGNAL \ecg_spi|process_1~9clkctrl_outclk\ : std_logic;
SIGNAL \rec_spi|process_1~2clkctrl_outclk\ : std_logic;
SIGNAL \rec_spi|tx_buf[6]~5_combout\ : std_logic;
SIGNAL \ecg_spi|rx_buf[5]~2_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[5]~9_combout\ : std_logic;
SIGNAL \ecg_spi|rx_buf[4]~3_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[4]~13_combout\ : std_logic;
SIGNAL \ecg_spi|rx_buf[3]~4_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[3]~17_combout\ : std_logic;
SIGNAL \ecg_spi|rx_buf[2]~5_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[2]~21_combout\ : std_logic;
SIGNAL \ecg_spi|rx_buf[1]~6_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[1]~25_combout\ : std_logic;
SIGNAL \ecg_spi|rx_buf[0]~7_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[0]~29_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[0]~31_combout\ : std_logic;
SIGNAL \rec_spi|process_1~8_combout\ : std_logic;
SIGNAL \rec_spi|process_1~9_combout\ : std_logic;
SIGNAL \rec_spi|process_1~10_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \rec_spi|tx_buf[0]~30_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[1]~27_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \rec_spi|tx_buf[1]~26_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[2]~23_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \rec_spi|tx_buf[2]~22_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[3]~19_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \rec_spi|tx_buf[3]~18_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[4]~15_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \rec_spi|tx_buf[4]~14_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[5]~11_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \rec_spi|tx_buf[5]~10_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[6]~7_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \rec_spi|tx_buf[6]~6_combout\ : std_logic;
SIGNAL \ecg_spi|rx_buf[7]~0_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[7]~1_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[7]~3_combout\ : std_logic;
SIGNAL \rec_spi|tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \rec_spi|tx_buf[7]~2_combout\ : std_logic;
SIGNAL \rec_spi|miso~2_combout\ : std_logic;
SIGNAL \rec_spi|miso~3_combout\ : std_logic;
SIGNAL \rec_spi|miso~4_combout\ : std_logic;
SIGNAL \rec_spi|miso~reg0_q\ : std_logic;
SIGNAL \rec_spi|miso~enfeeder_combout\ : std_logic;
SIGNAL \rec_spi|miso~en_q\ : std_logic;
SIGNAL \rec_spi|rx_buf[0]~0_combout\ : std_logic;
SIGNAL \rec_spi|process_1~0_combout\ : std_logic;
SIGNAL \rec_spi|process_1~0clkctrl_outclk\ : std_logic;
SIGNAL \rec_spi|rx_buf[1]~1_combout\ : std_logic;
SIGNAL \rec_spi|rx_buf[2]~2_combout\ : std_logic;
SIGNAL \rec_spi|rx_buf[3]~3_combout\ : std_logic;
SIGNAL \rec_spi|rx_buf[4]~4_combout\ : std_logic;
SIGNAL \rec_spi|rx_buf[5]~5_combout\ : std_logic;
SIGNAL \rec_spi|rx_buf[6]~6_combout\ : std_logic;
SIGNAL \rec_spi|rx_buf[7]~7_combout\ : std_logic;
SIGNAL \rec_spi|sel[0]~0_combout\ : std_logic;
SIGNAL \rec_spi|sel[1]~1_combout\ : std_logic;
SIGNAL \rec_spi|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rec_spi|rx_buf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rec_spi|sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rec_spi|bit_cnt\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \ecg_spi|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ecg_spi|rx_buf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ecg_spi|bit_cnt\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \rec_spi|ALT_INV_process_1~2clkctrl_outclk\ : std_logic;
SIGNAL \ecg_spi|ALT_INV_process_1~1clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_ecg_sclk~input_o\ : std_logic;
SIGNAL \ALT_INV_rec_sclk~input_o\ : std_logic;
SIGNAL \ALT_INV_rec_ss_n~input_o\ : std_logic;
SIGNAL \ALT_INV_ecg_ss_n~input_o\ : std_logic;
SIGNAL \rec_spi|ALT_INV_roe~0_combout\ : std_logic;
SIGNAL \rec_spi|ALT_INV_rrdy~0_combout\ : std_logic;
SIGNAL \rec_spi|ALT_INV_trdy~0_combout\ : std_logic;
SIGNAL \ecg_spi|ALT_INV_roe~0_combout\ : std_logic;
SIGNAL \ecg_spi|ALT_INV_rrdy~0_combout\ : std_logic;
SIGNAL \ecg_spi|ALT_INV_trdy~0_combout\ : std_logic;

BEGIN

ww_ecg_sclk <= ecg_sclk;
ww_ecg_ss_n <= ecg_ss_n;
ww_ecg_mosi <= ecg_mosi;
ww_ecg_rx_req <= ecg_rx_req;
ww_ecg_st_load_en <= ecg_st_load_en;
ww_ecg_st_load_trdy <= ecg_st_load_trdy;
ww_ecg_st_load_rrdy <= ecg_st_load_rrdy;
ww_ecg_st_load_roe <= ecg_st_load_roe;
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
ww_rec_st_load_trdy <= rec_st_load_trdy;
ww_rec_st_load_rrdy <= rec_st_load_rrdy;
ww_rec_st_load_roe <= rec_st_load_roe;
ww_rec_tx_load_en <= rec_tx_load_en;
rec_trdy <= ww_rec_trdy;
rec_rrdy <= ww_rec_rrdy;
rec_roe <= ww_rec_roe;
rec_rx_data <= ww_rec_rx_data;
rec_busy <= ww_rec_busy;
rec_miso <= ww_rec_miso;
rec_selectpins <= ww_rec_selectpins;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ecg_spi|process_1~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ecg_spi|process_1~9_combout\);

\ecg_spi|process_1~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ecg_spi|process_1~1_combout\);

\rec_spi|process_1~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rec_spi|process_1~2_combout\);

\rec_spi|process_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rec_spi|process_1~0_combout\);
\rec_spi|ALT_INV_process_1~2clkctrl_outclk\ <= NOT \rec_spi|process_1~2clkctrl_outclk\;
\ecg_spi|ALT_INV_process_1~1clkctrl_outclk\ <= NOT \ecg_spi|process_1~1clkctrl_outclk\;
\ALT_INV_ecg_sclk~input_o\ <= NOT \ecg_sclk~input_o\;
\ALT_INV_rec_sclk~input_o\ <= NOT \rec_sclk~input_o\;
\ALT_INV_rec_ss_n~input_o\ <= NOT \rec_ss_n~input_o\;
\ALT_INV_ecg_ss_n~input_o\ <= NOT \ecg_ss_n~input_o\;
\rec_spi|ALT_INV_roe~0_combout\ <= NOT \rec_spi|roe~0_combout\;
\rec_spi|ALT_INV_rrdy~0_combout\ <= NOT \rec_spi|rrdy~0_combout\;
\rec_spi|ALT_INV_trdy~0_combout\ <= NOT \rec_spi|trdy~0_combout\;
\ecg_spi|ALT_INV_roe~0_combout\ <= NOT \ecg_spi|roe~0_combout\;
\ecg_spi|ALT_INV_rrdy~0_combout\ <= NOT \ecg_spi|rrdy~0_combout\;
\ecg_spi|ALT_INV_trdy~0_combout\ <= NOT \ecg_spi|trdy~0_combout\;

-- Location: IOOBUF_X32_Y0_N16
\ecg_miso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ecg_spi|miso~reg0_q\,
	oe => \ecg_spi|miso~en_q\,
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
	i => \rec_spi|miso~reg0_q\,
	oe => \rec_spi|miso~en_q\,
	devoe => ww_devoe,
	o => \rec_miso~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\ecg_trdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ecg_spi|trdy~2_combout\,
	devoe => ww_devoe,
	o => \ecg_trdy~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ecg_rrdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ecg_spi|rrdy~2_combout\,
	devoe => ww_devoe,
	o => \ecg_rrdy~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\ecg_roe~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ecg_spi|roe~2_combout\,
	devoe => ww_devoe,
	o => \ecg_roe~output_o\);

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X35_Y0_N23
\rec_trdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|trdy~2_combout\,
	devoe => ww_devoe,
	o => \rec_trdy~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\rec_rrdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|rrdy~2_combout\,
	devoe => ww_devoe,
	o => \rec_rrdy~output_o\);

-- Location: IOOBUF_X41_Y3_N2
\rec_roe~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|roe~2_combout\,
	devoe => ww_devoe,
	o => \rec_roe~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\rec_rx_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|rx_data\(0),
	devoe => ww_devoe,
	o => \rec_rx_data[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\rec_rx_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|rx_data\(1),
	devoe => ww_devoe,
	o => \rec_rx_data[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\rec_rx_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|rx_data\(2),
	devoe => ww_devoe,
	o => \rec_rx_data[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\rec_rx_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|rx_data\(3),
	devoe => ww_devoe,
	o => \rec_rx_data[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\rec_rx_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|rx_data\(4),
	devoe => ww_devoe,
	o => \rec_rx_data[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\rec_rx_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|rx_data\(5),
	devoe => ww_devoe,
	o => \rec_rx_data[5]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\rec_rx_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|rx_data\(6),
	devoe => ww_devoe,
	o => \rec_rx_data[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\rec_rx_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|rx_data\(7),
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

-- Location: IOOBUF_X7_Y0_N16
\rec_selectpins[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|sel\(0),
	devoe => ww_devoe,
	o => \rec_selectpins[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\rec_selectpins[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi|sel\(1),
	devoe => ww_devoe,
	o => \rec_selectpins[1]~output_o\);

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

-- Location: LCCOMB_X27_Y2_N24
\ecg_spi|bit_cnt[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|bit_cnt[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \ecg_spi|bit_cnt[1]~feeder_combout\);

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

-- Location: FF_X27_Y2_N25
\ecg_spi|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|bit_cnt[1]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(1));

-- Location: LCCOMB_X27_Y2_N12
\ecg_spi|bit_cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|bit_cnt[2]~0_combout\ = !\ecg_spi|bit_cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi|bit_cnt\(1),
	combout => \ecg_spi|bit_cnt[2]~0_combout\);

-- Location: FF_X27_Y2_N13
\ecg_spi|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|bit_cnt[2]~0_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(2));

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

-- Location: LCCOMB_X24_Y1_N0
\ecg_spi|rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rd_add~0_combout\ = (\ecg_spi|bit_cnt\(2) & (\ecg_mosi~input_o\)) # (!\ecg_spi|bit_cnt\(2) & ((\ecg_spi|rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|bit_cnt\(2),
	datab => \ecg_mosi~input_o\,
	datac => \ecg_spi|rd_add~q\,
	combout => \ecg_spi|rd_add~0_combout\);

-- Location: FF_X24_Y1_N1
\ecg_spi|rd_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|rd_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|rd_add~q\);

-- Location: IOIBUF_X19_Y0_N29
\ecg_tx_load_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(7),
	o => \ecg_tx_load_data[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
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
\ecg_tx_load_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(3),
	o => \ecg_tx_load_data[3]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\ecg_tx_load_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(2),
	o => \ecg_tx_load_data[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\ecg_tx_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_en,
	o => \ecg_tx_load_en~input_o\);

-- Location: LCCOMB_X27_Y1_N2
\ecg_spi|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|process_1~1_combout\ = (\ecg_tx_load_en~input_o\ & \ecg_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_tx_load_en~input_o\,
	datad => \ecg_ss_n~input_o\,
	combout => \ecg_spi|process_1~1_combout\);

-- Location: CLKCTRL_G17
\ecg_spi|process_1~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ecg_spi|process_1~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ecg_spi|process_1~1clkctrl_outclk\);

-- Location: LCCOMB_X24_Y1_N30
\ecg_spi|tx_buf[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[2]~21_combout\ = (GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[2]~input_o\)) # (!GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & ((\ecg_spi|tx_buf[2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_load_data[2]~input_o\,
	datac => \ecg_spi|tx_buf[2]~21_combout\,
	datad => \ecg_spi|process_1~1clkctrl_outclk\,
	combout => \ecg_spi|tx_buf[2]~21_combout\);

-- Location: IOIBUF_X19_Y0_N1
\ecg_tx_load_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(0),
	o => \ecg_tx_load_data[0]~input_o\);

-- Location: LCCOMB_X23_Y1_N10
\ecg_spi|tx_buf[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[0]~29_combout\ = (GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & ((\ecg_tx_load_data[0]~input_o\))) # (!GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & (\ecg_spi|tx_buf[0]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|tx_buf[0]~29_combout\,
	datab => \ecg_tx_load_data[0]~input_o\,
	datad => \ecg_spi|process_1~1clkctrl_outclk\,
	combout => \ecg_spi|tx_buf[0]~29_combout\);

-- Location: LCCOMB_X23_Y1_N20
\ecg_spi|tx_buf[0]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[0]~31_combout\ = \ecg_spi|tx_buf[7]~2_combout\ $ (\ecg_spi|tx_buf[0]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|tx_buf[7]~2_combout\,
	datad => \ecg_spi|tx_buf[0]~29_combout\,
	combout => \ecg_spi|tx_buf[0]~31_combout\);

-- Location: LCCOMB_X27_Y2_N26
\ecg_spi|bit_cnt[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|bit_cnt[3]~feeder_combout\ = \ecg_spi|bit_cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi|bit_cnt\(2),
	combout => \ecg_spi|bit_cnt[3]~feeder_combout\);

-- Location: FF_X27_Y2_N27
\ecg_spi|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|bit_cnt[3]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(3));

-- Location: FF_X27_Y2_N31
\ecg_spi|bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi|bit_cnt\(3),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(4));

-- Location: LCCOMB_X27_Y2_N30
\ecg_spi|process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|process_1~7_combout\ = (!\ecg_spi|bit_cnt\(3) & (\ecg_spi|bit_cnt\(1) & (!\ecg_spi|bit_cnt\(4) & !\ecg_spi|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|bit_cnt\(3),
	datab => \ecg_spi|bit_cnt\(1),
	datac => \ecg_spi|bit_cnt\(4),
	datad => \ecg_spi|bit_cnt\(2),
	combout => \ecg_spi|process_1~7_combout\);

-- Location: FF_X28_Y1_N27
\ecg_spi|bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi|bit_cnt\(4),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(5));

-- Location: FF_X28_Y1_N17
\ecg_spi|bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi|bit_cnt\(5),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(6));

-- Location: LCCOMB_X27_Y2_N6
\ecg_spi|bit_cnt[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|bit_cnt[7]~feeder_combout\ = \ecg_spi|bit_cnt\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi|bit_cnt\(6),
	combout => \ecg_spi|bit_cnt[7]~feeder_combout\);

-- Location: FF_X27_Y2_N7
\ecg_spi|bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|bit_cnt[7]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(7));

-- Location: LCCOMB_X28_Y1_N22
\ecg_spi|bit_cnt[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|bit_cnt[8]~feeder_combout\ = \ecg_spi|bit_cnt\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi|bit_cnt\(7),
	combout => \ecg_spi|bit_cnt[8]~feeder_combout\);

-- Location: FF_X28_Y1_N23
\ecg_spi|bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|bit_cnt[8]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(8));

-- Location: FF_X28_Y1_N19
\ecg_spi|bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi|bit_cnt\(8),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(9));

-- Location: FF_X27_Y2_N19
\ecg_spi|bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi|bit_cnt\(9),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(10));

-- Location: LCCOMB_X28_Y1_N0
\ecg_spi|bit_cnt[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|bit_cnt[11]~feeder_combout\ = \ecg_spi|bit_cnt\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi|bit_cnt\(10),
	combout => \ecg_spi|bit_cnt[11]~feeder_combout\);

-- Location: FF_X28_Y1_N1
\ecg_spi|bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|bit_cnt[11]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(11));

-- Location: LCCOMB_X27_Y2_N28
\ecg_spi|bit_cnt[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|bit_cnt[12]~feeder_combout\ = \ecg_spi|bit_cnt\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi|bit_cnt\(11),
	combout => \ecg_spi|bit_cnt[12]~feeder_combout\);

-- Location: FF_X27_Y2_N29
\ecg_spi|bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|bit_cnt[12]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(12));

-- Location: LCCOMB_X27_Y2_N16
\ecg_spi|bit_cnt[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|bit_cnt[13]~feeder_combout\ = \ecg_spi|bit_cnt\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi|bit_cnt\(12),
	combout => \ecg_spi|bit_cnt[13]~feeder_combout\);

-- Location: FF_X27_Y2_N17
\ecg_spi|bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|bit_cnt[13]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(13));

-- Location: LCCOMB_X27_Y2_N8
\ecg_spi|bit_cnt[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|bit_cnt[14]~feeder_combout\ = \ecg_spi|bit_cnt\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi|bit_cnt\(13),
	combout => \ecg_spi|bit_cnt[14]~feeder_combout\);

-- Location: FF_X27_Y2_N9
\ecg_spi|bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|bit_cnt[14]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(14));

-- Location: FF_X27_Y2_N3
\ecg_spi|bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi|bit_cnt\(14),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(15));

-- Location: LCCOMB_X28_Y1_N30
\ecg_spi|bit_cnt[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|bit_cnt[16]~feeder_combout\ = \ecg_spi|bit_cnt\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi|bit_cnt\(15),
	combout => \ecg_spi|bit_cnt[16]~feeder_combout\);

-- Location: FF_X28_Y1_N31
\ecg_spi|bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|bit_cnt[16]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|bit_cnt\(16));

-- Location: LCCOMB_X28_Y1_N26
\ecg_spi|process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|process_1~6_combout\ = (!\ecg_spi|bit_cnt\(16) & (!\ecg_spi|bit_cnt\(6) & (!\ecg_spi|bit_cnt\(5) & !\ecg_spi|bit_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|bit_cnt\(16),
	datab => \ecg_spi|bit_cnt\(6),
	datac => \ecg_spi|bit_cnt\(5),
	datad => \ecg_spi|bit_cnt\(7),
	combout => \ecg_spi|process_1~6_combout\);

-- Location: LCCOMB_X24_Y1_N6
\ecg_spi|process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|process_1~8_combout\ = (\ecg_spi|process_1~7_combout\ & (\ecg_spi|process_1~6_combout\ & !\ecg_spi|rd_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|process_1~7_combout\,
	datab => \ecg_spi|process_1~6_combout\,
	datad => \ecg_spi|rd_add~q\,
	combout => \ecg_spi|process_1~8_combout\);

-- Location: FF_X23_Y1_N21
\ecg_spi|tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|tx_buf[0]~31_combout\,
	clrn => \ecg_spi|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|tx_buf[0]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N26
\ecg_spi|tx_buf[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[0]~30_combout\ = (\ecg_spi|process_1~1_combout\ & (((\ecg_tx_load_data[0]~input_o\)))) # (!\ecg_spi|process_1~1_combout\ & (\ecg_spi|tx_buf[0]~_emulated_q\ $ (((\ecg_spi|tx_buf[0]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|tx_buf[0]~_emulated_q\,
	datab => \ecg_spi|process_1~1_combout\,
	datac => \ecg_tx_load_data[0]~input_o\,
	datad => \ecg_spi|tx_buf[0]~29_combout\,
	combout => \ecg_spi|tx_buf[0]~30_combout\);

-- Location: IOIBUF_X14_Y0_N1
\ecg_tx_load_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(1),
	o => \ecg_tx_load_data[1]~input_o\);

-- Location: LCCOMB_X24_Y1_N28
\ecg_spi|tx_buf[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[1]~25_combout\ = (GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[1]~input_o\)) # (!GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & ((\ecg_spi|tx_buf[1]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[1]~input_o\,
	datac => \ecg_spi|process_1~1clkctrl_outclk\,
	datad => \ecg_spi|tx_buf[1]~25_combout\,
	combout => \ecg_spi|tx_buf[1]~25_combout\);

-- Location: LCCOMB_X24_Y1_N4
\ecg_spi|tx_buf[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[1]~27_combout\ = \ecg_spi|tx_buf[0]~30_combout\ $ (\ecg_spi|tx_buf[1]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi|tx_buf[0]~30_combout\,
	datad => \ecg_spi|tx_buf[1]~25_combout\,
	combout => \ecg_spi|tx_buf[1]~27_combout\);

-- Location: FF_X24_Y1_N5
\ecg_spi|tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|tx_buf[1]~27_combout\,
	clrn => \ecg_spi|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|tx_buf[1]~_emulated_q\);

-- Location: LCCOMB_X24_Y1_N22
\ecg_spi|tx_buf[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[1]~26_combout\ = (\ecg_spi|process_1~1_combout\ & (((\ecg_tx_load_data[1]~input_o\)))) # (!\ecg_spi|process_1~1_combout\ & (\ecg_spi|tx_buf[1]~_emulated_q\ $ (((\ecg_spi|tx_buf[1]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|tx_buf[1]~_emulated_q\,
	datab => \ecg_tx_load_data[1]~input_o\,
	datac => \ecg_spi|process_1~1_combout\,
	datad => \ecg_spi|tx_buf[1]~25_combout\,
	combout => \ecg_spi|tx_buf[1]~26_combout\);

-- Location: LCCOMB_X24_Y1_N12
\ecg_spi|tx_buf[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[2]~23_combout\ = \ecg_spi|tx_buf[1]~26_combout\ $ (\ecg_spi|tx_buf[2]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|tx_buf[1]~26_combout\,
	datac => \ecg_spi|tx_buf[2]~21_combout\,
	combout => \ecg_spi|tx_buf[2]~23_combout\);

-- Location: FF_X24_Y1_N13
\ecg_spi|tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|tx_buf[2]~23_combout\,
	clrn => \ecg_spi|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|tx_buf[2]~_emulated_q\);

-- Location: LCCOMB_X24_Y1_N10
\ecg_spi|tx_buf[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[2]~22_combout\ = (\ecg_spi|process_1~1_combout\ & (\ecg_tx_load_data[2]~input_o\)) # (!\ecg_spi|process_1~1_combout\ & ((\ecg_spi|tx_buf[2]~21_combout\ $ (\ecg_spi|tx_buf[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[2]~input_o\,
	datab => \ecg_spi|process_1~1_combout\,
	datac => \ecg_spi|tx_buf[2]~21_combout\,
	datad => \ecg_spi|tx_buf[2]~_emulated_q\,
	combout => \ecg_spi|tx_buf[2]~22_combout\);

-- Location: LCCOMB_X23_Y1_N28
\ecg_spi|tx_buf[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[3]~17_combout\ = (GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[3]~input_o\)) # (!GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & ((\ecg_spi|tx_buf[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[3]~input_o\,
	datab => \ecg_spi|tx_buf[3]~17_combout\,
	datad => \ecg_spi|process_1~1clkctrl_outclk\,
	combout => \ecg_spi|tx_buf[3]~17_combout\);

-- Location: LCCOMB_X24_Y1_N18
\ecg_spi|tx_buf[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[3]~19_combout\ = \ecg_spi|tx_buf[2]~22_combout\ $ (\ecg_spi|tx_buf[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|tx_buf[2]~22_combout\,
	datad => \ecg_spi|tx_buf[3]~17_combout\,
	combout => \ecg_spi|tx_buf[3]~19_combout\);

-- Location: FF_X24_Y1_N19
\ecg_spi|tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|tx_buf[3]~19_combout\,
	clrn => \ecg_spi|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|tx_buf[3]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N30
\ecg_spi|tx_buf[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[3]~18_combout\ = (\ecg_spi|process_1~1_combout\ & (\ecg_tx_load_data[3]~input_o\)) # (!\ecg_spi|process_1~1_combout\ & ((\ecg_spi|tx_buf[3]~_emulated_q\ $ (\ecg_spi|tx_buf[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[3]~input_o\,
	datab => \ecg_spi|tx_buf[3]~_emulated_q\,
	datac => \ecg_spi|process_1~1_combout\,
	datad => \ecg_spi|tx_buf[3]~17_combout\,
	combout => \ecg_spi|tx_buf[3]~18_combout\);

-- Location: IOIBUF_X23_Y29_N29
\ecg_tx_load_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(4),
	o => \ecg_tx_load_data[4]~input_o\);

-- Location: LCCOMB_X23_Y1_N14
\ecg_spi|tx_buf[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[4]~13_combout\ = (GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[4]~input_o\)) # (!GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & ((\ecg_spi|tx_buf[4]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_load_data[4]~input_o\,
	datac => \ecg_spi|tx_buf[4]~13_combout\,
	datad => \ecg_spi|process_1~1clkctrl_outclk\,
	combout => \ecg_spi|tx_buf[4]~13_combout\);

-- Location: LCCOMB_X23_Y1_N22
\ecg_spi|tx_buf[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[4]~15_combout\ = \ecg_spi|tx_buf[3]~18_combout\ $ (\ecg_spi|tx_buf[4]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|tx_buf[3]~18_combout\,
	datac => \ecg_spi|tx_buf[4]~13_combout\,
	combout => \ecg_spi|tx_buf[4]~15_combout\);

-- Location: FF_X23_Y1_N23
\ecg_spi|tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|tx_buf[4]~15_combout\,
	clrn => \ecg_spi|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|tx_buf[4]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N16
\ecg_spi|tx_buf[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[4]~14_combout\ = (\ecg_spi|process_1~1_combout\ & (((\ecg_tx_load_data[4]~input_o\)))) # (!\ecg_spi|process_1~1_combout\ & (\ecg_spi|tx_buf[4]~_emulated_q\ $ ((\ecg_spi|tx_buf[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|tx_buf[4]~_emulated_q\,
	datab => \ecg_spi|process_1~1_combout\,
	datac => \ecg_spi|tx_buf[4]~13_combout\,
	datad => \ecg_tx_load_data[4]~input_o\,
	combout => \ecg_spi|tx_buf[4]~14_combout\);

-- Location: IOIBUF_X30_Y0_N8
\ecg_tx_load_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(5),
	o => \ecg_tx_load_data[5]~input_o\);

-- Location: LCCOMB_X27_Y1_N16
\ecg_spi|tx_buf[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[5]~9_combout\ = (GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & ((\ecg_tx_load_data[5]~input_o\))) # (!GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & (\ecg_spi|tx_buf[5]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi|tx_buf[5]~9_combout\,
	datac => \ecg_tx_load_data[5]~input_o\,
	datad => \ecg_spi|process_1~1clkctrl_outclk\,
	combout => \ecg_spi|tx_buf[5]~9_combout\);

-- Location: LCCOMB_X24_Y1_N20
\ecg_spi|tx_buf[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[5]~11_combout\ = \ecg_spi|tx_buf[4]~14_combout\ $ (\ecg_spi|tx_buf[5]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi|tx_buf[4]~14_combout\,
	datad => \ecg_spi|tx_buf[5]~9_combout\,
	combout => \ecg_spi|tx_buf[5]~11_combout\);

-- Location: FF_X24_Y1_N21
\ecg_spi|tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|tx_buf[5]~11_combout\,
	clrn => \ecg_spi|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|tx_buf[5]~_emulated_q\);

-- Location: LCCOMB_X27_Y1_N4
\ecg_spi|tx_buf[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[5]~10_combout\ = (\ecg_spi|process_1~1_combout\ & (((\ecg_tx_load_data[5]~input_o\)))) # (!\ecg_spi|process_1~1_combout\ & (\ecg_spi|tx_buf[5]~_emulated_q\ $ (((\ecg_spi|tx_buf[5]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|tx_buf[5]~_emulated_q\,
	datab => \ecg_tx_load_data[5]~input_o\,
	datac => \ecg_spi|process_1~1_combout\,
	datad => \ecg_spi|tx_buf[5]~9_combout\,
	combout => \ecg_spi|tx_buf[5]~10_combout\);

-- Location: LCCOMB_X24_Y1_N16
\ecg_spi|tx_buf[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[6]~5_combout\ = (GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[6]~input_o\)) # (!GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & ((\ecg_spi|tx_buf[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[6]~input_o\,
	datac => \ecg_spi|process_1~1clkctrl_outclk\,
	datad => \ecg_spi|tx_buf[6]~5_combout\,
	combout => \ecg_spi|tx_buf[6]~5_combout\);

-- Location: LCCOMB_X24_Y1_N8
\ecg_spi|tx_buf[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[6]~7_combout\ = \ecg_spi|tx_buf[5]~10_combout\ $ (\ecg_spi|tx_buf[6]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi|tx_buf[5]~10_combout\,
	datad => \ecg_spi|tx_buf[6]~5_combout\,
	combout => \ecg_spi|tx_buf[6]~7_combout\);

-- Location: FF_X24_Y1_N9
\ecg_spi|tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|tx_buf[6]~7_combout\,
	clrn => \ecg_spi|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|tx_buf[6]~_emulated_q\);

-- Location: LCCOMB_X24_Y1_N26
\ecg_spi|tx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[6]~6_combout\ = (\ecg_spi|process_1~1_combout\ & (\ecg_tx_load_data[6]~input_o\)) # (!\ecg_spi|process_1~1_combout\ & ((\ecg_spi|tx_buf[6]~_emulated_q\ $ (\ecg_spi|tx_buf[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[6]~input_o\,
	datab => \ecg_spi|tx_buf[6]~_emulated_q\,
	datac => \ecg_spi|process_1~1_combout\,
	datad => \ecg_spi|tx_buf[6]~5_combout\,
	combout => \ecg_spi|tx_buf[6]~6_combout\);

-- Location: LCCOMB_X23_Y1_N12
\ecg_spi|tx_buf[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[7]~1_combout\ = (GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[7]~input_o\)) # (!GLOBAL(\ecg_spi|process_1~1clkctrl_outclk\) & ((\ecg_spi|tx_buf[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[7]~input_o\,
	datac => \ecg_spi|tx_buf[7]~1_combout\,
	datad => \ecg_spi|process_1~1clkctrl_outclk\,
	combout => \ecg_spi|tx_buf[7]~1_combout\);

-- Location: LCCOMB_X24_Y1_N24
\ecg_spi|tx_buf[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[7]~3_combout\ = \ecg_spi|tx_buf[6]~6_combout\ $ (\ecg_spi|tx_buf[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|tx_buf[6]~6_combout\,
	datad => \ecg_spi|tx_buf[7]~1_combout\,
	combout => \ecg_spi|tx_buf[7]~3_combout\);

-- Location: FF_X24_Y1_N25
\ecg_spi|tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|tx_buf[7]~3_combout\,
	clrn => \ecg_spi|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|tx_buf[7]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N24
\ecg_spi|tx_buf[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|tx_buf[7]~2_combout\ = (\ecg_spi|process_1~1_combout\ & (\ecg_tx_load_data[7]~input_o\)) # (!\ecg_spi|process_1~1_combout\ & ((\ecg_spi|tx_buf[7]~_emulated_q\ $ (\ecg_spi|tx_buf[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[7]~input_o\,
	datab => \ecg_spi|tx_buf[7]~_emulated_q\,
	datac => \ecg_spi|process_1~1_combout\,
	datad => \ecg_spi|tx_buf[7]~1_combout\,
	combout => \ecg_spi|tx_buf[7]~2_combout\);

-- Location: IOIBUF_X21_Y0_N29
\ecg_st_load_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_trdy,
	o => \ecg_st_load_trdy~input_o\);

-- Location: LCCOMB_X26_Y1_N0
\ecg_spi|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|process_1~2_combout\ = (!\ecg_st_load_trdy~input_o\ & \ecg_spi|process_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_st_load_trdy~input_o\,
	datad => \ecg_spi|process_1~1_combout\,
	combout => \ecg_spi|process_1~2_combout\);

-- Location: LCCOMB_X26_Y1_N30
\ecg_spi|trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|trdy~1_combout\ = (!\ecg_spi|process_1~2_combout\ & ((\ecg_spi|process_1~1_combout\) # (\ecg_spi|trdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|process_1~1_combout\,
	datac => \ecg_spi|process_1~2_combout\,
	datad => \ecg_spi|trdy~1_combout\,
	combout => \ecg_spi|trdy~1_combout\);

-- Location: LCCOMB_X27_Y2_N18
\ecg_spi|wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|wr_add~0_combout\ = (\ecg_spi|bit_cnt\(1) & ((\ecg_spi|wr_add~q\))) # (!\ecg_spi|bit_cnt\(1) & (\ecg_mosi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_spi|wr_add~q\,
	datad => \ecg_spi|bit_cnt\(1),
	combout => \ecg_spi|wr_add~0_combout\);

-- Location: LCCOMB_X26_Y2_N12
\ecg_spi|wr_add~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|wr_add~feeder_combout\ = \ecg_spi|wr_add~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi|wr_add~0_combout\,
	combout => \ecg_spi|wr_add~feeder_combout\);

-- Location: FF_X26_Y2_N13
\ecg_spi|wr_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|wr_add~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|wr_add~q\);

-- Location: LCCOMB_X28_Y1_N20
\ecg_spi|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|process_1~0_combout\ = (\ecg_spi|wr_add~q\ & \ecg_spi|bit_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi|wr_add~q\,
	datad => \ecg_spi|bit_cnt\(9),
	combout => \ecg_spi|process_1~0_combout\);

-- Location: LCCOMB_X26_Y1_N28
\ecg_spi|trdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|trdy~7_combout\ = (!\ecg_spi|process_1~0_combout\ & (\ecg_spi|trdy~2_combout\ & ((\ecg_spi|rd_add~q\) # (!\ecg_spi|bit_cnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|rd_add~q\,
	datab => \ecg_spi|bit_cnt\(16),
	datac => \ecg_spi|process_1~0_combout\,
	datad => \ecg_spi|trdy~2_combout\,
	combout => \ecg_spi|trdy~7_combout\);

-- Location: LCCOMB_X26_Y1_N8
\ecg_spi|trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|trdy~3_combout\ = \ecg_spi|trdy~1_combout\ $ (((\ecg_spi|trdy~7_combout\) # ((\ecg_mosi~input_o\ & \ecg_spi|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_spi|trdy~1_combout\,
	datac => \ecg_spi|process_1~0_combout\,
	datad => \ecg_spi|trdy~7_combout\,
	combout => \ecg_spi|trdy~3_combout\);

-- Location: LCCOMB_X26_Y1_N18
\ecg_spi|trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|trdy~0_combout\ = (\ecg_spi|process_1~1_combout\) # (\ecg_spi|process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|process_1~1_combout\,
	datad => \ecg_spi|process_1~2_combout\,
	combout => \ecg_spi|trdy~0_combout\);

-- Location: FF_X26_Y1_N9
\ecg_spi|trdy~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|trdy~3_combout\,
	clrn => \ecg_spi|ALT_INV_trdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|trdy~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N6
\ecg_spi|trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|trdy~2_combout\ = (!\ecg_spi|process_1~2_combout\ & ((\ecg_spi|process_1~1_combout\) # (\ecg_spi|trdy~1_combout\ $ (\ecg_spi|trdy~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|process_1~1_combout\,
	datab => \ecg_spi|trdy~1_combout\,
	datac => \ecg_spi|trdy~_emulated_q\,
	datad => \ecg_spi|process_1~2_combout\,
	combout => \ecg_spi|trdy~2_combout\);

-- Location: IOIBUF_X26_Y0_N22
\ecg_st_load_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_rrdy,
	o => \ecg_st_load_rrdy~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\ecg_rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_rx_req,
	o => \ecg_rx_req~input_o\);

-- Location: LCCOMB_X27_Y1_N8
\ecg_spi|process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|process_1~4_combout\ = (\ecg_ss_n~input_o\ & ((\ecg_rx_req~input_o\) # ((!\ecg_st_load_rrdy~input_o\ & \ecg_tx_load_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_st_load_rrdy~input_o\,
	datab => \ecg_rx_req~input_o\,
	datac => \ecg_tx_load_en~input_o\,
	datad => \ecg_ss_n~input_o\,
	combout => \ecg_spi|process_1~4_combout\);

-- Location: LCCOMB_X27_Y1_N30
\ecg_spi|rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rrdy~1_combout\ = (!\ecg_spi|process_1~4_combout\ & ((\ecg_spi|process_1~1_combout\) # (\ecg_spi|rrdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|process_1~1_combout\,
	datab => \ecg_spi|process_1~4_combout\,
	datac => \ecg_spi|rrdy~1_combout\,
	combout => \ecg_spi|rrdy~1_combout\);

-- Location: LCCOMB_X27_Y1_N22
\ecg_spi|rrdy~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rrdy~6_combout\ = (\ecg_spi|rrdy~2_combout\) # ((!\ecg_spi|wr_add~q\ & \ecg_spi|bit_cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi|wr_add~q\,
	datac => \ecg_spi|rrdy~2_combout\,
	datad => \ecg_spi|bit_cnt\(16),
	combout => \ecg_spi|rrdy~6_combout\);

-- Location: LCCOMB_X27_Y2_N14
\ecg_spi|process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|process_1~3_combout\ = (\ecg_spi|wr_add~q\ & \ecg_spi|bit_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|wr_add~q\,
	datad => \ecg_spi|bit_cnt\(10),
	combout => \ecg_spi|process_1~3_combout\);

-- Location: LCCOMB_X27_Y1_N12
\ecg_spi|rrdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rrdy~3_combout\ = \ecg_spi|rrdy~1_combout\ $ (((\ecg_spi|process_1~3_combout\ & (\ecg_mosi~input_o\)) # (!\ecg_spi|process_1~3_combout\ & ((\ecg_spi|rrdy~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_spi|rrdy~1_combout\,
	datac => \ecg_spi|rrdy~6_combout\,
	datad => \ecg_spi|process_1~3_combout\,
	combout => \ecg_spi|rrdy~3_combout\);

-- Location: LCCOMB_X27_Y1_N10
\ecg_spi|rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rrdy~0_combout\ = (\ecg_spi|process_1~1_combout\) # (\ecg_spi|process_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi|process_1~1_combout\,
	datad => \ecg_spi|process_1~4_combout\,
	combout => \ecg_spi|rrdy~0_combout\);

-- Location: FF_X27_Y1_N13
\ecg_spi|rrdy~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|rrdy~3_combout\,
	clrn => \ecg_spi|ALT_INV_rrdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|rrdy~_emulated_q\);

-- Location: LCCOMB_X27_Y1_N14
\ecg_spi|rrdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rrdy~2_combout\ = (!\ecg_spi|process_1~4_combout\ & ((\ecg_spi|process_1~1_combout\) # (\ecg_spi|rrdy~1_combout\ $ (\ecg_spi|rrdy~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|rrdy~1_combout\,
	datab => \ecg_spi|process_1~1_combout\,
	datac => \ecg_spi|process_1~4_combout\,
	datad => \ecg_spi|rrdy~_emulated_q\,
	combout => \ecg_spi|rrdy~2_combout\);

-- Location: IOIBUF_X19_Y0_N22
\ecg_st_load_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_roe,
	o => \ecg_st_load_roe~input_o\);

-- Location: LCCOMB_X27_Y1_N18
\ecg_spi|process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|process_1~5_combout\ = (!\ecg_st_load_roe~input_o\ & \ecg_spi|process_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_st_load_roe~input_o\,
	datad => \ecg_spi|process_1~1_combout\,
	combout => \ecg_spi|process_1~5_combout\);

-- Location: LCCOMB_X27_Y1_N24
\ecg_spi|roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|roe~1_combout\ = (!\ecg_spi|process_1~5_combout\ & ((\ecg_spi|process_1~1_combout\) # (\ecg_spi|roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|process_1~5_combout\,
	datac => \ecg_spi|process_1~1_combout\,
	datad => \ecg_spi|roe~1_combout\,
	combout => \ecg_spi|roe~1_combout\);

-- Location: LCCOMB_X28_Y1_N14
\ecg_spi|roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|roe~6_combout\ = \ecg_spi|roe~1_combout\ $ (((\ecg_mosi~input_o\) # ((!\ecg_spi|wr_add~q\) # (!\ecg_spi|bit_cnt\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_spi|bit_cnt\(11),
	datac => \ecg_spi|wr_add~q\,
	datad => \ecg_spi|roe~1_combout\,
	combout => \ecg_spi|roe~6_combout\);

-- Location: LCCOMB_X28_Y1_N28
\ecg_spi|roe~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|roe~7_combout\ = (\ecg_spi|wr_add~q\ & (((\ecg_spi|bit_cnt\(11))))) # (!\ecg_spi|wr_add~q\ & (\ecg_spi|bit_cnt\(16) & ((\ecg_spi|rrdy~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|bit_cnt\(16),
	datab => \ecg_spi|bit_cnt\(11),
	datac => \ecg_spi|wr_add~q\,
	datad => \ecg_spi|rrdy~2_combout\,
	combout => \ecg_spi|roe~7_combout\);

-- Location: LCCOMB_X28_Y1_N12
\ecg_spi|roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|roe~3_combout\ = \ecg_spi|roe~6_combout\ $ (((!\ecg_spi|roe~2_combout\ & !\ecg_spi|roe~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi|roe~2_combout\,
	datac => \ecg_spi|roe~6_combout\,
	datad => \ecg_spi|roe~7_combout\,
	combout => \ecg_spi|roe~3_combout\);

-- Location: LCCOMB_X27_Y1_N6
\ecg_spi|roe~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|roe~0_combout\ = (\ecg_spi|process_1~1_combout\) # (\ecg_spi|process_1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi|process_1~1_combout\,
	datad => \ecg_spi|process_1~5_combout\,
	combout => \ecg_spi|roe~0_combout\);

-- Location: FF_X28_Y1_N13
\ecg_spi|roe~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|roe~3_combout\,
	clrn => \ecg_spi|ALT_INV_roe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|roe~_emulated_q\);

-- Location: LCCOMB_X27_Y1_N20
\ecg_spi|roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|roe~2_combout\ = (!\ecg_spi|process_1~5_combout\ & ((\ecg_spi|process_1~1_combout\) # (\ecg_spi|roe~1_combout\ $ (\ecg_spi|roe~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|roe~1_combout\,
	datab => \ecg_spi|process_1~1_combout\,
	datac => \ecg_spi|roe~_emulated_q\,
	datad => \ecg_spi|process_1~5_combout\,
	combout => \ecg_spi|roe~2_combout\);

-- Location: LCCOMB_X27_Y1_N28
\ecg_spi|miso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|miso~0_combout\ = (\ecg_spi|bit_cnt\(9) & (\ecg_spi|rrdy~2_combout\)) # (!\ecg_spi|bit_cnt\(9) & ((\ecg_spi|roe~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi|bit_cnt\(9),
	datac => \ecg_spi|rrdy~2_combout\,
	datad => \ecg_spi|roe~2_combout\,
	combout => \ecg_spi|miso~0_combout\);

-- Location: LCCOMB_X27_Y1_N0
\ecg_spi|miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|miso~1_combout\ = (\ecg_spi|bit_cnt\(8) & (\ecg_spi|trdy~2_combout\)) # (!\ecg_spi|bit_cnt\(8) & ((\ecg_spi|miso~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|bit_cnt\(8),
	datac => \ecg_spi|trdy~2_combout\,
	datad => \ecg_spi|miso~0_combout\,
	combout => \ecg_spi|miso~1_combout\);

-- Location: LCCOMB_X27_Y1_N26
\ecg_spi|miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|miso~2_combout\ = (\ecg_spi|rd_add~q\ & ((\ecg_spi|miso~1_combout\))) # (!\ecg_spi|rd_add~q\ & (\ecg_spi|tx_buf[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|rd_add~q\,
	datac => \ecg_spi|tx_buf[7]~2_combout\,
	datad => \ecg_spi|miso~1_combout\,
	combout => \ecg_spi|miso~2_combout\);

-- Location: LCCOMB_X28_Y1_N24
\ecg_spi|miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|miso~3_combout\ = (\ecg_spi|bit_cnt\(9) & (!\ecg_spi|bit_cnt\(8) & !\ecg_spi|bit_cnt\(10))) # (!\ecg_spi|bit_cnt\(9) & (\ecg_spi|bit_cnt\(8) $ (\ecg_spi|bit_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi|bit_cnt\(9),
	datac => \ecg_spi|bit_cnt\(8),
	datad => \ecg_spi|bit_cnt\(10),
	combout => \ecg_spi|miso~3_combout\);

-- Location: LCCOMB_X24_Y1_N14
\ecg_spi|miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|miso~4_combout\ = (\ecg_spi|rd_add~q\ & (((\ecg_spi|miso~3_combout\)))) # (!\ecg_spi|rd_add~q\ & (\ecg_spi|process_1~7_combout\ & (\ecg_spi|process_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|process_1~7_combout\,
	datab => \ecg_spi|process_1~6_combout\,
	datac => \ecg_spi|miso~3_combout\,
	datad => \ecg_spi|rd_add~q\,
	combout => \ecg_spi|miso~4_combout\);

-- Location: FF_X27_Y1_N27
\ecg_spi|miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|miso~2_combout\,
	ena => \ecg_spi|miso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|miso~reg0_q\);

-- Location: LCCOMB_X29_Y1_N24
\ecg_spi|miso~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|miso~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \ecg_spi|miso~enfeeder_combout\);

-- Location: FF_X29_Y1_N25
\ecg_spi|miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi|miso~enfeeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	ena => \ecg_spi|miso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|miso~en_q\);

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

-- Location: LCCOMB_X27_Y3_N10
\rec_spi|bit_cnt[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|bit_cnt[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rec_spi|bit_cnt[1]~feeder_combout\);

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

-- Location: FF_X27_Y3_N11
\rec_spi|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|bit_cnt[1]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(1));

-- Location: LCCOMB_X27_Y3_N18
\rec_spi|bit_cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|bit_cnt[2]~0_combout\ = !\rec_spi|bit_cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi|bit_cnt\(1),
	combout => \rec_spi|bit_cnt[2]~0_combout\);

-- Location: FF_X27_Y3_N19
\rec_spi|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|bit_cnt[2]~0_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(2));

-- Location: LCCOMB_X27_Y3_N22
\rec_spi|rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rd_add~0_combout\ = (\rec_spi|bit_cnt\(2) & (\rec_mosi~input_o\)) # (!\rec_spi|bit_cnt\(2) & ((\rec_spi|rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_mosi~input_o\,
	datac => \rec_spi|rd_add~q\,
	datad => \rec_spi|bit_cnt\(2),
	combout => \rec_spi|rd_add~0_combout\);

-- Location: LCCOMB_X27_Y4_N26
\rec_spi|rd_add~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rd_add~feeder_combout\ = \rec_spi|rd_add~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi|rd_add~0_combout\,
	combout => \rec_spi|rd_add~feeder_combout\);

-- Location: FF_X27_Y4_N27
\rec_spi|rd_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|rd_add~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|rd_add~q\);

-- Location: FF_X27_Y3_N13
\rec_spi|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi|bit_cnt\(2),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(3));

-- Location: FF_X27_Y3_N3
\rec_spi|bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi|bit_cnt\(3),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(4));

-- Location: FF_X27_Y3_N1
\rec_spi|bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi|bit_cnt\(4),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(5));

-- Location: LCCOMB_X27_Y3_N30
\rec_spi|bit_cnt[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|bit_cnt[6]~feeder_combout\ = \rec_spi|bit_cnt\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi|bit_cnt\(5),
	combout => \rec_spi|bit_cnt[6]~feeder_combout\);

-- Location: FF_X27_Y3_N31
\rec_spi|bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|bit_cnt[6]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(6));

-- Location: FF_X27_Y3_N29
\rec_spi|bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi|bit_cnt\(6),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(7));

-- Location: FF_X27_Y3_N27
\rec_spi|bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi|bit_cnt\(7),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(8));

-- Location: IOIBUF_X35_Y0_N15
\rec_st_load_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_trdy,
	o => \rec_st_load_trdy~input_o\);

-- Location: IOIBUF_X32_Y0_N29
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
\rec_spi|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|process_1~2_combout\ = (\rec_tx_load_en~input_o\ & \rec_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_tx_load_en~input_o\,
	datad => \rec_ss_n~input_o\,
	combout => \rec_spi|process_1~2_combout\);

-- Location: LCCOMB_X28_Y3_N10
\rec_spi|process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|process_1~3_combout\ = (!\rec_st_load_trdy~input_o\ & \rec_spi|process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_st_load_trdy~input_o\,
	datad => \rec_spi|process_1~2_combout\,
	combout => \rec_spi|process_1~3_combout\);

-- Location: LCCOMB_X29_Y3_N20
\rec_spi|trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|trdy~1_combout\ = (!\rec_spi|process_1~3_combout\ & ((\rec_spi|process_1~2_combout\) # (\rec_spi|trdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|process_1~3_combout\,
	datac => \rec_spi|process_1~2_combout\,
	datad => \rec_spi|trdy~1_combout\,
	combout => \rec_spi|trdy~1_combout\);

-- Location: LCCOMB_X27_Y3_N8
\rec_spi|wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|wr_add~0_combout\ = (\rec_spi|bit_cnt\(1) & (\rec_spi|wr_add~q\)) # (!\rec_spi|bit_cnt\(1) & ((\rec_mosi~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|bit_cnt\(1),
	datac => \rec_spi|wr_add~q\,
	datad => \rec_mosi~input_o\,
	combout => \rec_spi|wr_add~0_combout\);

-- Location: FF_X27_Y3_N9
\rec_spi|wr_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|wr_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|wr_add~q\);

-- Location: FF_X27_Y3_N21
\rec_spi|bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi|bit_cnt\(8),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(9));

-- Location: LCCOMB_X27_Y3_N26
\rec_spi|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|process_1~1_combout\ = (\rec_spi|wr_add~q\ & \rec_spi|bit_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|wr_add~q\,
	datad => \rec_spi|bit_cnt\(9),
	combout => \rec_spi|process_1~1_combout\);

-- Location: FF_X27_Y3_N15
\rec_spi|bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi|bit_cnt\(9),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(10));

-- Location: FF_X27_Y3_N25
\rec_spi|bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi|bit_cnt\(10),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(11));

-- Location: FF_X28_Y2_N5
\rec_spi|bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi|bit_cnt\(11),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(12));

-- Location: FF_X28_Y2_N27
\rec_spi|bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi|bit_cnt\(12),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(13));

-- Location: FF_X28_Y2_N13
\rec_spi|bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi|bit_cnt\(13),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(14));

-- Location: LCCOMB_X28_Y2_N24
\rec_spi|bit_cnt[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|bit_cnt[15]~feeder_combout\ = \rec_spi|bit_cnt\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi|bit_cnt\(14),
	combout => \rec_spi|bit_cnt[15]~feeder_combout\);

-- Location: FF_X28_Y2_N25
\rec_spi|bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|bit_cnt[15]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(15));

-- Location: FF_X27_Y3_N17
\rec_spi|bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi|bit_cnt\(15),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|bit_cnt\(16));

-- Location: LCCOMB_X28_Y3_N18
\rec_spi|trdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|trdy~7_combout\ = (!\rec_spi|process_1~1_combout\ & (\rec_spi|trdy~2_combout\ & ((\rec_spi|rd_add~q\) # (!\rec_spi|bit_cnt\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|process_1~1_combout\,
	datab => \rec_spi|rd_add~q\,
	datac => \rec_spi|trdy~2_combout\,
	datad => \rec_spi|bit_cnt\(16),
	combout => \rec_spi|trdy~7_combout\);

-- Location: LCCOMB_X29_Y3_N0
\rec_spi|trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|trdy~3_combout\ = \rec_spi|trdy~1_combout\ $ (((\rec_spi|trdy~7_combout\) # ((\rec_mosi~input_o\ & \rec_spi|process_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi|trdy~1_combout\,
	datac => \rec_spi|process_1~1_combout\,
	datad => \rec_spi|trdy~7_combout\,
	combout => \rec_spi|trdy~3_combout\);

-- Location: LCCOMB_X29_Y3_N14
\rec_spi|trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|trdy~0_combout\ = (\rec_spi|process_1~2_combout\) # (\rec_spi|process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi|process_1~2_combout\,
	datad => \rec_spi|process_1~3_combout\,
	combout => \rec_spi|trdy~0_combout\);

-- Location: FF_X29_Y3_N1
\rec_spi|trdy~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|trdy~3_combout\,
	clrn => \rec_spi|ALT_INV_trdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|trdy~_emulated_q\);

-- Location: LCCOMB_X28_Y3_N8
\rec_spi|trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|trdy~2_combout\ = (!\rec_spi|process_1~3_combout\ & ((\rec_spi|process_1~2_combout\) # (\rec_spi|trdy~1_combout\ $ (\rec_spi|trdy~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|trdy~1_combout\,
	datab => \rec_spi|process_1~2_combout\,
	datac => \rec_spi|trdy~_emulated_q\,
	datad => \rec_spi|process_1~3_combout\,
	combout => \rec_spi|trdy~2_combout\);

-- Location: IOIBUF_X32_Y0_N8
\rec_st_load_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_rrdy,
	o => \rec_st_load_rrdy~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\rec_rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_rx_req,
	o => \rec_rx_req~input_o\);

-- Location: LCCOMB_X28_Y3_N12
\rec_spi|process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|process_1~5_combout\ = (\rec_ss_n~input_o\ & ((\rec_rx_req~input_o\) # ((!\rec_st_load_rrdy~input_o\ & \rec_tx_load_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_st_load_rrdy~input_o\,
	datab => \rec_tx_load_en~input_o\,
	datac => \rec_rx_req~input_o\,
	datad => \rec_ss_n~input_o\,
	combout => \rec_spi|process_1~5_combout\);

-- Location: LCCOMB_X29_Y2_N2
\rec_spi|rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rrdy~1_combout\ = (!\rec_spi|process_1~5_combout\ & ((\rec_spi|process_1~2_combout\) # (\rec_spi|rrdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|process_1~5_combout\,
	datac => \rec_spi|process_1~2_combout\,
	datad => \rec_spi|rrdy~1_combout\,
	combout => \rec_spi|rrdy~1_combout\);

-- Location: LCCOMB_X27_Y3_N16
\rec_spi|process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|process_1~4_combout\ = (\rec_spi|wr_add~q\ & \rec_spi|bit_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|wr_add~q\,
	datad => \rec_spi|bit_cnt\(10),
	combout => \rec_spi|process_1~4_combout\);

-- Location: LCCOMB_X28_Y3_N28
\rec_spi|rrdy~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rrdy~6_combout\ = (\rec_spi|rrdy~2_combout\) # ((\rec_spi|bit_cnt\(16) & !\rec_spi|wr_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|bit_cnt\(16),
	datac => \rec_spi|wr_add~q\,
	datad => \rec_spi|rrdy~2_combout\,
	combout => \rec_spi|rrdy~6_combout\);

-- Location: LCCOMB_X28_Y3_N30
\rec_spi|rrdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rrdy~3_combout\ = \rec_spi|rrdy~1_combout\ $ (((\rec_spi|process_1~4_combout\ & (\rec_mosi~input_o\)) # (!\rec_spi|process_1~4_combout\ & ((\rec_spi|rrdy~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|rrdy~1_combout\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi|process_1~4_combout\,
	datad => \rec_spi|rrdy~6_combout\,
	combout => \rec_spi|rrdy~3_combout\);

-- Location: LCCOMB_X28_Y3_N4
\rec_spi|rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rrdy~0_combout\ = (\rec_spi|process_1~5_combout\) # (\rec_spi|process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|process_1~5_combout\,
	datab => \rec_spi|process_1~2_combout\,
	combout => \rec_spi|rrdy~0_combout\);

-- Location: FF_X28_Y3_N31
\rec_spi|rrdy~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|rrdy~3_combout\,
	clrn => \rec_spi|ALT_INV_rrdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|rrdy~_emulated_q\);

-- Location: LCCOMB_X28_Y3_N22
\rec_spi|rrdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rrdy~2_combout\ = (!\rec_spi|process_1~5_combout\ & ((\rec_spi|process_1~2_combout\) # (\rec_spi|rrdy~1_combout\ $ (\rec_spi|rrdy~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|rrdy~1_combout\,
	datab => \rec_spi|process_1~2_combout\,
	datac => \rec_spi|rrdy~_emulated_q\,
	datad => \rec_spi|process_1~5_combout\,
	combout => \rec_spi|rrdy~2_combout\);

-- Location: IOIBUF_X35_Y0_N1
\rec_st_load_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_roe,
	o => \rec_st_load_roe~input_o\);

-- Location: LCCOMB_X28_Y3_N16
\rec_spi|process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|process_1~7_combout\ = (!\rec_st_load_roe~input_o\ & \rec_spi|process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_st_load_roe~input_o\,
	datad => \rec_spi|process_1~2_combout\,
	combout => \rec_spi|process_1~7_combout\);

-- Location: LCCOMB_X23_Y3_N16
\rec_spi|roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|roe~1_combout\ = (!\rec_spi|process_1~7_combout\ & ((\rec_spi|process_1~2_combout\) # (\rec_spi|roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|process_1~7_combout\,
	datac => \rec_spi|process_1~2_combout\,
	datad => \rec_spi|roe~1_combout\,
	combout => \rec_spi|roe~1_combout\);

-- Location: LCCOMB_X27_Y3_N24
\rec_spi|roe~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|roe~7_combout\ = (\rec_spi|wr_add~q\ & (\rec_spi|bit_cnt\(11) & \rec_mosi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|wr_add~q\,
	datac => \rec_spi|bit_cnt\(11),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi|roe~7_combout\);

-- Location: LCCOMB_X28_Y3_N14
\rec_spi|roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|roe~6_combout\ = (\rec_spi|roe~2_combout\ & ((!\rec_spi|bit_cnt\(11)) # (!\rec_spi|wr_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|wr_add~q\,
	datac => \rec_spi|bit_cnt\(11),
	datad => \rec_spi|roe~2_combout\,
	combout => \rec_spi|roe~6_combout\);

-- Location: LCCOMB_X27_Y3_N14
\rec_spi|process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|process_1~6_combout\ = (!\rec_spi|wr_add~q\ & (\rec_spi|bit_cnt\(16) & \rec_spi|rrdy~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|wr_add~q\,
	datab => \rec_spi|bit_cnt\(16),
	datad => \rec_spi|rrdy~2_combout\,
	combout => \rec_spi|process_1~6_combout\);

-- Location: LCCOMB_X28_Y3_N26
\rec_spi|roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|roe~3_combout\ = \rec_spi|roe~1_combout\ $ (((\rec_spi|roe~7_combout\) # ((\rec_spi|roe~6_combout\) # (\rec_spi|process_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|roe~1_combout\,
	datab => \rec_spi|roe~7_combout\,
	datac => \rec_spi|roe~6_combout\,
	datad => \rec_spi|process_1~6_combout\,
	combout => \rec_spi|roe~3_combout\);

-- Location: LCCOMB_X28_Y3_N6
\rec_spi|roe~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|roe~0_combout\ = (\rec_spi|process_1~2_combout\) # (\rec_spi|process_1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi|process_1~2_combout\,
	datad => \rec_spi|process_1~7_combout\,
	combout => \rec_spi|roe~0_combout\);

-- Location: FF_X28_Y3_N27
\rec_spi|roe~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|roe~3_combout\,
	clrn => \rec_spi|ALT_INV_roe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|roe~_emulated_q\);

-- Location: LCCOMB_X28_Y3_N24
\rec_spi|roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|roe~2_combout\ = (!\rec_spi|process_1~7_combout\ & ((\rec_spi|process_1~2_combout\) # (\rec_spi|roe~1_combout\ $ (\rec_spi|roe~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|roe~1_combout\,
	datab => \rec_spi|process_1~2_combout\,
	datac => \rec_spi|roe~_emulated_q\,
	datad => \rec_spi|process_1~7_combout\,
	combout => \rec_spi|roe~2_combout\);

-- Location: LCCOMB_X28_Y3_N20
\rec_spi|miso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|miso~0_combout\ = (\rec_spi|bit_cnt\(9) & (\rec_spi|rrdy~2_combout\)) # (!\rec_spi|bit_cnt\(9) & ((\rec_spi|roe~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|bit_cnt\(9),
	datac => \rec_spi|rrdy~2_combout\,
	datad => \rec_spi|roe~2_combout\,
	combout => \rec_spi|miso~0_combout\);

-- Location: LCCOMB_X28_Y3_N2
\rec_spi|miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|miso~1_combout\ = (\rec_spi|bit_cnt\(8) & (\rec_spi|trdy~2_combout\)) # (!\rec_spi|bit_cnt\(8) & ((\rec_spi|miso~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|bit_cnt\(8),
	datac => \rec_spi|trdy~2_combout\,
	datad => \rec_spi|miso~0_combout\,
	combout => \rec_spi|miso~1_combout\);

-- Location: LCCOMB_X26_Y1_N26
\ecg_spi|rx_buf[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_buf[6]~1_combout\ = (\ecg_spi|wr_add~q\ & (((\ecg_spi|rx_buf\(6))))) # (!\ecg_spi|wr_add~q\ & ((\ecg_spi|bit_cnt\(10) & (\ecg_mosi~input_o\)) # (!\ecg_spi|bit_cnt\(10) & ((\ecg_spi|rx_buf\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_spi|wr_add~q\,
	datac => \ecg_spi|rx_buf\(6),
	datad => \ecg_spi|bit_cnt\(10),
	combout => \ecg_spi|rx_buf[6]~1_combout\);

-- Location: FF_X26_Y1_N27
\ecg_spi|rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|rx_buf[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|rx_buf\(6));

-- Location: LCCOMB_X27_Y2_N22
\ecg_spi|process_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|process_1~9_combout\ = (\ecg_rx_req~input_o\ & \ecg_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_rx_req~input_o\,
	datac => \ecg_ss_n~input_o\,
	combout => \ecg_spi|process_1~9_combout\);

-- Location: CLKCTRL_G18
\ecg_spi|process_1~9clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ecg_spi|process_1~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ecg_spi|process_1~9clkctrl_outclk\);

-- Location: LCCOMB_X24_Y2_N18
\ecg_spi|rx_data[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_data\(6) = (GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & (\ecg_spi|rx_buf\(6))) # (!GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & ((\ecg_spi|rx_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|rx_buf\(6),
	datac => \ecg_spi|rx_data\(6),
	datad => \ecg_spi|process_1~9clkctrl_outclk\,
	combout => \ecg_spi|rx_data\(6));

-- Location: CLKCTRL_G16
\rec_spi|process_1~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rec_spi|process_1~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rec_spi|process_1~2clkctrl_outclk\);

-- Location: LCCOMB_X24_Y2_N28
\rec_spi|tx_buf[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[6]~5_combout\ = (GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & (\ecg_spi|rx_data\(6))) # (!GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & ((\rec_spi|tx_buf[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|rx_data\(6),
	datab => \rec_spi|tx_buf[6]~5_combout\,
	datad => \rec_spi|process_1~2clkctrl_outclk\,
	combout => \rec_spi|tx_buf[6]~5_combout\);

-- Location: LCCOMB_X27_Y2_N10
\ecg_spi|rx_buf[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_buf[5]~2_combout\ = (\ecg_spi|wr_add~q\ & (((\ecg_spi|rx_buf\(5))))) # (!\ecg_spi|wr_add~q\ & ((\ecg_spi|bit_cnt\(11) & ((\ecg_mosi~input_o\))) # (!\ecg_spi|bit_cnt\(11) & (\ecg_spi|rx_buf\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|wr_add~q\,
	datab => \ecg_spi|bit_cnt\(11),
	datac => \ecg_spi|rx_buf\(5),
	datad => \ecg_mosi~input_o\,
	combout => \ecg_spi|rx_buf[5]~2_combout\);

-- Location: FF_X27_Y2_N11
\ecg_spi|rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|rx_buf[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|rx_buf\(5));

-- Location: LCCOMB_X24_Y2_N2
\ecg_spi|rx_data[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_data\(5) = (GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & (\ecg_spi|rx_buf\(5))) # (!GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & ((\ecg_spi|rx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|rx_buf\(5),
	datac => \ecg_spi|rx_data\(5),
	datad => \ecg_spi|process_1~9clkctrl_outclk\,
	combout => \ecg_spi|rx_data\(5));

-- Location: LCCOMB_X24_Y2_N0
\rec_spi|tx_buf[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[5]~9_combout\ = (GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & (\ecg_spi|rx_data\(5))) # (!GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & ((\rec_spi|tx_buf[5]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|rx_data\(5),
	datab => \rec_spi|tx_buf[5]~9_combout\,
	datad => \rec_spi|process_1~2clkctrl_outclk\,
	combout => \rec_spi|tx_buf[5]~9_combout\);

-- Location: LCCOMB_X27_Y2_N4
\ecg_spi|rx_buf[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_buf[4]~3_combout\ = (\ecg_spi|wr_add~q\ & (((\ecg_spi|rx_buf\(4))))) # (!\ecg_spi|wr_add~q\ & ((\ecg_spi|bit_cnt\(12) & ((\ecg_mosi~input_o\))) # (!\ecg_spi|bit_cnt\(12) & (\ecg_spi|rx_buf\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|wr_add~q\,
	datab => \ecg_spi|bit_cnt\(12),
	datac => \ecg_spi|rx_buf\(4),
	datad => \ecg_mosi~input_o\,
	combout => \ecg_spi|rx_buf[4]~3_combout\);

-- Location: FF_X27_Y2_N5
\ecg_spi|rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|rx_buf[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|rx_buf\(4));

-- Location: LCCOMB_X24_Y2_N6
\ecg_spi|rx_data[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_data\(4) = (GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & (\ecg_spi|rx_buf\(4))) # (!GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & ((\ecg_spi|rx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi|rx_buf\(4),
	datac => \ecg_spi|rx_data\(4),
	datad => \ecg_spi|process_1~9clkctrl_outclk\,
	combout => \ecg_spi|rx_data\(4));

-- Location: LCCOMB_X24_Y2_N12
\rec_spi|tx_buf[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[4]~13_combout\ = (GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & ((\ecg_spi|rx_data\(4)))) # (!GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & (\rec_spi|tx_buf[4]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|tx_buf[4]~13_combout\,
	datab => \ecg_spi|rx_data\(4),
	datad => \rec_spi|process_1~2clkctrl_outclk\,
	combout => \rec_spi|tx_buf[4]~13_combout\);

-- Location: LCCOMB_X26_Y1_N24
\ecg_spi|rx_buf[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_buf[3]~4_combout\ = (\ecg_spi|wr_add~q\ & (((\ecg_spi|rx_buf\(3))))) # (!\ecg_spi|wr_add~q\ & ((\ecg_spi|bit_cnt\(13) & (\ecg_mosi~input_o\)) # (!\ecg_spi|bit_cnt\(13) & ((\ecg_spi|rx_buf\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_spi|wr_add~q\,
	datac => \ecg_spi|rx_buf\(3),
	datad => \ecg_spi|bit_cnt\(13),
	combout => \ecg_spi|rx_buf[3]~4_combout\);

-- Location: FF_X26_Y1_N25
\ecg_spi|rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|rx_buf[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|rx_buf\(3));

-- Location: LCCOMB_X26_Y1_N12
\ecg_spi|rx_data[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_data\(3) = (GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & ((\ecg_spi|rx_buf\(3)))) # (!GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & (\ecg_spi|rx_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|rx_data\(3),
	datab => \ecg_spi|rx_buf\(3),
	datad => \ecg_spi|process_1~9clkctrl_outclk\,
	combout => \ecg_spi|rx_data\(3));

-- Location: LCCOMB_X26_Y3_N6
\rec_spi|tx_buf[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[3]~17_combout\ = (GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & ((\ecg_spi|rx_data\(3)))) # (!GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & (\rec_spi|tx_buf[3]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|tx_buf[3]~17_combout\,
	datab => \rec_spi|process_1~2clkctrl_outclk\,
	datad => \ecg_spi|rx_data\(3),
	combout => \rec_spi|tx_buf[3]~17_combout\);

-- Location: LCCOMB_X27_Y2_N0
\ecg_spi|rx_buf[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_buf[2]~5_combout\ = (\ecg_spi|wr_add~q\ & (((\ecg_spi|rx_buf\(2))))) # (!\ecg_spi|wr_add~q\ & ((\ecg_spi|bit_cnt\(14) & ((\ecg_mosi~input_o\))) # (!\ecg_spi|bit_cnt\(14) & (\ecg_spi|rx_buf\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|wr_add~q\,
	datab => \ecg_spi|bit_cnt\(14),
	datac => \ecg_spi|rx_buf\(2),
	datad => \ecg_mosi~input_o\,
	combout => \ecg_spi|rx_buf[2]~5_combout\);

-- Location: FF_X27_Y2_N1
\ecg_spi|rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|rx_buf[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|rx_buf\(2));

-- Location: LCCOMB_X26_Y3_N18
\ecg_spi|rx_data[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_data\(2) = (GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & (\ecg_spi|rx_buf\(2))) # (!GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & ((\ecg_spi|rx_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi|rx_buf\(2),
	datac => \ecg_spi|rx_data\(2),
	datad => \ecg_spi|process_1~9clkctrl_outclk\,
	combout => \ecg_spi|rx_data\(2));

-- Location: LCCOMB_X26_Y3_N4
\rec_spi|tx_buf[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[2]~21_combout\ = (GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & (\ecg_spi|rx_data\(2))) # (!GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & ((\rec_spi|tx_buf[2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|rx_data\(2),
	datac => \rec_spi|tx_buf[2]~21_combout\,
	datad => \rec_spi|process_1~2clkctrl_outclk\,
	combout => \rec_spi|tx_buf[2]~21_combout\);

-- Location: LCCOMB_X26_Y1_N22
\ecg_spi|rx_buf[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_buf[1]~6_combout\ = (\ecg_spi|bit_cnt\(15) & ((\ecg_spi|wr_add~q\ & (\ecg_spi|rx_buf\(1))) # (!\ecg_spi|wr_add~q\ & ((\ecg_mosi~input_o\))))) # (!\ecg_spi|bit_cnt\(15) & (((\ecg_spi|rx_buf\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|bit_cnt\(15),
	datab => \ecg_spi|wr_add~q\,
	datac => \ecg_spi|rx_buf\(1),
	datad => \ecg_mosi~input_o\,
	combout => \ecg_spi|rx_buf[1]~6_combout\);

-- Location: FF_X26_Y1_N23
\ecg_spi|rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|rx_buf[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|rx_buf\(1));

-- Location: LCCOMB_X26_Y1_N2
\ecg_spi|rx_data[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_data\(1) = (GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & ((\ecg_spi|rx_buf\(1)))) # (!GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & (\ecg_spi|rx_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi|rx_data\(1),
	datac => \ecg_spi|rx_buf\(1),
	datad => \ecg_spi|process_1~9clkctrl_outclk\,
	combout => \ecg_spi|rx_data\(1));

-- Location: LCCOMB_X26_Y3_N8
\rec_spi|tx_buf[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[1]~25_combout\ = (GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & ((\ecg_spi|rx_data\(1)))) # (!GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & (\rec_spi|tx_buf[1]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|tx_buf[1]~25_combout\,
	datac => \rec_spi|process_1~2clkctrl_outclk\,
	datad => \ecg_spi|rx_data\(1),
	combout => \rec_spi|tx_buf[1]~25_combout\);

-- Location: LCCOMB_X26_Y1_N20
\ecg_spi|rx_buf[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_buf[0]~7_combout\ = (\ecg_spi|wr_add~q\ & (((\ecg_spi|rx_buf\(0))))) # (!\ecg_spi|wr_add~q\ & ((\ecg_spi|bit_cnt\(16) & (\ecg_mosi~input_o\)) # (!\ecg_spi|bit_cnt\(16) & ((\ecg_spi|rx_buf\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_spi|wr_add~q\,
	datac => \ecg_spi|rx_buf\(0),
	datad => \ecg_spi|bit_cnt\(16),
	combout => \ecg_spi|rx_buf[0]~7_combout\);

-- Location: FF_X26_Y1_N21
\ecg_spi|rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|rx_buf[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|rx_buf\(0));

-- Location: LCCOMB_X26_Y1_N16
\ecg_spi|rx_data[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_data\(0) = (GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & ((\ecg_spi|rx_buf\(0)))) # (!GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & (\ecg_spi|rx_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi|rx_data\(0),
	datac => \ecg_spi|rx_buf\(0),
	datad => \ecg_spi|process_1~9clkctrl_outclk\,
	combout => \ecg_spi|rx_data\(0));

-- Location: LCCOMB_X26_Y3_N30
\rec_spi|tx_buf[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[0]~29_combout\ = (GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & ((\ecg_spi|rx_data\(0)))) # (!GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & (\rec_spi|tx_buf[0]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|tx_buf[0]~29_combout\,
	datab => \rec_spi|process_1~2clkctrl_outclk\,
	datad => \ecg_spi|rx_data\(0),
	combout => \rec_spi|tx_buf[0]~29_combout\);

-- Location: LCCOMB_X26_Y3_N14
\rec_spi|tx_buf[0]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[0]~31_combout\ = \rec_spi|tx_buf[0]~29_combout\ $ (\rec_spi|tx_buf[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi|tx_buf[0]~29_combout\,
	datad => \rec_spi|tx_buf[7]~2_combout\,
	combout => \rec_spi|tx_buf[0]~31_combout\);

-- Location: LCCOMB_X27_Y3_N0
\rec_spi|process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|process_1~8_combout\ = (!\rec_spi|bit_cnt\(6) & (!\rec_spi|bit_cnt\(7) & (!\rec_spi|bit_cnt\(5) & !\rec_spi|bit_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|bit_cnt\(6),
	datab => \rec_spi|bit_cnt\(7),
	datac => \rec_spi|bit_cnt\(5),
	datad => \rec_spi|bit_cnt\(16),
	combout => \rec_spi|process_1~8_combout\);

-- Location: LCCOMB_X27_Y3_N2
\rec_spi|process_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|process_1~9_combout\ = (\rec_spi|bit_cnt\(1) & (!\rec_spi|bit_cnt\(2) & (!\rec_spi|bit_cnt\(4) & !\rec_spi|bit_cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|bit_cnt\(1),
	datab => \rec_spi|bit_cnt\(2),
	datac => \rec_spi|bit_cnt\(4),
	datad => \rec_spi|bit_cnt\(3),
	combout => \rec_spi|process_1~9_combout\);

-- Location: LCCOMB_X27_Y4_N30
\rec_spi|process_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|process_1~10_combout\ = (\rec_spi|process_1~8_combout\ & (!\rec_spi|rd_add~q\ & \rec_spi|process_1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|process_1~8_combout\,
	datac => \rec_spi|rd_add~q\,
	datad => \rec_spi|process_1~9_combout\,
	combout => \rec_spi|process_1~10_combout\);

-- Location: FF_X26_Y3_N15
\rec_spi|tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|tx_buf[0]~31_combout\,
	clrn => \rec_spi|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \rec_spi|process_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|tx_buf[0]~_emulated_q\);

-- Location: LCCOMB_X26_Y3_N0
\rec_spi|tx_buf[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[0]~30_combout\ = (\rec_spi|process_1~2_combout\ & (((\ecg_spi|rx_data\(0))))) # (!\rec_spi|process_1~2_combout\ & (\rec_spi|tx_buf[0]~29_combout\ $ ((\rec_spi|tx_buf[0]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|tx_buf[0]~29_combout\,
	datab => \rec_spi|process_1~2_combout\,
	datac => \rec_spi|tx_buf[0]~_emulated_q\,
	datad => \ecg_spi|rx_data\(0),
	combout => \rec_spi|tx_buf[0]~30_combout\);

-- Location: LCCOMB_X26_Y3_N2
\rec_spi|tx_buf[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[1]~27_combout\ = \rec_spi|tx_buf[1]~25_combout\ $ (\rec_spi|tx_buf[0]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi|tx_buf[1]~25_combout\,
	datad => \rec_spi|tx_buf[0]~30_combout\,
	combout => \rec_spi|tx_buf[1]~27_combout\);

-- Location: FF_X26_Y3_N3
\rec_spi|tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|tx_buf[1]~27_combout\,
	clrn => \rec_spi|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \rec_spi|process_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|tx_buf[1]~_emulated_q\);

-- Location: LCCOMB_X26_Y3_N20
\rec_spi|tx_buf[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[1]~26_combout\ = (\rec_spi|process_1~2_combout\ & (((\ecg_spi|rx_data\(1))))) # (!\rec_spi|process_1~2_combout\ & (\rec_spi|tx_buf[1]~_emulated_q\ $ ((\rec_spi|tx_buf[1]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|tx_buf[1]~_emulated_q\,
	datab => \rec_spi|process_1~2_combout\,
	datac => \rec_spi|tx_buf[1]~25_combout\,
	datad => \ecg_spi|rx_data\(1),
	combout => \rec_spi|tx_buf[1]~26_combout\);

-- Location: LCCOMB_X26_Y3_N22
\rec_spi|tx_buf[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[2]~23_combout\ = \rec_spi|tx_buf[2]~21_combout\ $ (\rec_spi|tx_buf[1]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi|tx_buf[2]~21_combout\,
	datad => \rec_spi|tx_buf[1]~26_combout\,
	combout => \rec_spi|tx_buf[2]~23_combout\);

-- Location: FF_X26_Y3_N23
\rec_spi|tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|tx_buf[2]~23_combout\,
	clrn => \rec_spi|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \rec_spi|process_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|tx_buf[2]~_emulated_q\);

-- Location: LCCOMB_X26_Y3_N24
\rec_spi|tx_buf[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[2]~22_combout\ = (\rec_spi|process_1~2_combout\ & (((\ecg_spi|rx_data\(2))))) # (!\rec_spi|process_1~2_combout\ & (\rec_spi|tx_buf[2]~_emulated_q\ $ ((\rec_spi|tx_buf[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|process_1~2_combout\,
	datab => \rec_spi|tx_buf[2]~_emulated_q\,
	datac => \rec_spi|tx_buf[2]~21_combout\,
	datad => \ecg_spi|rx_data\(2),
	combout => \rec_spi|tx_buf[2]~22_combout\);

-- Location: LCCOMB_X26_Y3_N26
\rec_spi|tx_buf[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[3]~19_combout\ = \rec_spi|tx_buf[2]~22_combout\ $ (\rec_spi|tx_buf[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi|tx_buf[2]~22_combout\,
	datad => \rec_spi|tx_buf[3]~17_combout\,
	combout => \rec_spi|tx_buf[3]~19_combout\);

-- Location: FF_X26_Y3_N27
\rec_spi|tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|tx_buf[3]~19_combout\,
	clrn => \rec_spi|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \rec_spi|process_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|tx_buf[3]~_emulated_q\);

-- Location: LCCOMB_X26_Y3_N28
\rec_spi|tx_buf[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[3]~18_combout\ = (\rec_spi|process_1~2_combout\ & (((\ecg_spi|rx_data\(3))))) # (!\rec_spi|process_1~2_combout\ & (\rec_spi|tx_buf[3]~17_combout\ $ ((\rec_spi|tx_buf[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|tx_buf[3]~17_combout\,
	datab => \rec_spi|process_1~2_combout\,
	datac => \rec_spi|tx_buf[3]~_emulated_q\,
	datad => \ecg_spi|rx_data\(3),
	combout => \rec_spi|tx_buf[3]~18_combout\);

-- Location: LCCOMB_X26_Y3_N12
\rec_spi|tx_buf[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[4]~15_combout\ = \rec_spi|tx_buf[4]~13_combout\ $ (\rec_spi|tx_buf[3]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi|tx_buf[4]~13_combout\,
	datad => \rec_spi|tx_buf[3]~18_combout\,
	combout => \rec_spi|tx_buf[4]~15_combout\);

-- Location: FF_X26_Y3_N13
\rec_spi|tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|tx_buf[4]~15_combout\,
	clrn => \rec_spi|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \rec_spi|process_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|tx_buf[4]~_emulated_q\);

-- Location: LCCOMB_X24_Y2_N26
\rec_spi|tx_buf[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[4]~14_combout\ = (\rec_spi|process_1~2_combout\ & (((\ecg_spi|rx_data\(4))))) # (!\rec_spi|process_1~2_combout\ & (\rec_spi|tx_buf[4]~13_combout\ $ ((\rec_spi|tx_buf[4]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|tx_buf[4]~13_combout\,
	datab => \rec_spi|process_1~2_combout\,
	datac => \rec_spi|tx_buf[4]~_emulated_q\,
	datad => \ecg_spi|rx_data\(4),
	combout => \rec_spi|tx_buf[4]~14_combout\);

-- Location: LCCOMB_X24_Y2_N30
\rec_spi|tx_buf[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[5]~11_combout\ = \rec_spi|tx_buf[4]~14_combout\ $ (\rec_spi|tx_buf[5]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|tx_buf[4]~14_combout\,
	datad => \rec_spi|tx_buf[5]~9_combout\,
	combout => \rec_spi|tx_buf[5]~11_combout\);

-- Location: FF_X24_Y2_N31
\rec_spi|tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|tx_buf[5]~11_combout\,
	clrn => \rec_spi|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \rec_spi|process_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|tx_buf[5]~_emulated_q\);

-- Location: LCCOMB_X24_Y2_N24
\rec_spi|tx_buf[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[5]~10_combout\ = (\rec_spi|process_1~2_combout\ & (((\ecg_spi|rx_data\(5))))) # (!\rec_spi|process_1~2_combout\ & (\rec_spi|tx_buf[5]~9_combout\ $ ((\rec_spi|tx_buf[5]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|process_1~2_combout\,
	datab => \rec_spi|tx_buf[5]~9_combout\,
	datac => \rec_spi|tx_buf[5]~_emulated_q\,
	datad => \ecg_spi|rx_data\(5),
	combout => \rec_spi|tx_buf[5]~10_combout\);

-- Location: LCCOMB_X24_Y2_N14
\rec_spi|tx_buf[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[6]~7_combout\ = \rec_spi|tx_buf[5]~10_combout\ $ (\rec_spi|tx_buf[6]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|tx_buf[5]~10_combout\,
	datad => \rec_spi|tx_buf[6]~5_combout\,
	combout => \rec_spi|tx_buf[6]~7_combout\);

-- Location: FF_X24_Y2_N15
\rec_spi|tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|tx_buf[6]~7_combout\,
	clrn => \rec_spi|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \rec_spi|process_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|tx_buf[6]~_emulated_q\);

-- Location: LCCOMB_X24_Y2_N16
\rec_spi|tx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[6]~6_combout\ = (\rec_spi|process_1~2_combout\ & (((\ecg_spi|rx_data\(6))))) # (!\rec_spi|process_1~2_combout\ & (\rec_spi|tx_buf[6]~5_combout\ $ ((\rec_spi|tx_buf[6]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|process_1~2_combout\,
	datab => \rec_spi|tx_buf[6]~5_combout\,
	datac => \rec_spi|tx_buf[6]~_emulated_q\,
	datad => \ecg_spi|rx_data\(6),
	combout => \rec_spi|tx_buf[6]~6_combout\);

-- Location: LCCOMB_X27_Y2_N20
\ecg_spi|rx_buf[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_buf[7]~0_combout\ = (\ecg_spi|wr_add~q\ & (((\ecg_spi|rx_buf\(7))))) # (!\ecg_spi|wr_add~q\ & ((\ecg_spi|bit_cnt\(9) & ((\ecg_mosi~input_o\))) # (!\ecg_spi|bit_cnt\(9) & (\ecg_spi|rx_buf\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi|wr_add~q\,
	datab => \ecg_spi|bit_cnt\(9),
	datac => \ecg_spi|rx_buf\(7),
	datad => \ecg_mosi~input_o\,
	combout => \ecg_spi|rx_buf[7]~0_combout\);

-- Location: FF_X27_Y2_N21
\ecg_spi|rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi|rx_buf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi|rx_buf\(7));

-- Location: LCCOMB_X24_Y3_N30
\ecg_spi|rx_data[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi|rx_data\(7) = (GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & (\ecg_spi|rx_buf\(7))) # (!GLOBAL(\ecg_spi|process_1~9clkctrl_outclk\) & ((\ecg_spi|rx_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi|rx_buf\(7),
	datac => \ecg_spi|rx_data\(7),
	datad => \ecg_spi|process_1~9clkctrl_outclk\,
	combout => \ecg_spi|rx_data\(7));

-- Location: LCCOMB_X24_Y3_N0
\rec_spi|tx_buf[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[7]~1_combout\ = (GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & (\ecg_spi|rx_data\(7))) # (!GLOBAL(\rec_spi|process_1~2clkctrl_outclk\) & ((\rec_spi|tx_buf[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi|rx_data\(7),
	datac => \rec_spi|process_1~2clkctrl_outclk\,
	datad => \rec_spi|tx_buf[7]~1_combout\,
	combout => \rec_spi|tx_buf[7]~1_combout\);

-- Location: LCCOMB_X24_Y2_N20
\rec_spi|tx_buf[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[7]~3_combout\ = \rec_spi|tx_buf[6]~6_combout\ $ (\rec_spi|tx_buf[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|tx_buf[6]~6_combout\,
	datad => \rec_spi|tx_buf[7]~1_combout\,
	combout => \rec_spi|tx_buf[7]~3_combout\);

-- Location: FF_X24_Y2_N21
\rec_spi|tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|tx_buf[7]~3_combout\,
	clrn => \rec_spi|ALT_INV_process_1~2clkctrl_outclk\,
	ena => \rec_spi|process_1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|tx_buf[7]~_emulated_q\);

-- Location: LCCOMB_X26_Y3_N10
\rec_spi|tx_buf[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|tx_buf[7]~2_combout\ = (\rec_spi|process_1~2_combout\ & (((\ecg_spi|rx_data\(7))))) # (!\rec_spi|process_1~2_combout\ & (\rec_spi|tx_buf[7]~_emulated_q\ $ ((\rec_spi|tx_buf[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|tx_buf[7]~_emulated_q\,
	datab => \rec_spi|process_1~2_combout\,
	datac => \rec_spi|tx_buf[7]~1_combout\,
	datad => \ecg_spi|rx_data\(7),
	combout => \rec_spi|tx_buf[7]~2_combout\);

-- Location: LCCOMB_X26_Y3_N16
\rec_spi|miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|miso~2_combout\ = (\rec_spi|rd_add~q\ & (\rec_spi|miso~1_combout\)) # (!\rec_spi|rd_add~q\ & ((\rec_spi|tx_buf[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|rd_add~q\,
	datac => \rec_spi|miso~1_combout\,
	datad => \rec_spi|tx_buf[7]~2_combout\,
	combout => \rec_spi|miso~2_combout\);

-- Location: LCCOMB_X27_Y3_N12
\rec_spi|miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|miso~3_combout\ = (\rec_spi|bit_cnt\(8) & (!\rec_spi|bit_cnt\(10) & !\rec_spi|bit_cnt\(9))) # (!\rec_spi|bit_cnt\(8) & (\rec_spi|bit_cnt\(10) $ (\rec_spi|bit_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|bit_cnt\(8),
	datab => \rec_spi|bit_cnt\(10),
	datad => \rec_spi|bit_cnt\(9),
	combout => \rec_spi|miso~3_combout\);

-- Location: LCCOMB_X27_Y4_N28
\rec_spi|miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|miso~4_combout\ = (\rec_spi|rd_add~q\ & (((\rec_spi|miso~3_combout\)))) # (!\rec_spi|rd_add~q\ & (\rec_spi|process_1~8_combout\ & (\rec_spi|process_1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|rd_add~q\,
	datab => \rec_spi|process_1~8_combout\,
	datac => \rec_spi|process_1~9_combout\,
	datad => \rec_spi|miso~3_combout\,
	combout => \rec_spi|miso~4_combout\);

-- Location: FF_X26_Y3_N17
\rec_spi|miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|miso~2_combout\,
	ena => \rec_spi|miso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|miso~reg0_q\);

-- Location: LCCOMB_X27_Y4_N24
\rec_spi|miso~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|miso~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rec_spi|miso~enfeeder_combout\);

-- Location: FF_X27_Y4_N25
\rec_spi|miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi|miso~enfeeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi|miso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|miso~en_q\);

-- Location: LCCOMB_X28_Y2_N18
\rec_spi|rx_buf[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_buf[0]~0_combout\ = (\rec_spi|bit_cnt\(16) & ((\rec_spi|wr_add~q\ & ((\rec_spi|rx_buf\(0)))) # (!\rec_spi|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi|bit_cnt\(16) & (((\rec_spi|rx_buf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|bit_cnt\(16),
	datab => \rec_mosi~input_o\,
	datac => \rec_spi|rx_buf\(0),
	datad => \rec_spi|wr_add~q\,
	combout => \rec_spi|rx_buf[0]~0_combout\);

-- Location: FF_X28_Y2_N19
\rec_spi|rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|rx_buf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|rx_buf\(0));

-- Location: LCCOMB_X28_Y2_N26
\rec_spi|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|process_1~0_combout\ = (\rec_rx_req~input_o\ & \rec_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_rx_req~input_o\,
	datad => \rec_ss_n~input_o\,
	combout => \rec_spi|process_1~0_combout\);

-- Location: CLKCTRL_G15
\rec_spi|process_1~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rec_spi|process_1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rec_spi|process_1~0clkctrl_outclk\);

-- Location: LCCOMB_X28_Y2_N4
\rec_spi|rx_data[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_data\(0) = (GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & (\rec_spi|rx_buf\(0))) # (!GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & ((\rec_spi|rx_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|rx_buf\(0),
	datab => \rec_spi|rx_data\(0),
	datad => \rec_spi|process_1~0clkctrl_outclk\,
	combout => \rec_spi|rx_data\(0));

-- Location: LCCOMB_X28_Y2_N6
\rec_spi|rx_buf[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_buf[1]~1_combout\ = (\rec_spi|bit_cnt\(15) & ((\rec_spi|wr_add~q\ & ((\rec_spi|rx_buf\(1)))) # (!\rec_spi|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi|bit_cnt\(15) & (((\rec_spi|rx_buf\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|bit_cnt\(15),
	datab => \rec_mosi~input_o\,
	datac => \rec_spi|rx_buf\(1),
	datad => \rec_spi|wr_add~q\,
	combout => \rec_spi|rx_buf[1]~1_combout\);

-- Location: FF_X28_Y2_N7
\rec_spi|rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|rx_buf[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|rx_buf\(1));

-- Location: LCCOMB_X28_Y2_N12
\rec_spi|rx_data[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_data\(1) = (GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & ((\rec_spi|rx_buf\(1)))) # (!GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & (\rec_spi|rx_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|rx_data\(1),
	datab => \rec_spi|rx_buf\(1),
	datad => \rec_spi|process_1~0clkctrl_outclk\,
	combout => \rec_spi|rx_data\(1));

-- Location: LCCOMB_X28_Y2_N16
\rec_spi|rx_buf[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_buf[2]~2_combout\ = (\rec_spi|bit_cnt\(14) & ((\rec_spi|wr_add~q\ & ((\rec_spi|rx_buf\(2)))) # (!\rec_spi|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi|bit_cnt\(14) & (((\rec_spi|rx_buf\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|bit_cnt\(14),
	datab => \rec_mosi~input_o\,
	datac => \rec_spi|rx_buf\(2),
	datad => \rec_spi|wr_add~q\,
	combout => \rec_spi|rx_buf[2]~2_combout\);

-- Location: FF_X28_Y2_N17
\rec_spi|rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|rx_buf[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|rx_buf\(2));

-- Location: LCCOMB_X28_Y2_N22
\rec_spi|rx_data[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_data\(2) = (GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & (\rec_spi|rx_buf\(2))) # (!GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & ((\rec_spi|rx_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|rx_buf\(2),
	datac => \rec_spi|rx_data\(2),
	datad => \rec_spi|process_1~0clkctrl_outclk\,
	combout => \rec_spi|rx_data\(2));

-- Location: LCCOMB_X28_Y2_N10
\rec_spi|rx_buf[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_buf[3]~3_combout\ = (\rec_spi|bit_cnt\(13) & ((\rec_spi|wr_add~q\ & ((\rec_spi|rx_buf\(3)))) # (!\rec_spi|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi|bit_cnt\(13) & (((\rec_spi|rx_buf\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|bit_cnt\(13),
	datab => \rec_mosi~input_o\,
	datac => \rec_spi|rx_buf\(3),
	datad => \rec_spi|wr_add~q\,
	combout => \rec_spi|rx_buf[3]~3_combout\);

-- Location: FF_X28_Y2_N11
\rec_spi|rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|rx_buf[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|rx_buf\(3));

-- Location: LCCOMB_X29_Y2_N4
\rec_spi|rx_data[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_data\(3) = (GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & (\rec_spi|rx_buf\(3))) # (!GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & ((\rec_spi|rx_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|rx_buf\(3),
	datac => \rec_spi|rx_data\(3),
	datad => \rec_spi|process_1~0clkctrl_outclk\,
	combout => \rec_spi|rx_data\(3));

-- Location: LCCOMB_X28_Y2_N2
\rec_spi|rx_buf[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_buf[4]~4_combout\ = (\rec_spi|bit_cnt\(12) & ((\rec_spi|wr_add~q\ & ((\rec_spi|rx_buf\(4)))) # (!\rec_spi|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi|bit_cnt\(12) & (((\rec_spi|rx_buf\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|bit_cnt\(12),
	datab => \rec_mosi~input_o\,
	datac => \rec_spi|rx_buf\(4),
	datad => \rec_spi|wr_add~q\,
	combout => \rec_spi|rx_buf[4]~4_combout\);

-- Location: FF_X28_Y2_N3
\rec_spi|rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|rx_buf[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|rx_buf\(4));

-- Location: LCCOMB_X28_Y2_N8
\rec_spi|rx_data[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_data\(4) = (GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & (\rec_spi|rx_buf\(4))) # (!GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & ((\rec_spi|rx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|rx_buf\(4),
	datac => \rec_spi|rx_data\(4),
	datad => \rec_spi|process_1~0clkctrl_outclk\,
	combout => \rec_spi|rx_data\(4));

-- Location: LCCOMB_X28_Y2_N30
\rec_spi|rx_buf[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_buf[5]~5_combout\ = (\rec_spi|wr_add~q\ & (((\rec_spi|rx_buf\(5))))) # (!\rec_spi|wr_add~q\ & ((\rec_spi|bit_cnt\(11) & (\rec_mosi~input_o\)) # (!\rec_spi|bit_cnt\(11) & ((\rec_spi|rx_buf\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|wr_add~q\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi|rx_buf\(5),
	datad => \rec_spi|bit_cnt\(11),
	combout => \rec_spi|rx_buf[5]~5_combout\);

-- Location: FF_X28_Y2_N31
\rec_spi|rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|rx_buf[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|rx_buf\(5));

-- Location: LCCOMB_X28_Y2_N0
\rec_spi|rx_data[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_data\(5) = (GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & (\rec_spi|rx_buf\(5))) # (!GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & ((\rec_spi|rx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|rx_buf\(5),
	datab => \rec_spi|rx_data\(5),
	datad => \rec_spi|process_1~0clkctrl_outclk\,
	combout => \rec_spi|rx_data\(5));

-- Location: LCCOMB_X28_Y2_N20
\rec_spi|rx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_buf[6]~6_combout\ = (\rec_spi|wr_add~q\ & (((\rec_spi|rx_buf\(6))))) # (!\rec_spi|wr_add~q\ & ((\rec_spi|bit_cnt\(10) & (\rec_mosi~input_o\)) # (!\rec_spi|bit_cnt\(10) & ((\rec_spi|rx_buf\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|wr_add~q\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi|rx_buf\(6),
	datad => \rec_spi|bit_cnt\(10),
	combout => \rec_spi|rx_buf[6]~6_combout\);

-- Location: FF_X28_Y2_N21
\rec_spi|rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|rx_buf[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|rx_buf\(6));

-- Location: LCCOMB_X27_Y2_N2
\rec_spi|rx_data[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_data\(6) = (GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & (\rec_spi|rx_buf\(6))) # (!GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & ((\rec_spi|rx_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|rx_buf\(6),
	datab => \rec_spi|rx_data\(6),
	datad => \rec_spi|process_1~0clkctrl_outclk\,
	combout => \rec_spi|rx_data\(6));

-- Location: LCCOMB_X28_Y2_N28
\rec_spi|rx_buf[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_buf[7]~7_combout\ = (\rec_spi|bit_cnt\(9) & ((\rec_spi|wr_add~q\ & ((\rec_spi|rx_buf\(7)))) # (!\rec_spi|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi|bit_cnt\(9) & (((\rec_spi|rx_buf\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|bit_cnt\(9),
	datab => \rec_mosi~input_o\,
	datac => \rec_spi|rx_buf\(7),
	datad => \rec_spi|wr_add~q\,
	combout => \rec_spi|rx_buf[7]~7_combout\);

-- Location: FF_X28_Y2_N29
\rec_spi|rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|rx_buf[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|rx_buf\(7));

-- Location: LCCOMB_X28_Y2_N14
\rec_spi|rx_data[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|rx_data\(7) = (GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & (\rec_spi|rx_buf\(7))) # (!GLOBAL(\rec_spi|process_1~0clkctrl_outclk\) & ((\rec_spi|rx_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|rx_buf\(7),
	datac => \rec_spi|rx_data\(7),
	datad => \rec_spi|process_1~0clkctrl_outclk\,
	combout => \rec_spi|rx_data\(7));

-- Location: LCCOMB_X27_Y3_N4
\rec_spi|sel[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|sel[0]~0_combout\ = (\rec_spi|bit_cnt\(4) & ((\rec_mosi~input_o\))) # (!\rec_spi|bit_cnt\(4) & (\rec_spi|sel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi|bit_cnt\(4),
	datac => \rec_spi|sel\(0),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi|sel[0]~0_combout\);

-- Location: FF_X27_Y3_N5
\rec_spi|sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|sel\(0));

-- Location: LCCOMB_X27_Y3_N6
\rec_spi|sel[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi|sel[1]~1_combout\ = (\rec_spi|bit_cnt\(3) & ((\rec_mosi~input_o\))) # (!\rec_spi|bit_cnt\(3) & (\rec_spi|sel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi|bit_cnt\(3),
	datac => \rec_spi|sel\(1),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi|sel[1]~1_combout\);

-- Location: FF_X27_Y3_N7
\rec_spi|sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi|sel[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi|sel\(1));

-- Location: IOIBUF_X3_Y0_N1
\ecg_st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_en,
	o => \ecg_st_load_en~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\rec_st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_en,
	o => \rec_st_load_en~input_o\);

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

ww_rec_selectpins(0) <= \rec_selectpins[0]~output_o\;

ww_rec_selectpins(1) <= \rec_selectpins[1]~output_o\;
END structure;


