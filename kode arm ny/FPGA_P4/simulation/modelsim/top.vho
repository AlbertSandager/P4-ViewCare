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

-- DATE "05/15/2019 12:45:09"

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
	ecg_tx_load_data : IN std_logic_vector(23 DOWNTO 0);
	ecg_trdy : BUFFER std_logic;
	ecg_roe : BUFFER std_logic;
	ecg_busy : OUT std_logic;
	ecg_miso : OUT std_logic;
	rec_sclk : IN std_logic;
	rec_ss_n : IN std_logic;
	rec_mosi : IN std_logic;
	rec_rx_req : IN std_logic;
	rec_st_load_en : IN std_logic;
	rec_st_load_trdy : IN std_logic;
	rec_st_load_rrdy : IN std_logic;
	rec_st_load_roe : IN std_logic;
	rec_trdy : BUFFER std_logic;
	rec_rrdy : BUFFER std_logic;
	rec_roe : BUFFER std_logic;
	rec_rx_data : OUT std_logic_vector(23 DOWNTO 0);
	rec_busy : OUT std_logic;
	rec_miso : OUT std_logic;
	i2s_clk : IN std_logic;
	i2s_bclk : IN std_logic;
	i2s_lrclk : IN std_logic;
	i2s_adc_data : IN std_logic;
	i2s_ready_port : OUT std_logic;
	i2s_l_led_out : OUT std_logic_vector(23 DOWNTO 0);
	i2s_r_led_out : OUT std_logic_vector(23 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- ecg_st_load_en	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_trdy	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_roe	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_busy	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_miso	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_en	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_trdy	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rrdy	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_roe	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[2]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[3]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[4]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[5]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[9]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[10]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[11]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[12]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[13]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[14]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[15]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[16]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[17]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[18]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[19]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[20]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[21]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[22]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[23]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_busy	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_miso	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_ready_port	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[3]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[7]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[8]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[9]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[10]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[11]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[12]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[13]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[14]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[15]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[16]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[17]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[18]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[19]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[20]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[21]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[22]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[23]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[4]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[6]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[7]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[8]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[9]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[10]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[11]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[12]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[13]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[14]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[15]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[16]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[17]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[18]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[19]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[20]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[21]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[22]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[23]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_ss_n	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_ss_n	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_req	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_adc_data	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_lrclk	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_mosi	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_sclk	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_en	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_trdy	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_roe	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_mosi	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_sclk	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_trdy	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_rrdy	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_roe	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[23]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_rx_req	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_rrdy	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_bclk	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[22]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[21]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[20]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[19]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[18]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[17]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[16]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[15]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[14]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[13]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[12]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[11]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[10]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[9]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[8]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[7]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[6]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[2]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[0]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ecg_tx_load_data : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_ecg_trdy : std_logic;
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
SIGNAL ww_rec_trdy : std_logic;
SIGNAL ww_rec_rrdy : std_logic;
SIGNAL ww_rec_roe : std_logic;
SIGNAL ww_rec_rx_data : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_rec_busy : std_logic;
SIGNAL ww_rec_miso : std_logic;
SIGNAL ww_i2s_clk : std_logic;
SIGNAL ww_i2s_bclk : std_logic;
SIGNAL ww_i2s_lrclk : std_logic;
SIGNAL ww_i2s_adc_data : std_logic;
SIGNAL ww_i2s_ready_port : std_logic;
SIGNAL ww_i2s_l_led_out : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_i2s_r_led_out : std_logic_vector(23 DOWNTO 0);
SIGNAL \rec_spi_ports|process_1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ecg_spi_ports|process_1~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2s_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ecg_st_load_en~input_o\ : std_logic;
SIGNAL \rec_st_load_en~input_o\ : std_logic;
SIGNAL \ecg_miso~output_o\ : std_logic;
SIGNAL \rec_miso~output_o\ : std_logic;
SIGNAL \ecg_trdy~output_o\ : std_logic;
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
SIGNAL \rec_rx_data[8]~output_o\ : std_logic;
SIGNAL \rec_rx_data[9]~output_o\ : std_logic;
SIGNAL \rec_rx_data[10]~output_o\ : std_logic;
SIGNAL \rec_rx_data[11]~output_o\ : std_logic;
SIGNAL \rec_rx_data[12]~output_o\ : std_logic;
SIGNAL \rec_rx_data[13]~output_o\ : std_logic;
SIGNAL \rec_rx_data[14]~output_o\ : std_logic;
SIGNAL \rec_rx_data[15]~output_o\ : std_logic;
SIGNAL \rec_rx_data[16]~output_o\ : std_logic;
SIGNAL \rec_rx_data[17]~output_o\ : std_logic;
SIGNAL \rec_rx_data[18]~output_o\ : std_logic;
SIGNAL \rec_rx_data[19]~output_o\ : std_logic;
SIGNAL \rec_rx_data[20]~output_o\ : std_logic;
SIGNAL \rec_rx_data[21]~output_o\ : std_logic;
SIGNAL \rec_rx_data[22]~output_o\ : std_logic;
SIGNAL \rec_rx_data[23]~output_o\ : std_logic;
SIGNAL \rec_busy~output_o\ : std_logic;
SIGNAL \i2s_ready_port~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[0]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[1]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[2]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[3]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[4]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[5]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[6]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[7]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[8]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[9]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[10]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[11]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[12]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[13]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[14]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[15]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[16]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[17]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[18]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[19]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[20]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[21]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[22]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[23]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[0]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[1]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[2]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[3]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[4]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[5]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[6]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[7]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[8]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[9]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[10]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[11]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[12]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[13]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[14]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[15]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[16]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[17]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[18]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[19]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[20]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[21]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[22]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[23]~output_o\ : std_logic;
SIGNAL \ecg_sclk~input_o\ : std_logic;
SIGNAL \ecg_tx_load_en~input_o\ : std_logic;
SIGNAL \ecg_ss_n~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|process_1~1_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[23]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[22]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[21]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|process_1~1clkctrl_outclk\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[21]~9_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[20]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[20]~13_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[19]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[19]~17_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[18]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[18]~21_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[17]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[17]~25_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[14]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[14]~37_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[13]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[13]~41_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[12]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[12]~45_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[11]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[11]~49_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[9]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[9]~57_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[8]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[8]~61_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[7]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[7]~65_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[6]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[6]~69_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[4]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[4]~77_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[3]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[3]~81_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[2]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[2]~85_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[1]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[1]~89_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[0]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[0]~93_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[0]~95_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|process_1~5_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[5]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[10]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[11]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[15]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[16]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[17]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[18]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[19]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[20]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[21]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[24]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[25]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[29]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[30]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|bit_cnt[31]~feeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|process_1~4_combout\ : std_logic;
SIGNAL \ecg_mosi~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|rd_add~0_combout\ : std_logic;
SIGNAL \ecg_spi_ports|rd_add~q\ : std_logic;
SIGNAL \ecg_spi_ports|process_1~8_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[0]~94_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[1]~91_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[1]~90_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[2]~87_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[2]~86_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[3]~83_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[3]~82_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[4]~79_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[4]~78_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[5]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[5]~73_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[5]~75_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[5]~74_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[6]~71_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[6]~70_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[7]~67_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[7]~66_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[8]~63_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[8]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[8]~62_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[9]~59_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[9]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[9]~58_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[10]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[10]~53_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[10]~55_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[10]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[10]~54_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[11]~51_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[11]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[11]~50_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[12]~47_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[12]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[12]~46_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[13]~43_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[13]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[13]~42_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[14]~39_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[14]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[14]~38_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[15]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[15]~33_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[15]~35_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[15]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[15]~34_combout\ : std_logic;
SIGNAL \ecg_tx_load_data[16]~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[16]~29_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[16]~31_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[16]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[16]~30_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[17]~27_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[17]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[17]~26_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[18]~23_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[18]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[18]~22_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[19]~19_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[19]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[19]~18_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[20]~15_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[20]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[20]~14_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[21]~11_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[21]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[21]~10_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[22]~5_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[22]~7_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[22]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[22]~6_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[23]~1_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[23]~3_combout\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[23]~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|tx_buf[23]~2_combout\ : std_logic;
SIGNAL \ecg_st_load_trdy~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|process_1~2_combout\ : std_logic;
SIGNAL \ecg_spi_ports|trdy~1_combout\ : std_logic;
SIGNAL \ecg_spi_ports|wr_add~0_combout\ : std_logic;
SIGNAL \ecg_spi_ports|wr_add~q\ : std_logic;
SIGNAL \ecg_spi_ports|process_1~0_combout\ : std_logic;
SIGNAL \ecg_spi_ports|trdy~7_combout\ : std_logic;
SIGNAL \ecg_spi_ports|trdy~3_combout\ : std_logic;
SIGNAL \ecg_spi_ports|trdy~0_combout\ : std_logic;
SIGNAL \ecg_spi_ports|trdy~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|trdy~2_combout\ : std_logic;
SIGNAL \ecg_st_load_rrdy~input_o\ : std_logic;
SIGNAL \ecg_rx_req~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|process_1~7_combout\ : std_logic;
SIGNAL \ecg_spi_ports|rrdy~1_combout\ : std_logic;
SIGNAL \ecg_spi_ports|process_1~6_combout\ : std_logic;
SIGNAL \ecg_spi_ports|rrdy~6_combout\ : std_logic;
SIGNAL \ecg_spi_ports|rrdy~3_combout\ : std_logic;
SIGNAL \ecg_spi_ports|rrdy~0_combout\ : std_logic;
SIGNAL \ecg_spi_ports|rrdy~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|rrdy~2_combout\ : std_logic;
SIGNAL \ecg_st_load_roe~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|process_1~3_combout\ : std_logic;
SIGNAL \ecg_spi_ports|roe~1_combout\ : std_logic;
SIGNAL \ecg_spi_ports|roe~6_combout\ : std_logic;
SIGNAL \ecg_spi_ports|roe~7_combout\ : std_logic;
SIGNAL \ecg_spi_ports|roe~3_combout\ : std_logic;
SIGNAL \ecg_spi_ports|roe~0_combout\ : std_logic;
SIGNAL \ecg_spi_ports|roe~_emulated_q\ : std_logic;
SIGNAL \ecg_spi_ports|roe~2_combout\ : std_logic;
SIGNAL \ecg_spi_ports|miso~0_combout\ : std_logic;
SIGNAL \ecg_spi_ports|miso~1_combout\ : std_logic;
SIGNAL \ecg_spi_ports|miso~2_combout\ : std_logic;
SIGNAL \ecg_spi_ports|miso~3_combout\ : std_logic;
SIGNAL \ecg_spi_ports|miso~4_combout\ : std_logic;
SIGNAL \ecg_spi_ports|miso~reg0_q\ : std_logic;
SIGNAL \ecg_spi_ports|miso~enfeeder_combout\ : std_logic;
SIGNAL \ecg_spi_ports|miso~en_q\ : std_logic;
SIGNAL \rec_sclk~input_o\ : std_logic;
SIGNAL \rec_mosi~input_o\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \rec_ss_n~input_o\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|rd_add~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|rd_add~q\ : std_logic;
SIGNAL \i2s_clk~input_o\ : std_logic;
SIGNAL \i2s_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i2s_adc_data~input_o\ : std_logic;
SIGNAL \i2s_lrclk~input_o\ : std_logic;
SIGNAL \i2s_bclk~input_o\ : std_logic;
SIGNAL \i2s_ports|zbclk~q\ : std_logic;
SIGNAL \i2s_ports|zzbclk~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|zzbclk~q\ : std_logic;
SIGNAL \i2s_ports|zzzbclk~q\ : std_logic;
SIGNAL \i2s_ports|pos_edge~0_combout\ : std_logic;
SIGNAL \i2s_ports|pos_edge~q\ : std_logic;
SIGNAL \i2s_ports|l_get_data~0_combout\ : std_logic;
SIGNAL \i2s_ports|l_sr_in[1]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|l_sr_in[6]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|l_sr_in[11]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|l_sr_in[15]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|l_sr_in[16]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|l_sr_in[17]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|l_sr_in[18]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|l_sr_in[19]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[23]~1_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[22]~5_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[21]~9_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[20]~13_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[19]~17_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[18]~21_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[17]~25_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[16]~29_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[15]~33_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[14]~37_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[13]~41_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[12]~45_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[11]~49_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[10]~53_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[9]~57_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[8]~61_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[7]~65_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[6]~69_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[5]~73_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[4]~77_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[3]~81_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[2]~85_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[1]~89_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[0]~93_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[0]~95_combout\ : std_logic;
SIGNAL \rec_spi_ports|process_1~8_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[5]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[8]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[9]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[12]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[14]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[15]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[16]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[17]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[19]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[20]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[22]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[23]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[25]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[26]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[29]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[32]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|process_1~7_combout\ : std_logic;
SIGNAL \rec_spi_ports|process_1~9_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[0]~94_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[1]~91_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[1]~90_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[2]~87_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[2]~86_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[3]~83_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[3]~82_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[4]~79_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[4]~78_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[5]~75_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[5]~74_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[6]~71_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[6]~70_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[7]~67_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[7]~66_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[8]~63_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[8]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[8]~62_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[9]~59_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[9]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[9]~58_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[10]~55_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[10]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[10]~54_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[11]~51_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[11]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[11]~50_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[12]~47_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[12]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[12]~46_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[13]~43_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[13]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[13]~42_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[14]~39_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[14]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[14]~38_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[15]~35_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[15]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[15]~34_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[16]~31_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[16]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[16]~30_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[17]~27_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[17]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[17]~26_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[18]~23_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[18]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[18]~22_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[19]~19_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[19]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[19]~18_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[20]~15_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[20]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[20]~14_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[21]~11_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[21]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[21]~10_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[22]~7_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[22]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[22]~6_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[23]~3_combout\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[23]~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|tx_buf[23]~2_combout\ : std_logic;
SIGNAL \rec_st_load_trdy~input_o\ : std_logic;
SIGNAL \rec_spi_ports|process_1~2_combout\ : std_logic;
SIGNAL \rec_spi_ports|trdy~1_combout\ : std_logic;
SIGNAL \rec_spi_ports|wr_add~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|wr_add~q\ : std_logic;
SIGNAL \rec_spi_ports|process_1~1_combout\ : std_logic;
SIGNAL \rec_spi_ports|trdy~6_combout\ : std_logic;
SIGNAL \rec_spi_ports|trdy~3_combout\ : std_logic;
SIGNAL \rec_spi_ports|trdy~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|trdy~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|trdy~2_combout\ : std_logic;
SIGNAL \rec_st_load_roe~input_o\ : std_logic;
SIGNAL \rec_spi_ports|process_1~6_combout\ : std_logic;
SIGNAL \rec_spi_ports|roe~1_combout\ : std_logic;
SIGNAL \rec_spi_ports|roe~7_combout\ : std_logic;
SIGNAL \rec_st_load_rrdy~input_o\ : std_logic;
SIGNAL \rec_rx_req~input_o\ : std_logic;
SIGNAL \rec_spi_ports|process_1~4_combout\ : std_logic;
SIGNAL \rec_spi_ports|rrdy~1_combout\ : std_logic;
SIGNAL \rec_spi_ports|process_1~3_combout\ : std_logic;
SIGNAL \rec_spi_ports|rrdy~6_combout\ : std_logic;
SIGNAL \rec_spi_ports|rrdy~3_combout\ : std_logic;
SIGNAL \rec_spi_ports|rrdy~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|rrdy~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|rrdy~2_combout\ : std_logic;
SIGNAL \rec_spi_ports|process_1~5_combout\ : std_logic;
SIGNAL \rec_spi_ports|roe~6_combout\ : std_logic;
SIGNAL \rec_spi_ports|roe~3_combout\ : std_logic;
SIGNAL \rec_spi_ports|roe~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|roe~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|roe~2_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~1_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~2_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~3_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~4_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~reg0_q\ : std_logic;
SIGNAL \rec_spi_ports|miso~enfeeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~en_q\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[0]~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|process_1~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|process_1~0clkctrl_outclk\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[1]~1_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[2]~2_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[3]~3_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[4]~4_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[5]~5_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[6]~6_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[7]~7_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[8]~8_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[9]~9_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[10]~10_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[11]~11_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[12]~12_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[13]~13_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[14]~14_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[15]~15_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[16]~16_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[17]~17_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[18]~18_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[19]~19_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[20]~20_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[21]~21_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[22]~22_combout\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf[23]~23_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[0]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_get_data~0_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[1]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[2]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[3]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[4]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[5]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[6]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[7]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[8]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[9]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[10]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[11]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[12]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[13]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[15]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[16]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[17]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[18]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[19]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[20]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[21]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[22]~feeder_combout\ : std_logic;
SIGNAL \i2s_ports|r_sr_in[23]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \ecg_spi_ports|bit_cnt\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \i2s_ports|r_sr_in\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \i2s_ports|l_sr_in\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \rec_spi_ports|rx_data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \rec_spi_ports|rx_buf\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rec_sclk~input_o\ : std_logic;
SIGNAL \ALT_INV_ecg_sclk~input_o\ : std_logic;
SIGNAL \ALT_INV_rec_ss_n~input_o\ : std_logic;
SIGNAL \ALT_INV_ecg_ss_n~input_o\ : std_logic;
SIGNAL \ecg_spi_ports|ALT_INV_rrdy~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|ALT_INV_roe~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|ALT_INV_rrdy~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|ALT_INV_trdy~0_combout\ : std_logic;
SIGNAL \ecg_spi_ports|ALT_INV_roe~0_combout\ : std_logic;
SIGNAL \ecg_spi_ports|ALT_INV_trdy~0_combout\ : std_logic;

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
rec_trdy <= ww_rec_trdy;
rec_rrdy <= ww_rec_rrdy;
rec_roe <= ww_rec_roe;
rec_rx_data <= ww_rec_rx_data;
rec_busy <= ww_rec_busy;
rec_miso <= ww_rec_miso;
ww_i2s_clk <= i2s_clk;
ww_i2s_bclk <= i2s_bclk;
ww_i2s_lrclk <= i2s_lrclk;
ww_i2s_adc_data <= i2s_adc_data;
i2s_ready_port <= ww_i2s_ready_port;
i2s_l_led_out <= ww_i2s_l_led_out;
i2s_r_led_out <= ww_i2s_r_led_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rec_spi_ports|process_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rec_spi_ports|process_1~0_combout\);

\ecg_spi_ports|process_1~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ecg_spi_ports|process_1~1_combout\);

\i2s_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i2s_clk~input_o\);
\ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\ <= NOT \ecg_spi_ports|process_1~1clkctrl_outclk\;
\ALT_INV_rec_sclk~input_o\ <= NOT \rec_sclk~input_o\;
\ALT_INV_ecg_sclk~input_o\ <= NOT \ecg_sclk~input_o\;
\ALT_INV_rec_ss_n~input_o\ <= NOT \rec_ss_n~input_o\;
\ALT_INV_ecg_ss_n~input_o\ <= NOT \ecg_ss_n~input_o\;
\ecg_spi_ports|ALT_INV_rrdy~0_combout\ <= NOT \ecg_spi_ports|rrdy~0_combout\;
\rec_spi_ports|ALT_INV_roe~0_combout\ <= NOT \rec_spi_ports|roe~0_combout\;
\rec_spi_ports|ALT_INV_rrdy~0_combout\ <= NOT \rec_spi_ports|rrdy~0_combout\;
\rec_spi_ports|ALT_INV_trdy~0_combout\ <= NOT \rec_spi_ports|trdy~0_combout\;
\ecg_spi_ports|ALT_INV_roe~0_combout\ <= NOT \ecg_spi_ports|roe~0_combout\;
\ecg_spi_ports|ALT_INV_trdy~0_combout\ <= NOT \ecg_spi_ports|trdy~0_combout\;

-- Location: IOOBUF_X32_Y0_N16
\ecg_miso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ecg_spi_ports|miso~reg0_q\,
	oe => \ecg_spi_ports|miso~en_q\,
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
	i => \rec_spi_ports|miso~reg0_q\,
	oe => \rec_spi_ports|miso~en_q\,
	devoe => ww_devoe,
	o => \rec_miso~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\ecg_trdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ecg_spi_ports|trdy~2_combout\,
	devoe => ww_devoe,
	o => \ecg_trdy~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\ecg_roe~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ecg_spi_ports|roe~2_combout\,
	devoe => ww_devoe,
	o => \ecg_roe~output_o\);

-- Location: IOOBUF_X30_Y0_N9
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

-- Location: IOOBUF_X32_Y0_N30
\rec_trdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|trdy~2_combout\,
	devoe => ww_devoe,
	o => \rec_trdy~output_o\);

-- Location: IOOBUF_X41_Y2_N2
\rec_rrdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rrdy~2_combout\,
	devoe => ww_devoe,
	o => \rec_rrdy~output_o\);

-- Location: IOOBUF_X41_Y2_N23
\rec_roe~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|roe~2_combout\,
	devoe => ww_devoe,
	o => \rec_roe~output_o\);

-- Location: IOOBUF_X41_Y3_N2
\rec_rx_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(0),
	devoe => ww_devoe,
	o => \rec_rx_data[0]~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\rec_rx_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(1),
	devoe => ww_devoe,
	o => \rec_rx_data[1]~output_o\);

-- Location: IOOBUF_X41_Y8_N2
\rec_rx_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(2),
	devoe => ww_devoe,
	o => \rec_rx_data[2]~output_o\);

-- Location: IOOBUF_X41_Y5_N23
\rec_rx_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(3),
	devoe => ww_devoe,
	o => \rec_rx_data[3]~output_o\);

-- Location: IOOBUF_X41_Y7_N23
\rec_rx_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(4),
	devoe => ww_devoe,
	o => \rec_rx_data[4]~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\rec_rx_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(5),
	devoe => ww_devoe,
	o => \rec_rx_data[5]~output_o\);

-- Location: IOOBUF_X41_Y4_N2
\rec_rx_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(6),
	devoe => ww_devoe,
	o => \rec_rx_data[6]~output_o\);

-- Location: IOOBUF_X41_Y8_N23
\rec_rx_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(7),
	devoe => ww_devoe,
	o => \rec_rx_data[7]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\rec_rx_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(8),
	devoe => ww_devoe,
	o => \rec_rx_data[8]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\rec_rx_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(9),
	devoe => ww_devoe,
	o => \rec_rx_data[9]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\rec_rx_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(10),
	devoe => ww_devoe,
	o => \rec_rx_data[10]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\rec_rx_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(11),
	devoe => ww_devoe,
	o => \rec_rx_data[11]~output_o\);

-- Location: IOOBUF_X41_Y7_N2
\rec_rx_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(12),
	devoe => ww_devoe,
	o => \rec_rx_data[12]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\rec_rx_data[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(13),
	devoe => ww_devoe,
	o => \rec_rx_data[13]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\rec_rx_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(14),
	devoe => ww_devoe,
	o => \rec_rx_data[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\rec_rx_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(15),
	devoe => ww_devoe,
	o => \rec_rx_data[15]~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\rec_rx_data[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(16),
	devoe => ww_devoe,
	o => \rec_rx_data[16]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\rec_rx_data[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(17),
	devoe => ww_devoe,
	o => \rec_rx_data[17]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\rec_rx_data[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(18),
	devoe => ww_devoe,
	o => \rec_rx_data[18]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\rec_rx_data[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(19),
	devoe => ww_devoe,
	o => \rec_rx_data[19]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\rec_rx_data[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(20),
	devoe => ww_devoe,
	o => \rec_rx_data[20]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\rec_rx_data[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(21),
	devoe => ww_devoe,
	o => \rec_rx_data[21]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\rec_rx_data[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(22),
	devoe => ww_devoe,
	o => \rec_rx_data[22]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\rec_rx_data[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|rx_data\(23),
	devoe => ww_devoe,
	o => \rec_rx_data[23]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
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

-- Location: IOOBUF_X35_Y0_N9
\i2s_ready_port~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \i2s_ready_port~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\i2s_l_led_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(0),
	devoe => ww_devoe,
	o => \i2s_l_led_out[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\i2s_l_led_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(1),
	devoe => ww_devoe,
	o => \i2s_l_led_out[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\i2s_l_led_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(2),
	devoe => ww_devoe,
	o => \i2s_l_led_out[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\i2s_l_led_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(3),
	devoe => ww_devoe,
	o => \i2s_l_led_out[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\i2s_l_led_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(4),
	devoe => ww_devoe,
	o => \i2s_l_led_out[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\i2s_l_led_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(5),
	devoe => ww_devoe,
	o => \i2s_l_led_out[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\i2s_l_led_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(6),
	devoe => ww_devoe,
	o => \i2s_l_led_out[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\i2s_l_led_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(7),
	devoe => ww_devoe,
	o => \i2s_l_led_out[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\i2s_l_led_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(8),
	devoe => ww_devoe,
	o => \i2s_l_led_out[8]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\i2s_l_led_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(9),
	devoe => ww_devoe,
	o => \i2s_l_led_out[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\i2s_l_led_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(10),
	devoe => ww_devoe,
	o => \i2s_l_led_out[10]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\i2s_l_led_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(11),
	devoe => ww_devoe,
	o => \i2s_l_led_out[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\i2s_l_led_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(12),
	devoe => ww_devoe,
	o => \i2s_l_led_out[12]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\i2s_l_led_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(13),
	devoe => ww_devoe,
	o => \i2s_l_led_out[13]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\i2s_l_led_out[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(14),
	devoe => ww_devoe,
	o => \i2s_l_led_out[14]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\i2s_l_led_out[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(15),
	devoe => ww_devoe,
	o => \i2s_l_led_out[15]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\i2s_l_led_out[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(16),
	devoe => ww_devoe,
	o => \i2s_l_led_out[16]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\i2s_l_led_out[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(17),
	devoe => ww_devoe,
	o => \i2s_l_led_out[17]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\i2s_l_led_out[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(18),
	devoe => ww_devoe,
	o => \i2s_l_led_out[18]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\i2s_l_led_out[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(19),
	devoe => ww_devoe,
	o => \i2s_l_led_out[19]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\i2s_l_led_out[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(20),
	devoe => ww_devoe,
	o => \i2s_l_led_out[20]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\i2s_l_led_out[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(21),
	devoe => ww_devoe,
	o => \i2s_l_led_out[21]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\i2s_l_led_out[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(22),
	devoe => ww_devoe,
	o => \i2s_l_led_out[22]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\i2s_l_led_out[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|r_sr_in\(23),
	devoe => ww_devoe,
	o => \i2s_l_led_out[23]~output_o\);

-- Location: IOOBUF_X41_Y7_N9
\i2s_r_led_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(0),
	devoe => ww_devoe,
	o => \i2s_r_led_out[0]~output_o\);

-- Location: IOOBUF_X41_Y10_N16
\i2s_r_led_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(1),
	devoe => ww_devoe,
	o => \i2s_r_led_out[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\i2s_r_led_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(2),
	devoe => ww_devoe,
	o => \i2s_r_led_out[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N23
\i2s_r_led_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(3),
	devoe => ww_devoe,
	o => \i2s_r_led_out[3]~output_o\);

-- Location: IOOBUF_X41_Y8_N9
\i2s_r_led_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(4),
	devoe => ww_devoe,
	o => \i2s_r_led_out[4]~output_o\);

-- Location: IOOBUF_X41_Y7_N16
\i2s_r_led_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(5),
	devoe => ww_devoe,
	o => \i2s_r_led_out[5]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\i2s_r_led_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(6),
	devoe => ww_devoe,
	o => \i2s_r_led_out[6]~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\i2s_r_led_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(7),
	devoe => ww_devoe,
	o => \i2s_r_led_out[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\i2s_r_led_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(8),
	devoe => ww_devoe,
	o => \i2s_r_led_out[8]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\i2s_r_led_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(9),
	devoe => ww_devoe,
	o => \i2s_r_led_out[9]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\i2s_r_led_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(10),
	devoe => ww_devoe,
	o => \i2s_r_led_out[10]~output_o\);

-- Location: IOOBUF_X39_Y0_N9
\i2s_r_led_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(11),
	devoe => ww_devoe,
	o => \i2s_r_led_out[11]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\i2s_r_led_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(12),
	devoe => ww_devoe,
	o => \i2s_r_led_out[12]~output_o\);

-- Location: IOOBUF_X41_Y6_N23
\i2s_r_led_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(13),
	devoe => ww_devoe,
	o => \i2s_r_led_out[13]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\i2s_r_led_out[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(14),
	devoe => ww_devoe,
	o => \i2s_r_led_out[14]~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\i2s_r_led_out[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(15),
	devoe => ww_devoe,
	o => \i2s_r_led_out[15]~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\i2s_r_led_out[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(16),
	devoe => ww_devoe,
	o => \i2s_r_led_out[16]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\i2s_r_led_out[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(17),
	devoe => ww_devoe,
	o => \i2s_r_led_out[17]~output_o\);

-- Location: IOOBUF_X41_Y2_N9
\i2s_r_led_out[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(18),
	devoe => ww_devoe,
	o => \i2s_r_led_out[18]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\i2s_r_led_out[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(19),
	devoe => ww_devoe,
	o => \i2s_r_led_out[19]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\i2s_r_led_out[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(20),
	devoe => ww_devoe,
	o => \i2s_r_led_out[20]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\i2s_r_led_out[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(21),
	devoe => ww_devoe,
	o => \i2s_r_led_out[21]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\i2s_r_led_out[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(22),
	devoe => ww_devoe,
	o => \i2s_r_led_out[22]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\i2s_r_led_out[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2s_ports|l_sr_in\(23),
	devoe => ww_devoe,
	o => \i2s_r_led_out[23]~output_o\);

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

-- Location: IOIBUF_X11_Y0_N22
\ecg_tx_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_en,
	o => \ecg_tx_load_en~input_o\);

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

-- Location: LCCOMB_X21_Y1_N10
\ecg_spi_ports|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|process_1~1_combout\ = (\ecg_tx_load_en~input_o\ & \ecg_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_en~input_o\,
	datad => \ecg_ss_n~input_o\,
	combout => \ecg_spi_ports|process_1~1_combout\);

-- Location: IOIBUF_X11_Y0_N15
\ecg_tx_load_data[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(23),
	o => \ecg_tx_load_data[23]~input_o\);

-- Location: IOIBUF_X21_Y29_N22
\ecg_tx_load_data[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(22),
	o => \ecg_tx_load_data[22]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\ecg_tx_load_data[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(21),
	o => \ecg_tx_load_data[21]~input_o\);

-- Location: CLKCTRL_G15
\ecg_spi_ports|process_1~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ecg_spi_ports|process_1~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ecg_spi_ports|process_1~1clkctrl_outclk\);

-- Location: LCCOMB_X22_Y1_N30
\ecg_spi_ports|tx_buf[21]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[21]~9_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[21]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[21]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_load_data[21]~input_o\,
	datac => \ecg_spi_ports|tx_buf[21]~9_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[21]~9_combout\);

-- Location: IOIBUF_X21_Y0_N29
\ecg_tx_load_data[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(20),
	o => \ecg_tx_load_data[20]~input_o\);

-- Location: LCCOMB_X22_Y1_N8
\ecg_spi_ports|tx_buf[20]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[20]~13_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[20]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[20]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[20]~input_o\,
	datac => \ecg_spi_ports|tx_buf[20]~13_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[20]~13_combout\);

-- Location: IOIBUF_X23_Y0_N22
\ecg_tx_load_data[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(19),
	o => \ecg_tx_load_data[19]~input_o\);

-- Location: LCCOMB_X22_Y1_N26
\ecg_spi_ports|tx_buf[19]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[19]~17_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[19]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[19]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[19]~input_o\,
	datac => \ecg_spi_ports|tx_buf[19]~17_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[19]~17_combout\);

-- Location: IOIBUF_X14_Y0_N15
\ecg_tx_load_data[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(18),
	o => \ecg_tx_load_data[18]~input_o\);

-- Location: LCCOMB_X22_Y2_N10
\ecg_spi_ports|tx_buf[18]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[18]~21_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[18]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[18]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_load_data[18]~input_o\,
	datac => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	datad => \ecg_spi_ports|tx_buf[18]~21_combout\,
	combout => \ecg_spi_ports|tx_buf[18]~21_combout\);

-- Location: IOIBUF_X11_Y0_N8
\ecg_tx_load_data[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(17),
	o => \ecg_tx_load_data[17]~input_o\);

-- Location: LCCOMB_X22_Y2_N20
\ecg_spi_ports|tx_buf[17]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[17]~25_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[17]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[17]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[17]~input_o\,
	datac => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	datad => \ecg_spi_ports|tx_buf[17]~25_combout\,
	combout => \ecg_spi_ports|tx_buf[17]~25_combout\);

-- Location: IOIBUF_X3_Y0_N29
\ecg_tx_load_data[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(14),
	o => \ecg_tx_load_data[14]~input_o\);

-- Location: LCCOMB_X22_Y2_N14
\ecg_spi_ports|tx_buf[14]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[14]~37_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[14]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[14]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_load_data[14]~input_o\,
	datac => \ecg_spi_ports|tx_buf[14]~37_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[14]~37_combout\);

-- Location: IOIBUF_X9_Y0_N15
\ecg_tx_load_data[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(13),
	o => \ecg_tx_load_data[13]~input_o\);

-- Location: LCCOMB_X21_Y1_N24
\ecg_spi_ports|tx_buf[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[13]~41_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[13]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[13]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[13]~input_o\,
	datab => \ecg_spi_ports|tx_buf[13]~41_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[13]~41_combout\);

-- Location: IOIBUF_X1_Y0_N29
\ecg_tx_load_data[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(12),
	o => \ecg_tx_load_data[12]~input_o\);

-- Location: LCCOMB_X23_Y1_N30
\ecg_spi_ports|tx_buf[12]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[12]~45_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[12]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[12]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_load_data[12]~input_o\,
	datac => \ecg_spi_ports|tx_buf[12]~45_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[12]~45_combout\);

-- Location: IOIBUF_X23_Y0_N15
\ecg_tx_load_data[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(11),
	o => \ecg_tx_load_data[11]~input_o\);

-- Location: LCCOMB_X23_Y1_N24
\ecg_spi_ports|tx_buf[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[11]~49_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[11]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[11]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_load_data[11]~input_o\,
	datac => \ecg_spi_ports|tx_buf[11]~49_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[11]~49_combout\);

-- Location: IOIBUF_X26_Y29_N29
\ecg_tx_load_data[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(9),
	o => \ecg_tx_load_data[9]~input_o\);

-- Location: LCCOMB_X26_Y1_N14
\ecg_spi_ports|tx_buf[9]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[9]~57_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[9]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[9]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[9]~input_o\,
	datab => \ecg_spi_ports|tx_buf[9]~57_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[9]~57_combout\);

-- Location: IOIBUF_X37_Y0_N15
\ecg_tx_load_data[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(8),
	o => \ecg_tx_load_data[8]~input_o\);

-- Location: LCCOMB_X26_Y1_N0
\ecg_spi_ports|tx_buf[8]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[8]~61_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[8]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[8]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[8]~input_o\,
	datab => \ecg_spi_ports|tx_buf[8]~61_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[8]~61_combout\);

-- Location: IOIBUF_X26_Y0_N22
\ecg_tx_load_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(7),
	o => \ecg_tx_load_data[7]~input_o\);

-- Location: LCCOMB_X26_Y1_N30
\ecg_spi_ports|tx_buf[7]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[7]~65_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_tx_load_data[7]~input_o\))) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_spi_ports|tx_buf[7]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[7]~65_combout\,
	datab => \ecg_tx_load_data[7]~input_o\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[7]~65_combout\);

-- Location: IOIBUF_X7_Y0_N29
\ecg_tx_load_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(6),
	o => \ecg_tx_load_data[6]~input_o\);

-- Location: LCCOMB_X26_Y1_N4
\ecg_spi_ports|tx_buf[6]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[6]~69_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[6]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[6]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[6]~input_o\,
	datab => \ecg_spi_ports|tx_buf[6]~69_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[6]~69_combout\);

-- Location: IOIBUF_X23_Y29_N1
\ecg_tx_load_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(4),
	o => \ecg_tx_load_data[4]~input_o\);

-- Location: LCCOMB_X24_Y1_N24
\ecg_spi_ports|tx_buf[4]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[4]~77_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_tx_load_data[4]~input_o\))) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_spi_ports|tx_buf[4]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[4]~77_combout\,
	datac => \ecg_tx_load_data[4]~input_o\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[4]~77_combout\);

-- Location: IOIBUF_X16_Y0_N1
\ecg_tx_load_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(3),
	o => \ecg_tx_load_data[3]~input_o\);

-- Location: LCCOMB_X24_Y1_N30
\ecg_spi_ports|tx_buf[3]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[3]~81_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[3]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[3]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_load_data[3]~input_o\,
	datac => \ecg_spi_ports|tx_buf[3]~81_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[3]~81_combout\);

-- Location: IOIBUF_X1_Y0_N1
\ecg_tx_load_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(2),
	o => \ecg_tx_load_data[2]~input_o\);

-- Location: LCCOMB_X24_Y1_N0
\ecg_spi_ports|tx_buf[2]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[2]~85_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_tx_load_data[2]~input_o\))) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_spi_ports|tx_buf[2]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[2]~85_combout\,
	datac => \ecg_tx_load_data[2]~input_o\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[2]~85_combout\);

-- Location: IOIBUF_X3_Y0_N22
\ecg_tx_load_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(1),
	o => \ecg_tx_load_data[1]~input_o\);

-- Location: LCCOMB_X24_Y1_N14
\ecg_spi_ports|tx_buf[1]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[1]~89_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[1]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[1]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_load_data[1]~input_o\,
	datac => \ecg_spi_ports|tx_buf[1]~89_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[1]~89_combout\);

-- Location: IOIBUF_X5_Y0_N1
\ecg_tx_load_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(0),
	o => \ecg_tx_load_data[0]~input_o\);

-- Location: LCCOMB_X24_Y1_N20
\ecg_spi_ports|tx_buf[0]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[0]~93_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_tx_load_data[0]~input_o\))) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_spi_ports|tx_buf[0]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[0]~93_combout\,
	datac => \ecg_tx_load_data[0]~input_o\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[0]~93_combout\);

-- Location: LCCOMB_X23_Y1_N20
\ecg_spi_ports|tx_buf[0]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[0]~95_combout\ = \ecg_spi_ports|tx_buf[23]~2_combout\ $ (\ecg_spi_ports|tx_buf[0]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[23]~2_combout\,
	datac => \ecg_spi_ports|tx_buf[0]~93_combout\,
	combout => \ecg_spi_ports|tx_buf[0]~95_combout\);

-- Location: LCCOMB_X26_Y2_N28
\ecg_spi_ports|bit_cnt[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \ecg_spi_ports|bit_cnt[1]~feeder_combout\);

-- Location: FF_X26_Y2_N29
\ecg_spi_ports|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[1]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(1));

-- Location: LCCOMB_X26_Y2_N6
\ecg_spi_ports|bit_cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[2]~0_combout\ = !\ecg_spi_ports|bit_cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(1),
	combout => \ecg_spi_ports|bit_cnt[2]~0_combout\);

-- Location: FF_X26_Y2_N7
\ecg_spi_ports|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[2]~0_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(2));

-- Location: LCCOMB_X26_Y2_N10
\ecg_spi_ports|bit_cnt[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[3]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(2),
	combout => \ecg_spi_ports|bit_cnt[3]~feeder_combout\);

-- Location: FF_X26_Y2_N11
\ecg_spi_ports|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[3]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(3));

-- Location: FF_X26_Y2_N31
\ecg_spi_ports|bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(3),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(4));

-- Location: LCCOMB_X26_Y2_N30
\ecg_spi_ports|process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|process_1~5_combout\ = (!\ecg_spi_ports|bit_cnt\(3) & (\ecg_spi_ports|bit_cnt\(1) & (!\ecg_spi_ports|bit_cnt\(4) & !\ecg_spi_ports|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|bit_cnt\(3),
	datab => \ecg_spi_ports|bit_cnt\(1),
	datac => \ecg_spi_ports|bit_cnt\(4),
	datad => \ecg_spi_ports|bit_cnt\(2),
	combout => \ecg_spi_ports|process_1~5_combout\);

-- Location: LCCOMB_X20_Y1_N10
\ecg_spi_ports|bit_cnt[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[5]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(4),
	combout => \ecg_spi_ports|bit_cnt[5]~feeder_combout\);

-- Location: FF_X20_Y1_N11
\ecg_spi_ports|bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[5]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(5));

-- Location: LCCOMB_X26_Y1_N18
\ecg_spi_ports|bit_cnt[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[6]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(5),
	combout => \ecg_spi_ports|bit_cnt[6]~feeder_combout\);

-- Location: FF_X26_Y1_N19
\ecg_spi_ports|bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[6]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(6));

-- Location: FF_X20_Y1_N23
\ecg_spi_ports|bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(6),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(7));

-- Location: FF_X20_Y1_N31
\ecg_spi_ports|bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(7),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(8));

-- Location: FF_X20_Y1_N17
\ecg_spi_ports|bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(8),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(9));

-- Location: LCCOMB_X20_Y1_N2
\ecg_spi_ports|bit_cnt[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[10]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(9),
	combout => \ecg_spi_ports|bit_cnt[10]~feeder_combout\);

-- Location: FF_X20_Y1_N3
\ecg_spi_ports|bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[10]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(10));

-- Location: LCCOMB_X20_Y1_N4
\ecg_spi_ports|bit_cnt[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[11]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(10),
	combout => \ecg_spi_ports|bit_cnt[11]~feeder_combout\);

-- Location: FF_X20_Y1_N5
\ecg_spi_ports|bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[11]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(11));

-- Location: FF_X26_Y1_N5
\ecg_spi_ports|bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(11),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(12));

-- Location: FF_X26_Y1_N31
\ecg_spi_ports|bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(12),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(13));

-- Location: FF_X26_Y1_N21
\ecg_spi_ports|bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(13),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(14));

-- Location: LCCOMB_X26_Y2_N26
\ecg_spi_ports|bit_cnt[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[15]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(14),
	combout => \ecg_spi_ports|bit_cnt[15]~feeder_combout\);

-- Location: FF_X26_Y2_N27
\ecg_spi_ports|bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[15]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(15));

-- Location: LCCOMB_X26_Y2_N16
\ecg_spi_ports|bit_cnt[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[16]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(15),
	combout => \ecg_spi_ports|bit_cnt[16]~feeder_combout\);

-- Location: FF_X26_Y2_N17
\ecg_spi_ports|bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[16]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(16));

-- Location: LCCOMB_X26_Y2_N0
\ecg_spi_ports|bit_cnt[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[17]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(16),
	combout => \ecg_spi_ports|bit_cnt[17]~feeder_combout\);

-- Location: FF_X26_Y2_N1
\ecg_spi_ports|bit_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[17]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(17));

-- Location: LCCOMB_X26_Y2_N20
\ecg_spi_ports|bit_cnt[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[18]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(17),
	combout => \ecg_spi_ports|bit_cnt[18]~feeder_combout\);

-- Location: FF_X26_Y2_N21
\ecg_spi_ports|bit_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[18]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(18));

-- Location: LCCOMB_X26_Y2_N22
\ecg_spi_ports|bit_cnt[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[19]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(18),
	combout => \ecg_spi_ports|bit_cnt[19]~feeder_combout\);

-- Location: FF_X26_Y2_N23
\ecg_spi_ports|bit_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[19]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(19));

-- Location: LCCOMB_X26_Y2_N12
\ecg_spi_ports|bit_cnt[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[20]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(19),
	combout => \ecg_spi_ports|bit_cnt[20]~feeder_combout\);

-- Location: FF_X26_Y2_N13
\ecg_spi_ports|bit_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[20]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(20));

-- Location: LCCOMB_X26_Y2_N24
\ecg_spi_ports|bit_cnt[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[21]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(20),
	combout => \ecg_spi_ports|bit_cnt[21]~feeder_combout\);

-- Location: FF_X26_Y2_N25
\ecg_spi_ports|bit_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[21]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(21));

-- Location: FF_X26_Y1_N15
\ecg_spi_ports|bit_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(21),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(22));

-- Location: FF_X26_Y1_N1
\ecg_spi_ports|bit_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(22),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(23));

-- Location: LCCOMB_X26_Y2_N2
\ecg_spi_ports|bit_cnt[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[24]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(23),
	combout => \ecg_spi_ports|bit_cnt[24]~feeder_combout\);

-- Location: FF_X26_Y2_N3
\ecg_spi_ports|bit_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[24]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(24));

-- Location: LCCOMB_X26_Y2_N18
\ecg_spi_ports|bit_cnt[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[25]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(24),
	combout => \ecg_spi_ports|bit_cnt[25]~feeder_combout\);

-- Location: FF_X26_Y2_N19
\ecg_spi_ports|bit_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[25]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(25));

-- Location: FF_X26_Y2_N15
\ecg_spi_ports|bit_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(25),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(26));

-- Location: FF_X26_Y2_N5
\ecg_spi_ports|bit_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(26),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(27));

-- Location: FF_X26_Y2_N9
\ecg_spi_ports|bit_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(27),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(28));

-- Location: LCCOMB_X30_Y2_N2
\ecg_spi_ports|bit_cnt[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[29]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(28),
	combout => \ecg_spi_ports|bit_cnt[29]~feeder_combout\);

-- Location: FF_X30_Y2_N3
\ecg_spi_ports|bit_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[29]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(29));

-- Location: LCCOMB_X23_Y2_N0
\ecg_spi_ports|bit_cnt[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[30]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(29),
	combout => \ecg_spi_ports|bit_cnt[30]~feeder_combout\);

-- Location: FF_X23_Y2_N1
\ecg_spi_ports|bit_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[30]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(30));

-- Location: LCCOMB_X23_Y2_N30
\ecg_spi_ports|bit_cnt[31]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|bit_cnt[31]~feeder_combout\ = \ecg_spi_ports|bit_cnt\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ecg_spi_ports|bit_cnt\(30),
	combout => \ecg_spi_ports|bit_cnt[31]~feeder_combout\);

-- Location: FF_X23_Y2_N31
\ecg_spi_ports|bit_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|bit_cnt[31]~feeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(31));

-- Location: FF_X20_Y1_N9
\ecg_spi_ports|bit_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	asdata => \ecg_spi_ports|bit_cnt\(31),
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|bit_cnt\(32));

-- Location: LCCOMB_X20_Y1_N20
\ecg_spi_ports|process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|process_1~4_combout\ = (!\ecg_spi_ports|bit_cnt\(5) & (!\ecg_spi_ports|bit_cnt\(6) & (!\ecg_spi_ports|bit_cnt\(7) & !\ecg_spi_ports|bit_cnt\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|bit_cnt\(5),
	datab => \ecg_spi_ports|bit_cnt\(6),
	datac => \ecg_spi_ports|bit_cnt\(7),
	datad => \ecg_spi_ports|bit_cnt\(32),
	combout => \ecg_spi_ports|process_1~4_combout\);

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

-- Location: LCCOMB_X23_Y1_N6
\ecg_spi_ports|rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|rd_add~0_combout\ = (\ecg_spi_ports|bit_cnt\(2) & (\ecg_mosi~input_o\)) # (!\ecg_spi_ports|bit_cnt\(2) & ((\ecg_spi_ports|rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_mosi~input_o\,
	datac => \ecg_spi_ports|rd_add~q\,
	datad => \ecg_spi_ports|bit_cnt\(2),
	combout => \ecg_spi_ports|rd_add~0_combout\);

-- Location: FF_X23_Y1_N7
\ecg_spi_ports|rd_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi_ports|rd_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|rd_add~q\);

-- Location: LCCOMB_X23_Y1_N26
\ecg_spi_ports|process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|process_1~8_combout\ = (\ecg_spi_ports|process_1~5_combout\ & (\ecg_spi_ports|process_1~4_combout\ & !\ecg_spi_ports|rd_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|process_1~5_combout\,
	datac => \ecg_spi_ports|process_1~4_combout\,
	datad => \ecg_spi_ports|rd_add~q\,
	combout => \ecg_spi_ports|process_1~8_combout\);

-- Location: FF_X23_Y1_N21
\ecg_spi_ports|tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[0]~95_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[0]~_emulated_q\);

-- Location: LCCOMB_X24_Y1_N22
\ecg_spi_ports|tx_buf[0]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[0]~94_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[0]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[0]~_emulated_q\ $ (((\ecg_spi_ports|tx_buf[0]~93_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datab => \ecg_spi_ports|tx_buf[0]~_emulated_q\,
	datac => \ecg_tx_load_data[0]~input_o\,
	datad => \ecg_spi_ports|tx_buf[0]~93_combout\,
	combout => \ecg_spi_ports|tx_buf[0]~94_combout\);

-- Location: LCCOMB_X24_Y1_N26
\ecg_spi_ports|tx_buf[1]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[1]~91_combout\ = \ecg_spi_ports|tx_buf[1]~89_combout\ $ (\ecg_spi_ports|tx_buf[0]~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi_ports|tx_buf[1]~89_combout\,
	datad => \ecg_spi_ports|tx_buf[0]~94_combout\,
	combout => \ecg_spi_ports|tx_buf[1]~91_combout\);

-- Location: FF_X24_Y1_N27
\ecg_spi_ports|tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[1]~91_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[1]~_emulated_q\);

-- Location: LCCOMB_X24_Y1_N4
\ecg_spi_ports|tx_buf[1]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[1]~90_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (\ecg_tx_load_data[1]~input_o\)) # (!\ecg_spi_ports|process_1~1_combout\ & ((\ecg_spi_ports|tx_buf[1]~_emulated_q\ $ (\ecg_spi_ports|tx_buf[1]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datab => \ecg_tx_load_data[1]~input_o\,
	datac => \ecg_spi_ports|tx_buf[1]~_emulated_q\,
	datad => \ecg_spi_ports|tx_buf[1]~89_combout\,
	combout => \ecg_spi_ports|tx_buf[1]~90_combout\);

-- Location: LCCOMB_X24_Y1_N18
\ecg_spi_ports|tx_buf[2]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[2]~87_combout\ = \ecg_spi_ports|tx_buf[2]~85_combout\ $ (\ecg_spi_ports|tx_buf[1]~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[2]~85_combout\,
	datad => \ecg_spi_ports|tx_buf[1]~90_combout\,
	combout => \ecg_spi_ports|tx_buf[2]~87_combout\);

-- Location: FF_X24_Y1_N19
\ecg_spi_ports|tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[2]~87_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[2]~_emulated_q\);

-- Location: LCCOMB_X24_Y1_N28
\ecg_spi_ports|tx_buf[2]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[2]~86_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (\ecg_tx_load_data[2]~input_o\)) # (!\ecg_spi_ports|process_1~1_combout\ & ((\ecg_spi_ports|tx_buf[2]~_emulated_q\ $ (\ecg_spi_ports|tx_buf[2]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datab => \ecg_tx_load_data[2]~input_o\,
	datac => \ecg_spi_ports|tx_buf[2]~_emulated_q\,
	datad => \ecg_spi_ports|tx_buf[2]~85_combout\,
	combout => \ecg_spi_ports|tx_buf[2]~86_combout\);

-- Location: LCCOMB_X24_Y1_N6
\ecg_spi_ports|tx_buf[3]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[3]~83_combout\ = \ecg_spi_ports|tx_buf[3]~81_combout\ $ (\ecg_spi_ports|tx_buf[2]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi_ports|tx_buf[3]~81_combout\,
	datad => \ecg_spi_ports|tx_buf[2]~86_combout\,
	combout => \ecg_spi_ports|tx_buf[3]~83_combout\);

-- Location: FF_X24_Y1_N7
\ecg_spi_ports|tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[3]~83_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[3]~_emulated_q\);

-- Location: LCCOMB_X24_Y1_N8
\ecg_spi_ports|tx_buf[3]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[3]~82_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (\ecg_tx_load_data[3]~input_o\)) # (!\ecg_spi_ports|process_1~1_combout\ & ((\ecg_spi_ports|tx_buf[3]~81_combout\ $ (\ecg_spi_ports|tx_buf[3]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datab => \ecg_tx_load_data[3]~input_o\,
	datac => \ecg_spi_ports|tx_buf[3]~81_combout\,
	datad => \ecg_spi_ports|tx_buf[3]~_emulated_q\,
	combout => \ecg_spi_ports|tx_buf[3]~82_combout\);

-- Location: LCCOMB_X24_Y1_N10
\ecg_spi_ports|tx_buf[4]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[4]~79_combout\ = \ecg_spi_ports|tx_buf[4]~77_combout\ $ (\ecg_spi_ports|tx_buf[3]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[4]~77_combout\,
	datad => \ecg_spi_ports|tx_buf[3]~82_combout\,
	combout => \ecg_spi_ports|tx_buf[4]~79_combout\);

-- Location: FF_X24_Y1_N11
\ecg_spi_ports|tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[4]~79_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[4]~_emulated_q\);

-- Location: LCCOMB_X24_Y1_N12
\ecg_spi_ports|tx_buf[4]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[4]~78_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[4]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[4]~_emulated_q\ $ (((\ecg_spi_ports|tx_buf[4]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datab => \ecg_spi_ports|tx_buf[4]~_emulated_q\,
	datac => \ecg_tx_load_data[4]~input_o\,
	datad => \ecg_spi_ports|tx_buf[4]~77_combout\,
	combout => \ecg_spi_ports|tx_buf[4]~78_combout\);

-- Location: IOIBUF_X26_Y0_N8
\ecg_tx_load_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(5),
	o => \ecg_tx_load_data[5]~input_o\);

-- Location: LCCOMB_X26_Y1_N20
\ecg_spi_ports|tx_buf[5]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[5]~73_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[5]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[5]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[5]~input_o\,
	datab => \ecg_spi_ports|tx_buf[5]~73_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[5]~73_combout\);

-- Location: LCCOMB_X24_Y1_N16
\ecg_spi_ports|tx_buf[5]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[5]~75_combout\ = \ecg_spi_ports|tx_buf[4]~78_combout\ $ (\ecg_spi_ports|tx_buf[5]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[4]~78_combout\,
	datad => \ecg_spi_ports|tx_buf[5]~73_combout\,
	combout => \ecg_spi_ports|tx_buf[5]~75_combout\);

-- Location: FF_X24_Y1_N17
\ecg_spi_ports|tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[5]~75_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[5]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N22
\ecg_spi_ports|tx_buf[5]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[5]~74_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[5]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[5]~_emulated_q\ $ (((\ecg_spi_ports|tx_buf[5]~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[5]~_emulated_q\,
	datab => \ecg_tx_load_data[5]~input_o\,
	datac => \ecg_spi_ports|process_1~1_combout\,
	datad => \ecg_spi_ports|tx_buf[5]~73_combout\,
	combout => \ecg_spi_ports|tx_buf[5]~74_combout\);

-- Location: LCCOMB_X26_Y1_N24
\ecg_spi_ports|tx_buf[6]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[6]~71_combout\ = \ecg_spi_ports|tx_buf[6]~69_combout\ $ (\ecg_spi_ports|tx_buf[5]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[6]~69_combout\,
	datad => \ecg_spi_ports|tx_buf[5]~74_combout\,
	combout => \ecg_spi_ports|tx_buf[6]~71_combout\);

-- Location: FF_X26_Y1_N25
\ecg_spi_ports|tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[6]~71_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[6]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N28
\ecg_spi_ports|tx_buf[6]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[6]~70_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (\ecg_tx_load_data[6]~input_o\)) # (!\ecg_spi_ports|process_1~1_combout\ & ((\ecg_spi_ports|tx_buf[6]~_emulated_q\ $ (\ecg_spi_ports|tx_buf[6]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[6]~input_o\,
	datab => \ecg_spi_ports|tx_buf[6]~_emulated_q\,
	datac => \ecg_spi_ports|process_1~1_combout\,
	datad => \ecg_spi_ports|tx_buf[6]~69_combout\,
	combout => \ecg_spi_ports|tx_buf[6]~70_combout\);

-- Location: LCCOMB_X26_Y1_N6
\ecg_spi_ports|tx_buf[7]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[7]~67_combout\ = \ecg_spi_ports|tx_buf[7]~65_combout\ $ (\ecg_spi_ports|tx_buf[6]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi_ports|tx_buf[7]~65_combout\,
	datad => \ecg_spi_ports|tx_buf[6]~70_combout\,
	combout => \ecg_spi_ports|tx_buf[7]~67_combout\);

-- Location: FF_X26_Y1_N7
\ecg_spi_ports|tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[7]~67_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[7]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N26
\ecg_spi_ports|tx_buf[7]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[7]~66_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[7]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[7]~_emulated_q\ $ (((\ecg_spi_ports|tx_buf[7]~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[7]~_emulated_q\,
	datab => \ecg_tx_load_data[7]~input_o\,
	datac => \ecg_spi_ports|tx_buf[7]~65_combout\,
	datad => \ecg_spi_ports|process_1~1_combout\,
	combout => \ecg_spi_ports|tx_buf[7]~66_combout\);

-- Location: LCCOMB_X26_Y1_N2
\ecg_spi_ports|tx_buf[8]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[8]~63_combout\ = \ecg_spi_ports|tx_buf[8]~61_combout\ $ (\ecg_spi_ports|tx_buf[7]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[8]~61_combout\,
	datad => \ecg_spi_ports|tx_buf[7]~66_combout\,
	combout => \ecg_spi_ports|tx_buf[8]~63_combout\);

-- Location: FF_X26_Y1_N3
\ecg_spi_ports|tx_buf[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[8]~63_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[8]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N8
\ecg_spi_ports|tx_buf[8]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[8]~62_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[8]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[8]~_emulated_q\ $ (((\ecg_spi_ports|tx_buf[8]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[8]~_emulated_q\,
	datab => \ecg_tx_load_data[8]~input_o\,
	datac => \ecg_spi_ports|process_1~1_combout\,
	datad => \ecg_spi_ports|tx_buf[8]~61_combout\,
	combout => \ecg_spi_ports|tx_buf[8]~62_combout\);

-- Location: LCCOMB_X26_Y1_N16
\ecg_spi_ports|tx_buf[9]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[9]~59_combout\ = \ecg_spi_ports|tx_buf[9]~57_combout\ $ (\ecg_spi_ports|tx_buf[8]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi_ports|tx_buf[9]~57_combout\,
	datad => \ecg_spi_ports|tx_buf[8]~62_combout\,
	combout => \ecg_spi_ports|tx_buf[9]~59_combout\);

-- Location: FF_X26_Y1_N17
\ecg_spi_ports|tx_buf[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[9]~59_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[9]~_emulated_q\);

-- Location: LCCOMB_X26_Y1_N12
\ecg_spi_ports|tx_buf[9]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[9]~58_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (\ecg_tx_load_data[9]~input_o\)) # (!\ecg_spi_ports|process_1~1_combout\ & ((\ecg_spi_ports|tx_buf[9]~_emulated_q\ $ (\ecg_spi_ports|tx_buf[9]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[9]~input_o\,
	datab => \ecg_spi_ports|tx_buf[9]~_emulated_q\,
	datac => \ecg_spi_ports|process_1~1_combout\,
	datad => \ecg_spi_ports|tx_buf[9]~57_combout\,
	combout => \ecg_spi_ports|tx_buf[9]~58_combout\);

-- Location: IOIBUF_X14_Y0_N8
\ecg_tx_load_data[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(10),
	o => \ecg_tx_load_data[10]~input_o\);

-- Location: LCCOMB_X23_Y1_N10
\ecg_spi_ports|tx_buf[10]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[10]~53_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_tx_load_data[10]~input_o\))) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_spi_ports|tx_buf[10]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[10]~53_combout\,
	datac => \ecg_tx_load_data[10]~input_o\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[10]~53_combout\);

-- Location: LCCOMB_X26_Y1_N10
\ecg_spi_ports|tx_buf[10]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[10]~55_combout\ = \ecg_spi_ports|tx_buf[9]~58_combout\ $ (\ecg_spi_ports|tx_buf[10]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[9]~58_combout\,
	datad => \ecg_spi_ports|tx_buf[10]~53_combout\,
	combout => \ecg_spi_ports|tx_buf[10]~55_combout\);

-- Location: FF_X26_Y1_N11
\ecg_spi_ports|tx_buf[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[10]~55_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[10]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N22
\ecg_spi_ports|tx_buf[10]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[10]~54_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[10]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[10]~_emulated_q\ $ (((\ecg_spi_ports|tx_buf[10]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datab => \ecg_spi_ports|tx_buf[10]~_emulated_q\,
	datac => \ecg_tx_load_data[10]~input_o\,
	datad => \ecg_spi_ports|tx_buf[10]~53_combout\,
	combout => \ecg_spi_ports|tx_buf[10]~54_combout\);

-- Location: LCCOMB_X23_Y1_N14
\ecg_spi_ports|tx_buf[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[11]~51_combout\ = \ecg_spi_ports|tx_buf[11]~49_combout\ $ (\ecg_spi_ports|tx_buf[10]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi_ports|tx_buf[11]~49_combout\,
	datad => \ecg_spi_ports|tx_buf[10]~54_combout\,
	combout => \ecg_spi_ports|tx_buf[11]~51_combout\);

-- Location: FF_X23_Y1_N15
\ecg_spi_ports|tx_buf[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[11]~51_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[11]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N8
\ecg_spi_ports|tx_buf[11]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[11]~50_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[11]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[11]~_emulated_q\ $ (((\ecg_spi_ports|tx_buf[11]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datab => \ecg_spi_ports|tx_buf[11]~_emulated_q\,
	datac => \ecg_tx_load_data[11]~input_o\,
	datad => \ecg_spi_ports|tx_buf[11]~49_combout\,
	combout => \ecg_spi_ports|tx_buf[11]~50_combout\);

-- Location: LCCOMB_X23_Y1_N18
\ecg_spi_ports|tx_buf[12]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[12]~47_combout\ = \ecg_spi_ports|tx_buf[12]~45_combout\ $ (\ecg_spi_ports|tx_buf[11]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi_ports|tx_buf[12]~45_combout\,
	datad => \ecg_spi_ports|tx_buf[11]~50_combout\,
	combout => \ecg_spi_ports|tx_buf[12]~47_combout\);

-- Location: FF_X23_Y1_N19
\ecg_spi_ports|tx_buf[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[12]~47_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[12]~_emulated_q\);

-- Location: LCCOMB_X23_Y1_N4
\ecg_spi_ports|tx_buf[12]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[12]~46_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (\ecg_tx_load_data[12]~input_o\)) # (!\ecg_spi_ports|process_1~1_combout\ & ((\ecg_spi_ports|tx_buf[12]~45_combout\ $ (\ecg_spi_ports|tx_buf[12]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datab => \ecg_tx_load_data[12]~input_o\,
	datac => \ecg_spi_ports|tx_buf[12]~45_combout\,
	datad => \ecg_spi_ports|tx_buf[12]~_emulated_q\,
	combout => \ecg_spi_ports|tx_buf[12]~46_combout\);

-- Location: LCCOMB_X23_Y1_N28
\ecg_spi_ports|tx_buf[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[13]~43_combout\ = \ecg_spi_ports|tx_buf[13]~41_combout\ $ (\ecg_spi_ports|tx_buf[12]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[13]~41_combout\,
	datad => \ecg_spi_ports|tx_buf[12]~46_combout\,
	combout => \ecg_spi_ports|tx_buf[13]~43_combout\);

-- Location: FF_X23_Y1_N29
\ecg_spi_ports|tx_buf[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[13]~43_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[13]~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N0
\ecg_spi_ports|tx_buf[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[13]~42_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (\ecg_tx_load_data[13]~input_o\)) # (!\ecg_spi_ports|process_1~1_combout\ & ((\ecg_spi_ports|tx_buf[13]~_emulated_q\ $ (\ecg_spi_ports|tx_buf[13]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datab => \ecg_tx_load_data[13]~input_o\,
	datac => \ecg_spi_ports|tx_buf[13]~_emulated_q\,
	datad => \ecg_spi_ports|tx_buf[13]~41_combout\,
	combout => \ecg_spi_ports|tx_buf[13]~42_combout\);

-- Location: LCCOMB_X22_Y2_N30
\ecg_spi_ports|tx_buf[14]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[14]~39_combout\ = \ecg_spi_ports|tx_buf[14]~37_combout\ $ (\ecg_spi_ports|tx_buf[13]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[14]~37_combout\,
	datac => \ecg_spi_ports|tx_buf[13]~42_combout\,
	combout => \ecg_spi_ports|tx_buf[14]~39_combout\);

-- Location: FF_X22_Y2_N31
\ecg_spi_ports|tx_buf[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[14]~39_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[14]~_emulated_q\);

-- Location: LCCOMB_X22_Y2_N12
\ecg_spi_ports|tx_buf[14]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[14]~38_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[14]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[14]~_emulated_q\ $ (((\ecg_spi_ports|tx_buf[14]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[14]~_emulated_q\,
	datab => \ecg_tx_load_data[14]~input_o\,
	datac => \ecg_spi_ports|tx_buf[14]~37_combout\,
	datad => \ecg_spi_ports|process_1~1_combout\,
	combout => \ecg_spi_ports|tx_buf[14]~38_combout\);

-- Location: IOIBUF_X14_Y0_N22
\ecg_tx_load_data[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(15),
	o => \ecg_tx_load_data[15]~input_o\);

-- Location: LCCOMB_X22_Y2_N24
\ecg_spi_ports|tx_buf[15]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[15]~33_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[15]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[15]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_tx_load_data[15]~input_o\,
	datac => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	datad => \ecg_spi_ports|tx_buf[15]~33_combout\,
	combout => \ecg_spi_ports|tx_buf[15]~33_combout\);

-- Location: LCCOMB_X22_Y2_N6
\ecg_spi_ports|tx_buf[15]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[15]~35_combout\ = \ecg_spi_ports|tx_buf[14]~38_combout\ $ (\ecg_spi_ports|tx_buf[15]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[14]~38_combout\,
	datab => \ecg_spi_ports|tx_buf[15]~33_combout\,
	combout => \ecg_spi_ports|tx_buf[15]~35_combout\);

-- Location: FF_X22_Y2_N7
\ecg_spi_ports|tx_buf[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[15]~35_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[15]~_emulated_q\);

-- Location: LCCOMB_X22_Y2_N16
\ecg_spi_ports|tx_buf[15]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[15]~34_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[15]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[15]~_emulated_q\ $ (((\ecg_spi_ports|tx_buf[15]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[15]~_emulated_q\,
	datab => \ecg_tx_load_data[15]~input_o\,
	datac => \ecg_spi_ports|process_1~1_combout\,
	datad => \ecg_spi_ports|tx_buf[15]~33_combout\,
	combout => \ecg_spi_ports|tx_buf[15]~34_combout\);

-- Location: IOIBUF_X21_Y29_N29
\ecg_tx_load_data[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(16),
	o => \ecg_tx_load_data[16]~input_o\);

-- Location: LCCOMB_X22_Y2_N22
\ecg_spi_ports|tx_buf[16]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[16]~29_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[16]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[16]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[16]~input_o\,
	datac => \ecg_spi_ports|tx_buf[16]~29_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[16]~29_combout\);

-- Location: LCCOMB_X22_Y2_N18
\ecg_spi_ports|tx_buf[16]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[16]~31_combout\ = \ecg_spi_ports|tx_buf[15]~34_combout\ $ (\ecg_spi_ports|tx_buf[16]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[15]~34_combout\,
	datac => \ecg_spi_ports|tx_buf[16]~29_combout\,
	combout => \ecg_spi_ports|tx_buf[16]~31_combout\);

-- Location: FF_X22_Y2_N19
\ecg_spi_ports|tx_buf[16]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[16]~31_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[16]~_emulated_q\);

-- Location: LCCOMB_X22_Y2_N8
\ecg_spi_ports|tx_buf[16]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[16]~30_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[16]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[16]~_emulated_q\ $ (((\ecg_spi_ports|tx_buf[16]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[16]~_emulated_q\,
	datab => \ecg_tx_load_data[16]~input_o\,
	datac => \ecg_spi_ports|tx_buf[16]~29_combout\,
	datad => \ecg_spi_ports|process_1~1_combout\,
	combout => \ecg_spi_ports|tx_buf[16]~30_combout\);

-- Location: LCCOMB_X22_Y2_N2
\ecg_spi_ports|tx_buf[17]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[17]~27_combout\ = \ecg_spi_ports|tx_buf[17]~25_combout\ $ (\ecg_spi_ports|tx_buf[16]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[17]~25_combout\,
	datad => \ecg_spi_ports|tx_buf[16]~30_combout\,
	combout => \ecg_spi_ports|tx_buf[17]~27_combout\);

-- Location: FF_X22_Y2_N3
\ecg_spi_ports|tx_buf[17]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[17]~27_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[17]~_emulated_q\);

-- Location: LCCOMB_X22_Y2_N28
\ecg_spi_ports|tx_buf[17]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[17]~26_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[17]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[17]~_emulated_q\ $ (((\ecg_spi_ports|tx_buf[17]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[17]~_emulated_q\,
	datab => \ecg_spi_ports|process_1~1_combout\,
	datac => \ecg_tx_load_data[17]~input_o\,
	datad => \ecg_spi_ports|tx_buf[17]~25_combout\,
	combout => \ecg_spi_ports|tx_buf[17]~26_combout\);

-- Location: LCCOMB_X22_Y2_N26
\ecg_spi_ports|tx_buf[18]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[18]~23_combout\ = \ecg_spi_ports|tx_buf[18]~21_combout\ $ (\ecg_spi_ports|tx_buf[17]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[18]~21_combout\,
	datad => \ecg_spi_ports|tx_buf[17]~26_combout\,
	combout => \ecg_spi_ports|tx_buf[18]~23_combout\);

-- Location: FF_X22_Y2_N27
\ecg_spi_ports|tx_buf[18]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[18]~23_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[18]~_emulated_q\);

-- Location: LCCOMB_X22_Y2_N4
\ecg_spi_ports|tx_buf[18]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[18]~22_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[18]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[18]~_emulated_q\ $ (((\ecg_spi_ports|tx_buf[18]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[18]~_emulated_q\,
	datab => \ecg_spi_ports|process_1~1_combout\,
	datac => \ecg_tx_load_data[18]~input_o\,
	datad => \ecg_spi_ports|tx_buf[18]~21_combout\,
	combout => \ecg_spi_ports|tx_buf[18]~22_combout\);

-- Location: LCCOMB_X22_Y2_N0
\ecg_spi_ports|tx_buf[19]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[19]~19_combout\ = \ecg_spi_ports|tx_buf[19]~17_combout\ $ (\ecg_spi_ports|tx_buf[18]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[19]~17_combout\,
	datad => \ecg_spi_ports|tx_buf[18]~22_combout\,
	combout => \ecg_spi_ports|tx_buf[19]~19_combout\);

-- Location: FF_X22_Y2_N1
\ecg_spi_ports|tx_buf[19]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[19]~19_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[19]~_emulated_q\);

-- Location: LCCOMB_X22_Y1_N20
\ecg_spi_ports|tx_buf[19]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[19]~18_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[19]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[19]~_emulated_q\ $ ((\ecg_spi_ports|tx_buf[19]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[19]~_emulated_q\,
	datab => \ecg_spi_ports|process_1~1_combout\,
	datac => \ecg_spi_ports|tx_buf[19]~17_combout\,
	datad => \ecg_tx_load_data[19]~input_o\,
	combout => \ecg_spi_ports|tx_buf[19]~18_combout\);

-- Location: LCCOMB_X22_Y1_N16
\ecg_spi_ports|tx_buf[20]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[20]~15_combout\ = \ecg_spi_ports|tx_buf[20]~13_combout\ $ (\ecg_spi_ports|tx_buf[19]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[20]~13_combout\,
	datac => \ecg_spi_ports|tx_buf[19]~18_combout\,
	combout => \ecg_spi_ports|tx_buf[20]~15_combout\);

-- Location: FF_X22_Y1_N17
\ecg_spi_ports|tx_buf[20]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[20]~15_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[20]~_emulated_q\);

-- Location: LCCOMB_X22_Y1_N10
\ecg_spi_ports|tx_buf[20]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[20]~14_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (((\ecg_tx_load_data[20]~input_o\)))) # (!\ecg_spi_ports|process_1~1_combout\ & (\ecg_spi_ports|tx_buf[20]~_emulated_q\ $ ((\ecg_spi_ports|tx_buf[20]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[20]~_emulated_q\,
	datab => \ecg_spi_ports|process_1~1_combout\,
	datac => \ecg_spi_ports|tx_buf[20]~13_combout\,
	datad => \ecg_tx_load_data[20]~input_o\,
	combout => \ecg_spi_ports|tx_buf[20]~14_combout\);

-- Location: LCCOMB_X22_Y1_N4
\ecg_spi_ports|tx_buf[21]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[21]~11_combout\ = \ecg_spi_ports|tx_buf[21]~9_combout\ $ (\ecg_spi_ports|tx_buf[20]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[21]~9_combout\,
	datac => \ecg_spi_ports|tx_buf[20]~14_combout\,
	combout => \ecg_spi_ports|tx_buf[21]~11_combout\);

-- Location: FF_X22_Y1_N5
\ecg_spi_ports|tx_buf[21]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[21]~11_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[21]~_emulated_q\);

-- Location: LCCOMB_X22_Y1_N14
\ecg_spi_ports|tx_buf[21]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[21]~10_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (\ecg_tx_load_data[21]~input_o\)) # (!\ecg_spi_ports|process_1~1_combout\ & ((\ecg_spi_ports|tx_buf[21]~9_combout\ $ (\ecg_spi_ports|tx_buf[21]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[21]~input_o\,
	datab => \ecg_spi_ports|process_1~1_combout\,
	datac => \ecg_spi_ports|tx_buf[21]~9_combout\,
	datad => \ecg_spi_ports|tx_buf[21]~_emulated_q\,
	combout => \ecg_spi_ports|tx_buf[21]~10_combout\);

-- Location: LCCOMB_X22_Y1_N28
\ecg_spi_ports|tx_buf[22]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[22]~5_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_tx_load_data[22]~input_o\)) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_spi_ports|tx_buf[22]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[22]~input_o\,
	datab => \ecg_spi_ports|tx_buf[22]~5_combout\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[22]~5_combout\);

-- Location: LCCOMB_X22_Y1_N12
\ecg_spi_ports|tx_buf[22]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[22]~7_combout\ = \ecg_spi_ports|tx_buf[21]~10_combout\ $ (\ecg_spi_ports|tx_buf[22]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[21]~10_combout\,
	datad => \ecg_spi_ports|tx_buf[22]~5_combout\,
	combout => \ecg_spi_ports|tx_buf[22]~7_combout\);

-- Location: FF_X22_Y1_N13
\ecg_spi_ports|tx_buf[22]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[22]~7_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[22]~_emulated_q\);

-- Location: LCCOMB_X22_Y1_N2
\ecg_spi_ports|tx_buf[22]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[22]~6_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (\ecg_tx_load_data[22]~input_o\)) # (!\ecg_spi_ports|process_1~1_combout\ & ((\ecg_spi_ports|tx_buf[22]~_emulated_q\ $ (\ecg_spi_ports|tx_buf[22]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_data[22]~input_o\,
	datab => \ecg_spi_ports|process_1~1_combout\,
	datac => \ecg_spi_ports|tx_buf[22]~_emulated_q\,
	datad => \ecg_spi_ports|tx_buf[22]~5_combout\,
	combout => \ecg_spi_ports|tx_buf[22]~6_combout\);

-- Location: LCCOMB_X22_Y1_N18
\ecg_spi_ports|tx_buf[23]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[23]~1_combout\ = (GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & ((\ecg_tx_load_data[23]~input_o\))) # (!GLOBAL(\ecg_spi_ports|process_1~1clkctrl_outclk\) & (\ecg_spi_ports|tx_buf[23]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[23]~1_combout\,
	datac => \ecg_tx_load_data[23]~input_o\,
	datad => \ecg_spi_ports|process_1~1clkctrl_outclk\,
	combout => \ecg_spi_ports|tx_buf[23]~1_combout\);

-- Location: LCCOMB_X22_Y1_N0
\ecg_spi_ports|tx_buf[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[23]~3_combout\ = \ecg_spi_ports|tx_buf[22]~6_combout\ $ (\ecg_spi_ports|tx_buf[23]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|tx_buf[22]~6_combout\,
	datad => \ecg_spi_ports|tx_buf[23]~1_combout\,
	combout => \ecg_spi_ports|tx_buf[23]~3_combout\);

-- Location: FF_X22_Y1_N1
\ecg_spi_ports|tx_buf[23]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|tx_buf[23]~3_combout\,
	clrn => \ecg_spi_ports|ALT_INV_process_1~1clkctrl_outclk\,
	ena => \ecg_spi_ports|process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|tx_buf[23]~_emulated_q\);

-- Location: LCCOMB_X22_Y1_N6
\ecg_spi_ports|tx_buf[23]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|tx_buf[23]~2_combout\ = (\ecg_spi_ports|process_1~1_combout\ & (\ecg_tx_load_data[23]~input_o\)) # (!\ecg_spi_ports|process_1~1_combout\ & ((\ecg_spi_ports|tx_buf[23]~_emulated_q\ $ (\ecg_spi_ports|tx_buf[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datab => \ecg_tx_load_data[23]~input_o\,
	datac => \ecg_spi_ports|tx_buf[23]~_emulated_q\,
	datad => \ecg_spi_ports|tx_buf[23]~1_combout\,
	combout => \ecg_spi_ports|tx_buf[23]~2_combout\);

-- Location: IOIBUF_X5_Y0_N22
\ecg_st_load_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_trdy,
	o => \ecg_st_load_trdy~input_o\);

-- Location: LCCOMB_X21_Y1_N14
\ecg_spi_ports|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|process_1~2_combout\ = (!\ecg_st_load_trdy~input_o\ & \ecg_spi_ports|process_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_st_load_trdy~input_o\,
	datad => \ecg_spi_ports|process_1~1_combout\,
	combout => \ecg_spi_ports|process_1~2_combout\);

-- Location: LCCOMB_X21_Y1_N20
\ecg_spi_ports|trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|trdy~1_combout\ = (!\ecg_spi_ports|process_1~2_combout\ & ((\ecg_spi_ports|process_1~1_combout\) # (\ecg_spi_ports|trdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|process_1~2_combout\,
	datac => \ecg_spi_ports|process_1~1_combout\,
	datad => \ecg_spi_ports|trdy~1_combout\,
	combout => \ecg_spi_ports|trdy~1_combout\);

-- Location: LCCOMB_X23_Y1_N16
\ecg_spi_ports|wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|wr_add~0_combout\ = (\ecg_spi_ports|bit_cnt\(1) & ((\ecg_spi_ports|wr_add~q\))) # (!\ecg_spi_ports|bit_cnt\(1) & (\ecg_mosi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_mosi~input_o\,
	datac => \ecg_spi_ports|wr_add~q\,
	datad => \ecg_spi_ports|bit_cnt\(1),
	combout => \ecg_spi_ports|wr_add~0_combout\);

-- Location: FF_X23_Y1_N17
\ecg_spi_ports|wr_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi_ports|wr_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|wr_add~q\);

-- Location: LCCOMB_X20_Y1_N6
\ecg_spi_ports|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|process_1~0_combout\ = (\ecg_spi_ports|wr_add~q\ & \ecg_spi_ports|bit_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi_ports|wr_add~q\,
	datad => \ecg_spi_ports|bit_cnt\(9),
	combout => \ecg_spi_ports|process_1~0_combout\);

-- Location: LCCOMB_X21_Y1_N30
\ecg_spi_ports|trdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|trdy~7_combout\ = (\ecg_spi_ports|trdy~2_combout\ & (!\ecg_spi_ports|process_1~0_combout\ & ((\ecg_spi_ports|rd_add~q\) # (!\ecg_spi_ports|bit_cnt\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|bit_cnt\(32),
	datab => \ecg_spi_ports|rd_add~q\,
	datac => \ecg_spi_ports|trdy~2_combout\,
	datad => \ecg_spi_ports|process_1~0_combout\,
	combout => \ecg_spi_ports|trdy~7_combout\);

-- Location: LCCOMB_X22_Y1_N24
\ecg_spi_ports|trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|trdy~3_combout\ = \ecg_spi_ports|trdy~1_combout\ $ (((\ecg_spi_ports|trdy~7_combout\) # ((\ecg_mosi~input_o\ & \ecg_spi_ports|process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_spi_ports|trdy~1_combout\,
	datac => \ecg_spi_ports|process_1~0_combout\,
	datad => \ecg_spi_ports|trdy~7_combout\,
	combout => \ecg_spi_ports|trdy~3_combout\);

-- Location: LCCOMB_X22_Y1_N22
\ecg_spi_ports|trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|trdy~0_combout\ = (\ecg_spi_ports|process_1~1_combout\) # (\ecg_spi_ports|process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datad => \ecg_spi_ports|process_1~2_combout\,
	combout => \ecg_spi_ports|trdy~0_combout\);

-- Location: FF_X22_Y1_N25
\ecg_spi_ports|trdy~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi_ports|trdy~3_combout\,
	clrn => \ecg_spi_ports|ALT_INV_trdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|trdy~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N4
\ecg_spi_ports|trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|trdy~2_combout\ = (!\ecg_spi_ports|process_1~2_combout\ & ((\ecg_spi_ports|process_1~1_combout\) # (\ecg_spi_ports|trdy~1_combout\ $ (\ecg_spi_ports|trdy~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|trdy~1_combout\,
	datab => \ecg_spi_ports|process_1~1_combout\,
	datac => \ecg_spi_ports|process_1~2_combout\,
	datad => \ecg_spi_ports|trdy~_emulated_q\,
	combout => \ecg_spi_ports|trdy~2_combout\);

-- Location: IOIBUF_X19_Y0_N29
\ecg_st_load_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_rrdy,
	o => \ecg_st_load_rrdy~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\ecg_rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_rx_req,
	o => \ecg_rx_req~input_o\);

-- Location: LCCOMB_X20_Y1_N24
\ecg_spi_ports|process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|process_1~7_combout\ = (\ecg_ss_n~input_o\ & ((\ecg_rx_req~input_o\) # ((\ecg_tx_load_en~input_o\ & !\ecg_st_load_rrdy~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_tx_load_en~input_o\,
	datab => \ecg_st_load_rrdy~input_o\,
	datac => \ecg_rx_req~input_o\,
	datad => \ecg_ss_n~input_o\,
	combout => \ecg_spi_ports|process_1~7_combout\);

-- Location: LCCOMB_X20_Y1_N0
\ecg_spi_ports|rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|rrdy~1_combout\ = (!\ecg_spi_ports|process_1~7_combout\ & ((\ecg_spi_ports|process_1~1_combout\) # (\ecg_spi_ports|rrdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|process_1~7_combout\,
	datac => \ecg_spi_ports|process_1~1_combout\,
	datad => \ecg_spi_ports|rrdy~1_combout\,
	combout => \ecg_spi_ports|rrdy~1_combout\);

-- Location: LCCOMB_X20_Y1_N8
\ecg_spi_ports|process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|process_1~6_combout\ = (\ecg_spi_ports|wr_add~q\ & \ecg_spi_ports|bit_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|wr_add~q\,
	datad => \ecg_spi_ports|bit_cnt\(10),
	combout => \ecg_spi_ports|process_1~6_combout\);

-- Location: LCCOMB_X20_Y1_N18
\ecg_spi_ports|rrdy~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|rrdy~6_combout\ = (\ecg_spi_ports|rrdy~2_combout\) # ((\ecg_spi_ports|bit_cnt\(32) & !\ecg_spi_ports|wr_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|bit_cnt\(32),
	datac => \ecg_spi_ports|wr_add~q\,
	datad => \ecg_spi_ports|rrdy~2_combout\,
	combout => \ecg_spi_ports|rrdy~6_combout\);

-- Location: LCCOMB_X20_Y1_N26
\ecg_spi_ports|rrdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|rrdy~3_combout\ = \ecg_spi_ports|rrdy~1_combout\ $ (((\ecg_spi_ports|process_1~6_combout\ & (\ecg_mosi~input_o\)) # (!\ecg_spi_ports|process_1~6_combout\ & ((\ecg_spi_ports|rrdy~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_mosi~input_o\,
	datab => \ecg_spi_ports|rrdy~1_combout\,
	datac => \ecg_spi_ports|process_1~6_combout\,
	datad => \ecg_spi_ports|rrdy~6_combout\,
	combout => \ecg_spi_ports|rrdy~3_combout\);

-- Location: LCCOMB_X20_Y1_N28
\ecg_spi_ports|rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|rrdy~0_combout\ = (\ecg_spi_ports|process_1~7_combout\) # (\ecg_spi_ports|process_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|process_1~7_combout\,
	datac => \ecg_spi_ports|process_1~1_combout\,
	combout => \ecg_spi_ports|rrdy~0_combout\);

-- Location: FF_X20_Y1_N27
\ecg_spi_ports|rrdy~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi_ports|rrdy~3_combout\,
	clrn => \ecg_spi_ports|ALT_INV_rrdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|rrdy~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N26
\ecg_spi_ports|rrdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|rrdy~2_combout\ = (!\ecg_spi_ports|process_1~7_combout\ & ((\ecg_spi_ports|process_1~1_combout\) # (\ecg_spi_ports|rrdy~1_combout\ $ (\ecg_spi_ports|rrdy~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datab => \ecg_spi_ports|rrdy~1_combout\,
	datac => \ecg_spi_ports|rrdy~_emulated_q\,
	datad => \ecg_spi_ports|process_1~7_combout\,
	combout => \ecg_spi_ports|rrdy~2_combout\);

-- Location: IOIBUF_X9_Y0_N22
\ecg_st_load_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_roe,
	o => \ecg_st_load_roe~input_o\);

-- Location: LCCOMB_X21_Y1_N12
\ecg_spi_ports|process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|process_1~3_combout\ = (!\ecg_st_load_roe~input_o\ & \ecg_spi_ports|process_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_st_load_roe~input_o\,
	datad => \ecg_spi_ports|process_1~1_combout\,
	combout => \ecg_spi_ports|process_1~3_combout\);

-- Location: LCCOMB_X21_Y1_N28
\ecg_spi_ports|roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|roe~1_combout\ = (!\ecg_spi_ports|process_1~3_combout\ & ((\ecg_spi_ports|process_1~1_combout\) # (\ecg_spi_ports|roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|process_1~3_combout\,
	datac => \ecg_spi_ports|process_1~1_combout\,
	datad => \ecg_spi_ports|roe~1_combout\,
	combout => \ecg_spi_ports|roe~1_combout\);

-- Location: LCCOMB_X20_Y1_N14
\ecg_spi_ports|roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|roe~6_combout\ = (\ecg_spi_ports|wr_add~q\ & (((!\ecg_spi_ports|bit_cnt\(11))) # (!\ecg_mosi~input_o\))) # (!\ecg_spi_ports|wr_add~q\ & (((!\ecg_spi_ports|bit_cnt\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|wr_add~q\,
	datab => \ecg_mosi~input_o\,
	datac => \ecg_spi_ports|bit_cnt\(11),
	datad => \ecg_spi_ports|bit_cnt\(32),
	combout => \ecg_spi_ports|roe~6_combout\);

-- Location: LCCOMB_X20_Y1_N12
\ecg_spi_ports|roe~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|roe~7_combout\ = (\ecg_spi_ports|wr_add~q\ & (\ecg_spi_ports|roe~6_combout\ & ((\ecg_spi_ports|bit_cnt\(11)) # (!\ecg_spi_ports|roe~2_combout\)))) # (!\ecg_spi_ports|wr_add~q\ & (((!\ecg_spi_ports|roe~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|wr_add~q\,
	datab => \ecg_spi_ports|bit_cnt\(11),
	datac => \ecg_spi_ports|roe~6_combout\,
	datad => \ecg_spi_ports|roe~2_combout\,
	combout => \ecg_spi_ports|roe~7_combout\);

-- Location: LCCOMB_X21_Y1_N8
\ecg_spi_ports|roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|roe~3_combout\ = \ecg_spi_ports|roe~1_combout\ $ ((((!\ecg_spi_ports|roe~6_combout\ & \ecg_spi_ports|rrdy~2_combout\)) # (!\ecg_spi_ports|roe~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|roe~6_combout\,
	datab => \ecg_spi_ports|rrdy~2_combout\,
	datac => \ecg_spi_ports|roe~1_combout\,
	datad => \ecg_spi_ports|roe~7_combout\,
	combout => \ecg_spi_ports|roe~3_combout\);

-- Location: LCCOMB_X21_Y1_N22
\ecg_spi_ports|roe~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|roe~0_combout\ = (\ecg_spi_ports|process_1~1_combout\) # (\ecg_spi_ports|process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ecg_spi_ports|process_1~1_combout\,
	datad => \ecg_spi_ports|process_1~3_combout\,
	combout => \ecg_spi_ports|roe~0_combout\);

-- Location: FF_X21_Y1_N9
\ecg_spi_ports|roe~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ecg_sclk~input_o\,
	d => \ecg_spi_ports|roe~3_combout\,
	clrn => \ecg_spi_ports|ALT_INV_roe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|roe~_emulated_q\);

-- Location: LCCOMB_X21_Y1_N6
\ecg_spi_ports|roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|roe~2_combout\ = (!\ecg_spi_ports|process_1~3_combout\ & ((\ecg_spi_ports|process_1~1_combout\) # (\ecg_spi_ports|roe~1_combout\ $ (\ecg_spi_ports|roe~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|process_1~1_combout\,
	datab => \ecg_spi_ports|roe~1_combout\,
	datac => \ecg_spi_ports|roe~_emulated_q\,
	datad => \ecg_spi_ports|process_1~3_combout\,
	combout => \ecg_spi_ports|roe~2_combout\);

-- Location: LCCOMB_X21_Y1_N2
\ecg_spi_ports|miso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|miso~0_combout\ = (\ecg_spi_ports|bit_cnt\(9) & (\ecg_spi_ports|rrdy~2_combout\)) # (!\ecg_spi_ports|bit_cnt\(9) & ((\ecg_spi_ports|roe~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|bit_cnt\(9),
	datac => \ecg_spi_ports|rrdy~2_combout\,
	datad => \ecg_spi_ports|roe~2_combout\,
	combout => \ecg_spi_ports|miso~0_combout\);

-- Location: LCCOMB_X21_Y1_N16
\ecg_spi_ports|miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|miso~1_combout\ = (\ecg_spi_ports|bit_cnt\(8) & (\ecg_spi_ports|trdy~2_combout\)) # (!\ecg_spi_ports|bit_cnt\(8) & ((\ecg_spi_ports|miso~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ecg_spi_ports|bit_cnt\(8),
	datac => \ecg_spi_ports|trdy~2_combout\,
	datad => \ecg_spi_ports|miso~0_combout\,
	combout => \ecg_spi_ports|miso~1_combout\);

-- Location: LCCOMB_X21_Y1_N18
\ecg_spi_ports|miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|miso~2_combout\ = (\ecg_spi_ports|rd_add~q\ & ((\ecg_spi_ports|miso~1_combout\))) # (!\ecg_spi_ports|rd_add~q\ & (\ecg_spi_ports|tx_buf[23]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|tx_buf[23]~2_combout\,
	datac => \ecg_spi_ports|rd_add~q\,
	datad => \ecg_spi_ports|miso~1_combout\,
	combout => \ecg_spi_ports|miso~2_combout\);

-- Location: LCCOMB_X20_Y1_N16
\ecg_spi_ports|miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|miso~3_combout\ = (\ecg_spi_ports|bit_cnt\(8) & (!\ecg_spi_ports|bit_cnt\(9) & !\ecg_spi_ports|bit_cnt\(10))) # (!\ecg_spi_ports|bit_cnt\(8) & (\ecg_spi_ports|bit_cnt\(9) $ (\ecg_spi_ports|bit_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|bit_cnt\(8),
	datac => \ecg_spi_ports|bit_cnt\(9),
	datad => \ecg_spi_ports|bit_cnt\(10),
	combout => \ecg_spi_ports|miso~3_combout\);

-- Location: LCCOMB_X23_Y1_N0
\ecg_spi_ports|miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|miso~4_combout\ = (\ecg_spi_ports|rd_add~q\ & (((\ecg_spi_ports|miso~3_combout\)))) # (!\ecg_spi_ports|rd_add~q\ & (\ecg_spi_ports|process_1~5_combout\ & (\ecg_spi_ports|process_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ecg_spi_ports|rd_add~q\,
	datab => \ecg_spi_ports|process_1~5_combout\,
	datac => \ecg_spi_ports|process_1~4_combout\,
	datad => \ecg_spi_ports|miso~3_combout\,
	combout => \ecg_spi_ports|miso~4_combout\);

-- Location: FF_X21_Y1_N19
\ecg_spi_ports|miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|miso~2_combout\,
	ena => \ecg_spi_ports|miso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|miso~reg0_q\);

-- Location: LCCOMB_X23_Y2_N4
\ecg_spi_ports|miso~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ecg_spi_ports|miso~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \ecg_spi_ports|miso~enfeeder_combout\);

-- Location: FF_X23_Y2_N5
\ecg_spi_ports|miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ecg_sclk~input_o\,
	d => \ecg_spi_ports|miso~enfeeder_combout\,
	clrn => \ALT_INV_ecg_ss_n~input_o\,
	ena => \ecg_spi_ports|miso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ecg_spi_ports|miso~en_q\);

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

-- Location: LCCOMB_X29_Y4_N30
\rec_spi_ports|bit_cnt[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rec_spi_ports|bit_cnt[1]~feeder_combout\);

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

-- Location: FF_X29_Y4_N31
\rec_spi_ports|bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[1]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(1));

-- Location: LCCOMB_X28_Y1_N30
\rec_spi_ports|bit_cnt[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[2]~0_combout\ = !\rec_spi_ports|bit_cnt\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(1),
	combout => \rec_spi_ports|bit_cnt[2]~0_combout\);

-- Location: FF_X28_Y1_N31
\rec_spi_ports|bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[2]~0_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(2));

-- Location: LCCOMB_X28_Y2_N26
\rec_spi_ports|rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rd_add~0_combout\ = (\rec_spi_ports|bit_cnt\(2) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(2) & ((\rec_spi_ports|rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rd_add~q\,
	datad => \rec_spi_ports|bit_cnt\(2),
	combout => \rec_spi_ports|rd_add~0_combout\);

-- Location: FF_X28_Y2_N27
\rec_spi_ports|rd_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rd_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rd_add~q\);

-- Location: IOIBUF_X41_Y15_N1
\i2s_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2s_clk,
	o => \i2s_clk~input_o\);

-- Location: CLKCTRL_G9
\i2s_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i2s_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i2s_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N1
\i2s_adc_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2s_adc_data,
	o => \i2s_adc_data~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\i2s_lrclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2s_lrclk,
	o => \i2s_lrclk~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\i2s_bclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2s_bclk,
	o => \i2s_bclk~input_o\);

-- Location: FF_X24_Y3_N23
\i2s_ports|zbclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_bclk~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|zbclk~q\);

-- Location: LCCOMB_X26_Y3_N26
\i2s_ports|zzbclk~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|zzbclk~feeder_combout\ = \i2s_ports|zbclk~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|zbclk~q\,
	combout => \i2s_ports|zzbclk~feeder_combout\);

-- Location: FF_X26_Y3_N27
\i2s_ports|zzbclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|zzbclk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|zzbclk~q\);

-- Location: FF_X26_Y3_N1
\i2s_ports|zzzbclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|zzbclk~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|zzzbclk~q\);

-- Location: LCCOMB_X26_Y3_N12
\i2s_ports|pos_edge~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|pos_edge~0_combout\ = (\i2s_ports|zzbclk~q\ & ((!\i2s_ports|zzzbclk~q\))) # (!\i2s_ports|zzbclk~q\ & (\i2s_ports|pos_edge~q\ & \i2s_ports|zzzbclk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2s_ports|zzbclk~q\,
	datac => \i2s_ports|pos_edge~q\,
	datad => \i2s_ports|zzzbclk~q\,
	combout => \i2s_ports|pos_edge~0_combout\);

-- Location: FF_X26_Y3_N13
\i2s_ports|pos_edge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|pos_edge~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|pos_edge~q\);

-- Location: LCCOMB_X26_Y3_N0
\i2s_ports|l_get_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|l_get_data~0_combout\ = (!\i2s_lrclk~input_o\ & \i2s_ports|pos_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2s_lrclk~input_o\,
	datad => \i2s_ports|pos_edge~q\,
	combout => \i2s_ports|l_get_data~0_combout\);

-- Location: FF_X27_Y3_N3
\i2s_ports|l_sr_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_adc_data~input_o\,
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(0));

-- Location: LCCOMB_X27_Y3_N8
\i2s_ports|l_sr_in[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|l_sr_in[1]~feeder_combout\ = \i2s_ports|l_sr_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_ports|l_sr_in\(0),
	combout => \i2s_ports|l_sr_in[1]~feeder_combout\);

-- Location: FF_X27_Y3_N9
\i2s_ports|l_sr_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|l_sr_in[1]~feeder_combout\,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(1));

-- Location: FF_X27_Y3_N15
\i2s_ports|l_sr_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(1),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(2));

-- Location: FF_X27_Y3_N27
\i2s_ports|l_sr_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(2),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(3));

-- Location: FF_X27_Y3_N5
\i2s_ports|l_sr_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(3),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(4));

-- Location: FF_X27_Y4_N13
\i2s_ports|l_sr_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(4),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(5));

-- Location: LCCOMB_X27_Y4_N16
\i2s_ports|l_sr_in[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|l_sr_in[6]~feeder_combout\ = \i2s_ports|l_sr_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|l_sr_in\(5),
	combout => \i2s_ports|l_sr_in[6]~feeder_combout\);

-- Location: FF_X27_Y4_N17
\i2s_ports|l_sr_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|l_sr_in[6]~feeder_combout\,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(6));

-- Location: FF_X27_Y4_N21
\i2s_ports|l_sr_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(6),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(7));

-- Location: FF_X27_Y4_N19
\i2s_ports|l_sr_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(7),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(8));

-- Location: FF_X27_Y4_N1
\i2s_ports|l_sr_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(8),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(9));

-- Location: FF_X28_Y3_N1
\i2s_ports|l_sr_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(9),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(10));

-- Location: LCCOMB_X28_Y3_N18
\i2s_ports|l_sr_in[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|l_sr_in[11]~feeder_combout\ = \i2s_ports|l_sr_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|l_sr_in\(10),
	combout => \i2s_ports|l_sr_in[11]~feeder_combout\);

-- Location: FF_X28_Y3_N19
\i2s_ports|l_sr_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|l_sr_in[11]~feeder_combout\,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(11));

-- Location: FF_X28_Y3_N21
\i2s_ports|l_sr_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(11),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(12));

-- Location: FF_X28_Y3_N13
\i2s_ports|l_sr_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(12),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(13));

-- Location: FF_X28_Y3_N25
\i2s_ports|l_sr_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(13),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(14));

-- Location: LCCOMB_X29_Y3_N0
\i2s_ports|l_sr_in[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|l_sr_in[15]~feeder_combout\ = \i2s_ports|l_sr_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|l_sr_in\(14),
	combout => \i2s_ports|l_sr_in[15]~feeder_combout\);

-- Location: FF_X29_Y3_N1
\i2s_ports|l_sr_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|l_sr_in[15]~feeder_combout\,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(15));

-- Location: LCCOMB_X29_Y3_N6
\i2s_ports|l_sr_in[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|l_sr_in[16]~feeder_combout\ = \i2s_ports|l_sr_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|l_sr_in\(15),
	combout => \i2s_ports|l_sr_in[16]~feeder_combout\);

-- Location: FF_X29_Y3_N7
\i2s_ports|l_sr_in[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|l_sr_in[16]~feeder_combout\,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(16));

-- Location: LCCOMB_X29_Y3_N28
\i2s_ports|l_sr_in[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|l_sr_in[17]~feeder_combout\ = \i2s_ports|l_sr_in\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|l_sr_in\(16),
	combout => \i2s_ports|l_sr_in[17]~feeder_combout\);

-- Location: FF_X29_Y3_N29
\i2s_ports|l_sr_in[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|l_sr_in[17]~feeder_combout\,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(17));

-- Location: LCCOMB_X29_Y3_N10
\i2s_ports|l_sr_in[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|l_sr_in[18]~feeder_combout\ = \i2s_ports|l_sr_in\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|l_sr_in\(17),
	combout => \i2s_ports|l_sr_in[18]~feeder_combout\);

-- Location: FF_X29_Y3_N11
\i2s_ports|l_sr_in[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|l_sr_in[18]~feeder_combout\,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(18));

-- Location: LCCOMB_X27_Y2_N28
\i2s_ports|l_sr_in[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|l_sr_in[19]~feeder_combout\ = \i2s_ports|l_sr_in\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|l_sr_in\(18),
	combout => \i2s_ports|l_sr_in[19]~feeder_combout\);

-- Location: FF_X27_Y2_N29
\i2s_ports|l_sr_in[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|l_sr_in[19]~feeder_combout\,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(19));

-- Location: FF_X27_Y2_N19
\i2s_ports|l_sr_in[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(19),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(20));

-- Location: FF_X27_Y2_N13
\i2s_ports|l_sr_in[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(20),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(21));

-- Location: FF_X27_Y2_N17
\i2s_ports|l_sr_in[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(21),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(22));

-- Location: FF_X27_Y2_N25
\i2s_ports|l_sr_in[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|l_sr_in\(22),
	sload => VCC,
	ena => \i2s_ports|l_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|l_sr_in\(23));

-- Location: LCCOMB_X27_Y2_N24
\rec_spi_ports|tx_buf[23]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[23]~1_combout\ = (\rec_ss_n~input_o\ & (\i2s_ports|l_sr_in\(23))) # (!\rec_ss_n~input_o\ & ((\rec_spi_ports|tx_buf[23]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(23),
	datad => \rec_spi_ports|tx_buf[23]~1_combout\,
	combout => \rec_spi_ports|tx_buf[23]~1_combout\);

-- Location: LCCOMB_X27_Y2_N16
\rec_spi_ports|tx_buf[22]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[22]~5_combout\ = (\rec_ss_n~input_o\ & (\i2s_ports|l_sr_in\(22))) # (!\rec_ss_n~input_o\ & ((\rec_spi_ports|tx_buf[22]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(22),
	datad => \rec_spi_ports|tx_buf[22]~5_combout\,
	combout => \rec_spi_ports|tx_buf[22]~5_combout\);

-- Location: LCCOMB_X27_Y2_N12
\rec_spi_ports|tx_buf[21]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[21]~9_combout\ = (\rec_ss_n~input_o\ & (\i2s_ports|l_sr_in\(21))) # (!\rec_ss_n~input_o\ & ((\rec_spi_ports|tx_buf[21]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(21),
	datad => \rec_spi_ports|tx_buf[21]~9_combout\,
	combout => \rec_spi_ports|tx_buf[21]~9_combout\);

-- Location: LCCOMB_X27_Y2_N18
\rec_spi_ports|tx_buf[20]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[20]~13_combout\ = (\rec_ss_n~input_o\ & (\i2s_ports|l_sr_in\(20))) # (!\rec_ss_n~input_o\ & ((\rec_spi_ports|tx_buf[20]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(20),
	datad => \rec_spi_ports|tx_buf[20]~13_combout\,
	combout => \rec_spi_ports|tx_buf[20]~13_combout\);

-- Location: LCCOMB_X27_Y2_N14
\rec_spi_ports|tx_buf[19]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[19]~17_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(19)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[19]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|tx_buf[19]~17_combout\,
	datac => \rec_ss_n~input_o\,
	datad => \i2s_ports|l_sr_in\(19),
	combout => \rec_spi_ports|tx_buf[19]~17_combout\);

-- Location: LCCOMB_X29_Y3_N8
\rec_spi_ports|tx_buf[18]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[18]~21_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(18)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[18]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|tx_buf[18]~21_combout\,
	datac => \rec_ss_n~input_o\,
	datad => \i2s_ports|l_sr_in\(18),
	combout => \rec_spi_ports|tx_buf[18]~21_combout\);

-- Location: LCCOMB_X29_Y3_N14
\rec_spi_ports|tx_buf[17]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[17]~25_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(17)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[17]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|tx_buf[17]~25_combout\,
	datac => \rec_ss_n~input_o\,
	datad => \i2s_ports|l_sr_in\(17),
	combout => \rec_spi_ports|tx_buf[17]~25_combout\);

-- Location: LCCOMB_X29_Y3_N4
\rec_spi_ports|tx_buf[16]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[16]~29_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(16)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[16]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|tx_buf[16]~29_combout\,
	datac => \rec_ss_n~input_o\,
	datad => \i2s_ports|l_sr_in\(16),
	combout => \rec_spi_ports|tx_buf[16]~29_combout\);

-- Location: LCCOMB_X29_Y3_N18
\rec_spi_ports|tx_buf[15]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[15]~33_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(15)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[15]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|tx_buf[15]~33_combout\,
	datac => \rec_ss_n~input_o\,
	datad => \i2s_ports|l_sr_in\(15),
	combout => \rec_spi_ports|tx_buf[15]~33_combout\);

-- Location: LCCOMB_X28_Y3_N24
\rec_spi_ports|tx_buf[14]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[14]~37_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(14)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[14]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[14]~37_combout\,
	datac => \i2s_ports|l_sr_in\(14),
	datad => \rec_ss_n~input_o\,
	combout => \rec_spi_ports|tx_buf[14]~37_combout\);

-- Location: LCCOMB_X28_Y3_N12
\rec_spi_ports|tx_buf[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[13]~41_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(13)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[13]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|tx_buf[13]~41_combout\,
	datac => \i2s_ports|l_sr_in\(13),
	datad => \rec_ss_n~input_o\,
	combout => \rec_spi_ports|tx_buf[13]~41_combout\);

-- Location: LCCOMB_X28_Y3_N20
\rec_spi_ports|tx_buf[12]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[12]~45_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(12)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[12]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[12]~45_combout\,
	datac => \i2s_ports|l_sr_in\(12),
	datad => \rec_ss_n~input_o\,
	combout => \rec_spi_ports|tx_buf[12]~45_combout\);

-- Location: LCCOMB_X28_Y3_N30
\rec_spi_ports|tx_buf[11]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[11]~49_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(11)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[11]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|tx_buf[11]~49_combout\,
	datac => \rec_ss_n~input_o\,
	datad => \i2s_ports|l_sr_in\(11),
	combout => \rec_spi_ports|tx_buf[11]~49_combout\);

-- Location: LCCOMB_X28_Y3_N0
\rec_spi_ports|tx_buf[10]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[10]~53_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(10)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[10]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[10]~53_combout\,
	datac => \i2s_ports|l_sr_in\(10),
	datad => \rec_ss_n~input_o\,
	combout => \rec_spi_ports|tx_buf[10]~53_combout\);

-- Location: LCCOMB_X27_Y4_N0
\rec_spi_ports|tx_buf[9]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[9]~57_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(9)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[9]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[9]~57_combout\,
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(9),
	combout => \rec_spi_ports|tx_buf[9]~57_combout\);

-- Location: LCCOMB_X27_Y4_N18
\rec_spi_ports|tx_buf[8]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[8]~61_combout\ = (\rec_ss_n~input_o\ & (\i2s_ports|l_sr_in\(8))) # (!\rec_ss_n~input_o\ & ((\rec_spi_ports|tx_buf[8]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(8),
	datad => \rec_spi_ports|tx_buf[8]~61_combout\,
	combout => \rec_spi_ports|tx_buf[8]~61_combout\);

-- Location: LCCOMB_X27_Y4_N20
\rec_spi_ports|tx_buf[7]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[7]~65_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(7)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[7]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[7]~65_combout\,
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(7),
	combout => \rec_spi_ports|tx_buf[7]~65_combout\);

-- Location: LCCOMB_X27_Y4_N14
\rec_spi_ports|tx_buf[6]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[6]~69_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(6)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[6]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|tx_buf[6]~69_combout\,
	datac => \rec_ss_n~input_o\,
	datad => \i2s_ports|l_sr_in\(6),
	combout => \rec_spi_ports|tx_buf[6]~69_combout\);

-- Location: LCCOMB_X27_Y4_N12
\rec_spi_ports|tx_buf[5]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[5]~73_combout\ = (\rec_ss_n~input_o\ & (\i2s_ports|l_sr_in\(5))) # (!\rec_ss_n~input_o\ & ((\rec_spi_ports|tx_buf[5]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(5),
	datad => \rec_spi_ports|tx_buf[5]~73_combout\,
	combout => \rec_spi_ports|tx_buf[5]~73_combout\);

-- Location: LCCOMB_X27_Y3_N4
\rec_spi_ports|tx_buf[4]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[4]~77_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(4)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[4]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[4]~77_combout\,
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(4),
	combout => \rec_spi_ports|tx_buf[4]~77_combout\);

-- Location: LCCOMB_X27_Y3_N26
\rec_spi_ports|tx_buf[3]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[3]~81_combout\ = (\rec_ss_n~input_o\ & ((\i2s_ports|l_sr_in\(3)))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[3]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[3]~81_combout\,
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(3),
	combout => \rec_spi_ports|tx_buf[3]~81_combout\);

-- Location: LCCOMB_X27_Y3_N14
\rec_spi_ports|tx_buf[2]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[2]~85_combout\ = (\rec_ss_n~input_o\ & (\i2s_ports|l_sr_in\(2))) # (!\rec_ss_n~input_o\ & ((\rec_spi_ports|tx_buf[2]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(2),
	datad => \rec_spi_ports|tx_buf[2]~85_combout\,
	combout => \rec_spi_ports|tx_buf[2]~85_combout\);

-- Location: LCCOMB_X27_Y3_N22
\rec_spi_ports|tx_buf[1]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[1]~89_combout\ = (\rec_ss_n~input_o\ & (\i2s_ports|l_sr_in\(1))) # (!\rec_ss_n~input_o\ & ((\rec_spi_ports|tx_buf[1]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(1),
	datad => \rec_spi_ports|tx_buf[1]~89_combout\,
	combout => \rec_spi_ports|tx_buf[1]~89_combout\);

-- Location: LCCOMB_X27_Y3_N2
\rec_spi_ports|tx_buf[0]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[0]~93_combout\ = (\rec_ss_n~input_o\ & (\i2s_ports|l_sr_in\(0))) # (!\rec_ss_n~input_o\ & ((\rec_spi_ports|tx_buf[0]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(0),
	datad => \rec_spi_ports|tx_buf[0]~93_combout\,
	combout => \rec_spi_ports|tx_buf[0]~93_combout\);

-- Location: LCCOMB_X27_Y2_N8
\rec_spi_ports|tx_buf[0]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[0]~95_combout\ = \rec_spi_ports|tx_buf[0]~93_combout\ $ (\rec_spi_ports|tx_buf[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[0]~93_combout\,
	datad => \rec_spi_ports|tx_buf[23]~2_combout\,
	combout => \rec_spi_ports|tx_buf[0]~95_combout\);

-- Location: FF_X28_Y1_N15
\rec_spi_ports|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(2),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(3));

-- Location: FF_X28_Y1_N1
\rec_spi_ports|bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(3),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(4));

-- Location: LCCOMB_X28_Y1_N0
\rec_spi_ports|process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~8_combout\ = (!\rec_spi_ports|bit_cnt\(2) & (!\rec_spi_ports|bit_cnt\(3) & (!\rec_spi_ports|bit_cnt\(4) & \rec_spi_ports|bit_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(2),
	datab => \rec_spi_ports|bit_cnt\(3),
	datac => \rec_spi_ports|bit_cnt\(4),
	datad => \rec_spi_ports|bit_cnt\(1),
	combout => \rec_spi_ports|process_1~8_combout\);

-- Location: LCCOMB_X28_Y1_N22
\rec_spi_ports|bit_cnt[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[5]~feeder_combout\ = \rec_spi_ports|bit_cnt\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(4),
	combout => \rec_spi_ports|bit_cnt[5]~feeder_combout\);

-- Location: FF_X28_Y1_N23
\rec_spi_ports|bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[5]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(5));

-- Location: FF_X28_Y1_N3
\rec_spi_ports|bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(5),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(6));

-- Location: LCCOMB_X28_Y1_N6
\rec_spi_ports|bit_cnt[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[7]~feeder_combout\ = \rec_spi_ports|bit_cnt\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(6),
	combout => \rec_spi_ports|bit_cnt[7]~feeder_combout\);

-- Location: FF_X28_Y1_N7
\rec_spi_ports|bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[7]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(7));

-- Location: LCCOMB_X28_Y1_N24
\rec_spi_ports|bit_cnt[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[8]~feeder_combout\ = \rec_spi_ports|bit_cnt\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(7),
	combout => \rec_spi_ports|bit_cnt[8]~feeder_combout\);

-- Location: FF_X28_Y1_N25
\rec_spi_ports|bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[8]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(8));

-- Location: LCCOMB_X28_Y1_N4
\rec_spi_ports|bit_cnt[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[9]~feeder_combout\ = \rec_spi_ports|bit_cnt\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(8),
	combout => \rec_spi_ports|bit_cnt[9]~feeder_combout\);

-- Location: FF_X28_Y1_N5
\rec_spi_ports|bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[9]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(9));

-- Location: FF_X29_Y2_N11
\rec_spi_ports|bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(9),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(10));

-- Location: FF_X29_Y2_N21
\rec_spi_ports|bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(10),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(11));

-- Location: LCCOMB_X27_Y1_N14
\rec_spi_ports|bit_cnt[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[12]~feeder_combout\ = \rec_spi_ports|bit_cnt\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(11),
	combout => \rec_spi_ports|bit_cnt[12]~feeder_combout\);

-- Location: FF_X27_Y1_N15
\rec_spi_ports|bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[12]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(12));

-- Location: FF_X27_Y1_N29
\rec_spi_ports|bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(12),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(13));

-- Location: LCCOMB_X27_Y1_N12
\rec_spi_ports|bit_cnt[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[14]~feeder_combout\ = \rec_spi_ports|bit_cnt\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(13),
	combout => \rec_spi_ports|bit_cnt[14]~feeder_combout\);

-- Location: FF_X27_Y1_N13
\rec_spi_ports|bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[14]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(14));

-- Location: LCCOMB_X27_Y1_N2
\rec_spi_ports|bit_cnt[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[15]~feeder_combout\ = \rec_spi_ports|bit_cnt\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(14),
	combout => \rec_spi_ports|bit_cnt[15]~feeder_combout\);

-- Location: FF_X27_Y1_N3
\rec_spi_ports|bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[15]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(15));

-- Location: LCCOMB_X27_Y1_N0
\rec_spi_ports|bit_cnt[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[16]~feeder_combout\ = \rec_spi_ports|bit_cnt\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(15),
	combout => \rec_spi_ports|bit_cnt[16]~feeder_combout\);

-- Location: FF_X27_Y1_N1
\rec_spi_ports|bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[16]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(16));

-- Location: LCCOMB_X27_Y1_N22
\rec_spi_ports|bit_cnt[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[17]~feeder_combout\ = \rec_spi_ports|bit_cnt\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(16),
	combout => \rec_spi_ports|bit_cnt[17]~feeder_combout\);

-- Location: FF_X27_Y1_N23
\rec_spi_ports|bit_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[17]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(17));

-- Location: FF_X27_Y1_N19
\rec_spi_ports|bit_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(17),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(18));

-- Location: LCCOMB_X28_Y1_N28
\rec_spi_ports|bit_cnt[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[19]~feeder_combout\ = \rec_spi_ports|bit_cnt\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(18),
	combout => \rec_spi_ports|bit_cnt[19]~feeder_combout\);

-- Location: FF_X28_Y1_N29
\rec_spi_ports|bit_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[19]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(19));

-- Location: LCCOMB_X29_Y1_N12
\rec_spi_ports|bit_cnt[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[20]~feeder_combout\ = \rec_spi_ports|bit_cnt\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(19),
	combout => \rec_spi_ports|bit_cnt[20]~feeder_combout\);

-- Location: FF_X29_Y1_N13
\rec_spi_ports|bit_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[20]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(20));

-- Location: FF_X29_Y4_N29
\rec_spi_ports|bit_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(20),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(21));

-- Location: LCCOMB_X28_Y4_N16
\rec_spi_ports|bit_cnt[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[22]~feeder_combout\ = \rec_spi_ports|bit_cnt\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(21),
	combout => \rec_spi_ports|bit_cnt[22]~feeder_combout\);

-- Location: FF_X28_Y4_N17
\rec_spi_ports|bit_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[22]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(22));

-- Location: LCCOMB_X28_Y4_N26
\rec_spi_ports|bit_cnt[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[23]~feeder_combout\ = \rec_spi_ports|bit_cnt\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(22),
	combout => \rec_spi_ports|bit_cnt[23]~feeder_combout\);

-- Location: FF_X28_Y4_N27
\rec_spi_ports|bit_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[23]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(23));

-- Location: FF_X28_Y4_N29
\rec_spi_ports|bit_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(23),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(24));

-- Location: LCCOMB_X28_Y4_N14
\rec_spi_ports|bit_cnt[25]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[25]~feeder_combout\ = \rec_spi_ports|bit_cnt\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(24),
	combout => \rec_spi_ports|bit_cnt[25]~feeder_combout\);

-- Location: FF_X28_Y4_N15
\rec_spi_ports|bit_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[25]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(25));

-- Location: LCCOMB_X29_Y4_N10
\rec_spi_ports|bit_cnt[26]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[26]~feeder_combout\ = \rec_spi_ports|bit_cnt\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(25),
	combout => \rec_spi_ports|bit_cnt[26]~feeder_combout\);

-- Location: FF_X29_Y4_N11
\rec_spi_ports|bit_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[26]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(26));

-- Location: FF_X29_Y1_N23
\rec_spi_ports|bit_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(26),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(27));

-- Location: FF_X29_Y1_N3
\rec_spi_ports|bit_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(27),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(28));

-- Location: LCCOMB_X29_Y1_N14
\rec_spi_ports|bit_cnt[29]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[29]~feeder_combout\ = \rec_spi_ports|bit_cnt\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(28),
	combout => \rec_spi_ports|bit_cnt[29]~feeder_combout\);

-- Location: FF_X29_Y1_N15
\rec_spi_ports|bit_cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[29]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(29));

-- Location: FF_X29_Y1_N5
\rec_spi_ports|bit_cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(29),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(30));

-- Location: FF_X29_Y1_N31
\rec_spi_ports|bit_cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(30),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(31));

-- Location: LCCOMB_X29_Y1_N0
\rec_spi_ports|bit_cnt[32]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[32]~feeder_combout\ = \rec_spi_ports|bit_cnt\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(31),
	combout => \rec_spi_ports|bit_cnt[32]~feeder_combout\);

-- Location: FF_X29_Y1_N1
\rec_spi_ports|bit_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[32]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(32));

-- Location: LCCOMB_X28_Y1_N16
\rec_spi_ports|process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~7_combout\ = (!\rec_spi_ports|bit_cnt\(7) & (!\rec_spi_ports|bit_cnt\(6) & (!\rec_spi_ports|bit_cnt\(32) & !\rec_spi_ports|bit_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(7),
	datab => \rec_spi_ports|bit_cnt\(6),
	datac => \rec_spi_ports|bit_cnt\(32),
	datad => \rec_spi_ports|bit_cnt\(5),
	combout => \rec_spi_ports|process_1~7_combout\);

-- Location: LCCOMB_X28_Y2_N18
\rec_spi_ports|process_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~9_combout\ = (\rec_spi_ports|process_1~8_combout\ & (!\rec_spi_ports|rd_add~q\ & \rec_spi_ports|process_1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|process_1~8_combout\,
	datac => \rec_spi_ports|rd_add~q\,
	datad => \rec_spi_ports|process_1~7_combout\,
	combout => \rec_spi_ports|process_1~9_combout\);

-- Location: FF_X27_Y2_N9
\rec_spi_ports|tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[0]~95_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[0]~_emulated_q\);

-- Location: LCCOMB_X27_Y3_N28
\rec_spi_ports|tx_buf[0]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[0]~94_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(0))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[0]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[0]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[0]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[0]~93_combout\,
	datad => \i2s_ports|l_sr_in\(0),
	combout => \rec_spi_ports|tx_buf[0]~94_combout\);

-- Location: LCCOMB_X27_Y3_N12
\rec_spi_ports|tx_buf[1]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[1]~91_combout\ = \rec_spi_ports|tx_buf[1]~89_combout\ $ (\rec_spi_ports|tx_buf[0]~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|tx_buf[1]~89_combout\,
	datad => \rec_spi_ports|tx_buf[0]~94_combout\,
	combout => \rec_spi_ports|tx_buf[1]~91_combout\);

-- Location: FF_X27_Y3_N13
\rec_spi_ports|tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[1]~91_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[1]~_emulated_q\);

-- Location: LCCOMB_X27_Y3_N20
\rec_spi_ports|tx_buf[1]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[1]~90_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(1))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[1]~_emulated_q\ $ (((\rec_spi_ports|tx_buf[1]~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_ss_n~input_o\,
	datab => \rec_spi_ports|tx_buf[1]~_emulated_q\,
	datac => \i2s_ports|l_sr_in\(1),
	datad => \rec_spi_ports|tx_buf[1]~89_combout\,
	combout => \rec_spi_ports|tx_buf[1]~90_combout\);

-- Location: LCCOMB_X27_Y3_N30
\rec_spi_ports|tx_buf[2]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[2]~87_combout\ = \rec_spi_ports|tx_buf[2]~85_combout\ $ (\rec_spi_ports|tx_buf[1]~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[2]~85_combout\,
	datad => \rec_spi_ports|tx_buf[1]~90_combout\,
	combout => \rec_spi_ports|tx_buf[2]~87_combout\);

-- Location: FF_X27_Y3_N31
\rec_spi_ports|tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[2]~87_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[2]~_emulated_q\);

-- Location: LCCOMB_X27_Y3_N16
\rec_spi_ports|tx_buf[2]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[2]~86_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(2))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[2]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[2]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[2]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[2]~85_combout\,
	datad => \i2s_ports|l_sr_in\(2),
	combout => \rec_spi_ports|tx_buf[2]~86_combout\);

-- Location: LCCOMB_X27_Y3_N6
\rec_spi_ports|tx_buf[3]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[3]~83_combout\ = \rec_spi_ports|tx_buf[3]~81_combout\ $ (\rec_spi_ports|tx_buf[2]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[3]~81_combout\,
	datad => \rec_spi_ports|tx_buf[2]~86_combout\,
	combout => \rec_spi_ports|tx_buf[3]~83_combout\);

-- Location: FF_X27_Y3_N7
\rec_spi_ports|tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[3]~83_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[3]~_emulated_q\);

-- Location: LCCOMB_X27_Y3_N0
\rec_spi_ports|tx_buf[3]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[3]~82_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(3))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[3]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[3]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[3]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[3]~81_combout\,
	datad => \i2s_ports|l_sr_in\(3),
	combout => \rec_spi_ports|tx_buf[3]~82_combout\);

-- Location: LCCOMB_X27_Y3_N10
\rec_spi_ports|tx_buf[4]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[4]~79_combout\ = \rec_spi_ports|tx_buf[4]~77_combout\ $ (\rec_spi_ports|tx_buf[3]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[4]~77_combout\,
	datad => \rec_spi_ports|tx_buf[3]~82_combout\,
	combout => \rec_spi_ports|tx_buf[4]~79_combout\);

-- Location: FF_X27_Y3_N11
\rec_spi_ports|tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[4]~79_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[4]~_emulated_q\);

-- Location: LCCOMB_X27_Y3_N24
\rec_spi_ports|tx_buf[4]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[4]~78_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(4))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[4]~_emulated_q\ $ (((\rec_spi_ports|tx_buf[4]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_ss_n~input_o\,
	datab => \rec_spi_ports|tx_buf[4]~_emulated_q\,
	datac => \i2s_ports|l_sr_in\(4),
	datad => \rec_spi_ports|tx_buf[4]~77_combout\,
	combout => \rec_spi_ports|tx_buf[4]~78_combout\);

-- Location: LCCOMB_X27_Y3_N18
\rec_spi_ports|tx_buf[5]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[5]~75_combout\ = \rec_spi_ports|tx_buf[5]~73_combout\ $ (\rec_spi_ports|tx_buf[4]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[5]~73_combout\,
	datad => \rec_spi_ports|tx_buf[4]~78_combout\,
	combout => \rec_spi_ports|tx_buf[5]~75_combout\);

-- Location: FF_X27_Y3_N19
\rec_spi_ports|tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[5]~75_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[5]~_emulated_q\);

-- Location: LCCOMB_X27_Y4_N6
\rec_spi_ports|tx_buf[5]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[5]~74_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(5))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[5]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[5]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[5]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[5]~73_combout\,
	datad => \i2s_ports|l_sr_in\(5),
	combout => \rec_spi_ports|tx_buf[5]~74_combout\);

-- Location: LCCOMB_X27_Y4_N8
\rec_spi_ports|tx_buf[6]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[6]~71_combout\ = \rec_spi_ports|tx_buf[6]~69_combout\ $ (\rec_spi_ports|tx_buf[5]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[6]~69_combout\,
	datad => \rec_spi_ports|tx_buf[5]~74_combout\,
	combout => \rec_spi_ports|tx_buf[6]~71_combout\);

-- Location: FF_X27_Y4_N9
\rec_spi_ports|tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[6]~71_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[6]~_emulated_q\);

-- Location: LCCOMB_X27_Y4_N2
\rec_spi_ports|tx_buf[6]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[6]~70_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(6))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[6]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[6]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[6]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[6]~69_combout\,
	datad => \i2s_ports|l_sr_in\(6),
	combout => \rec_spi_ports|tx_buf[6]~70_combout\);

-- Location: LCCOMB_X27_Y4_N30
\rec_spi_ports|tx_buf[7]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[7]~67_combout\ = \rec_spi_ports|tx_buf[7]~65_combout\ $ (\rec_spi_ports|tx_buf[6]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[7]~65_combout\,
	datad => \rec_spi_ports|tx_buf[6]~70_combout\,
	combout => \rec_spi_ports|tx_buf[7]~67_combout\);

-- Location: FF_X27_Y4_N31
\rec_spi_ports|tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[7]~67_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[7]~_emulated_q\);

-- Location: LCCOMB_X27_Y4_N28
\rec_spi_ports|tx_buf[7]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[7]~66_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(7))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[7]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[7]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[7]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[7]~65_combout\,
	datad => \i2s_ports|l_sr_in\(7),
	combout => \rec_spi_ports|tx_buf[7]~66_combout\);

-- Location: LCCOMB_X27_Y4_N22
\rec_spi_ports|tx_buf[8]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[8]~63_combout\ = \rec_spi_ports|tx_buf[8]~61_combout\ $ (\rec_spi_ports|tx_buf[7]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[8]~61_combout\,
	datad => \rec_spi_ports|tx_buf[7]~66_combout\,
	combout => \rec_spi_ports|tx_buf[8]~63_combout\);

-- Location: FF_X27_Y4_N23
\rec_spi_ports|tx_buf[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[8]~63_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[8]~_emulated_q\);

-- Location: LCCOMB_X27_Y4_N10
\rec_spi_ports|tx_buf[8]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[8]~62_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(8))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[8]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[8]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[8]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[8]~61_combout\,
	datad => \i2s_ports|l_sr_in\(8),
	combout => \rec_spi_ports|tx_buf[8]~62_combout\);

-- Location: LCCOMB_X27_Y4_N26
\rec_spi_ports|tx_buf[9]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[9]~59_combout\ = \rec_spi_ports|tx_buf[9]~57_combout\ $ (\rec_spi_ports|tx_buf[8]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[9]~57_combout\,
	datad => \rec_spi_ports|tx_buf[8]~62_combout\,
	combout => \rec_spi_ports|tx_buf[9]~59_combout\);

-- Location: FF_X27_Y4_N27
\rec_spi_ports|tx_buf[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[9]~59_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[9]~_emulated_q\);

-- Location: LCCOMB_X27_Y4_N24
\rec_spi_ports|tx_buf[9]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[9]~58_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(9))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[9]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[9]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[9]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[9]~57_combout\,
	datad => \i2s_ports|l_sr_in\(9),
	combout => \rec_spi_ports|tx_buf[9]~58_combout\);

-- Location: LCCOMB_X27_Y4_N4
\rec_spi_ports|tx_buf[10]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[10]~55_combout\ = \rec_spi_ports|tx_buf[10]~53_combout\ $ (\rec_spi_ports|tx_buf[9]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[10]~53_combout\,
	datad => \rec_spi_ports|tx_buf[9]~58_combout\,
	combout => \rec_spi_ports|tx_buf[10]~55_combout\);

-- Location: FF_X27_Y4_N5
\rec_spi_ports|tx_buf[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[10]~55_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[10]~_emulated_q\);

-- Location: LCCOMB_X28_Y3_N10
\rec_spi_ports|tx_buf[10]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[10]~54_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(10))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[10]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[10]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[10]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[10]~53_combout\,
	datad => \i2s_ports|l_sr_in\(10),
	combout => \rec_spi_ports|tx_buf[10]~54_combout\);

-- Location: LCCOMB_X28_Y3_N4
\rec_spi_ports|tx_buf[11]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[11]~51_combout\ = \rec_spi_ports|tx_buf[11]~49_combout\ $ (\rec_spi_ports|tx_buf[10]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[11]~49_combout\,
	datad => \rec_spi_ports|tx_buf[10]~54_combout\,
	combout => \rec_spi_ports|tx_buf[11]~51_combout\);

-- Location: FF_X28_Y3_N5
\rec_spi_ports|tx_buf[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[11]~51_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[11]~_emulated_q\);

-- Location: LCCOMB_X28_Y3_N6
\rec_spi_ports|tx_buf[11]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[11]~50_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(11))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[11]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[11]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[11]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[11]~49_combout\,
	datad => \i2s_ports|l_sr_in\(11),
	combout => \rec_spi_ports|tx_buf[11]~50_combout\);

-- Location: LCCOMB_X28_Y3_N22
\rec_spi_ports|tx_buf[12]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[12]~47_combout\ = \rec_spi_ports|tx_buf[12]~45_combout\ $ (\rec_spi_ports|tx_buf[11]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[12]~45_combout\,
	datad => \rec_spi_ports|tx_buf[11]~50_combout\,
	combout => \rec_spi_ports|tx_buf[12]~47_combout\);

-- Location: FF_X28_Y3_N23
\rec_spi_ports|tx_buf[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[12]~47_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[12]~_emulated_q\);

-- Location: LCCOMB_X28_Y3_N16
\rec_spi_ports|tx_buf[12]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[12]~46_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(12))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[12]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[12]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[12]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[12]~45_combout\,
	datad => \i2s_ports|l_sr_in\(12),
	combout => \rec_spi_ports|tx_buf[12]~46_combout\);

-- Location: LCCOMB_X28_Y3_N8
\rec_spi_ports|tx_buf[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[13]~43_combout\ = \rec_spi_ports|tx_buf[13]~41_combout\ $ (\rec_spi_ports|tx_buf[12]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[13]~41_combout\,
	datad => \rec_spi_ports|tx_buf[12]~46_combout\,
	combout => \rec_spi_ports|tx_buf[13]~43_combout\);

-- Location: FF_X28_Y3_N9
\rec_spi_ports|tx_buf[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[13]~43_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[13]~_emulated_q\);

-- Location: LCCOMB_X28_Y3_N2
\rec_spi_ports|tx_buf[13]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[13]~42_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(13))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[13]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[13]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[13]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[13]~41_combout\,
	datad => \i2s_ports|l_sr_in\(13),
	combout => \rec_spi_ports|tx_buf[13]~42_combout\);

-- Location: LCCOMB_X28_Y3_N26
\rec_spi_ports|tx_buf[14]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[14]~39_combout\ = \rec_spi_ports|tx_buf[14]~37_combout\ $ (\rec_spi_ports|tx_buf[13]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[14]~37_combout\,
	datad => \rec_spi_ports|tx_buf[13]~42_combout\,
	combout => \rec_spi_ports|tx_buf[14]~39_combout\);

-- Location: FF_X28_Y3_N27
\rec_spi_ports|tx_buf[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[14]~39_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[14]~_emulated_q\);

-- Location: LCCOMB_X28_Y3_N28
\rec_spi_ports|tx_buf[14]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[14]~38_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(14))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[14]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[14]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[14]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[14]~37_combout\,
	datad => \i2s_ports|l_sr_in\(14),
	combout => \rec_spi_ports|tx_buf[14]~38_combout\);

-- Location: LCCOMB_X28_Y3_N14
\rec_spi_ports|tx_buf[15]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[15]~35_combout\ = \rec_spi_ports|tx_buf[15]~33_combout\ $ (\rec_spi_ports|tx_buf[14]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|tx_buf[15]~33_combout\,
	datad => \rec_spi_ports|tx_buf[14]~38_combout\,
	combout => \rec_spi_ports|tx_buf[15]~35_combout\);

-- Location: FF_X28_Y3_N15
\rec_spi_ports|tx_buf[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[15]~35_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[15]~_emulated_q\);

-- Location: LCCOMB_X29_Y3_N2
\rec_spi_ports|tx_buf[15]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[15]~34_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(15))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[15]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[15]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[15]~_emulated_q\,
	datab => \rec_spi_ports|tx_buf[15]~33_combout\,
	datac => \rec_ss_n~input_o\,
	datad => \i2s_ports|l_sr_in\(15),
	combout => \rec_spi_ports|tx_buf[15]~34_combout\);

-- Location: LCCOMB_X29_Y3_N26
\rec_spi_ports|tx_buf[16]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[16]~31_combout\ = \rec_spi_ports|tx_buf[16]~29_combout\ $ (\rec_spi_ports|tx_buf[15]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[16]~29_combout\,
	datad => \rec_spi_ports|tx_buf[15]~34_combout\,
	combout => \rec_spi_ports|tx_buf[16]~31_combout\);

-- Location: FF_X29_Y3_N27
\rec_spi_ports|tx_buf[16]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[16]~31_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[16]~_emulated_q\);

-- Location: LCCOMB_X29_Y3_N20
\rec_spi_ports|tx_buf[16]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[16]~30_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(16))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[16]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[16]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[16]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[16]~29_combout\,
	datad => \i2s_ports|l_sr_in\(16),
	combout => \rec_spi_ports|tx_buf[16]~30_combout\);

-- Location: LCCOMB_X29_Y3_N30
\rec_spi_ports|tx_buf[17]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[17]~27_combout\ = \rec_spi_ports|tx_buf[17]~25_combout\ $ (\rec_spi_ports|tx_buf[16]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[17]~25_combout\,
	datad => \rec_spi_ports|tx_buf[16]~30_combout\,
	combout => \rec_spi_ports|tx_buf[17]~27_combout\);

-- Location: FF_X29_Y3_N31
\rec_spi_ports|tx_buf[17]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[17]~27_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[17]~_emulated_q\);

-- Location: LCCOMB_X29_Y3_N24
\rec_spi_ports|tx_buf[17]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[17]~26_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(17))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[17]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[17]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[17]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[17]~25_combout\,
	datad => \i2s_ports|l_sr_in\(17),
	combout => \rec_spi_ports|tx_buf[17]~26_combout\);

-- Location: LCCOMB_X29_Y3_N22
\rec_spi_ports|tx_buf[18]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[18]~23_combout\ = \rec_spi_ports|tx_buf[18]~21_combout\ $ (\rec_spi_ports|tx_buf[17]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[18]~21_combout\,
	datad => \rec_spi_ports|tx_buf[17]~26_combout\,
	combout => \rec_spi_ports|tx_buf[18]~23_combout\);

-- Location: FF_X29_Y3_N23
\rec_spi_ports|tx_buf[18]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[18]~23_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[18]~_emulated_q\);

-- Location: LCCOMB_X29_Y3_N16
\rec_spi_ports|tx_buf[18]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[18]~22_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(18))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[18]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[18]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[18]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[18]~21_combout\,
	datad => \i2s_ports|l_sr_in\(18),
	combout => \rec_spi_ports|tx_buf[18]~22_combout\);

-- Location: LCCOMB_X29_Y3_N12
\rec_spi_ports|tx_buf[19]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[19]~19_combout\ = \rec_spi_ports|tx_buf[19]~17_combout\ $ (\rec_spi_ports|tx_buf[18]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[19]~17_combout\,
	datad => \rec_spi_ports|tx_buf[18]~22_combout\,
	combout => \rec_spi_ports|tx_buf[19]~19_combout\);

-- Location: FF_X29_Y3_N13
\rec_spi_ports|tx_buf[19]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[19]~19_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[19]~_emulated_q\);

-- Location: LCCOMB_X27_Y2_N20
\rec_spi_ports|tx_buf[19]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[19]~18_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(19))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[19]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[19]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[19]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[19]~17_combout\,
	datad => \i2s_ports|l_sr_in\(19),
	combout => \rec_spi_ports|tx_buf[19]~18_combout\);

-- Location: LCCOMB_X27_Y2_N26
\rec_spi_ports|tx_buf[20]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[20]~15_combout\ = \rec_spi_ports|tx_buf[20]~13_combout\ $ (\rec_spi_ports|tx_buf[19]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[20]~13_combout\,
	datad => \rec_spi_ports|tx_buf[19]~18_combout\,
	combout => \rec_spi_ports|tx_buf[20]~15_combout\);

-- Location: FF_X27_Y2_N27
\rec_spi_ports|tx_buf[20]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[20]~15_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[20]~_emulated_q\);

-- Location: LCCOMB_X27_Y2_N0
\rec_spi_ports|tx_buf[20]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[20]~14_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(20))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[20]~_emulated_q\ $ (((\rec_spi_ports|tx_buf[20]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[20]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \i2s_ports|l_sr_in\(20),
	datad => \rec_spi_ports|tx_buf[20]~13_combout\,
	combout => \rec_spi_ports|tx_buf[20]~14_combout\);

-- Location: LCCOMB_X27_Y2_N4
\rec_spi_ports|tx_buf[21]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[21]~11_combout\ = \rec_spi_ports|tx_buf[21]~9_combout\ $ (\rec_spi_ports|tx_buf[20]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[21]~9_combout\,
	datad => \rec_spi_ports|tx_buf[20]~14_combout\,
	combout => \rec_spi_ports|tx_buf[21]~11_combout\);

-- Location: FF_X27_Y2_N5
\rec_spi_ports|tx_buf[21]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[21]~11_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[21]~_emulated_q\);

-- Location: LCCOMB_X27_Y2_N2
\rec_spi_ports|tx_buf[21]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[21]~10_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(21))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[21]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[21]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[21]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[21]~9_combout\,
	datad => \i2s_ports|l_sr_in\(21),
	combout => \rec_spi_ports|tx_buf[21]~10_combout\);

-- Location: LCCOMB_X27_Y2_N30
\rec_spi_ports|tx_buf[22]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[22]~7_combout\ = \rec_spi_ports|tx_buf[22]~5_combout\ $ (\rec_spi_ports|tx_buf[21]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[22]~5_combout\,
	datad => \rec_spi_ports|tx_buf[21]~10_combout\,
	combout => \rec_spi_ports|tx_buf[22]~7_combout\);

-- Location: FF_X27_Y2_N31
\rec_spi_ports|tx_buf[22]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[22]~7_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[22]~_emulated_q\);

-- Location: LCCOMB_X27_Y2_N10
\rec_spi_ports|tx_buf[22]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[22]~6_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(22))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[22]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[22]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_ss_n~input_o\,
	datab => \rec_spi_ports|tx_buf[22]~_emulated_q\,
	datac => \rec_spi_ports|tx_buf[22]~5_combout\,
	datad => \i2s_ports|l_sr_in\(22),
	combout => \rec_spi_ports|tx_buf[22]~6_combout\);

-- Location: LCCOMB_X27_Y2_N22
\rec_spi_ports|tx_buf[23]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[23]~3_combout\ = \rec_spi_ports|tx_buf[23]~1_combout\ $ (\rec_spi_ports|tx_buf[22]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|tx_buf[23]~1_combout\,
	datad => \rec_spi_ports|tx_buf[22]~6_combout\,
	combout => \rec_spi_ports|tx_buf[23]~3_combout\);

-- Location: FF_X27_Y2_N23
\rec_spi_ports|tx_buf[23]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|tx_buf[23]~3_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|tx_buf[23]~_emulated_q\);

-- Location: LCCOMB_X27_Y2_N6
\rec_spi_ports|tx_buf[23]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|tx_buf[23]~2_combout\ = (\rec_ss_n~input_o\ & (((\i2s_ports|l_sr_in\(23))))) # (!\rec_ss_n~input_o\ & (\rec_spi_ports|tx_buf[23]~_emulated_q\ $ ((\rec_spi_ports|tx_buf[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|tx_buf[23]~_emulated_q\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|tx_buf[23]~1_combout\,
	datad => \i2s_ports|l_sr_in\(23),
	combout => \rec_spi_ports|tx_buf[23]~2_combout\);

-- Location: IOIBUF_X28_Y0_N15
\rec_st_load_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_trdy,
	o => \rec_st_load_trdy~input_o\);

-- Location: LCCOMB_X28_Y1_N10
\rec_spi_ports|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~2_combout\ = (!\rec_st_load_trdy~input_o\ & \rec_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_st_load_trdy~input_o\,
	datad => \rec_ss_n~input_o\,
	combout => \rec_spi_ports|process_1~2_combout\);

-- Location: LCCOMB_X28_Y1_N20
\rec_spi_ports|trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|trdy~1_combout\ = (!\rec_spi_ports|process_1~2_combout\ & ((\rec_ss_n~input_o\) # (\rec_spi_ports|trdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|process_1~2_combout\,
	datac => \rec_ss_n~input_o\,
	datad => \rec_spi_ports|trdy~1_combout\,
	combout => \rec_spi_ports|trdy~1_combout\);

-- Location: LCCOMB_X29_Y4_N24
\rec_spi_ports|wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|wr_add~0_combout\ = (\rec_spi_ports|bit_cnt\(1) & ((\rec_spi_ports|wr_add~q\))) # (!\rec_spi_ports|bit_cnt\(1) & (\rec_mosi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|wr_add~q\,
	datad => \rec_spi_ports|bit_cnt\(1),
	combout => \rec_spi_ports|wr_add~0_combout\);

-- Location: FF_X29_Y4_N25
\rec_spi_ports|wr_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|wr_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|wr_add~q\);

-- Location: LCCOMB_X28_Y1_N14
\rec_spi_ports|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~1_combout\ = (\rec_spi_ports|bit_cnt\(9) & \rec_spi_ports|wr_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|bit_cnt\(9),
	datad => \rec_spi_ports|wr_add~q\,
	combout => \rec_spi_ports|process_1~1_combout\);

-- Location: LCCOMB_X28_Y1_N12
\rec_spi_ports|trdy~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|trdy~6_combout\ = (\rec_spi_ports|trdy~2_combout\ & (!\rec_spi_ports|process_1~1_combout\ & ((\rec_spi_ports|rd_add~q\) # (!\rec_spi_ports|bit_cnt\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rd_add~q\,
	datab => \rec_spi_ports|bit_cnt\(32),
	datac => \rec_spi_ports|trdy~2_combout\,
	datad => \rec_spi_ports|process_1~1_combout\,
	combout => \rec_spi_ports|trdy~6_combout\);

-- Location: LCCOMB_X28_Y1_N26
\rec_spi_ports|trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|trdy~3_combout\ = \rec_spi_ports|trdy~1_combout\ $ (((\rec_spi_ports|trdy~6_combout\) # ((\rec_spi_ports|process_1~1_combout\ & \rec_mosi~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|process_1~1_combout\,
	datab => \rec_spi_ports|trdy~1_combout\,
	datac => \rec_mosi~input_o\,
	datad => \rec_spi_ports|trdy~6_combout\,
	combout => \rec_spi_ports|trdy~3_combout\);

-- Location: LCCOMB_X28_Y1_N18
\rec_spi_ports|trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|trdy~0_combout\ = (\rec_ss_n~input_o\) # (\rec_spi_ports|process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_ss_n~input_o\,
	datad => \rec_spi_ports|process_1~2_combout\,
	combout => \rec_spi_ports|trdy~0_combout\);

-- Location: FF_X28_Y1_N27
\rec_spi_ports|trdy~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|trdy~3_combout\,
	clrn => \rec_spi_ports|ALT_INV_trdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|trdy~_emulated_q\);

-- Location: LCCOMB_X28_Y1_N8
\rec_spi_ports|trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|trdy~2_combout\ = (!\rec_spi_ports|process_1~2_combout\ & ((\rec_ss_n~input_o\) # (\rec_spi_ports|trdy~1_combout\ $ (\rec_spi_ports|trdy~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_ss_n~input_o\,
	datab => \rec_spi_ports|trdy~1_combout\,
	datac => \rec_spi_ports|trdy~_emulated_q\,
	datad => \rec_spi_ports|process_1~2_combout\,
	combout => \rec_spi_ports|trdy~2_combout\);

-- Location: IOIBUF_X37_Y0_N8
\rec_st_load_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_roe,
	o => \rec_st_load_roe~input_o\);

-- Location: LCCOMB_X29_Y2_N2
\rec_spi_ports|process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~6_combout\ = (!\rec_st_load_roe~input_o\ & \rec_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_st_load_roe~input_o\,
	datad => \rec_ss_n~input_o\,
	combout => \rec_spi_ports|process_1~6_combout\);

-- Location: LCCOMB_X29_Y2_N24
\rec_spi_ports|roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|roe~1_combout\ = (!\rec_spi_ports|process_1~6_combout\ & ((\rec_ss_n~input_o\) # (\rec_spi_ports|roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|process_1~6_combout\,
	datad => \rec_spi_ports|roe~1_combout\,
	combout => \rec_spi_ports|roe~1_combout\);

-- Location: LCCOMB_X29_Y2_N20
\rec_spi_ports|roe~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|roe~7_combout\ = (\rec_spi_ports|wr_add~q\ & (\rec_spi_ports|bit_cnt\(11) & \rec_mosi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|bit_cnt\(11),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|roe~7_combout\);

-- Location: IOIBUF_X41_Y2_N15
\rec_st_load_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_rrdy,
	o => \rec_st_load_rrdy~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\rec_rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_rx_req,
	o => \rec_rx_req~input_o\);

-- Location: LCCOMB_X29_Y2_N16
\rec_spi_ports|process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~4_combout\ = (\rec_ss_n~input_o\ & ((\rec_rx_req~input_o\) # (!\rec_st_load_rrdy~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_st_load_rrdy~input_o\,
	datac => \rec_rx_req~input_o\,
	datad => \rec_ss_n~input_o\,
	combout => \rec_spi_ports|process_1~4_combout\);

-- Location: LCCOMB_X29_Y2_N28
\rec_spi_ports|rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rrdy~1_combout\ = (!\rec_spi_ports|process_1~4_combout\ & ((\rec_ss_n~input_o\) # (\rec_spi_ports|rrdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|process_1~4_combout\,
	datad => \rec_spi_ports|rrdy~1_combout\,
	combout => \rec_spi_ports|rrdy~1_combout\);

-- Location: LCCOMB_X29_Y2_N4
\rec_spi_ports|process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~3_combout\ = (\rec_spi_ports|wr_add~q\ & \rec_spi_ports|bit_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|wr_add~q\,
	datad => \rec_spi_ports|bit_cnt\(10),
	combout => \rec_spi_ports|process_1~3_combout\);

-- Location: LCCOMB_X29_Y2_N14
\rec_spi_ports|rrdy~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rrdy~6_combout\ = (\rec_spi_ports|rrdy~2_combout\) # ((\rec_spi_ports|bit_cnt\(32) & !\rec_spi_ports|wr_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|bit_cnt\(32),
	datac => \rec_spi_ports|wr_add~q\,
	datad => \rec_spi_ports|rrdy~2_combout\,
	combout => \rec_spi_ports|rrdy~6_combout\);

-- Location: LCCOMB_X30_Y2_N20
\rec_spi_ports|rrdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rrdy~3_combout\ = \rec_spi_ports|rrdy~1_combout\ $ (((\rec_spi_ports|process_1~3_combout\ & (\rec_mosi~input_o\)) # (!\rec_spi_ports|process_1~3_combout\ & ((\rec_spi_ports|rrdy~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi_ports|rrdy~1_combout\,
	datac => \rec_spi_ports|process_1~3_combout\,
	datad => \rec_spi_ports|rrdy~6_combout\,
	combout => \rec_spi_ports|rrdy~3_combout\);

-- Location: LCCOMB_X29_Y2_N6
\rec_spi_ports|rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rrdy~0_combout\ = (\rec_ss_n~input_o\) # (\rec_spi_ports|process_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_ss_n~input_o\,
	datad => \rec_spi_ports|process_1~4_combout\,
	combout => \rec_spi_ports|rrdy~0_combout\);

-- Location: FF_X30_Y2_N21
\rec_spi_ports|rrdy~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rrdy~3_combout\,
	clrn => \rec_spi_ports|ALT_INV_rrdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rrdy~_emulated_q\);

-- Location: LCCOMB_X29_Y2_N12
\rec_spi_ports|rrdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rrdy~2_combout\ = (!\rec_spi_ports|process_1~4_combout\ & ((\rec_ss_n~input_o\) # (\rec_spi_ports|rrdy~1_combout\ $ (\rec_spi_ports|rrdy~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_ss_n~input_o\,
	datab => \rec_spi_ports|rrdy~1_combout\,
	datac => \rec_spi_ports|rrdy~_emulated_q\,
	datad => \rec_spi_ports|process_1~4_combout\,
	combout => \rec_spi_ports|rrdy~2_combout\);

-- Location: LCCOMB_X29_Y2_N26
\rec_spi_ports|process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~5_combout\ = (!\rec_spi_ports|wr_add~q\ & (\rec_spi_ports|bit_cnt\(32) & \rec_spi_ports|rrdy~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(32),
	datad => \rec_spi_ports|rrdy~2_combout\,
	combout => \rec_spi_ports|process_1~5_combout\);

-- Location: LCCOMB_X29_Y2_N0
\rec_spi_ports|roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|roe~6_combout\ = (\rec_spi_ports|roe~2_combout\ & ((!\rec_spi_ports|wr_add~q\) # (!\rec_spi_ports|bit_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|bit_cnt\(11),
	datac => \rec_spi_ports|wr_add~q\,
	datad => \rec_spi_ports|roe~2_combout\,
	combout => \rec_spi_ports|roe~6_combout\);

-- Location: LCCOMB_X29_Y2_N8
\rec_spi_ports|roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|roe~3_combout\ = \rec_spi_ports|roe~1_combout\ $ (((\rec_spi_ports|roe~7_combout\) # ((\rec_spi_ports|process_1~5_combout\) # (\rec_spi_ports|roe~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|roe~7_combout\,
	datab => \rec_spi_ports|roe~1_combout\,
	datac => \rec_spi_ports|process_1~5_combout\,
	datad => \rec_spi_ports|roe~6_combout\,
	combout => \rec_spi_ports|roe~3_combout\);

-- Location: LCCOMB_X29_Y2_N30
\rec_spi_ports|roe~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|roe~0_combout\ = (\rec_ss_n~input_o\) # (\rec_spi_ports|process_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_ss_n~input_o\,
	datad => \rec_spi_ports|process_1~6_combout\,
	combout => \rec_spi_ports|roe~0_combout\);

-- Location: FF_X29_Y2_N9
\rec_spi_ports|roe~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|roe~3_combout\,
	clrn => \rec_spi_ports|ALT_INV_roe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|roe~_emulated_q\);

-- Location: LCCOMB_X29_Y2_N18
\rec_spi_ports|roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|roe~2_combout\ = (!\rec_spi_ports|process_1~6_combout\ & ((\rec_ss_n~input_o\) # (\rec_spi_ports|roe~1_combout\ $ (\rec_spi_ports|roe~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_ss_n~input_o\,
	datab => \rec_spi_ports|roe~1_combout\,
	datac => \rec_spi_ports|roe~_emulated_q\,
	datad => \rec_spi_ports|process_1~6_combout\,
	combout => \rec_spi_ports|roe~2_combout\);

-- Location: LCCOMB_X29_Y2_N22
\rec_spi_ports|miso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|miso~0_combout\ = (\rec_spi_ports|bit_cnt\(9) & ((\rec_spi_ports|rrdy~2_combout\))) # (!\rec_spi_ports|bit_cnt\(9) & (\rec_spi_ports|roe~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|roe~2_combout\,
	datac => \rec_spi_ports|bit_cnt\(9),
	datad => \rec_spi_ports|rrdy~2_combout\,
	combout => \rec_spi_ports|miso~0_combout\);

-- Location: LCCOMB_X28_Y2_N12
\rec_spi_ports|miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|miso~1_combout\ = (\rec_spi_ports|bit_cnt\(8) & (\rec_spi_ports|trdy~2_combout\)) # (!\rec_spi_ports|bit_cnt\(8) & ((\rec_spi_ports|miso~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|bit_cnt\(8),
	datac => \rec_spi_ports|trdy~2_combout\,
	datad => \rec_spi_ports|miso~0_combout\,
	combout => \rec_spi_ports|miso~1_combout\);

-- Location: LCCOMB_X28_Y2_N22
\rec_spi_ports|miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|miso~2_combout\ = (\rec_spi_ports|rd_add~q\ & ((\rec_spi_ports|miso~1_combout\))) # (!\rec_spi_ports|rd_add~q\ & (\rec_spi_ports|tx_buf[23]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rd_add~q\,
	datac => \rec_spi_ports|tx_buf[23]~2_combout\,
	datad => \rec_spi_ports|miso~1_combout\,
	combout => \rec_spi_ports|miso~2_combout\);

-- Location: LCCOMB_X28_Y2_N10
\rec_spi_ports|miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|miso~3_combout\ = (\rec_spi_ports|bit_cnt\(8) & (!\rec_spi_ports|bit_cnt\(9) & !\rec_spi_ports|bit_cnt\(10))) # (!\rec_spi_ports|bit_cnt\(8) & (\rec_spi_ports|bit_cnt\(9) $ (\rec_spi_ports|bit_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|bit_cnt\(8),
	datac => \rec_spi_ports|bit_cnt\(9),
	datad => \rec_spi_ports|bit_cnt\(10),
	combout => \rec_spi_ports|miso~3_combout\);

-- Location: LCCOMB_X28_Y2_N20
\rec_spi_ports|miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|miso~4_combout\ = (\rec_spi_ports|rd_add~q\ & (\rec_spi_ports|miso~3_combout\)) # (!\rec_spi_ports|rd_add~q\ & (((\rec_spi_ports|process_1~8_combout\ & \rec_spi_ports|process_1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|miso~3_combout\,
	datab => \rec_spi_ports|process_1~8_combout\,
	datac => \rec_spi_ports|rd_add~q\,
	datad => \rec_spi_ports|process_1~7_combout\,
	combout => \rec_spi_ports|miso~4_combout\);

-- Location: FF_X28_Y2_N23
\rec_spi_ports|miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|miso~2_combout\,
	ena => \rec_spi_ports|miso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|miso~reg0_q\);

-- Location: LCCOMB_X28_Y2_N16
\rec_spi_ports|miso~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|miso~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rec_spi_ports|miso~enfeeder_combout\);

-- Location: FF_X28_Y2_N17
\rec_spi_ports|miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|miso~enfeeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	ena => \rec_spi_ports|miso~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|miso~en_q\);

-- Location: LCCOMB_X29_Y1_N18
\rec_spi_ports|rx_buf[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[0]~0_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(0))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(32) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(32) & ((\rec_spi_ports|rx_buf\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(0),
	datad => \rec_spi_ports|bit_cnt\(32),
	combout => \rec_spi_ports|rx_buf[0]~0_combout\);

-- Location: FF_X29_Y1_N19
\rec_spi_ports|rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(0));

-- Location: LCCOMB_X29_Y2_N10
\rec_spi_ports|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~0_combout\ = (\rec_rx_req~input_o\ & \rec_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_rx_req~input_o\,
	datad => \rec_ss_n~input_o\,
	combout => \rec_spi_ports|process_1~0_combout\);

-- Location: CLKCTRL_G18
\rec_spi_ports|process_1~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rec_spi_ports|process_1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rec_spi_ports|process_1~0clkctrl_outclk\);

-- Location: LCCOMB_X29_Y1_N8
\rec_spi_ports|rx_data[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(0) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(0))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(0),
	datac => \rec_spi_ports|rx_data\(0),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(0));

-- Location: LCCOMB_X29_Y1_N28
\rec_spi_ports|rx_buf[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[1]~1_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(1))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(31) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(31) & ((\rec_spi_ports|rx_buf\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(1),
	datad => \rec_spi_ports|bit_cnt\(31),
	combout => \rec_spi_ports|rx_buf[1]~1_combout\);

-- Location: FF_X29_Y1_N29
\rec_spi_ports|rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(1));

-- Location: LCCOMB_X29_Y1_N20
\rec_spi_ports|rx_data[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(1) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(1)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_data\(1),
	datac => \rec_spi_ports|rx_buf\(1),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(1));

-- Location: LCCOMB_X29_Y1_N6
\rec_spi_ports|rx_buf[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[2]~2_combout\ = (\rec_spi_ports|bit_cnt\(30) & ((\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|rx_buf\(2)))) # (!\rec_spi_ports|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi_ports|bit_cnt\(30) & (((\rec_spi_ports|rx_buf\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi_ports|bit_cnt\(30),
	datac => \rec_spi_ports|rx_buf\(2),
	datad => \rec_spi_ports|wr_add~q\,
	combout => \rec_spi_ports|rx_buf[2]~2_combout\);

-- Location: FF_X29_Y1_N7
\rec_spi_ports|rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(2));

-- Location: LCCOMB_X29_Y1_N10
\rec_spi_ports|rx_data[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(2) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(2))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(2),
	datab => \rec_spi_ports|rx_data\(2),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(2));

-- Location: LCCOMB_X29_Y4_N4
\rec_spi_ports|rx_buf[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[3]~3_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(3))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(29) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(29) & ((\rec_spi_ports|rx_buf\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rx_buf\(3),
	datad => \rec_spi_ports|bit_cnt\(29),
	combout => \rec_spi_ports|rx_buf[3]~3_combout\);

-- Location: FF_X29_Y4_N5
\rec_spi_ports|rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(3));

-- Location: LCCOMB_X29_Y4_N12
\rec_spi_ports|rx_data[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(3) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(3)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_data\(3),
	datac => \rec_spi_ports|process_1~0clkctrl_outclk\,
	datad => \rec_spi_ports|rx_buf\(3),
	combout => \rec_spi_ports|rx_data\(3));

-- Location: LCCOMB_X29_Y4_N14
\rec_spi_ports|rx_buf[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[4]~4_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(4))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(28) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(28) & ((\rec_spi_ports|rx_buf\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rx_buf\(4),
	datad => \rec_spi_ports|bit_cnt\(28),
	combout => \rec_spi_ports|rx_buf[4]~4_combout\);

-- Location: FF_X29_Y4_N15
\rec_spi_ports|rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(4));

-- Location: LCCOMB_X29_Y4_N26
\rec_spi_ports|rx_data[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(4) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(4)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_data\(4),
	datac => \rec_spi_ports|rx_buf\(4),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(4));

-- Location: LCCOMB_X29_Y4_N20
\rec_spi_ports|rx_buf[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[5]~5_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(5))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(27) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(27) & ((\rec_spi_ports|rx_buf\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rx_buf\(5),
	datad => \rec_spi_ports|bit_cnt\(27),
	combout => \rec_spi_ports|rx_buf[5]~5_combout\);

-- Location: FF_X29_Y4_N21
\rec_spi_ports|rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(5));

-- Location: LCCOMB_X29_Y4_N8
\rec_spi_ports|rx_data[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(5) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(5)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_data\(5),
	datac => \rec_spi_ports|rx_buf\(5),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(5));

-- Location: LCCOMB_X29_Y4_N18
\rec_spi_ports|rx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[6]~6_combout\ = (\rec_spi_ports|bit_cnt\(26) & ((\rec_spi_ports|wr_add~q\ & (\rec_spi_ports|rx_buf\(6))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_mosi~input_o\))))) # (!\rec_spi_ports|bit_cnt\(26) & (((\rec_spi_ports|rx_buf\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(26),
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(6),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[6]~6_combout\);

-- Location: FF_X29_Y4_N19
\rec_spi_ports|rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(6));

-- Location: LCCOMB_X29_Y4_N22
\rec_spi_ports|rx_data[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(6) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(6)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_data\(6),
	datac => \rec_spi_ports|process_1~0clkctrl_outclk\,
	datad => \rec_spi_ports|rx_buf\(6),
	combout => \rec_spi_ports|rx_data\(6));

-- Location: LCCOMB_X28_Y4_N12
\rec_spi_ports|rx_buf[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[7]~7_combout\ = (\rec_spi_ports|bit_cnt\(25) & ((\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|rx_buf\(7)))) # (!\rec_spi_ports|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi_ports|bit_cnt\(25) & (((\rec_spi_ports|rx_buf\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi_ports|bit_cnt\(25),
	datac => \rec_spi_ports|rx_buf\(7),
	datad => \rec_spi_ports|wr_add~q\,
	combout => \rec_spi_ports|rx_buf[7]~7_combout\);

-- Location: FF_X28_Y4_N13
\rec_spi_ports|rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(7));

-- Location: LCCOMB_X28_Y4_N10
\rec_spi_ports|rx_data[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(7) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(7)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_data\(7),
	datac => \rec_spi_ports|rx_buf\(7),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(7));

-- Location: LCCOMB_X28_Y4_N6
\rec_spi_ports|rx_buf[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[8]~8_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(8))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(24) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(24) & ((\rec_spi_ports|rx_buf\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(8),
	datad => \rec_spi_ports|bit_cnt\(24),
	combout => \rec_spi_ports|rx_buf[8]~8_combout\);

-- Location: FF_X28_Y4_N7
\rec_spi_ports|rx_buf[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(8));

-- Location: LCCOMB_X28_Y4_N20
\rec_spi_ports|rx_data[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(8) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(8)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_data\(8),
	datac => \rec_spi_ports|rx_buf\(8),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(8));

-- Location: LCCOMB_X28_Y4_N8
\rec_spi_ports|rx_buf[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[9]~9_combout\ = (\rec_spi_ports|bit_cnt\(23) & ((\rec_spi_ports|wr_add~q\ & (\rec_spi_ports|rx_buf\(9))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_mosi~input_o\))))) # (!\rec_spi_ports|bit_cnt\(23) & (((\rec_spi_ports|rx_buf\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(23),
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(9),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[9]~9_combout\);

-- Location: FF_X28_Y4_N9
\rec_spi_ports|rx_buf[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(9));

-- Location: LCCOMB_X28_Y4_N18
\rec_spi_ports|rx_data[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(9) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(9)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_data\(9),
	datac => \rec_spi_ports|rx_buf\(9),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(9));

-- Location: LCCOMB_X28_Y4_N30
\rec_spi_ports|rx_buf[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[10]~10_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(10))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(22) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(22) & ((\rec_spi_ports|rx_buf\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(10),
	datad => \rec_spi_ports|bit_cnt\(22),
	combout => \rec_spi_ports|rx_buf[10]~10_combout\);

-- Location: FF_X28_Y4_N31
\rec_spi_ports|rx_buf[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(10));

-- Location: LCCOMB_X28_Y4_N4
\rec_spi_ports|rx_data[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(10) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(10)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_data\(10),
	datac => \rec_spi_ports|rx_buf\(10),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(10));

-- Location: LCCOMB_X28_Y4_N24
\rec_spi_ports|rx_buf[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[11]~11_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(11))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(21) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(21) & ((\rec_spi_ports|rx_buf\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(11),
	datad => \rec_spi_ports|bit_cnt\(21),
	combout => \rec_spi_ports|rx_buf[11]~11_combout\);

-- Location: FF_X28_Y4_N25
\rec_spi_ports|rx_buf[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(11));

-- Location: LCCOMB_X28_Y4_N22
\rec_spi_ports|rx_data[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(11) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(11))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(11),
	datac => \rec_spi_ports|rx_data\(11),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(11));

-- Location: LCCOMB_X29_Y1_N26
\rec_spi_ports|rx_buf[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[12]~12_combout\ = (\rec_spi_ports|bit_cnt\(20) & ((\rec_spi_ports|wr_add~q\ & (\rec_spi_ports|rx_buf\(12))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_mosi~input_o\))))) # (!\rec_spi_ports|bit_cnt\(20) & (((\rec_spi_ports|rx_buf\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(20),
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(12),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[12]~12_combout\);

-- Location: FF_X29_Y1_N27
\rec_spi_ports|rx_buf[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(12));

-- Location: LCCOMB_X29_Y1_N4
\rec_spi_ports|rx_data[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(12) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(12)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_data\(12),
	datab => \rec_spi_ports|rx_buf\(12),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(12));

-- Location: LCCOMB_X29_Y1_N24
\rec_spi_ports|rx_buf[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[13]~13_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(13))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(19) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(19) & ((\rec_spi_ports|rx_buf\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(13),
	datad => \rec_spi_ports|bit_cnt\(19),
	combout => \rec_spi_ports|rx_buf[13]~13_combout\);

-- Location: FF_X29_Y1_N25
\rec_spi_ports|rx_buf[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(13));

-- Location: LCCOMB_X29_Y1_N2
\rec_spi_ports|rx_data[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(13) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(13)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_data\(13),
	datab => \rec_spi_ports|rx_buf\(13),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(13));

-- Location: LCCOMB_X27_Y1_N16
\rec_spi_ports|rx_buf[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[14]~14_combout\ = (\rec_spi_ports|bit_cnt\(18) & ((\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|rx_buf\(14)))) # (!\rec_spi_ports|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi_ports|bit_cnt\(18) & (((\rec_spi_ports|rx_buf\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(18),
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rx_buf\(14),
	datad => \rec_spi_ports|wr_add~q\,
	combout => \rec_spi_ports|rx_buf[14]~14_combout\);

-- Location: FF_X27_Y1_N17
\rec_spi_ports|rx_buf[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(14));

-- Location: LCCOMB_X27_Y1_N8
\rec_spi_ports|rx_data[14]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(14) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(14)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_data\(14),
	datac => \rec_spi_ports|rx_buf\(14),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(14));

-- Location: LCCOMB_X27_Y1_N4
\rec_spi_ports|rx_buf[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[15]~15_combout\ = (\rec_spi_ports|bit_cnt\(17) & ((\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|rx_buf\(15)))) # (!\rec_spi_ports|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi_ports|bit_cnt\(17) & (((\rec_spi_ports|rx_buf\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(17),
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rx_buf\(15),
	datad => \rec_spi_ports|wr_add~q\,
	combout => \rec_spi_ports|rx_buf[15]~15_combout\);

-- Location: FF_X27_Y1_N5
\rec_spi_ports|rx_buf[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(15));

-- Location: LCCOMB_X27_Y1_N10
\rec_spi_ports|rx_data[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(15) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(15)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_data\(15),
	datac => \rec_spi_ports|rx_buf\(15),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(15));

-- Location: LCCOMB_X28_Y2_N28
\rec_spi_ports|rx_buf[16]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[16]~16_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(16))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(16) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(16) & ((\rec_spi_ports|rx_buf\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rx_buf\(16),
	datad => \rec_spi_ports|bit_cnt\(16),
	combout => \rec_spi_ports|rx_buf[16]~16_combout\);

-- Location: FF_X28_Y2_N29
\rec_spi_ports|rx_buf[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(16));

-- Location: LCCOMB_X28_Y2_N24
\rec_spi_ports|rx_data[16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(16) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(16))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(16),
	datac => \rec_spi_ports|rx_data\(16),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(16));

-- Location: LCCOMB_X27_Y1_N30
\rec_spi_ports|rx_buf[17]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[17]~17_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(17))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(15) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(15) & ((\rec_spi_ports|rx_buf\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rx_buf\(17),
	datad => \rec_spi_ports|bit_cnt\(15),
	combout => \rec_spi_ports|rx_buf[17]~17_combout\);

-- Location: FF_X27_Y1_N31
\rec_spi_ports|rx_buf[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(17));

-- Location: LCCOMB_X29_Y1_N30
\rec_spi_ports|rx_data[17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(17) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(17))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(17),
	datab => \rec_spi_ports|rx_data\(17),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(17));

-- Location: LCCOMB_X27_Y1_N20
\rec_spi_ports|rx_buf[18]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[18]~18_combout\ = (\rec_spi_ports|bit_cnt\(14) & ((\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|rx_buf\(18)))) # (!\rec_spi_ports|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi_ports|bit_cnt\(14) & (((\rec_spi_ports|rx_buf\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(14),
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rx_buf\(18),
	datad => \rec_spi_ports|wr_add~q\,
	combout => \rec_spi_ports|rx_buf[18]~18_combout\);

-- Location: FF_X27_Y1_N21
\rec_spi_ports|rx_buf[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(18));

-- Location: LCCOMB_X28_Y1_N2
\rec_spi_ports|rx_data[18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(18) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(18))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(18),
	datab => \rec_spi_ports|rx_data\(18),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(18));

-- Location: LCCOMB_X27_Y1_N26
\rec_spi_ports|rx_buf[19]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[19]~19_combout\ = (\rec_spi_ports|bit_cnt\(13) & ((\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|rx_buf\(19)))) # (!\rec_spi_ports|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi_ports|bit_cnt\(13) & (((\rec_spi_ports|rx_buf\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi_ports|bit_cnt\(13),
	datac => \rec_spi_ports|rx_buf\(19),
	datad => \rec_spi_ports|wr_add~q\,
	combout => \rec_spi_ports|rx_buf[19]~19_combout\);

-- Location: FF_X27_Y1_N27
\rec_spi_ports|rx_buf[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(19));

-- Location: LCCOMB_X27_Y1_N18
\rec_spi_ports|rx_data[19]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(19) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(19))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(19),
	datab => \rec_spi_ports|rx_data\(19),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(19));

-- Location: LCCOMB_X28_Y2_N30
\rec_spi_ports|rx_buf[20]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[20]~20_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(20))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(12) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(12) & ((\rec_spi_ports|rx_buf\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rx_buf\(20),
	datad => \rec_spi_ports|bit_cnt\(12),
	combout => \rec_spi_ports|rx_buf[20]~20_combout\);

-- Location: FF_X28_Y2_N31
\rec_spi_ports|rx_buf[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(20));

-- Location: LCCOMB_X28_Y2_N6
\rec_spi_ports|rx_data[20]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(20) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(20)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_data\(20),
	datac => \rec_spi_ports|rx_buf\(20),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(20));

-- Location: LCCOMB_X27_Y1_N6
\rec_spi_ports|rx_buf[21]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[21]~21_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(21))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(11) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(11) & ((\rec_spi_ports|rx_buf\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rx_buf\(21),
	datad => \rec_spi_ports|bit_cnt\(11),
	combout => \rec_spi_ports|rx_buf[21]~21_combout\);

-- Location: FF_X27_Y1_N7
\rec_spi_ports|rx_buf[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(21));

-- Location: LCCOMB_X27_Y1_N24
\rec_spi_ports|rx_data[21]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(21) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(21)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_data\(21),
	datac => \rec_spi_ports|rx_buf\(21),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(21));

-- Location: LCCOMB_X28_Y2_N8
\rec_spi_ports|rx_buf[22]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[22]~22_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(22))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(10) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(10) & ((\rec_spi_ports|rx_buf\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rx_buf\(22),
	datad => \rec_spi_ports|bit_cnt\(10),
	combout => \rec_spi_ports|rx_buf[22]~22_combout\);

-- Location: FF_X28_Y2_N9
\rec_spi_ports|rx_buf[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(22));

-- Location: LCCOMB_X28_Y2_N4
\rec_spi_ports|rx_data[22]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(22) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(22)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_data\(22),
	datac => \rec_spi_ports|rx_buf\(22),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(22));

-- Location: LCCOMB_X29_Y1_N16
\rec_spi_ports|rx_buf[23]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[23]~23_combout\ = (\rec_spi_ports|bit_cnt\(9) & ((\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|rx_buf\(23)))) # (!\rec_spi_ports|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi_ports|bit_cnt\(9) & (((\rec_spi_ports|rx_buf\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi_ports|bit_cnt\(9),
	datac => \rec_spi_ports|rx_buf\(23),
	datad => \rec_spi_ports|wr_add~q\,
	combout => \rec_spi_ports|rx_buf[23]~23_combout\);

-- Location: FF_X29_Y1_N17
\rec_spi_ports|rx_buf[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|rx_buf[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(23));

-- Location: LCCOMB_X29_Y1_N22
\rec_spi_ports|rx_data[23]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(23) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(23)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_data\(23),
	datab => \rec_spi_ports|rx_buf\(23),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(23));

-- Location: LCCOMB_X26_Y3_N14
\i2s_ports|r_sr_in[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[0]~feeder_combout\ = \i2s_adc_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_adc_data~input_o\,
	combout => \i2s_ports|r_sr_in[0]~feeder_combout\);

-- Location: LCCOMB_X26_Y3_N10
\i2s_ports|r_get_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_get_data~0_combout\ = (\i2s_lrclk~input_o\ & \i2s_ports|pos_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2s_lrclk~input_o\,
	datad => \i2s_ports|pos_edge~q\,
	combout => \i2s_ports|r_get_data~0_combout\);

-- Location: FF_X26_Y3_N15
\i2s_ports|r_sr_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[0]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(0));

-- Location: LCCOMB_X24_Y3_N0
\i2s_ports|r_sr_in[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[1]~feeder_combout\ = \i2s_ports|r_sr_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(0),
	combout => \i2s_ports|r_sr_in[1]~feeder_combout\);

-- Location: FF_X24_Y3_N1
\i2s_ports|r_sr_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[1]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(1));

-- Location: LCCOMB_X24_Y3_N6
\i2s_ports|r_sr_in[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[2]~feeder_combout\ = \i2s_ports|r_sr_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(1),
	combout => \i2s_ports|r_sr_in[2]~feeder_combout\);

-- Location: FF_X24_Y3_N7
\i2s_ports|r_sr_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[2]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(2));

-- Location: LCCOMB_X24_Y3_N24
\i2s_ports|r_sr_in[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[3]~feeder_combout\ = \i2s_ports|r_sr_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(2),
	combout => \i2s_ports|r_sr_in[3]~feeder_combout\);

-- Location: FF_X24_Y3_N25
\i2s_ports|r_sr_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[3]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(3));

-- Location: LCCOMB_X24_Y3_N18
\i2s_ports|r_sr_in[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[4]~feeder_combout\ = \i2s_ports|r_sr_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(3),
	combout => \i2s_ports|r_sr_in[4]~feeder_combout\);

-- Location: FF_X24_Y3_N19
\i2s_ports|r_sr_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[4]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(4));

-- Location: LCCOMB_X24_Y3_N28
\i2s_ports|r_sr_in[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[5]~feeder_combout\ = \i2s_ports|r_sr_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(4),
	combout => \i2s_ports|r_sr_in[5]~feeder_combout\);

-- Location: FF_X24_Y3_N29
\i2s_ports|r_sr_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[5]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(5));

-- Location: LCCOMB_X24_Y3_N10
\i2s_ports|r_sr_in[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[6]~feeder_combout\ = \i2s_ports|r_sr_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(5),
	combout => \i2s_ports|r_sr_in[6]~feeder_combout\);

-- Location: FF_X24_Y3_N11
\i2s_ports|r_sr_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[6]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(6));

-- Location: LCCOMB_X24_Y3_N12
\i2s_ports|r_sr_in[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[7]~feeder_combout\ = \i2s_ports|r_sr_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(6),
	combout => \i2s_ports|r_sr_in[7]~feeder_combout\);

-- Location: FF_X24_Y3_N13
\i2s_ports|r_sr_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[7]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(7));

-- Location: LCCOMB_X24_Y3_N30
\i2s_ports|r_sr_in[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[8]~feeder_combout\ = \i2s_ports|r_sr_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(7),
	combout => \i2s_ports|r_sr_in[8]~feeder_combout\);

-- Location: FF_X24_Y3_N31
\i2s_ports|r_sr_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[8]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(8));

-- Location: LCCOMB_X24_Y3_N20
\i2s_ports|r_sr_in[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[9]~feeder_combout\ = \i2s_ports|r_sr_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_ports|r_sr_in\(8),
	combout => \i2s_ports|r_sr_in[9]~feeder_combout\);

-- Location: FF_X24_Y3_N21
\i2s_ports|r_sr_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[9]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(9));

-- Location: LCCOMB_X24_Y3_N26
\i2s_ports|r_sr_in[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[10]~feeder_combout\ = \i2s_ports|r_sr_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(9),
	combout => \i2s_ports|r_sr_in[10]~feeder_combout\);

-- Location: FF_X24_Y3_N27
\i2s_ports|r_sr_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[10]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(10));

-- Location: LCCOMB_X24_Y3_N4
\i2s_ports|r_sr_in[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[11]~feeder_combout\ = \i2s_ports|r_sr_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_ports|r_sr_in\(10),
	combout => \i2s_ports|r_sr_in[11]~feeder_combout\);

-- Location: FF_X24_Y3_N5
\i2s_ports|r_sr_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[11]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(11));

-- Location: LCCOMB_X26_Y3_N30
\i2s_ports|r_sr_in[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[12]~feeder_combout\ = \i2s_ports|r_sr_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_ports|r_sr_in\(11),
	combout => \i2s_ports|r_sr_in[12]~feeder_combout\);

-- Location: FF_X26_Y3_N31
\i2s_ports|r_sr_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[12]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(12));

-- Location: LCCOMB_X26_Y3_N24
\i2s_ports|r_sr_in[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[13]~feeder_combout\ = \i2s_ports|r_sr_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_ports|r_sr_in\(12),
	combout => \i2s_ports|r_sr_in[13]~feeder_combout\);

-- Location: FF_X26_Y3_N25
\i2s_ports|r_sr_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[13]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(13));

-- Location: FF_X26_Y3_N11
\i2s_ports|r_sr_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	asdata => \i2s_ports|r_sr_in\(13),
	sload => VCC,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(14));

-- Location: LCCOMB_X26_Y3_N16
\i2s_ports|r_sr_in[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[15]~feeder_combout\ = \i2s_ports|r_sr_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_ports|r_sr_in\(14),
	combout => \i2s_ports|r_sr_in[15]~feeder_combout\);

-- Location: FF_X26_Y3_N17
\i2s_ports|r_sr_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[15]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(15));

-- Location: LCCOMB_X26_Y3_N28
\i2s_ports|r_sr_in[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[16]~feeder_combout\ = \i2s_ports|r_sr_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(15),
	combout => \i2s_ports|r_sr_in[16]~feeder_combout\);

-- Location: FF_X26_Y3_N29
\i2s_ports|r_sr_in[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[16]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(16));

-- Location: LCCOMB_X26_Y3_N8
\i2s_ports|r_sr_in[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[17]~feeder_combout\ = \i2s_ports|r_sr_in\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(16),
	combout => \i2s_ports|r_sr_in[17]~feeder_combout\);

-- Location: FF_X26_Y3_N9
\i2s_ports|r_sr_in[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[17]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(17));

-- Location: LCCOMB_X26_Y3_N20
\i2s_ports|r_sr_in[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[18]~feeder_combout\ = \i2s_ports|r_sr_in\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2s_ports|r_sr_in\(17),
	combout => \i2s_ports|r_sr_in[18]~feeder_combout\);

-- Location: FF_X26_Y3_N21
\i2s_ports|r_sr_in[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[18]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(18));

-- Location: LCCOMB_X26_Y3_N4
\i2s_ports|r_sr_in[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[19]~feeder_combout\ = \i2s_ports|r_sr_in\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(18),
	combout => \i2s_ports|r_sr_in[19]~feeder_combout\);

-- Location: FF_X26_Y3_N5
\i2s_ports|r_sr_in[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[19]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(19));

-- Location: LCCOMB_X26_Y3_N18
\i2s_ports|r_sr_in[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[20]~feeder_combout\ = \i2s_ports|r_sr_in\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(19),
	combout => \i2s_ports|r_sr_in[20]~feeder_combout\);

-- Location: FF_X26_Y3_N19
\i2s_ports|r_sr_in[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[20]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(20));

-- Location: LCCOMB_X26_Y3_N2
\i2s_ports|r_sr_in[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[21]~feeder_combout\ = \i2s_ports|r_sr_in\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(20),
	combout => \i2s_ports|r_sr_in[21]~feeder_combout\);

-- Location: FF_X26_Y3_N3
\i2s_ports|r_sr_in[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[21]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(21));

-- Location: LCCOMB_X26_Y3_N6
\i2s_ports|r_sr_in[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[22]~feeder_combout\ = \i2s_ports|r_sr_in\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(21),
	combout => \i2s_ports|r_sr_in[22]~feeder_combout\);

-- Location: FF_X26_Y3_N7
\i2s_ports|r_sr_in[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[22]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(22));

-- Location: LCCOMB_X26_Y3_N22
\i2s_ports|r_sr_in[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \i2s_ports|r_sr_in[23]~feeder_combout\ = \i2s_ports|r_sr_in\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i2s_ports|r_sr_in\(22),
	combout => \i2s_ports|r_sr_in[23]~feeder_combout\);

-- Location: FF_X26_Y3_N23
\i2s_ports|r_sr_in[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2s_clk~inputclkctrl_outclk\,
	d => \i2s_ports|r_sr_in[23]~feeder_combout\,
	ena => \i2s_ports|r_get_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2s_ports|r_sr_in\(23));

-- Location: IOIBUF_X41_Y15_N8
\ecg_st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_en,
	o => \ecg_st_load_en~input_o\);

-- Location: IOIBUF_X1_Y0_N8
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

ww_rec_rx_data(8) <= \rec_rx_data[8]~output_o\;

ww_rec_rx_data(9) <= \rec_rx_data[9]~output_o\;

ww_rec_rx_data(10) <= \rec_rx_data[10]~output_o\;

ww_rec_rx_data(11) <= \rec_rx_data[11]~output_o\;

ww_rec_rx_data(12) <= \rec_rx_data[12]~output_o\;

ww_rec_rx_data(13) <= \rec_rx_data[13]~output_o\;

ww_rec_rx_data(14) <= \rec_rx_data[14]~output_o\;

ww_rec_rx_data(15) <= \rec_rx_data[15]~output_o\;

ww_rec_rx_data(16) <= \rec_rx_data[16]~output_o\;

ww_rec_rx_data(17) <= \rec_rx_data[17]~output_o\;

ww_rec_rx_data(18) <= \rec_rx_data[18]~output_o\;

ww_rec_rx_data(19) <= \rec_rx_data[19]~output_o\;

ww_rec_rx_data(20) <= \rec_rx_data[20]~output_o\;

ww_rec_rx_data(21) <= \rec_rx_data[21]~output_o\;

ww_rec_rx_data(22) <= \rec_rx_data[22]~output_o\;

ww_rec_rx_data(23) <= \rec_rx_data[23]~output_o\;

ww_rec_busy <= \rec_busy~output_o\;

ww_rec_miso <= \rec_miso~output_o\;

ww_i2s_ready_port <= \i2s_ready_port~output_o\;

ww_i2s_l_led_out(0) <= \i2s_l_led_out[0]~output_o\;

ww_i2s_l_led_out(1) <= \i2s_l_led_out[1]~output_o\;

ww_i2s_l_led_out(2) <= \i2s_l_led_out[2]~output_o\;

ww_i2s_l_led_out(3) <= \i2s_l_led_out[3]~output_o\;

ww_i2s_l_led_out(4) <= \i2s_l_led_out[4]~output_o\;

ww_i2s_l_led_out(5) <= \i2s_l_led_out[5]~output_o\;

ww_i2s_l_led_out(6) <= \i2s_l_led_out[6]~output_o\;

ww_i2s_l_led_out(7) <= \i2s_l_led_out[7]~output_o\;

ww_i2s_l_led_out(8) <= \i2s_l_led_out[8]~output_o\;

ww_i2s_l_led_out(9) <= \i2s_l_led_out[9]~output_o\;

ww_i2s_l_led_out(10) <= \i2s_l_led_out[10]~output_o\;

ww_i2s_l_led_out(11) <= \i2s_l_led_out[11]~output_o\;

ww_i2s_l_led_out(12) <= \i2s_l_led_out[12]~output_o\;

ww_i2s_l_led_out(13) <= \i2s_l_led_out[13]~output_o\;

ww_i2s_l_led_out(14) <= \i2s_l_led_out[14]~output_o\;

ww_i2s_l_led_out(15) <= \i2s_l_led_out[15]~output_o\;

ww_i2s_l_led_out(16) <= \i2s_l_led_out[16]~output_o\;

ww_i2s_l_led_out(17) <= \i2s_l_led_out[17]~output_o\;

ww_i2s_l_led_out(18) <= \i2s_l_led_out[18]~output_o\;

ww_i2s_l_led_out(19) <= \i2s_l_led_out[19]~output_o\;

ww_i2s_l_led_out(20) <= \i2s_l_led_out[20]~output_o\;

ww_i2s_l_led_out(21) <= \i2s_l_led_out[21]~output_o\;

ww_i2s_l_led_out(22) <= \i2s_l_led_out[22]~output_o\;

ww_i2s_l_led_out(23) <= \i2s_l_led_out[23]~output_o\;

ww_i2s_r_led_out(0) <= \i2s_r_led_out[0]~output_o\;

ww_i2s_r_led_out(1) <= \i2s_r_led_out[1]~output_o\;

ww_i2s_r_led_out(2) <= \i2s_r_led_out[2]~output_o\;

ww_i2s_r_led_out(3) <= \i2s_r_led_out[3]~output_o\;

ww_i2s_r_led_out(4) <= \i2s_r_led_out[4]~output_o\;

ww_i2s_r_led_out(5) <= \i2s_r_led_out[5]~output_o\;

ww_i2s_r_led_out(6) <= \i2s_r_led_out[6]~output_o\;

ww_i2s_r_led_out(7) <= \i2s_r_led_out[7]~output_o\;

ww_i2s_r_led_out(8) <= \i2s_r_led_out[8]~output_o\;

ww_i2s_r_led_out(9) <= \i2s_r_led_out[9]~output_o\;

ww_i2s_r_led_out(10) <= \i2s_r_led_out[10]~output_o\;

ww_i2s_r_led_out(11) <= \i2s_r_led_out[11]~output_o\;

ww_i2s_r_led_out(12) <= \i2s_r_led_out[12]~output_o\;

ww_i2s_r_led_out(13) <= \i2s_r_led_out[13]~output_o\;

ww_i2s_r_led_out(14) <= \i2s_r_led_out[14]~output_o\;

ww_i2s_r_led_out(15) <= \i2s_r_led_out[15]~output_o\;

ww_i2s_r_led_out(16) <= \i2s_r_led_out[16]~output_o\;

ww_i2s_r_led_out(17) <= \i2s_r_led_out[17]~output_o\;

ww_i2s_r_led_out(18) <= \i2s_r_led_out[18]~output_o\;

ww_i2s_r_led_out(19) <= \i2s_r_led_out[19]~output_o\;

ww_i2s_r_led_out(20) <= \i2s_r_led_out[20]~output_o\;

ww_i2s_r_led_out(21) <= \i2s_r_led_out[21]~output_o\;

ww_i2s_r_led_out(22) <= \i2s_r_led_out[22]~output_o\;

ww_i2s_r_led_out(23) <= \i2s_r_led_out[23]~output_o\;
END structure;


