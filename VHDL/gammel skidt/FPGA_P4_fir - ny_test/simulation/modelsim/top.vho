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

-- DATE "06/17/2019 14:24:30"

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
	ecg_rrdy : BUFFER std_logic;
	ecg_roe : BUFFER std_logic;
	ecg_busy : OUT std_logic;
	ecg_miso : OUT std_logic;
	fir_clk : IN std_logic;
	ecg_fir_ast_sink_error : IN std_logic_vector(1 DOWNTO 0);
	ecg_fir_ast_source_valid : OUT std_logic;
	ecg_fir_ast_source_error : OUT std_logic_vector(1 DOWNTO 0);
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
	rec_ch1 : BUFFER std_logic;
	rec_ch2 : BUFFER std_logic;
	i2s_clk : IN std_logic;
	i2s_bclk : IN std_logic;
	i2s_lrclk : IN std_logic;
	i2s_adc_data : IN std_logic;
	i2s_l_led_out : OUT std_logic_vector(31 DOWNTO 0);
	i2s_r_led_out : OUT std_logic_vector(31 DOWNTO 0);
	i2s_l_fir_ast_sink_error : IN std_logic_vector(1 DOWNTO 0);
	i2s_l_fir_ast_source_valid : OUT std_logic;
	i2s_l_fir_ast_source_error : OUT std_logic_vector(1 DOWNTO 0);
	i2s_r_fir_ast_sink_error : IN std_logic_vector(1 DOWNTO 0);
	i2s_r_fir_ast_source_valid : OUT std_logic;
	i2s_r_fir_ast_source_error : OUT std_logic_vector(1 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- ecg_sclk	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_mosi	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_rx_req	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_en	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_trdy	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_rrdy	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_st_load_roe	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_en	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[1]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[3]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[4]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[6]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[8]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[9]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[10]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[11]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[12]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[13]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[14]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[15]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[16]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[17]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[18]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[19]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[20]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[21]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[22]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_tx_load_data[23]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_trdy	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_rrdy	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_roe	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_busy	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_miso	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_fir_ast_sink_error[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_fir_ast_sink_error[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_fir_ast_source_valid	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_fir_ast_source_error[0]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_fir_ast_source_error[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_en	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_trdy	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rrdy	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_roe	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[5]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[7]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[8]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[10]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[11]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[12]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[13]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[14]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[15]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[16]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[17]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[18]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[19]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[20]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[21]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[22]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_data[23]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_busy	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_miso	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_ch1	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_ch2	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_bclk	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_adc_data	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[1]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[7]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[8]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[9]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[10]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[11]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[12]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[13]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[14]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[15]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[16]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[17]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[18]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[19]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[20]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[21]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[22]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[23]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[24]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[25]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[26]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[27]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[28]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[29]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[30]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_led_out[31]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[1]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[2]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[4]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[5]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[6]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[7]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[9]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[10]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[11]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[12]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[13]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[14]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[15]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[16]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[17]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[18]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[19]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[20]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[21]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[22]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[23]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[24]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[25]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[26]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[27]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[28]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[29]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[30]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_led_out[31]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_fir_ast_sink_error[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_fir_ast_source_valid	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_fir_ast_source_error[0]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_fir_ast_source_error[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_fir_ast_sink_error[1]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_fir_ast_source_valid	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_fir_ast_source_error[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_fir_ast_source_error[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_lrclk	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_r_fir_ast_sink_error[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fir_clk	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i2s_l_fir_ast_sink_error[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ecg_ss_n	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_ss_n	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_rx_req	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_mosi	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_sclk	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_trdy	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_rrdy	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rec_st_load_roe	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ecg_rrdy : std_logic;
SIGNAL ww_ecg_roe : std_logic;
SIGNAL ww_ecg_busy : std_logic;
SIGNAL ww_ecg_miso : std_logic;
SIGNAL ww_fir_clk : std_logic;
SIGNAL ww_ecg_fir_ast_sink_error : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ecg_fir_ast_source_valid : std_logic;
SIGNAL ww_ecg_fir_ast_source_error : std_logic_vector(1 DOWNTO 0);
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
SIGNAL ww_rec_ch1 : std_logic;
SIGNAL ww_rec_ch2 : std_logic;
SIGNAL ww_i2s_clk : std_logic;
SIGNAL ww_i2s_bclk : std_logic;
SIGNAL ww_i2s_lrclk : std_logic;
SIGNAL ww_i2s_adc_data : std_logic;
SIGNAL ww_i2s_l_led_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_i2s_r_led_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_i2s_l_fir_ast_sink_error : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i2s_l_fir_ast_source_valid : std_logic;
SIGNAL ww_i2s_l_fir_ast_source_error : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i2s_r_fir_ast_sink_error : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i2s_r_fir_ast_source_valid : std_logic;
SIGNAL ww_i2s_r_fir_ast_source_error : std_logic_vector(1 DOWNTO 0);
SIGNAL \rec_spi_ports|process_1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ecg_sclk~input_o\ : std_logic;
SIGNAL \ecg_mosi~input_o\ : std_logic;
SIGNAL \ecg_rx_req~input_o\ : std_logic;
SIGNAL \ecg_st_load_en~input_o\ : std_logic;
SIGNAL \ecg_st_load_trdy~input_o\ : std_logic;
SIGNAL \ecg_st_load_rrdy~input_o\ : std_logic;
SIGNAL \ecg_st_load_roe~input_o\ : std_logic;
SIGNAL \ecg_tx_load_en~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[0]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[1]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[2]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[3]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[4]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[5]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[6]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[7]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[8]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[9]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[10]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[11]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[12]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[13]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[14]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[15]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[16]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[17]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[18]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[19]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[20]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[21]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[22]~input_o\ : std_logic;
SIGNAL \ecg_tx_load_data[23]~input_o\ : std_logic;
SIGNAL \ecg_fir_ast_sink_error[0]~input_o\ : std_logic;
SIGNAL \ecg_fir_ast_sink_error[1]~input_o\ : std_logic;
SIGNAL \rec_st_load_en~input_o\ : std_logic;
SIGNAL \i2s_clk~input_o\ : std_logic;
SIGNAL \i2s_bclk~input_o\ : std_logic;
SIGNAL \i2s_adc_data~input_o\ : std_logic;
SIGNAL \i2s_l_fir_ast_sink_error[1]~input_o\ : std_logic;
SIGNAL \i2s_r_fir_ast_sink_error[1]~input_o\ : std_logic;
SIGNAL \i2s_lrclk~input_o\ : std_logic;
SIGNAL \i2s_r_fir_ast_sink_error[0]~input_o\ : std_logic;
SIGNAL \fir_clk~input_o\ : std_logic;
SIGNAL \i2s_l_fir_ast_sink_error[0]~input_o\ : std_logic;
SIGNAL \ecg_miso~output_o\ : std_logic;
SIGNAL \rec_miso~output_o\ : std_logic;
SIGNAL \ecg_trdy~output_o\ : std_logic;
SIGNAL \ecg_rrdy~output_o\ : std_logic;
SIGNAL \ecg_roe~output_o\ : std_logic;
SIGNAL \ecg_busy~output_o\ : std_logic;
SIGNAL \ecg_fir_ast_source_valid~output_o\ : std_logic;
SIGNAL \ecg_fir_ast_source_error[0]~output_o\ : std_logic;
SIGNAL \ecg_fir_ast_source_error[1]~output_o\ : std_logic;
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
SIGNAL \rec_ch1~output_o\ : std_logic;
SIGNAL \rec_ch2~output_o\ : std_logic;
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
SIGNAL \i2s_l_led_out[24]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[25]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[26]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[27]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[28]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[29]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[30]~output_o\ : std_logic;
SIGNAL \i2s_l_led_out[31]~output_o\ : std_logic;
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
SIGNAL \i2s_r_led_out[24]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[25]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[26]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[27]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[28]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[29]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[30]~output_o\ : std_logic;
SIGNAL \i2s_r_led_out[31]~output_o\ : std_logic;
SIGNAL \i2s_l_fir_ast_source_valid~output_o\ : std_logic;
SIGNAL \i2s_l_fir_ast_source_error[0]~output_o\ : std_logic;
SIGNAL \i2s_l_fir_ast_source_error[1]~output_o\ : std_logic;
SIGNAL \i2s_r_fir_ast_source_valid~output_o\ : std_logic;
SIGNAL \i2s_r_fir_ast_source_error[0]~output_o\ : std_logic;
SIGNAL \i2s_r_fir_ast_source_error[1]~output_o\ : std_logic;
SIGNAL \rec_sclk~input_o\ : std_logic;
SIGNAL \rec_mosi~input_o\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[1]~feeder_combout\ : std_logic;
SIGNAL \rec_ss_n~input_o\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[2]~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|rd_add~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|rd_add~q\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \rec_st_load_trdy~input_o\ : std_logic;
SIGNAL \rec_spi_ports|process_1~2_combout\ : std_logic;
SIGNAL \rec_spi_ports|trdy~1_combout\ : std_logic;
SIGNAL \rec_spi_ports|wr_add~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|wr_add~q\ : std_logic;
SIGNAL \rec_spi_ports|process_1~1_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[12]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[13]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[14]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[15]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[19]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[24]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[25]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[27]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[28]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|bit_cnt[29]~feeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|trdy~6_combout\ : std_logic;
SIGNAL \rec_spi_ports|trdy~3_combout\ : std_logic;
SIGNAL \rec_spi_ports|trdy~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|trdy~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|trdy~2_combout\ : std_logic;
SIGNAL \rec_st_load_roe~input_o\ : std_logic;
SIGNAL \rec_spi_ports|process_1~6_combout\ : std_logic;
SIGNAL \rec_spi_ports|roe~1_combout\ : std_logic;
SIGNAL \rec_spi_ports|roe~7_combout\ : std_logic;
SIGNAL \rec_spi_ports|roe~6_combout\ : std_logic;
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
SIGNAL \rec_spi_ports|roe~3_combout\ : std_logic;
SIGNAL \rec_spi_ports|roe~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|roe~_emulated_q\ : std_logic;
SIGNAL \rec_spi_ports|roe~2_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~1_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~3_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~2_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~4_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~5_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~reg0_q\ : std_logic;
SIGNAL \rec_spi_ports|miso~enfeeder_combout\ : std_logic;
SIGNAL \rec_spi_ports|miso~en_q\ : std_logic;
SIGNAL \ecg_ss_n~input_o\ : std_logic;
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
SIGNAL \rec_spi_ports|ch_add1~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|ch_add1~q\ : std_logic;
SIGNAL \rec_spi_ports|ch_add2~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|ch_add2~q\ : std_logic;
SIGNAL \rec_spi_ports|rx_buf\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \rec_spi_ports|bit_cnt\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \rec_spi_ports|rx_data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_rec_sclk~input_o\ : std_logic;
SIGNAL \ALT_INV_rec_ss_n~input_o\ : std_logic;
SIGNAL \ALT_INV_ecg_ss_n~input_o\ : std_logic;
SIGNAL \rec_spi_ports|ALT_INV_roe~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|ALT_INV_rrdy~0_combout\ : std_logic;
SIGNAL \rec_spi_ports|ALT_INV_trdy~0_combout\ : std_logic;

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
ww_fir_clk <= fir_clk;
ww_ecg_fir_ast_sink_error <= ecg_fir_ast_sink_error;
ecg_fir_ast_source_valid <= ww_ecg_fir_ast_source_valid;
ecg_fir_ast_source_error <= ww_ecg_fir_ast_source_error;
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
rec_ch1 <= ww_rec_ch1;
rec_ch2 <= ww_rec_ch2;
ww_i2s_clk <= i2s_clk;
ww_i2s_bclk <= i2s_bclk;
ww_i2s_lrclk <= i2s_lrclk;
ww_i2s_adc_data <= i2s_adc_data;
i2s_l_led_out <= ww_i2s_l_led_out;
i2s_r_led_out <= ww_i2s_r_led_out;
ww_i2s_l_fir_ast_sink_error <= i2s_l_fir_ast_sink_error;
i2s_l_fir_ast_source_valid <= ww_i2s_l_fir_ast_source_valid;
i2s_l_fir_ast_source_error <= ww_i2s_l_fir_ast_source_error;
ww_i2s_r_fir_ast_sink_error <= i2s_r_fir_ast_sink_error;
i2s_r_fir_ast_source_valid <= ww_i2s_r_fir_ast_source_valid;
i2s_r_fir_ast_source_error <= ww_i2s_r_fir_ast_source_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rec_spi_ports|process_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rec_spi_ports|process_1~0_combout\);
\ALT_INV_rec_sclk~input_o\ <= NOT \rec_sclk~input_o\;
\ALT_INV_rec_ss_n~input_o\ <= NOT \rec_ss_n~input_o\;
\ALT_INV_ecg_ss_n~input_o\ <= NOT \ecg_ss_n~input_o\;
\rec_spi_ports|ALT_INV_roe~0_combout\ <= NOT \rec_spi_ports|roe~0_combout\;
\rec_spi_ports|ALT_INV_rrdy~0_combout\ <= NOT \rec_spi_ports|rrdy~0_combout\;
\rec_spi_ports|ALT_INV_trdy~0_combout\ <= NOT \rec_spi_ports|trdy~0_combout\;

-- Location: IOOBUF_X32_Y0_N16
\ecg_miso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
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

-- Location: IOOBUF_X11_Y0_N30
\ecg_trdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ecg_trdy~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\ecg_rrdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ecg_rrdy~output_o\);

-- Location: IOOBUF_X35_Y29_N23
\ecg_roe~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ecg_roe~output_o\);

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X35_Y0_N2
\ecg_fir_ast_source_valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ecg_fir_ast_source_valid~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\ecg_fir_ast_source_error[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ecg_fir_ast_source_error[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\ecg_fir_ast_source_error[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ecg_fir_ast_source_error[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
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

-- Location: IOOBUF_X32_Y0_N30
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

-- Location: IOOBUF_X28_Y0_N16
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X32_Y0_N23
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

-- Location: IOOBUF_X30_Y0_N23
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

-- Location: IOOBUF_X35_Y0_N23
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

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X19_Y0_N23
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

-- Location: IOOBUF_X19_Y0_N9
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

-- Location: IOOBUF_X19_Y0_N30
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

-- Location: IOOBUF_X26_Y0_N23
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

-- Location: IOOBUF_X23_Y0_N30
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X32_Y0_N9
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

-- Location: IOOBUF_X35_Y0_N16
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

-- Location: IOOBUF_X37_Y0_N30
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

-- Location: IOOBUF_X41_Y2_N16
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

-- Location: IOOBUF_X26_Y0_N16
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

-- Location: IOOBUF_X28_Y0_N23
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

-- Location: IOOBUF_X19_Y0_N16
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X23_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X21_Y0_N30
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

-- Location: IOOBUF_X23_Y0_N23
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

-- Location: IOOBUF_X26_Y0_N30
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

-- Location: IOOBUF_X30_Y0_N9
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

-- Location: IOOBUF_X37_Y0_N23
\rec_ch1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|ch_add1~q\,
	devoe => ww_devoe,
	o => \rec_ch1~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\rec_ch2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rec_spi_ports|ch_add2~q\,
	devoe => ww_devoe,
	o => \rec_ch2~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\i2s_l_led_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[0]~output_o\);

-- Location: IOOBUF_X41_Y12_N16
\i2s_l_led_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\i2s_l_led_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\i2s_l_led_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\i2s_l_led_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\i2s_l_led_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\i2s_l_led_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[6]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\i2s_l_led_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[7]~output_o\);

-- Location: IOOBUF_X41_Y24_N16
\i2s_l_led_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[8]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\i2s_l_led_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[9]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\i2s_l_led_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[10]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\i2s_l_led_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[11]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\i2s_l_led_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[12]~output_o\);

-- Location: IOOBUF_X41_Y9_N16
\i2s_l_led_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[13]~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\i2s_l_led_out[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[14]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\i2s_l_led_out[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[15]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\i2s_l_led_out[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[16]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\i2s_l_led_out[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[17]~output_o\);

-- Location: IOOBUF_X41_Y7_N2
\i2s_l_led_out[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[18]~output_o\);

-- Location: IOOBUF_X41_Y2_N23
\i2s_l_led_out[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[19]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\i2s_l_led_out[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[20]~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\i2s_l_led_out[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[21]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\i2s_l_led_out[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[22]~output_o\);

-- Location: IOOBUF_X41_Y23_N9
\i2s_l_led_out[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[23]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\i2s_l_led_out[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[24]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\i2s_l_led_out[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[25]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\i2s_l_led_out[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[26]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\i2s_l_led_out[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[27]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\i2s_l_led_out[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[28]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\i2s_l_led_out[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[29]~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\i2s_l_led_out[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[30]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\i2s_l_led_out[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_led_out[31]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\i2s_r_led_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\i2s_r_led_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[1]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\i2s_r_led_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[2]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\i2s_r_led_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[3]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\i2s_r_led_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[4]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\i2s_r_led_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[5]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\i2s_r_led_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[6]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\i2s_r_led_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[7]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\i2s_r_led_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[8]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\i2s_r_led_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[9]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\i2s_r_led_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[10]~output_o\);

-- Location: IOOBUF_X11_Y29_N30
\i2s_r_led_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[11]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\i2s_r_led_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[12]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\i2s_r_led_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[13]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\i2s_r_led_out[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[14]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\i2s_r_led_out[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[15]~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\i2s_r_led_out[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[16]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\i2s_r_led_out[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[17]~output_o\);

-- Location: IOOBUF_X41_Y12_N2
\i2s_r_led_out[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[18]~output_o\);

-- Location: IOOBUF_X37_Y29_N16
\i2s_r_led_out[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[19]~output_o\);

-- Location: IOOBUF_X41_Y9_N23
\i2s_r_led_out[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[20]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\i2s_r_led_out[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[21]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\i2s_r_led_out[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[22]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\i2s_r_led_out[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[23]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\i2s_r_led_out[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[24]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\i2s_r_led_out[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[25]~output_o\);

-- Location: IOOBUF_X41_Y8_N2
\i2s_r_led_out[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[26]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\i2s_r_led_out[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[27]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\i2s_r_led_out[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[28]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\i2s_r_led_out[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[29]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\i2s_r_led_out[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[30]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\i2s_r_led_out[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_led_out[31]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\i2s_l_fir_ast_source_valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_fir_ast_source_valid~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\i2s_l_fir_ast_source_error[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_fir_ast_source_error[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\i2s_l_fir_ast_source_error[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_l_fir_ast_source_error[1]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\i2s_r_fir_ast_source_valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_fir_ast_source_valid~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\i2s_r_fir_ast_source_error[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_fir_ast_source_error[0]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\i2s_r_fir_ast_source_error[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \i2s_r_fir_ast_source_error[1]~output_o\);

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

-- Location: LCCOMB_X28_Y1_N12
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

-- Location: FF_X28_Y1_N13
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

-- Location: LCCOMB_X28_Y1_N18
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

-- Location: FF_X28_Y1_N19
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

-- Location: LCCOMB_X30_Y1_N18
\rec_spi_ports|rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rd_add~0_combout\ = (\rec_spi_ports|bit_cnt\(2) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(2) & ((\rec_spi_ports|rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rd_add~q\,
	datad => \rec_spi_ports|bit_cnt\(2),
	combout => \rec_spi_ports|rd_add~0_combout\);

-- Location: FF_X30_Y1_N19
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

-- Location: LCCOMB_X28_Y1_N0
\rec_spi_ports|bit_cnt[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[3]~feeder_combout\ = \rec_spi_ports|bit_cnt\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(2),
	combout => \rec_spi_ports|bit_cnt[3]~feeder_combout\);

-- Location: FF_X28_Y1_N1
\rec_spi_ports|bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[3]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(3));

-- Location: FF_X28_Y1_N11
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

-- Location: FF_X28_Y1_N5
\rec_spi_ports|bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(4),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(5));

-- Location: FF_X28_Y1_N17
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

-- Location: LCCOMB_X28_Y1_N2
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

-- Location: FF_X28_Y1_N3
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

-- Location: FF_X29_Y1_N11
\rec_spi_ports|bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(7),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(8));

-- Location: IOIBUF_X30_Y0_N1
\rec_st_load_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_trdy,
	o => \rec_st_load_trdy~input_o\);

-- Location: LCCOMB_X30_Y1_N10
\rec_spi_ports|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~2_combout\ = (\rec_ss_n~input_o\ & !\rec_st_load_trdy~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_ss_n~input_o\,
	datad => \rec_st_load_trdy~input_o\,
	combout => \rec_spi_ports|process_1~2_combout\);

-- Location: LCCOMB_X30_Y1_N12
\rec_spi_ports|trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|trdy~1_combout\ = (!\rec_spi_ports|process_1~2_combout\ & ((\rec_ss_n~input_o\) # (\rec_spi_ports|trdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|process_1~2_combout\,
	datac => \rec_ss_n~input_o\,
	datad => \rec_spi_ports|trdy~1_combout\,
	combout => \rec_spi_ports|trdy~1_combout\);

-- Location: FF_X29_Y1_N27
\rec_spi_ports|bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(8),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(9));

-- Location: LCCOMB_X27_Y1_N14
\rec_spi_ports|wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|wr_add~0_combout\ = (\rec_spi_ports|bit_cnt\(1) & (\rec_spi_ports|wr_add~q\)) # (!\rec_spi_ports|bit_cnt\(1) & ((\rec_mosi~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|bit_cnt\(1),
	datac => \rec_spi_ports|wr_add~q\,
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|wr_add~0_combout\);

-- Location: FF_X27_Y1_N15
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

-- Location: LCCOMB_X29_Y1_N12
\rec_spi_ports|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~1_combout\ = (\rec_spi_ports|bit_cnt\(9) & \rec_spi_ports|wr_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_spi_ports|bit_cnt\(9),
	datad => \rec_spi_ports|wr_add~q\,
	combout => \rec_spi_ports|process_1~1_combout\);

-- Location: FF_X29_Y1_N9
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

-- Location: FF_X29_Y1_N19
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

-- Location: LCCOMB_X28_Y2_N0
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

-- Location: FF_X28_Y2_N1
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

-- Location: LCCOMB_X28_Y2_N10
\rec_spi_ports|bit_cnt[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[13]~feeder_combout\ = \rec_spi_ports|bit_cnt\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(12),
	combout => \rec_spi_ports|bit_cnt[13]~feeder_combout\);

-- Location: FF_X28_Y2_N11
\rec_spi_ports|bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[13]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(13));

-- Location: LCCOMB_X28_Y2_N24
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

-- Location: FF_X28_Y2_N25
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

-- Location: LCCOMB_X28_Y2_N14
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

-- Location: FF_X28_Y2_N15
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

-- Location: FF_X28_Y2_N13
\rec_spi_ports|bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(15),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(16));

-- Location: FF_X28_Y1_N27
\rec_spi_ports|bit_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(16),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(17));

-- Location: FF_X28_Y1_N23
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

-- Location: LCCOMB_X29_Y2_N22
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

-- Location: FF_X29_Y2_N23
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

-- Location: FF_X29_Y1_N15
\rec_spi_ports|bit_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(19),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(20));

-- Location: FF_X29_Y1_N23
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

-- Location: FF_X29_Y1_N7
\rec_spi_ports|bit_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(21),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(22));

-- Location: FF_X28_Y1_N9
\rec_spi_ports|bit_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(22),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(23));

-- Location: LCCOMB_X26_Y1_N28
\rec_spi_ports|bit_cnt[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[24]~feeder_combout\ = \rec_spi_ports|bit_cnt\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(23),
	combout => \rec_spi_ports|bit_cnt[24]~feeder_combout\);

-- Location: FF_X26_Y1_N29
\rec_spi_ports|bit_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[24]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(24));

-- Location: LCCOMB_X26_Y1_N26
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

-- Location: FF_X26_Y1_N27
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

-- Location: FF_X28_Y1_N31
\rec_spi_ports|bit_cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(25),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(26));

-- Location: LCCOMB_X28_Y1_N28
\rec_spi_ports|bit_cnt[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[27]~feeder_combout\ = \rec_spi_ports|bit_cnt\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(26),
	combout => \rec_spi_ports|bit_cnt[27]~feeder_combout\);

-- Location: FF_X28_Y1_N29
\rec_spi_ports|bit_cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[27]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(27));

-- Location: LCCOMB_X28_Y1_N20
\rec_spi_ports|bit_cnt[28]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|bit_cnt[28]~feeder_combout\ = \rec_spi_ports|bit_cnt\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rec_spi_ports|bit_cnt\(27),
	combout => \rec_spi_ports|bit_cnt[28]~feeder_combout\);

-- Location: FF_X28_Y1_N21
\rec_spi_ports|bit_cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|bit_cnt[28]~feeder_combout\,
	clrn => \ALT_INV_rec_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(28));

-- Location: LCCOMB_X28_Y1_N6
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

-- Location: FF_X28_Y1_N7
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

-- Location: FF_X29_Y1_N31
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

-- Location: FF_X29_Y1_N5
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

-- Location: FF_X29_Y1_N1
\rec_spi_ports|bit_cnt[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	asdata => \rec_spi_ports|bit_cnt\(31),
	clrn => \ALT_INV_rec_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|bit_cnt\(32));

-- Location: LCCOMB_X29_Y1_N20
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

-- Location: LCCOMB_X27_Y1_N12
\rec_spi_ports|trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|trdy~3_combout\ = \rec_spi_ports|trdy~1_combout\ $ (((\rec_spi_ports|trdy~6_combout\) # ((\rec_spi_ports|process_1~1_combout\ & \rec_mosi~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|process_1~1_combout\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|trdy~1_combout\,
	datad => \rec_spi_ports|trdy~6_combout\,
	combout => \rec_spi_ports|trdy~3_combout\);

-- Location: LCCOMB_X30_Y1_N24
\rec_spi_ports|trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|trdy~0_combout\ = (\rec_ss_n~input_o\) # (\rec_spi_ports|process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rec_ss_n~input_o\,
	datad => \rec_spi_ports|process_1~2_combout\,
	combout => \rec_spi_ports|trdy~0_combout\);

-- Location: FF_X27_Y1_N13
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

-- Location: LCCOMB_X30_Y1_N8
\rec_spi_ports|trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|trdy~2_combout\ = (!\rec_spi_ports|process_1~2_combout\ & ((\rec_ss_n~input_o\) # (\rec_spi_ports|trdy~1_combout\ $ (\rec_spi_ports|trdy~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|process_1~2_combout\,
	datab => \rec_spi_ports|trdy~1_combout\,
	datac => \rec_ss_n~input_o\,
	datad => \rec_spi_ports|trdy~_emulated_q\,
	combout => \rec_spi_ports|trdy~2_combout\);

-- Location: IOIBUF_X21_Y0_N15
\rec_st_load_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_roe,
	o => \rec_st_load_roe~input_o\);

-- Location: LCCOMB_X28_Y1_N30
\rec_spi_ports|process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~6_combout\ = (\rec_ss_n~input_o\ & !\rec_st_load_roe~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_ss_n~input_o\,
	datad => \rec_st_load_roe~input_o\,
	combout => \rec_spi_ports|process_1~6_combout\);

-- Location: LCCOMB_X28_Y1_N24
\rec_spi_ports|roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|roe~1_combout\ = (!\rec_spi_ports|process_1~6_combout\ & ((\rec_ss_n~input_o\) # (\rec_spi_ports|roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|process_1~6_combout\,
	datac => \rec_ss_n~input_o\,
	datad => \rec_spi_ports|roe~1_combout\,
	combout => \rec_spi_ports|roe~1_combout\);

-- Location: LCCOMB_X29_Y1_N26
\rec_spi_ports|roe~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|roe~7_combout\ = (\rec_spi_ports|wr_add~q\ & (\rec_mosi~input_o\ & \rec_spi_ports|bit_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_mosi~input_o\,
	datad => \rec_spi_ports|bit_cnt\(11),
	combout => \rec_spi_ports|roe~7_combout\);

-- Location: LCCOMB_X29_Y1_N14
\rec_spi_ports|roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|roe~6_combout\ = (\rec_spi_ports|roe~2_combout\ & ((!\rec_spi_ports|bit_cnt\(11)) # (!\rec_spi_ports|wr_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|roe~2_combout\,
	datad => \rec_spi_ports|bit_cnt\(11),
	combout => \rec_spi_ports|roe~6_combout\);

-- Location: IOIBUF_X21_Y0_N22
\rec_st_load_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_rrdy,
	o => \rec_st_load_rrdy~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\rec_rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_rx_req,
	o => \rec_rx_req~input_o\);

-- Location: LCCOMB_X29_Y1_N30
\rec_spi_ports|process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~4_combout\ = (\rec_ss_n~input_o\ & ((\rec_rx_req~input_o\) # (!\rec_st_load_rrdy~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_st_load_rrdy~input_o\,
	datab => \rec_ss_n~input_o\,
	datad => \rec_rx_req~input_o\,
	combout => \rec_spi_ports|process_1~4_combout\);

-- Location: LCCOMB_X29_Y1_N4
\rec_spi_ports|rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rrdy~1_combout\ = (!\rec_spi_ports|process_1~4_combout\ & ((\rec_ss_n~input_o\) # (\rec_spi_ports|rrdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|process_1~4_combout\,
	datab => \rec_ss_n~input_o\,
	datad => \rec_spi_ports|rrdy~1_combout\,
	combout => \rec_spi_ports|rrdy~1_combout\);

-- Location: LCCOMB_X29_Y1_N0
\rec_spi_ports|process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~3_combout\ = (\rec_spi_ports|wr_add~q\ & \rec_spi_ports|bit_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datad => \rec_spi_ports|bit_cnt\(10),
	combout => \rec_spi_ports|process_1~3_combout\);

-- Location: LCCOMB_X29_Y1_N8
\rec_spi_ports|rrdy~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rrdy~6_combout\ = (\rec_spi_ports|rrdy~2_combout\) # ((!\rec_spi_ports|wr_add~q\ & \rec_spi_ports|bit_cnt\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|rrdy~2_combout\,
	datad => \rec_spi_ports|bit_cnt\(32),
	combout => \rec_spi_ports|rrdy~6_combout\);

-- Location: LCCOMB_X29_Y1_N2
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

-- Location: LCCOMB_X29_Y1_N6
\rec_spi_ports|rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rrdy~0_combout\ = (\rec_ss_n~input_o\) # (\rec_spi_ports|process_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_ss_n~input_o\,
	datad => \rec_spi_ports|process_1~4_combout\,
	combout => \rec_spi_ports|rrdy~0_combout\);

-- Location: FF_X29_Y1_N3
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

-- Location: LCCOMB_X29_Y1_N28
\rec_spi_ports|rrdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rrdy~2_combout\ = (!\rec_spi_ports|process_1~4_combout\ & ((\rec_ss_n~input_o\) # (\rec_spi_ports|rrdy~1_combout\ $ (\rec_spi_ports|rrdy~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rrdy~1_combout\,
	datab => \rec_ss_n~input_o\,
	datac => \rec_spi_ports|process_1~4_combout\,
	datad => \rec_spi_ports|rrdy~_emulated_q\,
	combout => \rec_spi_ports|rrdy~2_combout\);

-- Location: LCCOMB_X29_Y1_N16
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

-- Location: LCCOMB_X28_Y1_N14
\rec_spi_ports|roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|roe~3_combout\ = \rec_spi_ports|roe~1_combout\ $ (((\rec_spi_ports|roe~7_combout\) # ((\rec_spi_ports|roe~6_combout\) # (\rec_spi_ports|process_1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|roe~1_combout\,
	datab => \rec_spi_ports|roe~7_combout\,
	datac => \rec_spi_ports|roe~6_combout\,
	datad => \rec_spi_ports|process_1~5_combout\,
	combout => \rec_spi_ports|roe~3_combout\);

-- Location: LCCOMB_X28_Y1_N16
\rec_spi_ports|roe~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|roe~0_combout\ = (\rec_spi_ports|process_1~6_combout\) # (\rec_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|process_1~6_combout\,
	datab => \rec_ss_n~input_o\,
	combout => \rec_spi_ports|roe~0_combout\);

-- Location: FF_X28_Y1_N15
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

-- Location: LCCOMB_X29_Y1_N24
\rec_spi_ports|roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|roe~2_combout\ = (!\rec_spi_ports|process_1~6_combout\ & ((\rec_ss_n~input_o\) # (\rec_spi_ports|roe~1_combout\ $ (\rec_spi_ports|roe~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_ss_n~input_o\,
	datab => \rec_spi_ports|roe~1_combout\,
	datac => \rec_spi_ports|process_1~6_combout\,
	datad => \rec_spi_ports|roe~_emulated_q\,
	combout => \rec_spi_ports|roe~2_combout\);

-- Location: LCCOMB_X29_Y1_N10
\rec_spi_ports|miso~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|miso~0_combout\ = (\rec_spi_ports|bit_cnt\(9) & ((\rec_spi_ports|rrdy~2_combout\))) # (!\rec_spi_ports|bit_cnt\(9) & (\rec_spi_ports|roe~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(9),
	datab => \rec_spi_ports|roe~2_combout\,
	datad => \rec_spi_ports|rrdy~2_combout\,
	combout => \rec_spi_ports|miso~0_combout\);

-- Location: LCCOMB_X30_Y1_N26
\rec_spi_ports|miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|miso~1_combout\ = (\rec_spi_ports|rd_add~q\ & ((\rec_spi_ports|bit_cnt\(8) & (\rec_spi_ports|trdy~2_combout\)) # (!\rec_spi_ports|bit_cnt\(8) & ((\rec_spi_ports|miso~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rd_add~q\,
	datab => \rec_spi_ports|bit_cnt\(8),
	datac => \rec_spi_ports|trdy~2_combout\,
	datad => \rec_spi_ports|miso~0_combout\,
	combout => \rec_spi_ports|miso~1_combout\);

-- Location: LCCOMB_X28_Y1_N4
\rec_spi_ports|miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|miso~3_combout\ = (!\rec_spi_ports|bit_cnt\(3) & (!\rec_spi_ports|bit_cnt\(6) & (!\rec_spi_ports|bit_cnt\(5) & !\rec_spi_ports|bit_cnt\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(3),
	datab => \rec_spi_ports|bit_cnt\(6),
	datac => \rec_spi_ports|bit_cnt\(5),
	datad => \rec_spi_ports|bit_cnt\(32),
	combout => \rec_spi_ports|miso~3_combout\);

-- Location: LCCOMB_X29_Y1_N22
\rec_spi_ports|miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|miso~2_combout\ = (\rec_spi_ports|bit_cnt\(9) & (!\rec_spi_ports|bit_cnt\(10) & !\rec_spi_ports|bit_cnt\(8))) # (!\rec_spi_ports|bit_cnt\(9) & (\rec_spi_ports|bit_cnt\(10) $ (\rec_spi_ports|bit_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(9),
	datab => \rec_spi_ports|bit_cnt\(10),
	datad => \rec_spi_ports|bit_cnt\(8),
	combout => \rec_spi_ports|miso~2_combout\);

-- Location: LCCOMB_X28_Y1_N10
\rec_spi_ports|miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|miso~4_combout\ = (\rec_spi_ports|bit_cnt\(1) & (!\rec_spi_ports|bit_cnt\(7) & (!\rec_spi_ports|bit_cnt\(4) & !\rec_spi_ports|bit_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(1),
	datab => \rec_spi_ports|bit_cnt\(7),
	datac => \rec_spi_ports|bit_cnt\(4),
	datad => \rec_spi_ports|bit_cnt\(2),
	combout => \rec_spi_ports|miso~4_combout\);

-- Location: LCCOMB_X30_Y1_N16
\rec_spi_ports|miso~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|miso~5_combout\ = (\rec_spi_ports|rd_add~q\ & (((\rec_spi_ports|miso~2_combout\)))) # (!\rec_spi_ports|rd_add~q\ & (\rec_spi_ports|miso~3_combout\ & ((\rec_spi_ports|miso~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|miso~3_combout\,
	datab => \rec_spi_ports|miso~2_combout\,
	datac => \rec_spi_ports|miso~4_combout\,
	datad => \rec_spi_ports|rd_add~q\,
	combout => \rec_spi_ports|miso~5_combout\);

-- Location: FF_X30_Y1_N27
\rec_spi_ports|miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rec_sclk~input_o\,
	d => \rec_spi_ports|miso~1_combout\,
	ena => \rec_spi_ports|miso~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|miso~reg0_q\);

-- Location: LCCOMB_X30_Y1_N20
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

-- Location: FF_X30_Y1_N21
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
	ena => \rec_spi_ports|miso~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|miso~en_q\);

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

-- Location: LCCOMB_X28_Y2_N20
\rec_spi_ports|rx_buf[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[0]~0_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(0))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(32) & ((\rec_mosi~input_o\))) # (!\rec_spi_ports|bit_cnt\(32) & (\rec_spi_ports|rx_buf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(32),
	datac => \rec_spi_ports|rx_buf\(0),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[0]~0_combout\);

-- Location: FF_X28_Y2_N21
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

-- Location: LCCOMB_X29_Y1_N18
\rec_spi_ports|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|process_1~0_combout\ = (\rec_ss_n~input_o\ & \rec_rx_req~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_ss_n~input_o\,
	datad => \rec_rx_req~input_o\,
	combout => \rec_spi_ports|process_1~0_combout\);

-- Location: CLKCTRL_G17
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

-- Location: LCCOMB_X27_Y2_N24
\rec_spi_ports|rx_data[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(0) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(0)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_data\(0),
	datac => \rec_spi_ports|rx_buf\(0),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(0));

-- Location: LCCOMB_X30_Y1_N30
\rec_spi_ports|rx_buf[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[1]~1_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(1))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(31) & ((\rec_mosi~input_o\))) # (!\rec_spi_ports|bit_cnt\(31) & (\rec_spi_ports|rx_buf\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(31),
	datac => \rec_spi_ports|rx_buf\(1),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[1]~1_combout\);

-- Location: FF_X30_Y1_N31
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

-- Location: LCCOMB_X32_Y1_N4
\rec_spi_ports|rx_data[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(1) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(1))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(1),
	datac => \rec_spi_ports|rx_data\(1),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(1));

-- Location: LCCOMB_X30_Y1_N28
\rec_spi_ports|rx_buf[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[2]~2_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(2))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(30) & ((\rec_mosi~input_o\))) # (!\rec_spi_ports|bit_cnt\(30) & (\rec_spi_ports|rx_buf\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(30),
	datac => \rec_spi_ports|rx_buf\(2),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[2]~2_combout\);

-- Location: FF_X30_Y1_N29
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

-- Location: LCCOMB_X30_Y1_N14
\rec_spi_ports|rx_data[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(2) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(2))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_buf\(2),
	datac => \rec_spi_ports|rx_data\(2),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(2));

-- Location: LCCOMB_X27_Y1_N10
\rec_spi_ports|rx_buf[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[3]~3_combout\ = (\rec_spi_ports|bit_cnt\(29) & ((\rec_spi_ports|wr_add~q\ & (\rec_spi_ports|rx_buf\(3))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_mosi~input_o\))))) # (!\rec_spi_ports|bit_cnt\(29) & (((\rec_spi_ports|rx_buf\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(29),
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(3),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[3]~3_combout\);

-- Location: FF_X27_Y1_N11
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

-- Location: LCCOMB_X31_Y1_N8
\rec_spi_ports|rx_data[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(3) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(3))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_buf\(3),
	datac => \rec_spi_ports|rx_data\(3),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(3));

-- Location: LCCOMB_X27_Y1_N16
\rec_spi_ports|rx_buf[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[4]~4_combout\ = (\rec_spi_ports|bit_cnt\(28) & ((\rec_spi_ports|wr_add~q\ & (\rec_spi_ports|rx_buf\(4))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_mosi~input_o\))))) # (!\rec_spi_ports|bit_cnt\(28) & (((\rec_spi_ports|rx_buf\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(28),
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(4),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[4]~4_combout\);

-- Location: FF_X27_Y1_N17
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

-- Location: LCCOMB_X27_Y1_N8
\rec_spi_ports|rx_data[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(4) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(4))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(4),
	datac => \rec_spi_ports|rx_data\(4),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(4));

-- Location: LCCOMB_X27_Y1_N6
\rec_spi_ports|rx_buf[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[5]~5_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(5))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(27) & ((\rec_mosi~input_o\))) # (!\rec_spi_ports|bit_cnt\(27) & (\rec_spi_ports|rx_buf\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(27),
	datac => \rec_spi_ports|rx_buf\(5),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[5]~5_combout\);

-- Location: FF_X27_Y1_N7
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

-- Location: LCCOMB_X26_Y1_N30
\rec_spi_ports|rx_data[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(5) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(5))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_buf\(5),
	datac => \rec_spi_ports|rx_data\(5),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(5));

-- Location: LCCOMB_X27_Y1_N0
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

-- Location: FF_X27_Y1_N1
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

-- Location: LCCOMB_X23_Y1_N8
\rec_spi_ports|rx_data[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(6) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(6))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(6),
	datac => \rec_spi_ports|rx_data\(6),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(6));

-- Location: LCCOMB_X27_Y1_N22
\rec_spi_ports|rx_buf[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[7]~7_combout\ = (\rec_spi_ports|bit_cnt\(25) & ((\rec_spi_ports|wr_add~q\ & (\rec_spi_ports|rx_buf\(7))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_mosi~input_o\))))) # (!\rec_spi_ports|bit_cnt\(25) & (((\rec_spi_ports|rx_buf\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(25),
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(7),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[7]~7_combout\);

-- Location: FF_X27_Y1_N23
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

-- Location: LCCOMB_X26_Y1_N4
\rec_spi_ports|rx_data[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(7) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(7))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_buf\(7),
	datac => \rec_spi_ports|rx_data\(7),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(7));

-- Location: LCCOMB_X26_Y1_N20
\rec_spi_ports|rx_buf[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[8]~8_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(8))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(24) & ((\rec_mosi~input_o\))) # (!\rec_spi_ports|bit_cnt\(24) & (\rec_spi_ports|rx_buf\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(24),
	datac => \rec_spi_ports|rx_buf\(8),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[8]~8_combout\);

-- Location: FF_X26_Y1_N21
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

-- Location: LCCOMB_X26_Y1_N22
\rec_spi_ports|rx_data[8]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(8) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(8))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_buf\(8),
	datac => \rec_spi_ports|rx_data\(8),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(8));

-- Location: LCCOMB_X28_Y1_N8
\rec_spi_ports|rx_buf[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[9]~9_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(9))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(23) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(23) & ((\rec_spi_ports|rx_buf\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|bit_cnt\(23),
	datad => \rec_spi_ports|rx_buf\(9),
	combout => \rec_spi_ports|rx_buf[9]~9_combout\);

-- Location: FF_X27_Y1_N21
\rec_spi_ports|rx_buf[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	asdata => \rec_spi_ports|rx_buf[9]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|rx_buf\(9));

-- Location: LCCOMB_X26_Y1_N24
\rec_spi_ports|rx_data[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(9) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(9))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_buf\(9),
	datac => \rec_spi_ports|process_1~0clkctrl_outclk\,
	datad => \rec_spi_ports|rx_data\(9),
	combout => \rec_spi_ports|rx_data\(9));

-- Location: LCCOMB_X27_Y1_N2
\rec_spi_ports|rx_buf[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[10]~10_combout\ = (\rec_spi_ports|bit_cnt\(22) & ((\rec_spi_ports|wr_add~q\ & (\rec_spi_ports|rx_buf\(10))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_mosi~input_o\))))) # (!\rec_spi_ports|bit_cnt\(22) & (((\rec_spi_ports|rx_buf\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(22),
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(10),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[10]~10_combout\);

-- Location: FF_X27_Y1_N3
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

-- Location: LCCOMB_X26_Y1_N14
\rec_spi_ports|rx_data[10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(10) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(10))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_buf\(10),
	datac => \rec_spi_ports|rx_data\(10),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(10));

-- Location: LCCOMB_X29_Y2_N4
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

-- Location: FF_X29_Y2_N5
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

-- Location: LCCOMB_X29_Y2_N20
\rec_spi_ports|rx_data[11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(11) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(11)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_data\(11),
	datac => \rec_spi_ports|rx_buf\(11),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(11));

-- Location: LCCOMB_X27_Y1_N28
\rec_spi_ports|rx_buf[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[12]~12_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(12))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(20) & ((\rec_mosi~input_o\))) # (!\rec_spi_ports|bit_cnt\(20) & (\rec_spi_ports|rx_buf\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(20),
	datac => \rec_spi_ports|rx_buf\(12),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[12]~12_combout\);

-- Location: FF_X27_Y1_N29
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

-- Location: LCCOMB_X32_Y1_N30
\rec_spi_ports|rx_data[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(12) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(12))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_buf\(12),
	datac => \rec_spi_ports|rx_data\(12),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(12));

-- Location: LCCOMB_X29_Y2_N26
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

-- Location: FF_X29_Y2_N27
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

-- Location: LCCOMB_X29_Y2_N18
\rec_spi_ports|rx_data[13]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(13) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(13)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_data\(13),
	datac => \rec_spi_ports|rx_buf\(13),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(13));

-- Location: LCCOMB_X29_Y2_N16
\rec_spi_ports|rx_buf[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[14]~14_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(14))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(18) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(18) & ((\rec_spi_ports|rx_buf\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(14),
	datad => \rec_spi_ports|bit_cnt\(18),
	combout => \rec_spi_ports|rx_buf[14]~14_combout\);

-- Location: FF_X29_Y2_N17
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

-- Location: LCCOMB_X29_Y2_N28
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

-- Location: LCCOMB_X27_Y1_N26
\rec_spi_ports|rx_buf[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[15]~15_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(15))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(17) & ((\rec_mosi~input_o\))) # (!\rec_spi_ports|bit_cnt\(17) & (\rec_spi_ports|rx_buf\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(17),
	datac => \rec_spi_ports|rx_buf\(15),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[15]~15_combout\);

-- Location: FF_X27_Y1_N27
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

-- Location: LCCOMB_X27_Y1_N20
\rec_spi_ports|rx_data[15]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(15) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_buf\(15)))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_data\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_data\(15),
	datab => \rec_spi_ports|rx_buf\(15),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(15));

-- Location: LCCOMB_X28_Y2_N22
\rec_spi_ports|rx_buf[16]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[16]~16_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(16))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(16) & ((\rec_mosi~input_o\))) # (!\rec_spi_ports|bit_cnt\(16) & (\rec_spi_ports|rx_buf\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(16),
	datac => \rec_spi_ports|rx_buf\(16),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[16]~16_combout\);

-- Location: FF_X28_Y2_N23
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

-- Location: LCCOMB_X28_Y2_N18
\rec_spi_ports|rx_data[16]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(16) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(16))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(16),
	datab => \rec_spi_ports|rx_data\(16),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(16));

-- Location: LCCOMB_X28_Y2_N16
\rec_spi_ports|rx_buf[17]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[17]~17_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(17))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(15) & ((\rec_mosi~input_o\))) # (!\rec_spi_ports|bit_cnt\(15) & (\rec_spi_ports|rx_buf\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(15),
	datac => \rec_spi_ports|rx_buf\(17),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[17]~17_combout\);

-- Location: FF_X28_Y2_N17
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

-- Location: LCCOMB_X27_Y2_N26
\rec_spi_ports|rx_data[17]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(17) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(17))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_buf\(17),
	datac => \rec_spi_ports|rx_data\(17),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(17));

-- Location: LCCOMB_X28_Y2_N30
\rec_spi_ports|rx_buf[18]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[18]~18_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(18))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(14) & ((\rec_mosi~input_o\))) # (!\rec_spi_ports|bit_cnt\(14) & (\rec_spi_ports|rx_buf\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(14),
	datac => \rec_spi_ports|rx_buf\(18),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[18]~18_combout\);

-- Location: FF_X28_Y2_N31
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

-- Location: LCCOMB_X28_Y2_N4
\rec_spi_ports|rx_data[18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(18) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(18))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(18),
	datac => \rec_spi_ports|rx_data\(18),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(18));

-- Location: LCCOMB_X28_Y2_N28
\rec_spi_ports|rx_buf[19]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[19]~19_combout\ = (\rec_spi_ports|bit_cnt\(13) & ((\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|rx_buf\(19)))) # (!\rec_spi_ports|wr_add~q\ & (\rec_mosi~input_o\)))) # (!\rec_spi_ports|bit_cnt\(13) & (((\rec_spi_ports|rx_buf\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(13),
	datab => \rec_mosi~input_o\,
	datac => \rec_spi_ports|rx_buf\(19),
	datad => \rec_spi_ports|wr_add~q\,
	combout => \rec_spi_ports|rx_buf[19]~19_combout\);

-- Location: FF_X28_Y2_N29
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

-- Location: LCCOMB_X28_Y2_N26
\rec_spi_ports|rx_data[19]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(19) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(19))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_buf\(19),
	datac => \rec_spi_ports|rx_data\(19),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(19));

-- Location: LCCOMB_X28_Y2_N6
\rec_spi_ports|rx_buf[20]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[20]~20_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(20))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(12) & ((\rec_mosi~input_o\))) # (!\rec_spi_ports|bit_cnt\(12) & (\rec_spi_ports|rx_buf\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(12),
	datac => \rec_spi_ports|rx_buf\(20),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[20]~20_combout\);

-- Location: FF_X28_Y2_N7
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

-- Location: LCCOMB_X28_Y2_N8
\rec_spi_ports|rx_data[20]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(20) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(20))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_buf\(20),
	datac => \rec_spi_ports|rx_data\(20),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(20));

-- Location: LCCOMB_X27_Y1_N24
\rec_spi_ports|rx_buf[21]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[21]~21_combout\ = (\rec_spi_ports|bit_cnt\(11) & ((\rec_spi_ports|wr_add~q\ & (\rec_spi_ports|rx_buf\(21))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_mosi~input_o\))))) # (!\rec_spi_ports|bit_cnt\(11) & (((\rec_spi_ports|rx_buf\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(11),
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(21),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[21]~21_combout\);

-- Location: FF_X27_Y1_N25
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

-- Location: LCCOMB_X22_Y1_N4
\rec_spi_ports|rx_data[21]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(21) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(21))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rec_spi_ports|rx_buf\(21),
	datac => \rec_spi_ports|rx_data\(21),
	datad => \rec_spi_ports|process_1~0clkctrl_outclk\,
	combout => \rec_spi_ports|rx_data\(21));

-- Location: LCCOMB_X27_Y1_N30
\rec_spi_ports|rx_buf[22]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[22]~22_combout\ = (\rec_spi_ports|wr_add~q\ & (((\rec_spi_ports|rx_buf\(22))))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_spi_ports|bit_cnt\(10) & ((\rec_mosi~input_o\))) # (!\rec_spi_ports|bit_cnt\(10) & (\rec_spi_ports|rx_buf\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|wr_add~q\,
	datab => \rec_spi_ports|bit_cnt\(10),
	datac => \rec_spi_ports|rx_buf\(22),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[22]~22_combout\);

-- Location: FF_X27_Y1_N31
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

-- Location: LCCOMB_X26_Y1_N0
\rec_spi_ports|rx_data[22]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(22) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(22))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(22),
	datac => \rec_spi_ports|process_1~0clkctrl_outclk\,
	datad => \rec_spi_ports|rx_data\(22),
	combout => \rec_spi_ports|rx_data\(22));

-- Location: LCCOMB_X27_Y1_N4
\rec_spi_ports|rx_buf[23]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_buf[23]~23_combout\ = (\rec_spi_ports|bit_cnt\(9) & ((\rec_spi_ports|wr_add~q\ & (\rec_spi_ports|rx_buf\(23))) # (!\rec_spi_ports|wr_add~q\ & ((\rec_mosi~input_o\))))) # (!\rec_spi_ports|bit_cnt\(9) & (((\rec_spi_ports|rx_buf\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|bit_cnt\(9),
	datab => \rec_spi_ports|wr_add~q\,
	datac => \rec_spi_ports|rx_buf\(23),
	datad => \rec_mosi~input_o\,
	combout => \rec_spi_ports|rx_buf[23]~23_combout\);

-- Location: FF_X27_Y1_N5
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

-- Location: LCCOMB_X27_Y1_N18
\rec_spi_ports|rx_data[23]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|rx_data\(23) = (GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & (\rec_spi_ports|rx_buf\(23))) # (!GLOBAL(\rec_spi_ports|process_1~0clkctrl_outclk\) & ((\rec_spi_ports|rx_data\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_spi_ports|rx_buf\(23),
	datac => \rec_spi_ports|process_1~0clkctrl_outclk\,
	datad => \rec_spi_ports|rx_data\(23),
	combout => \rec_spi_ports|rx_data\(23));

-- Location: LCCOMB_X29_Y2_N24
\rec_spi_ports|ch_add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|ch_add1~0_combout\ = (\rec_spi_ports|bit_cnt\(3) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(3) & ((\rec_spi_ports|ch_add1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datac => \rec_spi_ports|ch_add1~q\,
	datad => \rec_spi_ports|bit_cnt\(3),
	combout => \rec_spi_ports|ch_add1~0_combout\);

-- Location: FF_X29_Y2_N25
\rec_spi_ports|ch_add1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|ch_add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|ch_add1~q\);

-- Location: LCCOMB_X29_Y2_N30
\rec_spi_ports|ch_add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rec_spi_ports|ch_add2~0_combout\ = (\rec_spi_ports|bit_cnt\(4) & (\rec_mosi~input_o\)) # (!\rec_spi_ports|bit_cnt\(4) & ((\rec_spi_ports|ch_add2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rec_mosi~input_o\,
	datac => \rec_spi_ports|ch_add2~q\,
	datad => \rec_spi_ports|bit_cnt\(4),
	combout => \rec_spi_ports|ch_add2~0_combout\);

-- Location: FF_X29_Y2_N31
\rec_spi_ports|ch_add2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rec_sclk~input_o\,
	d => \rec_spi_ports|ch_add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rec_spi_ports|ch_add2~q\);

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

-- Location: IOIBUF_X0_Y11_N8
\ecg_rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_rx_req,
	o => \ecg_rx_req~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\ecg_st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_en,
	o => \ecg_st_load_en~input_o\);

-- Location: IOIBUF_X41_Y8_N8
\ecg_st_load_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_trdy,
	o => \ecg_st_load_trdy~input_o\);

-- Location: IOIBUF_X41_Y13_N22
\ecg_st_load_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_rrdy,
	o => \ecg_st_load_rrdy~input_o\);

-- Location: IOIBUF_X0_Y26_N22
\ecg_st_load_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_st_load_roe,
	o => \ecg_st_load_roe~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\ecg_tx_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_en,
	o => \ecg_tx_load_en~input_o\);

-- Location: IOIBUF_X39_Y29_N22
\ecg_tx_load_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(0),
	o => \ecg_tx_load_data[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\ecg_tx_load_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(1),
	o => \ecg_tx_load_data[1]~input_o\);

-- Location: IOIBUF_X41_Y19_N1
\ecg_tx_load_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(2),
	o => \ecg_tx_load_data[2]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\ecg_tx_load_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(3),
	o => \ecg_tx_load_data[3]~input_o\);

-- Location: IOIBUF_X41_Y7_N15
\ecg_tx_load_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(4),
	o => \ecg_tx_load_data[4]~input_o\);

-- Location: IOIBUF_X35_Y29_N29
\ecg_tx_load_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(5),
	o => \ecg_tx_load_data[5]~input_o\);

-- Location: IOIBUF_X41_Y20_N22
\ecg_tx_load_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(6),
	o => \ecg_tx_load_data[6]~input_o\);

-- Location: IOIBUF_X11_Y29_N8
\ecg_tx_load_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(7),
	o => \ecg_tx_load_data[7]~input_o\);

-- Location: IOIBUF_X41_Y4_N1
\ecg_tx_load_data[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(8),
	o => \ecg_tx_load_data[8]~input_o\);

-- Location: IOIBUF_X39_Y29_N8
\ecg_tx_load_data[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(9),
	o => \ecg_tx_load_data[9]~input_o\);

-- Location: IOIBUF_X21_Y29_N29
\ecg_tx_load_data[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(10),
	o => \ecg_tx_load_data[10]~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\ecg_tx_load_data[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(11),
	o => \ecg_tx_load_data[11]~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\ecg_tx_load_data[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(12),
	o => \ecg_tx_load_data[12]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\ecg_tx_load_data[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(13),
	o => \ecg_tx_load_data[13]~input_o\);

-- Location: IOIBUF_X5_Y29_N22
\ecg_tx_load_data[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(14),
	o => \ecg_tx_load_data[14]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\ecg_tx_load_data[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(15),
	o => \ecg_tx_load_data[15]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\ecg_tx_load_data[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(16),
	o => \ecg_tx_load_data[16]~input_o\);

-- Location: IOIBUF_X37_Y29_N8
\ecg_tx_load_data[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(17),
	o => \ecg_tx_load_data[17]~input_o\);

-- Location: IOIBUF_X37_Y29_N29
\ecg_tx_load_data[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(18),
	o => \ecg_tx_load_data[18]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\ecg_tx_load_data[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(19),
	o => \ecg_tx_load_data[19]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\ecg_tx_load_data[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(20),
	o => \ecg_tx_load_data[20]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\ecg_tx_load_data[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(21),
	o => \ecg_tx_load_data[21]~input_o\);

-- Location: IOIBUF_X41_Y5_N8
\ecg_tx_load_data[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(22),
	o => \ecg_tx_load_data[22]~input_o\);

-- Location: IOIBUF_X3_Y29_N29
\ecg_tx_load_data[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_tx_load_data(23),
	o => \ecg_tx_load_data[23]~input_o\);

-- Location: IOIBUF_X16_Y29_N15
\ecg_fir_ast_sink_error[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_fir_ast_sink_error(0),
	o => \ecg_fir_ast_sink_error[0]~input_o\);

-- Location: IOIBUF_X32_Y29_N22
\ecg_fir_ast_sink_error[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ecg_fir_ast_sink_error(1),
	o => \ecg_fir_ast_sink_error[1]~input_o\);

-- Location: IOIBUF_X30_Y29_N22
\rec_st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rec_st_load_en,
	o => \rec_st_load_en~input_o\);

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

-- Location: IOIBUF_X7_Y29_N22
\i2s_l_fir_ast_sink_error[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2s_l_fir_ast_sink_error(1),
	o => \i2s_l_fir_ast_sink_error[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\i2s_r_fir_ast_sink_error[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2s_r_fir_ast_sink_error(1),
	o => \i2s_r_fir_ast_sink_error[1]~input_o\);

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

-- Location: IOIBUF_X7_Y29_N8
\i2s_r_fir_ast_sink_error[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2s_r_fir_ast_sink_error(0),
	o => \i2s_r_fir_ast_sink_error[0]~input_o\);

-- Location: IOIBUF_X41_Y15_N15
\fir_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fir_clk,
	o => \fir_clk~input_o\);

-- Location: IOIBUF_X9_Y29_N29
\i2s_l_fir_ast_sink_error[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i2s_l_fir_ast_sink_error(0),
	o => \i2s_l_fir_ast_sink_error[0]~input_o\);

ww_ecg_trdy <= \ecg_trdy~output_o\;

ww_ecg_rrdy <= \ecg_rrdy~output_o\;

ww_ecg_roe <= \ecg_roe~output_o\;

ww_ecg_busy <= \ecg_busy~output_o\;

ww_ecg_miso <= \ecg_miso~output_o\;

ww_ecg_fir_ast_source_valid <= \ecg_fir_ast_source_valid~output_o\;

ww_ecg_fir_ast_source_error(0) <= \ecg_fir_ast_source_error[0]~output_o\;

ww_ecg_fir_ast_source_error(1) <= \ecg_fir_ast_source_error[1]~output_o\;

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

ww_rec_ch1 <= \rec_ch1~output_o\;

ww_rec_ch2 <= \rec_ch2~output_o\;

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

ww_i2s_l_led_out(24) <= \i2s_l_led_out[24]~output_o\;

ww_i2s_l_led_out(25) <= \i2s_l_led_out[25]~output_o\;

ww_i2s_l_led_out(26) <= \i2s_l_led_out[26]~output_o\;

ww_i2s_l_led_out(27) <= \i2s_l_led_out[27]~output_o\;

ww_i2s_l_led_out(28) <= \i2s_l_led_out[28]~output_o\;

ww_i2s_l_led_out(29) <= \i2s_l_led_out[29]~output_o\;

ww_i2s_l_led_out(30) <= \i2s_l_led_out[30]~output_o\;

ww_i2s_l_led_out(31) <= \i2s_l_led_out[31]~output_o\;

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

ww_i2s_r_led_out(24) <= \i2s_r_led_out[24]~output_o\;

ww_i2s_r_led_out(25) <= \i2s_r_led_out[25]~output_o\;

ww_i2s_r_led_out(26) <= \i2s_r_led_out[26]~output_o\;

ww_i2s_r_led_out(27) <= \i2s_r_led_out[27]~output_o\;

ww_i2s_r_led_out(28) <= \i2s_r_led_out[28]~output_o\;

ww_i2s_r_led_out(29) <= \i2s_r_led_out[29]~output_o\;

ww_i2s_r_led_out(30) <= \i2s_r_led_out[30]~output_o\;

ww_i2s_r_led_out(31) <= \i2s_r_led_out[31]~output_o\;

ww_i2s_l_fir_ast_source_valid <= \i2s_l_fir_ast_source_valid~output_o\;

ww_i2s_l_fir_ast_source_error(0) <= \i2s_l_fir_ast_source_error[0]~output_o\;

ww_i2s_l_fir_ast_source_error(1) <= \i2s_l_fir_ast_source_error[1]~output_o\;

ww_i2s_r_fir_ast_source_valid <= \i2s_r_fir_ast_source_valid~output_o\;

ww_i2s_r_fir_ast_source_error(0) <= \i2s_r_fir_ast_source_error[0]~output_o\;

ww_i2s_r_fir_ast_source_error(1) <= \i2s_r_fir_ast_source_error[1]~output_o\;
END structure;


