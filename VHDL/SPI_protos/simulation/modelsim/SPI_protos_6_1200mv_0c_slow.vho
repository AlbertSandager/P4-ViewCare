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

-- DATE "04/30/2019 14:13:36"

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

ENTITY 	SPI_protos IS
    PORT (
	s_ss_clk : IN std_logic;
	s_ss_n : IN std_logic;
	s_mosi : IN std_logic;
	s_rx_req : IN std_logic;
	s_st_load_en : IN std_logic;
	s_st_load_s_trdy : IN std_logic;
	s_st_load_s_rrdy : IN std_logic;
	s_st_load_s_roe : IN std_logic;
	s_tx_load_en : IN std_logic;
	s_tx_load_data : IN std_logic_vector(7 DOWNTO 0);
	s_trdy : BUFFER std_logic;
	s_rrdy : BUFFER std_logic;
	s_roe : BUFFER std_logic;
	s_miso : OUT std_logic;
	spi_led : OUT std_logic_vector(7 DOWNTO 0);
	ena_led : OUT std_logic;
	m_clock : IN std_logic;
	m_cpol : IN std_logic;
	m_cpha : IN std_logic;
	m_cont : IN std_logic;
	m_clk_div : IN STD.STANDARD.integer;
	m_addr : IN STD.STANDARD.integer;
	m_miso : IN std_logic;
	m_sclk : BUFFER std_logic;
	m_ss_n : BUFFER std_logic_vector(0 DOWNTO 0);
	m_mosi : OUT std_logic;
	m_busy : OUT std_logic;
	m_rx_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END SPI_protos;

-- Design Ports Information
-- s_trdy	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_rrdy	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_roe	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_miso	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[5]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[6]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- spi_led[7]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena_led	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_sclk	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_ss_n[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_mosi	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_busy	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_rx_data[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_rx_data[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_rx_data[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_rx_data[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_rx_data[4]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_rx_data[5]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_rx_data[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_rx_data[7]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[2]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[5]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[6]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[8]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[9]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[10]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[11]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[12]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[13]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[14]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[15]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[16]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[17]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[18]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[19]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[20]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[21]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[22]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[23]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[24]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[25]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[26]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[27]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[28]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[29]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[30]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_ss_n	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_st_load_s_roe	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_rx_req	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clock	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_cpol	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_cont	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_mosi	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_ss_clk	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_st_load_s_trdy	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_en	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_st_load_en	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_st_load_s_rrdy	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[5]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[7]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[8]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[9]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[10]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[11]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[12]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[13]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[14]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[15]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[16]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[17]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[18]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[19]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[20]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[21]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[22]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[23]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[24]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[25]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[26]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[27]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[28]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[29]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[30]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_clk_div[31]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[31]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_miso	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[7]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_cpha	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[5]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[4]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[0]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SPI_protos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s_ss_clk : std_logic;
SIGNAL ww_s_ss_n : std_logic;
SIGNAL ww_s_mosi : std_logic;
SIGNAL ww_s_rx_req : std_logic;
SIGNAL ww_s_st_load_en : std_logic;
SIGNAL ww_s_st_load_s_trdy : std_logic;
SIGNAL ww_s_st_load_s_rrdy : std_logic;
SIGNAL ww_s_st_load_s_roe : std_logic;
SIGNAL ww_s_tx_load_en : std_logic;
SIGNAL ww_s_tx_load_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s_trdy : std_logic;
SIGNAL ww_s_rrdy : std_logic;
SIGNAL ww_s_roe : std_logic;
SIGNAL ww_s_miso : std_logic;
SIGNAL ww_spi_led : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ena_led : std_logic;
SIGNAL ww_m_clock : std_logic;
SIGNAL ww_m_cpol : std_logic;
SIGNAL ww_m_cpha : std_logic;
SIGNAL ww_m_cont : std_logic;
SIGNAL ww_m_clk_div : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_m_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_m_miso : std_logic;
SIGNAL ww_m_sclk : std_logic;
SIGNAL ww_m_ss_n : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_m_mosi : std_logic;
SIGNAL ww_m_busy : std_logic;
SIGNAL ww_m_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \process_1~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m_clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m_addr[1]~input_o\ : std_logic;
SIGNAL \m_addr[2]~input_o\ : std_logic;
SIGNAL \m_addr[3]~input_o\ : std_logic;
SIGNAL \m_addr[4]~input_o\ : std_logic;
SIGNAL \m_addr[5]~input_o\ : std_logic;
SIGNAL \m_addr[6]~input_o\ : std_logic;
SIGNAL \m_addr[7]~input_o\ : std_logic;
SIGNAL \m_addr[8]~input_o\ : std_logic;
SIGNAL \m_addr[9]~input_o\ : std_logic;
SIGNAL \m_addr[10]~input_o\ : std_logic;
SIGNAL \m_addr[11]~input_o\ : std_logic;
SIGNAL \m_addr[12]~input_o\ : std_logic;
SIGNAL \m_addr[13]~input_o\ : std_logic;
SIGNAL \m_addr[14]~input_o\ : std_logic;
SIGNAL \m_addr[15]~input_o\ : std_logic;
SIGNAL \m_addr[16]~input_o\ : std_logic;
SIGNAL \m_addr[17]~input_o\ : std_logic;
SIGNAL \m_addr[18]~input_o\ : std_logic;
SIGNAL \m_addr[19]~input_o\ : std_logic;
SIGNAL \m_addr[20]~input_o\ : std_logic;
SIGNAL \m_addr[21]~input_o\ : std_logic;
SIGNAL \m_addr[22]~input_o\ : std_logic;
SIGNAL \m_addr[23]~input_o\ : std_logic;
SIGNAL \m_addr[24]~input_o\ : std_logic;
SIGNAL \m_addr[25]~input_o\ : std_logic;
SIGNAL \m_addr[26]~input_o\ : std_logic;
SIGNAL \m_addr[27]~input_o\ : std_logic;
SIGNAL \m_addr[28]~input_o\ : std_logic;
SIGNAL \m_addr[29]~input_o\ : std_logic;
SIGNAL \m_addr[30]~input_o\ : std_logic;
SIGNAL \s_miso~output_o\ : std_logic;
SIGNAL \m_mosi~output_o\ : std_logic;
SIGNAL \s_trdy~output_o\ : std_logic;
SIGNAL \s_rrdy~output_o\ : std_logic;
SIGNAL \s_roe~output_o\ : std_logic;
SIGNAL \spi_led[0]~output_o\ : std_logic;
SIGNAL \spi_led[1]~output_o\ : std_logic;
SIGNAL \spi_led[2]~output_o\ : std_logic;
SIGNAL \spi_led[3]~output_o\ : std_logic;
SIGNAL \spi_led[4]~output_o\ : std_logic;
SIGNAL \spi_led[5]~output_o\ : std_logic;
SIGNAL \spi_led[6]~output_o\ : std_logic;
SIGNAL \spi_led[7]~output_o\ : std_logic;
SIGNAL \ena_led~output_o\ : std_logic;
SIGNAL \m_sclk~output_o\ : std_logic;
SIGNAL \m_ss_n[0]~output_o\ : std_logic;
SIGNAL \m_busy~output_o\ : std_logic;
SIGNAL \m_rx_data[0]~output_o\ : std_logic;
SIGNAL \m_rx_data[1]~output_o\ : std_logic;
SIGNAL \m_rx_data[2]~output_o\ : std_logic;
SIGNAL \m_rx_data[3]~output_o\ : std_logic;
SIGNAL \m_rx_data[4]~output_o\ : std_logic;
SIGNAL \m_rx_data[5]~output_o\ : std_logic;
SIGNAL \m_rx_data[6]~output_o\ : std_logic;
SIGNAL \m_rx_data[7]~output_o\ : std_logic;
SIGNAL \s_ss_clk~input_o\ : std_logic;
SIGNAL \s_tx_load_data[7]~input_o\ : std_logic;
SIGNAL \s_tx_load_en~input_o\ : std_logic;
SIGNAL \s_ss_n~input_o\ : std_logic;
SIGNAL \process_1~9_combout\ : std_logic;
SIGNAL \process_1~9clkctrl_outclk\ : std_logic;
SIGNAL \s_tx_buf[7]~1_combout\ : std_logic;
SIGNAL \s_tx_load_data[6]~input_o\ : std_logic;
SIGNAL \s_tx_buf[6]~5_combout\ : std_logic;
SIGNAL \s_tx_load_data[4]~input_o\ : std_logic;
SIGNAL \s_tx_buf[4]~13_combout\ : std_logic;
SIGNAL \s_tx_load_data[3]~input_o\ : std_logic;
SIGNAL \s_tx_load_data[2]~input_o\ : std_logic;
SIGNAL \s_tx_load_data[1]~input_o\ : std_logic;
SIGNAL \s_tx_buf[1]~25_combout\ : std_logic;
SIGNAL \s_tx_load_data[0]~input_o\ : std_logic;
SIGNAL \s_tx_buf[0]~29_combout\ : std_logic;
SIGNAL \s_tx_buf[0]~31_combout\ : std_logic;
SIGNAL \s_bit_cnt[0]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[1]~0_combout\ : std_logic;
SIGNAL \s_bit_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \s_bit_cnt[5]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[9]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[12]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[13]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[14]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[15]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[16]~feeder_combout\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \s_mosi~input_o\ : std_logic;
SIGNAL \s_rd_add~0_combout\ : std_logic;
SIGNAL \s_rd_add~q\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \s_tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[0]~30_combout\ : std_logic;
SIGNAL \s_tx_buf[1]~27_combout\ : std_logic;
SIGNAL \s_tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[1]~26_combout\ : std_logic;
SIGNAL \s_tx_buf[2]~21_combout\ : std_logic;
SIGNAL \s_tx_buf[2]~23_combout\ : std_logic;
SIGNAL \s_tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[2]~22_combout\ : std_logic;
SIGNAL \s_tx_buf[3]~17_combout\ : std_logic;
SIGNAL \s_tx_buf[3]~19_combout\ : std_logic;
SIGNAL \s_tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[3]~18_combout\ : std_logic;
SIGNAL \s_tx_buf[4]~15_combout\ : std_logic;
SIGNAL \s_tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[4]~14_combout\ : std_logic;
SIGNAL \s_tx_load_data[5]~input_o\ : std_logic;
SIGNAL \s_tx_buf[5]~9_combout\ : std_logic;
SIGNAL \s_tx_buf[5]~11_combout\ : std_logic;
SIGNAL \s_tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[5]~10_combout\ : std_logic;
SIGNAL \s_tx_buf[6]~7_combout\ : std_logic;
SIGNAL \s_tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[6]~6_combout\ : std_logic;
SIGNAL \s_tx_buf[7]~3_combout\ : std_logic;
SIGNAL \s_tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[7]~2_combout\ : std_logic;
SIGNAL \s_st_load_s_trdy~input_o\ : std_logic;
SIGNAL \s_st_load_en~input_o\ : std_logic;
SIGNAL \s_trdy~8_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \s_trdy~1_combout\ : std_logic;
SIGNAL \s_wr_add~0_combout\ : std_logic;
SIGNAL \s_wr_add~q\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \s_trdy~7_combout\ : std_logic;
SIGNAL \s_trdy~3_combout\ : std_logic;
SIGNAL \s_trdy~0_combout\ : std_logic;
SIGNAL \s_trdy~reg0_emulated_q\ : std_logic;
SIGNAL \s_trdy~2_combout\ : std_logic;
SIGNAL \s_rx_req~input_o\ : std_logic;
SIGNAL \s_st_load_s_rrdy~input_o\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \s_rrdy~1_combout\ : std_logic;
SIGNAL \s_rrdy~10_combout\ : std_logic;
SIGNAL \s_rrdy~9_combout\ : std_logic;
SIGNAL \s_rrdy~3_combout\ : std_logic;
SIGNAL \s_rrdy~0_combout\ : std_logic;
SIGNAL \s_rrdy~reg0_emulated_q\ : std_logic;
SIGNAL \s_rrdy~2_combout\ : std_logic;
SIGNAL \s_st_load_s_roe~input_o\ : std_logic;
SIGNAL \s_roe~1_combout\ : std_logic;
SIGNAL \s_roe~6_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \s_roe~5_combout\ : std_logic;
SIGNAL \s_roe~3_combout\ : std_logic;
SIGNAL \s_roe~reg0_emulated_q\ : std_logic;
SIGNAL \s_roe~2_combout\ : std_logic;
SIGNAL \s_miso~1_combout\ : std_logic;
SIGNAL \s_miso~2_combout\ : std_logic;
SIGNAL \s_miso~3_combout\ : std_logic;
SIGNAL \s_miso~4_combout\ : std_logic;
SIGNAL \s_miso~5_combout\ : std_logic;
SIGNAL \s_miso~6_combout\ : std_logic;
SIGNAL \s_miso~reg0_q\ : std_logic;
SIGNAL \s_miso~enfeeder_combout\ : std_logic;
SIGNAL \s_miso~en_q\ : std_logic;
SIGNAL \m_clock~input_o\ : std_logic;
SIGNAL \m_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \m_cont~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \m_cpha~input_o\ : std_logic;
SIGNAL \m_last_bit_rx[0]~0_combout\ : std_logic;
SIGNAL \m_slave[0]~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \m_clk_toggles~5_combout\ : std_logic;
SIGNAL \m_clk_div[15]~input_o\ : std_logic;
SIGNAL \m_clk_div[14]~input_o\ : std_logic;
SIGNAL \m_clk_div[13]~input_o\ : std_logic;
SIGNAL \m_clk_div[12]~input_o\ : std_logic;
SIGNAL \m_clk_div[11]~input_o\ : std_logic;
SIGNAL \m_clk_div[10]~input_o\ : std_logic;
SIGNAL \m_clk_div[9]~input_o\ : std_logic;
SIGNAL \m_clk_div[8]~input_o\ : std_logic;
SIGNAL \m_clk_div[7]~input_o\ : std_logic;
SIGNAL \m_clk_div[6]~input_o\ : std_logic;
SIGNAL \m_clk_div[5]~input_o\ : std_logic;
SIGNAL \m_clk_div[4]~input_o\ : std_logic;
SIGNAL \m_clk_div[3]~input_o\ : std_logic;
SIGNAL \m_clk_div[2]~input_o\ : std_logic;
SIGNAL \m_clk_div[1]~input_o\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \m_clk_div[16]~input_o\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \m_clk_div[22]~input_o\ : std_logic;
SIGNAL \m_clk_div[24]~input_o\ : std_logic;
SIGNAL \m_clk_div[23]~input_o\ : std_logic;
SIGNAL \m_clk_div[21]~input_o\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \m_clk_div[19]~input_o\ : std_logic;
SIGNAL \m_clk_div[20]~input_o\ : std_logic;
SIGNAL \m_clk_div[18]~input_o\ : std_logic;
SIGNAL \m_clk_div[17]~input_o\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \m_clk_div[29]~input_o\ : std_logic;
SIGNAL \m_clk_div[28]~input_o\ : std_logic;
SIGNAL \m_clk_div[27]~input_o\ : std_logic;
SIGNAL \m_clk_div[25]~input_o\ : std_logic;
SIGNAL \m_clk_div[26]~input_o\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \m_clk_div[30]~input_o\ : std_logic;
SIGNAL \m_clk_div[31]~input_o\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \m_clk_div[0]~input_o\ : std_logic;
SIGNAL \m_clk_ratio~0_combout\ : std_logic;
SIGNAL \m_count~4_combout\ : std_logic;
SIGNAL \m_count[0]~2_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \m_count~3_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \m_count~6_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \m_count~5_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \m_count~8_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \m_count~7_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \m_count~10_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \m_count~9_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \m_count~12_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \m_count~11_combout\ : std_logic;
SIGNAL \Add5~19\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \m_count~14_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \m_count~13_combout\ : std_logic;
SIGNAL \Add5~23\ : std_logic;
SIGNAL \Add5~24_combout\ : std_logic;
SIGNAL \m_count~16_combout\ : std_logic;
SIGNAL \Add5~25\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \m_count~15_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~28_combout\ : std_logic;
SIGNAL \m_count~18_combout\ : std_logic;
SIGNAL \Add5~29\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \m_count~17_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \m_clk_ratio[13]~feeder_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \m_clk_ratio[3]~feeder_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \m_clk_ratio[7]~feeder_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Add5~31\ : std_logic;
SIGNAL \Add5~32_combout\ : std_logic;
SIGNAL \m_count~20_combout\ : std_logic;
SIGNAL \m_clk_ratio[17]~feeder_combout\ : std_logic;
SIGNAL \Add5~33\ : std_logic;
SIGNAL \Add5~34_combout\ : std_logic;
SIGNAL \m_count~19_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \m_clk_ratio[19]~feeder_combout\ : std_logic;
SIGNAL \Add5~35\ : std_logic;
SIGNAL \Add5~36_combout\ : std_logic;
SIGNAL \m_count~22_combout\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~38_combout\ : std_logic;
SIGNAL \m_count~21_combout\ : std_logic;
SIGNAL \Equal2~11_combout\ : std_logic;
SIGNAL \Add5~39\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \m_count~24_combout\ : std_logic;
SIGNAL \Add5~41\ : std_logic;
SIGNAL \Add5~42_combout\ : std_logic;
SIGNAL \m_count~23_combout\ : std_logic;
SIGNAL \Add5~43\ : std_logic;
SIGNAL \Add5~44_combout\ : std_logic;
SIGNAL \m_count~26_combout\ : std_logic;
SIGNAL \Add5~45\ : std_logic;
SIGNAL \Add5~46_combout\ : std_logic;
SIGNAL \m_count~25_combout\ : std_logic;
SIGNAL \Equal2~13_combout\ : std_logic;
SIGNAL \m_clk_ratio[21]~feeder_combout\ : std_logic;
SIGNAL \Equal2~12_combout\ : std_logic;
SIGNAL \Equal2~14_combout\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add5~48_combout\ : std_logic;
SIGNAL \m_count~28_combout\ : std_logic;
SIGNAL \Add5~49\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \m_count~27_combout\ : std_logic;
SIGNAL \Equal2~15_combout\ : std_logic;
SIGNAL \Add5~51\ : std_logic;
SIGNAL \Add5~52_combout\ : std_logic;
SIGNAL \m_count~30_combout\ : std_logic;
SIGNAL \Add5~53\ : std_logic;
SIGNAL \Add5~54_combout\ : std_logic;
SIGNAL \m_count~29_combout\ : std_logic;
SIGNAL \Add5~55\ : std_logic;
SIGNAL \Add5~56_combout\ : std_logic;
SIGNAL \m_count~32_combout\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~58_combout\ : std_logic;
SIGNAL \m_count~31_combout\ : std_logic;
SIGNAL \Add5~59\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \m_count~34_combout\ : std_logic;
SIGNAL \m_clk_ratio[31]~2_combout\ : std_logic;
SIGNAL \Add5~61\ : std_logic;
SIGNAL \Add5~62_combout\ : std_logic;
SIGNAL \m_count~33_combout\ : std_logic;
SIGNAL \Equal2~18_combout\ : std_logic;
SIGNAL \Equal2~16_combout\ : std_logic;
SIGNAL \Equal2~17_combout\ : std_logic;
SIGNAL \Equal2~19_combout\ : std_logic;
SIGNAL \Equal2~20_combout\ : std_logic;
SIGNAL \m_clk_toggles[3]~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \m_clk_toggles~2_combout\ : std_logic;
SIGNAL \process_2~2_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \process_2~3_combout\ : std_logic;
SIGNAL \m_clk_toggles~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \m_clk_toggles~7_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \m_clk_toggles~6_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \m_ss_n~2_combout\ : std_logic;
SIGNAL \s_ss_n~_wirecell_combout\ : std_logic;
SIGNAL \m_state~q\ : std_logic;
SIGNAL \m_clk_toggles[3]~4_combout\ : std_logic;
SIGNAL \m_assert_data~0_combout\ : std_logic;
SIGNAL \m_assert_data~feeder_combout\ : std_logic;
SIGNAL \m_assert_data~1_combout\ : std_logic;
SIGNAL \m_assert_data~q\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \m_mosi~1_combout\ : std_logic;
SIGNAL \s_rx_buf[0]~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~0clkctrl_outclk\ : std_logic;
SIGNAL \m_tx_buffer~9_combout\ : std_logic;
SIGNAL \m_sclk~1_combout\ : std_logic;
SIGNAL \s_rx_buf[1]~1_combout\ : std_logic;
SIGNAL \m_tx_buffer~8_combout\ : std_logic;
SIGNAL \m_tx_buffer[7]~1_combout\ : std_logic;
SIGNAL \m_tx_buffer[7]~2_combout\ : std_logic;
SIGNAL \s_rx_buf[2]~2_combout\ : std_logic;
SIGNAL \m_tx_buffer~7_combout\ : std_logic;
SIGNAL \s_rx_buf[3]~3_combout\ : std_logic;
SIGNAL \m_tx_buffer~6_combout\ : std_logic;
SIGNAL \s_rx_buf[4]~4_combout\ : std_logic;
SIGNAL \m_tx_buffer~5_combout\ : std_logic;
SIGNAL \s_rx_buf[5]~5_combout\ : std_logic;
SIGNAL \m_tx_buffer~4_combout\ : std_logic;
SIGNAL \s_rx_buf[6]~6_combout\ : std_logic;
SIGNAL \m_tx_buffer~3_combout\ : std_logic;
SIGNAL \s_rx_buf[7]~7_combout\ : std_logic;
SIGNAL \m_tx_buffer~0_combout\ : std_logic;
SIGNAL \m_mosi~reg0feeder_combout\ : std_logic;
SIGNAL \m_ss_n~0_combout\ : std_logic;
SIGNAL \m_mosi~2_combout\ : std_logic;
SIGNAL \m_mosi~reg0_q\ : std_logic;
SIGNAL \m_mosi~3_combout\ : std_logic;
SIGNAL \m_mosi~en_q\ : std_logic;
SIGNAL \m_addr[0]~input_o\ : std_logic;
SIGNAL \m_addr[31]~input_o\ : std_logic;
SIGNAL \m_slave~1_combout\ : std_logic;
SIGNAL \m_ss_n~1_combout\ : std_logic;
SIGNAL \m_ss_n[0]~reg0_q\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \m_sclk~0_combout\ : std_logic;
SIGNAL \m_cpol~input_o\ : std_logic;
SIGNAL \m_sclk~reg0_q\ : std_logic;
SIGNAL \m_continue~0_combout\ : std_logic;
SIGNAL \m_continue~q\ : std_logic;
SIGNAL \m_busy~0_combout\ : std_logic;
SIGNAL \m_busy~reg0_q\ : std_logic;
SIGNAL \m_miso~input_o\ : std_logic;
SIGNAL \m_rx_buffer[0]~feeder_combout\ : std_logic;
SIGNAL \m_rx_buffer[0]~0_combout\ : std_logic;
SIGNAL \m_rx_data[0]~1_combout\ : std_logic;
SIGNAL \m_rx_buffer[0]~1_combout\ : std_logic;
SIGNAL \m_rx_data[0]~reg0feeder_combout\ : std_logic;
SIGNAL \m_rx_data[0]~0_combout\ : std_logic;
SIGNAL \m_rx_data[0]~reg0_q\ : std_logic;
SIGNAL \m_rx_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \m_rx_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \m_rx_data[1]~reg0_q\ : std_logic;
SIGNAL \m_rx_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \m_rx_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \m_rx_data[2]~reg0_q\ : std_logic;
SIGNAL \m_rx_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \m_rx_data[3]~reg0feeder_combout\ : std_logic;
SIGNAL \m_rx_data[3]~reg0_q\ : std_logic;
SIGNAL \m_rx_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \m_rx_data[4]~reg0feeder_combout\ : std_logic;
SIGNAL \m_rx_data[4]~reg0_q\ : std_logic;
SIGNAL \m_rx_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \m_rx_data[5]~reg0feeder_combout\ : std_logic;
SIGNAL \m_rx_data[5]~reg0_q\ : std_logic;
SIGNAL \m_rx_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \m_rx_data[6]~reg0feeder_combout\ : std_logic;
SIGNAL \m_rx_data[6]~reg0_q\ : std_logic;
SIGNAL \m_rx_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \m_rx_data[7]~reg0feeder_combout\ : std_logic;
SIGNAL \m_rx_data[7]~reg0_q\ : std_logic;
SIGNAL s_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL s_rx_buf : std_logic_vector(7 DOWNTO 0);
SIGNAL s_bit_cnt : std_logic_vector(16 DOWNTO 0);
SIGNAL m_tx_buffer : std_logic_vector(7 DOWNTO 0);
SIGNAL m_slave : std_logic_vector(31 DOWNTO 0);
SIGNAL m_rx_buffer : std_logic_vector(7 DOWNTO 0);
SIGNAL m_last_bit_rx : std_logic_vector(4 DOWNTO 0);
SIGNAL m_count : std_logic_vector(31 DOWNTO 0);
SIGNAL m_clk_toggles : std_logic_vector(4 DOWNTO 0);
SIGNAL m_clk_ratio : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_m_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_process_1~9clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_s_ss_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_s_ss_n~input_o\ : std_logic;
SIGNAL \ALT_INV_m_state~q\ : std_logic;
SIGNAL \ALT_INV_process_1~3_combout\ : std_logic;
SIGNAL \ALT_INV_s_rrdy~0_combout\ : std_logic;
SIGNAL \ALT_INV_s_trdy~0_combout\ : std_logic;

BEGIN

ww_s_ss_clk <= s_ss_clk;
ww_s_ss_n <= s_ss_n;
ww_s_mosi <= s_mosi;
ww_s_rx_req <= s_rx_req;
ww_s_st_load_en <= s_st_load_en;
ww_s_st_load_s_trdy <= s_st_load_s_trdy;
ww_s_st_load_s_rrdy <= s_st_load_s_rrdy;
ww_s_st_load_s_roe <= s_st_load_s_roe;
ww_s_tx_load_en <= s_tx_load_en;
ww_s_tx_load_data <= s_tx_load_data;
s_trdy <= ww_s_trdy;
s_rrdy <= ww_s_rrdy;
s_roe <= ww_s_roe;
s_miso <= ww_s_miso;
spi_led <= ww_spi_led;
ena_led <= ww_ena_led;
ww_m_clock <= m_clock;
ww_m_cpol <= m_cpol;
ww_m_cpha <= m_cpha;
ww_m_cont <= m_cont;
ww_m_clk_div <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(m_clk_div, 32);
ww_m_addr <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(m_addr, 32);
ww_m_miso <= m_miso;
m_sclk <= ww_m_sclk;
m_ss_n <= ww_m_ss_n;
m_mosi <= ww_m_mosi;
m_busy <= ww_m_busy;
m_rx_data <= ww_m_rx_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\process_1~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_1~9_combout\);

\process_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_1~0_combout\);

\m_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \m_clock~input_o\);
\ALT_INV_m_clock~inputclkctrl_outclk\ <= NOT \m_clock~inputclkctrl_outclk\;
\ALT_INV_process_1~9clkctrl_outclk\ <= NOT \process_1~9clkctrl_outclk\;
\ALT_INV_s_ss_clk~input_o\ <= NOT \s_ss_clk~input_o\;
\ALT_INV_s_ss_n~input_o\ <= NOT \s_ss_n~input_o\;
\ALT_INV_m_state~q\ <= NOT \m_state~q\;
\ALT_INV_process_1~3_combout\ <= NOT \process_1~3_combout\;
\ALT_INV_s_rrdy~0_combout\ <= NOT \s_rrdy~0_combout\;
\ALT_INV_s_trdy~0_combout\ <= NOT \s_trdy~0_combout\;

-- Location: IOOBUF_X32_Y0_N2
\s_miso~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_miso~reg0_q\,
	oe => \s_miso~en_q\,
	devoe => ww_devoe,
	o => \s_miso~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\m_mosi~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_mosi~reg0_q\,
	oe => \m_mosi~en_q\,
	devoe => ww_devoe,
	o => \m_mosi~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\s_trdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_trdy~2_combout\,
	devoe => ww_devoe,
	o => \s_trdy~output_o\);

-- Location: IOOBUF_X41_Y8_N16
\s_rrdy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_rrdy~2_combout\,
	devoe => ww_devoe,
	o => \s_rrdy~output_o\);

-- Location: IOOBUF_X41_Y8_N23
\s_roe~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_roe~2_combout\,
	devoe => ww_devoe,
	o => \s_roe~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\spi_led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_rx_data(0),
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
	i => s_rx_data(1),
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
	i => s_rx_data(2),
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
	i => s_rx_data(3),
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
	i => s_rx_data(4),
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
	i => s_rx_data(5),
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
	i => s_rx_data(6),
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
	i => s_rx_data(7),
	devoe => ww_devoe,
	o => \spi_led[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\ena_led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s_ss_n~input_o\,
	devoe => ww_devoe,
	o => \ena_led~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\m_sclk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_sclk~reg0_q\,
	devoe => ww_devoe,
	o => \m_sclk~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\m_ss_n[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_ss_n[0]~reg0_q\,
	devoe => ww_devoe,
	o => \m_ss_n[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\m_busy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_busy~reg0_q\,
	devoe => ww_devoe,
	o => \m_busy~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\m_rx_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_rx_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \m_rx_data[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\m_rx_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_rx_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \m_rx_data[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\m_rx_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_rx_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \m_rx_data[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\m_rx_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_rx_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \m_rx_data[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\m_rx_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_rx_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \m_rx_data[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\m_rx_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_rx_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \m_rx_data[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\m_rx_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_rx_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \m_rx_data[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\m_rx_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_rx_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \m_rx_data[7]~output_o\);

-- Location: IOIBUF_X28_Y0_N8
\s_ss_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_ss_clk,
	o => \s_ss_clk~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\s_tx_load_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(7),
	o => \s_tx_load_data[7]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\s_tx_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_en,
	o => \s_tx_load_en~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\s_ss_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_ss_n,
	o => \s_ss_n~input_o\);

-- Location: LCCOMB_X27_Y2_N6
\process_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~9_combout\ = (\s_tx_load_en~input_o\ & \s_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_load_en~input_o\,
	datad => \s_ss_n~input_o\,
	combout => \process_1~9_combout\);

-- Location: CLKCTRL_G17
\process_1~9clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_1~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_1~9clkctrl_outclk\);

-- Location: LCCOMB_X26_Y8_N14
\s_tx_buf[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[7]~1_combout\ = (GLOBAL(\process_1~9clkctrl_outclk\) & (\s_tx_load_data[7]~input_o\)) # (!GLOBAL(\process_1~9clkctrl_outclk\) & ((\s_tx_buf[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[7]~input_o\,
	datac => \s_tx_buf[7]~1_combout\,
	datad => \process_1~9clkctrl_outclk\,
	combout => \s_tx_buf[7]~1_combout\);

-- Location: IOIBUF_X41_Y8_N8
\s_tx_load_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(6),
	o => \s_tx_load_data[6]~input_o\);

-- Location: LCCOMB_X26_Y8_N4
\s_tx_buf[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[6]~5_combout\ = (GLOBAL(\process_1~9clkctrl_outclk\) & (\s_tx_load_data[6]~input_o\)) # (!GLOBAL(\process_1~9clkctrl_outclk\) & ((\s_tx_buf[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[6]~input_o\,
	datac => \s_tx_buf[6]~5_combout\,
	datad => \process_1~9clkctrl_outclk\,
	combout => \s_tx_buf[6]~5_combout\);

-- Location: IOIBUF_X26_Y0_N29
\s_tx_load_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(4),
	o => \s_tx_load_data[4]~input_o\);

-- Location: LCCOMB_X26_Y8_N20
\s_tx_buf[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[4]~13_combout\ = (GLOBAL(\process_1~9clkctrl_outclk\) & ((\s_tx_load_data[4]~input_o\))) # (!GLOBAL(\process_1~9clkctrl_outclk\) & (\s_tx_buf[4]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tx_buf[4]~13_combout\,
	datac => \s_tx_load_data[4]~input_o\,
	datad => \process_1~9clkctrl_outclk\,
	combout => \s_tx_buf[4]~13_combout\);

-- Location: IOIBUF_X23_Y0_N29
\s_tx_load_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(3),
	o => \s_tx_load_data[3]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\s_tx_load_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(2),
	o => \s_tx_load_data[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\s_tx_load_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(1),
	o => \s_tx_load_data[1]~input_o\);

-- Location: LCCOMB_X27_Y4_N4
\s_tx_buf[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[1]~25_combout\ = (GLOBAL(\process_1~9clkctrl_outclk\) & (\s_tx_load_data[1]~input_o\)) # (!GLOBAL(\process_1~9clkctrl_outclk\) & ((\s_tx_buf[1]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tx_load_data[1]~input_o\,
	datac => \s_tx_buf[1]~25_combout\,
	datad => \process_1~9clkctrl_outclk\,
	combout => \s_tx_buf[1]~25_combout\);

-- Location: IOIBUF_X19_Y0_N29
\s_tx_load_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(0),
	o => \s_tx_load_data[0]~input_o\);

-- Location: LCCOMB_X27_Y4_N10
\s_tx_buf[0]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[0]~29_combout\ = (GLOBAL(\process_1~9clkctrl_outclk\) & ((\s_tx_load_data[0]~input_o\))) # (!GLOBAL(\process_1~9clkctrl_outclk\) & (\s_tx_buf[0]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[0]~29_combout\,
	datab => \s_tx_load_data[0]~input_o\,
	datad => \process_1~9clkctrl_outclk\,
	combout => \s_tx_buf[0]~29_combout\);

-- Location: LCCOMB_X26_Y8_N24
\s_tx_buf[0]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[0]~31_combout\ = \s_tx_buf[7]~2_combout\ $ (\s_tx_buf[0]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[7]~2_combout\,
	datac => \s_tx_buf[0]~29_combout\,
	combout => \s_tx_buf[0]~31_combout\);

-- Location: LCCOMB_X29_Y1_N0
\s_bit_cnt[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \s_bit_cnt[0]~feeder_combout\);

-- Location: FF_X29_Y1_N1
\s_bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[0]~feeder_combout\,
	clrn => \ALT_INV_s_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(0));

-- Location: LCCOMB_X28_Y7_N26
\s_bit_cnt[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[1]~0_combout\ = !s_bit_cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(0),
	combout => \s_bit_cnt[1]~0_combout\);

-- Location: FF_X28_Y7_N27
\s_bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[1]~0_combout\,
	clrn => \ALT_INV_s_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(1));

-- Location: FF_X28_Y7_N7
\s_bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(1),
	clrn => \ALT_INV_s_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(2));

-- Location: LCCOMB_X28_Y7_N4
\s_bit_cnt[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[3]~feeder_combout\ = s_bit_cnt(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(2),
	combout => \s_bit_cnt[3]~feeder_combout\);

-- Location: FF_X28_Y7_N5
\s_bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[3]~feeder_combout\,
	clrn => \ALT_INV_s_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(3));

-- Location: FF_X28_Y7_N17
\s_bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(3),
	clrn => \ALT_INV_s_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(4));

-- Location: LCCOMB_X28_Y7_N6
\process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (!s_bit_cnt(1) & (!s_bit_cnt(3) & (!s_bit_cnt(2) & !s_bit_cnt(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_bit_cnt(1),
	datab => s_bit_cnt(3),
	datac => s_bit_cnt(2),
	datad => s_bit_cnt(4),
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X28_Y7_N12
\s_bit_cnt[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[5]~feeder_combout\ = s_bit_cnt(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(4),
	combout => \s_bit_cnt[5]~feeder_combout\);

-- Location: FF_X28_Y7_N13
\s_bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[5]~feeder_combout\,
	clrn => \ALT_INV_s_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(5));

-- Location: LCCOMB_X28_Y7_N14
\s_bit_cnt[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[6]~feeder_combout\ = s_bit_cnt(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(5),
	combout => \s_bit_cnt[6]~feeder_combout\);

-- Location: FF_X28_Y7_N15
\s_bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[6]~feeder_combout\,
	clrn => \ALT_INV_s_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(6));

-- Location: FF_X28_Y7_N19
\s_bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(6),
	clrn => \ALT_INV_s_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(7));

-- Location: FF_X28_Y7_N1
\s_bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(7),
	clrn => \ALT_INV_s_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(8));

-- Location: LCCOMB_X27_Y4_N8
\s_bit_cnt[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[9]~feeder_combout\ = s_bit_cnt(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(8),
	combout => \s_bit_cnt[9]~feeder_combout\);

-- Location: FF_X27_Y4_N9
\s_bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[9]~feeder_combout\,
	clrn => \ALT_INV_s_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(9));

-- Location: FF_X28_Y7_N21
\s_bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(9),
	clrn => \ALT_INV_s_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(10));

-- Location: FF_X28_Y7_N9
\s_bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(10),
	clrn => \ALT_INV_s_ss_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(11));

-- Location: LCCOMB_X27_Y4_N26
\s_bit_cnt[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[12]~feeder_combout\ = s_bit_cnt(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(11),
	combout => \s_bit_cnt[12]~feeder_combout\);

-- Location: FF_X27_Y4_N27
\s_bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[12]~feeder_combout\,
	clrn => \ALT_INV_s_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(12));

-- Location: LCCOMB_X30_Y4_N16
\s_bit_cnt[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[13]~feeder_combout\ = s_bit_cnt(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(12),
	combout => \s_bit_cnt[13]~feeder_combout\);

-- Location: FF_X30_Y4_N17
\s_bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[13]~feeder_combout\,
	clrn => \ALT_INV_s_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(13));

-- Location: LCCOMB_X27_Y4_N16
\s_bit_cnt[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[14]~feeder_combout\ = s_bit_cnt(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(13),
	combout => \s_bit_cnt[14]~feeder_combout\);

-- Location: FF_X27_Y4_N17
\s_bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[14]~feeder_combout\,
	clrn => \ALT_INV_s_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(14));

-- Location: LCCOMB_X28_Y1_N24
\s_bit_cnt[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[15]~feeder_combout\ = s_bit_cnt(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_bit_cnt(14),
	combout => \s_bit_cnt[15]~feeder_combout\);

-- Location: FF_X28_Y1_N25
\s_bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[15]~feeder_combout\,
	clrn => \ALT_INV_s_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(15));

-- Location: LCCOMB_X28_Y7_N24
\s_bit_cnt[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[16]~feeder_combout\ = s_bit_cnt(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(15),
	combout => \s_bit_cnt[16]~feeder_combout\);

-- Location: FF_X28_Y7_N25
\s_bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[16]~feeder_combout\,
	clrn => \ALT_INV_s_ss_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(16));

-- Location: LCCOMB_X28_Y7_N10
\process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (!s_bit_cnt(5) & (!s_bit_cnt(7) & (!s_bit_cnt(6) & !s_bit_cnt(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_bit_cnt(5),
	datab => s_bit_cnt(7),
	datac => s_bit_cnt(6),
	datad => s_bit_cnt(16),
	combout => \process_1~7_combout\);

-- Location: IOIBUF_X35_Y0_N29
\s_mosi~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_mosi,
	o => \s_mosi~input_o\);

-- Location: LCCOMB_X28_Y8_N18
\s_rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rd_add~0_combout\ = (s_bit_cnt(2) & (\s_mosi~input_o\)) # (!s_bit_cnt(2) & ((\s_rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datac => \s_rd_add~q\,
	datad => s_bit_cnt(2),
	combout => \s_rd_add~0_combout\);

-- Location: FF_X28_Y8_N19
s_rd_add : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rd_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_rd_add~q\);

-- Location: LCCOMB_X28_Y8_N0
\process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (\process_1~6_combout\ & (s_bit_cnt(0) & (\process_1~7_combout\ & !\s_rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~6_combout\,
	datab => s_bit_cnt(0),
	datac => \process_1~7_combout\,
	datad => \s_rd_add~q\,
	combout => \process_1~8_combout\);

-- Location: FF_X26_Y8_N25
\s_tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[0]~31_combout\,
	clrn => \ALT_INV_process_1~9clkctrl_outclk\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[0]~_emulated_q\);

-- Location: LCCOMB_X27_Y4_N2
\s_tx_buf[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[0]~30_combout\ = (\process_1~9_combout\ & (((\s_tx_load_data[0]~input_o\)))) # (!\process_1~9_combout\ & (\s_tx_buf[0]~_emulated_q\ $ (((\s_tx_buf[0]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[0]~_emulated_q\,
	datab => \s_tx_load_data[0]~input_o\,
	datac => \process_1~9_combout\,
	datad => \s_tx_buf[0]~29_combout\,
	combout => \s_tx_buf[0]~30_combout\);

-- Location: LCCOMB_X27_Y4_N30
\s_tx_buf[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[1]~27_combout\ = \s_tx_buf[0]~30_combout\ $ (\s_tx_buf[1]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[0]~30_combout\,
	datad => \s_tx_buf[1]~25_combout\,
	combout => \s_tx_buf[1]~27_combout\);

-- Location: FF_X27_Y4_N31
\s_tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[1]~27_combout\,
	clrn => \ALT_INV_process_1~9clkctrl_outclk\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[1]~_emulated_q\);

-- Location: LCCOMB_X27_Y4_N28
\s_tx_buf[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[1]~26_combout\ = (\process_1~9_combout\ & (\s_tx_load_data[1]~input_o\)) # (!\process_1~9_combout\ & ((\s_tx_buf[1]~25_combout\ $ (\s_tx_buf[1]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[1]~input_o\,
	datab => \process_1~9_combout\,
	datac => \s_tx_buf[1]~25_combout\,
	datad => \s_tx_buf[1]~_emulated_q\,
	combout => \s_tx_buf[1]~26_combout\);

-- Location: LCCOMB_X27_Y4_N6
\s_tx_buf[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[2]~21_combout\ = (GLOBAL(\process_1~9clkctrl_outclk\) & ((\s_tx_load_data[2]~input_o\))) # (!GLOBAL(\process_1~9clkctrl_outclk\) & (\s_tx_buf[2]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[2]~21_combout\,
	datac => \s_tx_load_data[2]~input_o\,
	datad => \process_1~9clkctrl_outclk\,
	combout => \s_tx_buf[2]~21_combout\);

-- Location: LCCOMB_X27_Y4_N18
\s_tx_buf[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[2]~23_combout\ = \s_tx_buf[1]~26_combout\ $ (\s_tx_buf[2]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[1]~26_combout\,
	datad => \s_tx_buf[2]~21_combout\,
	combout => \s_tx_buf[2]~23_combout\);

-- Location: FF_X27_Y4_N19
\s_tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[2]~23_combout\,
	clrn => \ALT_INV_process_1~9clkctrl_outclk\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[2]~_emulated_q\);

-- Location: LCCOMB_X27_Y4_N12
\s_tx_buf[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[2]~22_combout\ = (\process_1~9_combout\ & (\s_tx_load_data[2]~input_o\)) # (!\process_1~9_combout\ & ((\s_tx_buf[2]~_emulated_q\ $ (\s_tx_buf[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[2]~input_o\,
	datab => \s_tx_buf[2]~_emulated_q\,
	datac => \process_1~9_combout\,
	datad => \s_tx_buf[2]~21_combout\,
	combout => \s_tx_buf[2]~22_combout\);

-- Location: LCCOMB_X27_Y4_N0
\s_tx_buf[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[3]~17_combout\ = (GLOBAL(\process_1~9clkctrl_outclk\) & ((\s_tx_load_data[3]~input_o\))) # (!GLOBAL(\process_1~9clkctrl_outclk\) & (\s_tx_buf[3]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tx_buf[3]~17_combout\,
	datac => \s_tx_load_data[3]~input_o\,
	datad => \process_1~9clkctrl_outclk\,
	combout => \s_tx_buf[3]~17_combout\);

-- Location: LCCOMB_X27_Y4_N24
\s_tx_buf[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[3]~19_combout\ = \s_tx_buf[2]~22_combout\ $ (\s_tx_buf[3]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[2]~22_combout\,
	datad => \s_tx_buf[3]~17_combout\,
	combout => \s_tx_buf[3]~19_combout\);

-- Location: FF_X27_Y4_N25
\s_tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[3]~19_combout\,
	clrn => \ALT_INV_process_1~9clkctrl_outclk\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[3]~_emulated_q\);

-- Location: LCCOMB_X26_Y8_N18
\s_tx_buf[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[3]~18_combout\ = (\process_1~9_combout\ & (\s_tx_load_data[3]~input_o\)) # (!\process_1~9_combout\ & ((\s_tx_buf[3]~_emulated_q\ $ (\s_tx_buf[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[3]~input_o\,
	datab => \s_tx_buf[3]~_emulated_q\,
	datac => \process_1~9_combout\,
	datad => \s_tx_buf[3]~17_combout\,
	combout => \s_tx_buf[3]~18_combout\);

-- Location: LCCOMB_X26_Y8_N30
\s_tx_buf[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[4]~15_combout\ = \s_tx_buf[4]~13_combout\ $ (\s_tx_buf[3]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tx_buf[4]~13_combout\,
	datad => \s_tx_buf[3]~18_combout\,
	combout => \s_tx_buf[4]~15_combout\);

-- Location: FF_X26_Y8_N31
\s_tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[4]~15_combout\,
	clrn => \ALT_INV_process_1~9clkctrl_outclk\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[4]~_emulated_q\);

-- Location: LCCOMB_X26_Y8_N0
\s_tx_buf[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[4]~14_combout\ = (\process_1~9_combout\ & (((\s_tx_load_data[4]~input_o\)))) # (!\process_1~9_combout\ & (\s_tx_buf[4]~_emulated_q\ $ (((\s_tx_buf[4]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~9_combout\,
	datab => \s_tx_buf[4]~_emulated_q\,
	datac => \s_tx_load_data[4]~input_o\,
	datad => \s_tx_buf[4]~13_combout\,
	combout => \s_tx_buf[4]~14_combout\);

-- Location: IOIBUF_X41_Y7_N1
\s_tx_load_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(5),
	o => \s_tx_load_data[5]~input_o\);

-- Location: LCCOMB_X26_Y8_N22
\s_tx_buf[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[5]~9_combout\ = (GLOBAL(\process_1~9clkctrl_outclk\) & (\s_tx_load_data[5]~input_o\)) # (!GLOBAL(\process_1~9clkctrl_outclk\) & ((\s_tx_buf[5]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tx_load_data[5]~input_o\,
	datac => \s_tx_buf[5]~9_combout\,
	datad => \process_1~9clkctrl_outclk\,
	combout => \s_tx_buf[5]~9_combout\);

-- Location: LCCOMB_X26_Y8_N26
\s_tx_buf[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[5]~11_combout\ = \s_tx_buf[4]~14_combout\ $ (\s_tx_buf[5]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tx_buf[4]~14_combout\,
	datac => \s_tx_buf[5]~9_combout\,
	combout => \s_tx_buf[5]~11_combout\);

-- Location: FF_X26_Y8_N27
\s_tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[5]~11_combout\,
	clrn => \ALT_INV_process_1~9clkctrl_outclk\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[5]~_emulated_q\);

-- Location: LCCOMB_X26_Y8_N8
\s_tx_buf[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[5]~10_combout\ = (\process_1~9_combout\ & (((\s_tx_load_data[5]~input_o\)))) # (!\process_1~9_combout\ & (\s_tx_buf[5]~_emulated_q\ $ (((\s_tx_buf[5]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[5]~_emulated_q\,
	datab => \s_tx_load_data[5]~input_o\,
	datac => \s_tx_buf[5]~9_combout\,
	datad => \process_1~9_combout\,
	combout => \s_tx_buf[5]~10_combout\);

-- Location: LCCOMB_X26_Y8_N6
\s_tx_buf[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[6]~7_combout\ = \s_tx_buf[6]~5_combout\ $ (\s_tx_buf[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[6]~5_combout\,
	datad => \s_tx_buf[5]~10_combout\,
	combout => \s_tx_buf[6]~7_combout\);

-- Location: FF_X26_Y8_N7
\s_tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[6]~7_combout\,
	clrn => \ALT_INV_process_1~9clkctrl_outclk\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[6]~_emulated_q\);

-- Location: LCCOMB_X26_Y8_N28
\s_tx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[6]~6_combout\ = (\process_1~9_combout\ & (\s_tx_load_data[6]~input_o\)) # (!\process_1~9_combout\ & ((\s_tx_buf[6]~_emulated_q\ $ (\s_tx_buf[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[6]~input_o\,
	datab => \s_tx_buf[6]~_emulated_q\,
	datac => \s_tx_buf[6]~5_combout\,
	datad => \process_1~9_combout\,
	combout => \s_tx_buf[6]~6_combout\);

-- Location: LCCOMB_X26_Y8_N10
\s_tx_buf[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[7]~3_combout\ = \s_tx_buf[7]~1_combout\ $ (\s_tx_buf[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[7]~1_combout\,
	datad => \s_tx_buf[6]~6_combout\,
	combout => \s_tx_buf[7]~3_combout\);

-- Location: FF_X26_Y8_N11
\s_tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[7]~3_combout\,
	clrn => \ALT_INV_process_1~9clkctrl_outclk\,
	ena => \process_1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[7]~_emulated_q\);

-- Location: LCCOMB_X26_Y8_N12
\s_tx_buf[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[7]~2_combout\ = (\process_1~9_combout\ & (((\s_tx_load_data[7]~input_o\)))) # (!\process_1~9_combout\ & (\s_tx_buf[7]~_emulated_q\ $ (((\s_tx_buf[7]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[7]~_emulated_q\,
	datab => \s_tx_load_data[7]~input_o\,
	datac => \s_tx_buf[7]~1_combout\,
	datad => \process_1~9_combout\,
	combout => \s_tx_buf[7]~2_combout\);

-- Location: IOIBUF_X41_Y8_N1
\s_st_load_s_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_st_load_s_trdy,
	o => \s_st_load_s_trdy~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\s_st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_st_load_en,
	o => \s_st_load_en~input_o\);

-- Location: LCCOMB_X27_Y8_N30
\s_trdy~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_trdy~8_combout\ = (\s_ss_n~input_o\ & ((\s_st_load_en~input_o\ & ((\s_st_load_s_trdy~input_o\))) # (!\s_st_load_en~input_o\ & (\s_tx_load_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_en~input_o\,
	datab => \s_st_load_s_trdy~input_o\,
	datac => \s_st_load_en~input_o\,
	datad => \s_ss_n~input_o\,
	combout => \s_trdy~8_combout\);

-- Location: LCCOMB_X27_Y8_N12
\process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (\s_st_load_en~input_o\ & \s_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_st_load_en~input_o\,
	datad => \s_ss_n~input_o\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X27_Y8_N20
\process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (!\s_st_load_s_trdy~input_o\ & \process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_st_load_s_trdy~input_o\,
	datad => \process_1~3_combout\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X26_Y7_N24
\s_trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_trdy~1_combout\ = (!\process_1~2_combout\ & ((\s_trdy~8_combout\) # (\s_trdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_trdy~8_combout\,
	datab => \process_1~2_combout\,
	datad => \s_trdy~1_combout\,
	combout => \s_trdy~1_combout\);

-- Location: LCCOMB_X28_Y7_N30
\s_wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_wr_add~0_combout\ = (s_bit_cnt(1) & ((\s_mosi~input_o\))) # (!s_bit_cnt(1) & (\s_wr_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_bit_cnt(1),
	datac => \s_wr_add~q\,
	datad => \s_mosi~input_o\,
	combout => \s_wr_add~0_combout\);

-- Location: FF_X28_Y7_N31
s_wr_add : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_wr_add~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_wr_add~q\);

-- Location: LCCOMB_X27_Y4_N22
\process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (s_bit_cnt(9) & \s_wr_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_bit_cnt(9),
	datad => \s_wr_add~q\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X27_Y8_N6
\s_trdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_trdy~7_combout\ = (!\process_1~1_combout\ & (\s_trdy~2_combout\ & ((\s_rd_add~q\) # (!s_bit_cnt(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_rd_add~q\,
	datab => s_bit_cnt(16),
	datac => \process_1~1_combout\,
	datad => \s_trdy~2_combout\,
	combout => \s_trdy~7_combout\);

-- Location: LCCOMB_X27_Y8_N14
\s_trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_trdy~3_combout\ = \s_trdy~1_combout\ $ (((\s_trdy~7_combout\) # ((\s_mosi~input_o\ & \process_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_trdy~1_combout\,
	datab => \s_mosi~input_o\,
	datac => \process_1~1_combout\,
	datad => \s_trdy~7_combout\,
	combout => \s_trdy~3_combout\);

-- Location: LCCOMB_X27_Y8_N24
\s_trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_trdy~0_combout\ = (\s_trdy~8_combout\) # (\process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_trdy~8_combout\,
	datad => \process_1~2_combout\,
	combout => \s_trdy~0_combout\);

-- Location: FF_X27_Y8_N15
\s_trdy~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_trdy~3_combout\,
	clrn => \ALT_INV_s_trdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_trdy~reg0_emulated_q\);

-- Location: LCCOMB_X27_Y8_N18
\s_trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_trdy~2_combout\ = (!\process_1~2_combout\ & ((\s_trdy~8_combout\) # (\s_trdy~1_combout\ $ (\s_trdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_trdy~1_combout\,
	datab => \s_trdy~reg0_emulated_q\,
	datac => \s_trdy~8_combout\,
	datad => \process_1~2_combout\,
	combout => \s_trdy~2_combout\);

-- Location: IOIBUF_X28_Y0_N15
\s_rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_rx_req,
	o => \s_rx_req~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\s_st_load_s_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_st_load_s_rrdy,
	o => \s_st_load_s_rrdy~input_o\);

-- Location: LCCOMB_X27_Y8_N22
\process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\s_ss_n~input_o\ & ((\s_rx_req~input_o\) # ((!\s_st_load_s_rrdy~input_o\ & \s_st_load_en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_rx_req~input_o\,
	datab => \s_st_load_s_rrdy~input_o\,
	datac => \s_st_load_en~input_o\,
	datad => \s_ss_n~input_o\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X28_Y8_N6
\s_rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rrdy~1_combout\ = (!\process_1~4_combout\ & ((\process_1~3_combout\) # (\s_rrdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~3_combout\,
	datab => \process_1~4_combout\,
	datad => \s_rrdy~1_combout\,
	combout => \s_rrdy~1_combout\);

-- Location: LCCOMB_X28_Y7_N22
\s_rrdy~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rrdy~10_combout\ = (\s_mosi~input_o\) # ((!s_bit_cnt(10)) # (!\s_wr_add~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datab => \s_wr_add~q\,
	datad => s_bit_cnt(10),
	combout => \s_rrdy~10_combout\);

-- Location: LCCOMB_X28_Y7_N2
\s_rrdy~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rrdy~9_combout\ = (\s_wr_add~q\ & (((!s_bit_cnt(10))) # (!\s_mosi~input_o\))) # (!\s_wr_add~q\ & (((!s_bit_cnt(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datab => s_bit_cnt(10),
	datac => \s_wr_add~q\,
	datad => s_bit_cnt(16),
	combout => \s_rrdy~9_combout\);

-- Location: LCCOMB_X28_Y8_N20
\s_rrdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rrdy~3_combout\ = \s_rrdy~1_combout\ $ (((\s_rrdy~2_combout\ & (\s_rrdy~10_combout\)) # (!\s_rrdy~2_combout\ & ((!\s_rrdy~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_rrdy~1_combout\,
	datab => \s_rrdy~2_combout\,
	datac => \s_rrdy~10_combout\,
	datad => \s_rrdy~9_combout\,
	combout => \s_rrdy~3_combout\);

-- Location: LCCOMB_X28_Y8_N8
\s_rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rrdy~0_combout\ = (\process_1~4_combout\) # (\process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~4_combout\,
	datad => \process_1~3_combout\,
	combout => \s_rrdy~0_combout\);

-- Location: FF_X28_Y8_N21
\s_rrdy~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rrdy~3_combout\,
	clrn => \ALT_INV_s_rrdy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_rrdy~reg0_emulated_q\);

-- Location: LCCOMB_X27_Y8_N28
\s_rrdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rrdy~2_combout\ = (!\process_1~4_combout\ & ((\process_1~3_combout\) # (\s_rrdy~reg0_emulated_q\ $ (\s_rrdy~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_rrdy~reg0_emulated_q\,
	datab => \s_rrdy~1_combout\,
	datac => \process_1~4_combout\,
	datad => \process_1~3_combout\,
	combout => \s_rrdy~2_combout\);

-- Location: IOIBUF_X41_Y7_N8
\s_st_load_s_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_st_load_s_roe,
	o => \s_st_load_s_roe~input_o\);

-- Location: LCCOMB_X27_Y8_N0
\s_roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_roe~1_combout\ = (\process_1~3_combout\ & (\s_st_load_s_roe~input_o\)) # (!\process_1~3_combout\ & ((\s_roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_st_load_s_roe~input_o\,
	datac => \s_roe~1_combout\,
	datad => \process_1~3_combout\,
	combout => \s_roe~1_combout\);

-- Location: LCCOMB_X28_Y7_N8
\s_roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_roe~6_combout\ = (\s_wr_add~q\ & (s_bit_cnt(11) & \s_mosi~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_wr_add~q\,
	datac => s_bit_cnt(11),
	datad => \s_mosi~input_o\,
	combout => \s_roe~6_combout\);

-- Location: LCCOMB_X27_Y8_N4
\process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (s_bit_cnt(16) & (!\s_wr_add~q\ & \s_rrdy~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_bit_cnt(16),
	datac => \s_wr_add~q\,
	datad => \s_rrdy~2_combout\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X27_Y8_N10
\s_roe~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_roe~5_combout\ = (\s_roe~2_combout\ & ((!s_bit_cnt(11)) # (!\s_wr_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_wr_add~q\,
	datac => s_bit_cnt(11),
	datad => \s_roe~2_combout\,
	combout => \s_roe~5_combout\);

-- Location: LCCOMB_X27_Y8_N8
\s_roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_roe~3_combout\ = \s_roe~1_combout\ $ (((\s_roe~6_combout\) # ((\process_1~5_combout\) # (\s_roe~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_roe~1_combout\,
	datab => \s_roe~6_combout\,
	datac => \process_1~5_combout\,
	datad => \s_roe~5_combout\,
	combout => \s_roe~3_combout\);

-- Location: FF_X27_Y8_N9
\s_roe~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_roe~3_combout\,
	clrn => \ALT_INV_process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_roe~reg0_emulated_q\);

-- Location: LCCOMB_X27_Y8_N2
\s_roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_roe~2_combout\ = (\process_1~3_combout\ & (\s_st_load_s_roe~input_o\)) # (!\process_1~3_combout\ & ((\s_roe~1_combout\ $ (\s_roe~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_st_load_s_roe~input_o\,
	datab => \s_roe~1_combout\,
	datac => \s_roe~reg0_emulated_q\,
	datad => \process_1~3_combout\,
	combout => \s_roe~2_combout\);

-- Location: LCCOMB_X27_Y8_N16
\s_miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~1_combout\ = (s_bit_cnt(9) & (\s_rrdy~2_combout\)) # (!s_bit_cnt(9) & ((\s_roe~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_bit_cnt(9),
	datab => \s_rrdy~2_combout\,
	datad => \s_roe~2_combout\,
	combout => \s_miso~1_combout\);

-- Location: LCCOMB_X27_Y8_N26
\s_miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~2_combout\ = (s_bit_cnt(8) & (\s_trdy~2_combout\)) # (!s_bit_cnt(8) & ((\s_miso~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_trdy~2_combout\,
	datac => s_bit_cnt(8),
	datad => \s_miso~1_combout\,
	combout => \s_miso~2_combout\);

-- Location: LCCOMB_X26_Y8_N16
\s_miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~3_combout\ = (\s_rd_add~q\ & ((\s_miso~2_combout\))) # (!\s_rd_add~q\ & (\s_tx_buf[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[7]~2_combout\,
	datab => \s_rd_add~q\,
	datad => \s_miso~2_combout\,
	combout => \s_miso~3_combout\);

-- Location: LCCOMB_X28_Y7_N28
\s_miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~4_combout\ = (s_bit_cnt(8) & (!s_bit_cnt(9) & !s_bit_cnt(10))) # (!s_bit_cnt(8) & (s_bit_cnt(9) $ (s_bit_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_bit_cnt(8),
	datac => s_bit_cnt(9),
	datad => s_bit_cnt(10),
	combout => \s_miso~4_combout\);

-- Location: LCCOMB_X28_Y7_N0
\s_miso~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~5_combout\ = (\process_1~7_combout\ & s_bit_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~7_combout\,
	datad => s_bit_cnt(0),
	combout => \s_miso~5_combout\);

-- Location: LCCOMB_X28_Y8_N22
\s_miso~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~6_combout\ = (\s_rd_add~q\ & (((\s_miso~4_combout\)))) # (!\s_rd_add~q\ & (\process_1~6_combout\ & ((\s_miso~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~6_combout\,
	datab => \s_rd_add~q\,
	datac => \s_miso~4_combout\,
	datad => \s_miso~5_combout\,
	combout => \s_miso~6_combout\);

-- Location: FF_X26_Y8_N17
\s_miso~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_miso~3_combout\,
	ena => \s_miso~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_miso~reg0_q\);

-- Location: LCCOMB_X29_Y8_N0
\s_miso~enfeeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \s_miso~enfeeder_combout\);

-- Location: FF_X29_Y8_N1
\s_miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_miso~enfeeder_combout\,
	clrn => \ALT_INV_s_ss_n~input_o\,
	ena => \s_miso~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_miso~en_q\);

-- Location: IOIBUF_X41_Y15_N8
\m_clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clock,
	o => \m_clock~input_o\);

-- Location: CLKCTRL_G7
\m_clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \m_clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \m_clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X32_Y0_N22
\m_cont~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_cont,
	o => \m_cont~input_o\);

-- Location: LCCOMB_X28_Y1_N10
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = m_clk_toggles(0) $ (VCC)
-- \Add1~1\ = CARRY(m_clk_toggles(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_toggles(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X41_Y2_N22
\m_cpha~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_cpha,
	o => \m_cpha~input_o\);

-- Location: LCCOMB_X28_Y2_N4
\m_last_bit_rx[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_last_bit_rx[0]~0_combout\ = !\m_cpha~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_cpha~input_o\,
	combout => \m_last_bit_rx[0]~0_combout\);

-- Location: LCCOMB_X28_Y3_N16
\m_slave[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_slave[0]~0_combout\ = (!\m_state~q\ & !\s_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_state~q\,
	datad => \s_ss_n~input_o\,
	combout => \m_slave[0]~0_combout\);

-- Location: FF_X28_Y2_N5
\m_last_bit_rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_last_bit_rx[0]~0_combout\,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_last_bit_rx(0));

-- Location: FF_X28_Y2_N9
\m_last_bit_rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_cpha~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_last_bit_rx(4));

-- Location: LCCOMB_X28_Y2_N20
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = m_last_bit_rx(0) $ (m_last_bit_rx(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m_last_bit_rx(0),
	datac => m_last_bit_rx(4),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X28_Y1_N14
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (m_clk_toggles(2) & (\Add1~3\ $ (GND))) # (!m_clk_toggles(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((m_clk_toggles(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_clk_toggles(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X28_Y1_N16
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (m_clk_toggles(3) & (!\Add1~5\)) # (!m_clk_toggles(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!m_clk_toggles(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_clk_toggles(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X28_Y1_N2
\m_clk_toggles~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_toggles~5_combout\ = (\m_clk_toggles[3]~4_combout\ & (\Add1~6_combout\ & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_toggles[3]~4_combout\,
	datab => \Add1~6_combout\,
	datad => \Equal4~1_combout\,
	combout => \m_clk_toggles~5_combout\);

-- Location: IOIBUF_X16_Y0_N29
\m_clk_div[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(15),
	o => \m_clk_div[15]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\m_clk_div[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(14),
	o => \m_clk_div[14]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\m_clk_div[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(13),
	o => \m_clk_div[13]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\m_clk_div[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(12),
	o => \m_clk_div[12]~input_o\);

-- Location: IOIBUF_X21_Y0_N29
\m_clk_div[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(11),
	o => \m_clk_div[11]~input_o\);

-- Location: IOIBUF_X41_Y3_N1
\m_clk_div[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(10),
	o => \m_clk_div[10]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\m_clk_div[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(9),
	o => \m_clk_div[9]~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\m_clk_div[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(8),
	o => \m_clk_div[8]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\m_clk_div[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(7),
	o => \m_clk_div[7]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\m_clk_div[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(6),
	o => \m_clk_div[6]~input_o\);

-- Location: IOIBUF_X41_Y15_N15
\m_clk_div[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(5),
	o => \m_clk_div[5]~input_o\);

-- Location: IOIBUF_X41_Y15_N22
\m_clk_div[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(4),
	o => \m_clk_div[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\m_clk_div[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(3),
	o => \m_clk_div[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\m_clk_div[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(2),
	o => \m_clk_div[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\m_clk_div[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(1),
	o => \m_clk_div[1]~input_o\);

-- Location: LCCOMB_X26_Y3_N0
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = m_count(0) $ (GND)
-- \Add5~1\ = CARRY(!m_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: IOIBUF_X19_Y0_N22
\m_clk_div[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(16),
	o => \m_clk_div[16]~input_o\);

-- Location: LCCOMB_X24_Y3_N24
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\m_clk_div[14]~input_o\ & (!\m_clk_div[16]~input_o\ & (!\m_clk_div[15]~input_o\ & !\m_clk_div[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[14]~input_o\,
	datab => \m_clk_div[16]~input_o\,
	datac => \m_clk_div[15]~input_o\,
	datad => \m_clk_div[13]~input_o\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X24_Y3_N18
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\m_clk_div[12]~input_o\ & (!\m_clk_div[10]~input_o\ & (!\m_clk_div[9]~input_o\ & !\m_clk_div[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[12]~input_o\,
	datab => \m_clk_div[10]~input_o\,
	datac => \m_clk_div[9]~input_o\,
	datad => \m_clk_div[11]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X27_Y1_N30
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\m_clk_div[5]~input_o\ & (!\m_clk_div[6]~input_o\ & (!\m_clk_div[7]~input_o\ & !\m_clk_div[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[5]~input_o\,
	datab => \m_clk_div[6]~input_o\,
	datac => \m_clk_div[7]~input_o\,
	datad => \m_clk_div[8]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X27_Y1_N28
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\m_clk_div[4]~input_o\ & (!\m_clk_div[1]~input_o\ & (!\m_clk_div[2]~input_o\ & !\m_clk_div[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[4]~input_o\,
	datab => \m_clk_div[1]~input_o\,
	datac => \m_clk_div[2]~input_o\,
	datad => \m_clk_div[3]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X27_Y1_N16
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~2_combout\ & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: IOIBUF_X37_Y0_N1
\m_clk_div[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(22),
	o => \m_clk_div[22]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\m_clk_div[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(24),
	o => \m_clk_div[24]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\m_clk_div[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(23),
	o => \m_clk_div[23]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\m_clk_div[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(21),
	o => \m_clk_div[21]~input_o\);

-- Location: LCCOMB_X27_Y3_N14
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!\m_clk_div[22]~input_o\ & (!\m_clk_div[24]~input_o\ & (!\m_clk_div[23]~input_o\ & !\m_clk_div[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[22]~input_o\,
	datab => \m_clk_div[24]~input_o\,
	datac => \m_clk_div[23]~input_o\,
	datad => \m_clk_div[21]~input_o\,
	combout => \Equal1~6_combout\);

-- Location: IOIBUF_X28_Y0_N22
\m_clk_div[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(19),
	o => \m_clk_div[19]~input_o\);

-- Location: IOIBUF_X41_Y3_N8
\m_clk_div[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(20),
	o => \m_clk_div[20]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\m_clk_div[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(18),
	o => \m_clk_div[18]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\m_clk_div[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(17),
	o => \m_clk_div[17]~input_o\);

-- Location: LCCOMB_X28_Y3_N30
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!\m_clk_div[19]~input_o\ & (!\m_clk_div[20]~input_o\ & (!\m_clk_div[18]~input_o\ & !\m_clk_div[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[19]~input_o\,
	datab => \m_clk_div[20]~input_o\,
	datac => \m_clk_div[18]~input_o\,
	datad => \m_clk_div[17]~input_o\,
	combout => \Equal1~5_combout\);

-- Location: IOIBUF_X35_Y0_N15
\m_clk_div[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(29),
	o => \m_clk_div[29]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\m_clk_div[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(28),
	o => \m_clk_div[28]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\m_clk_div[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(27),
	o => \m_clk_div[27]~input_o\);

-- Location: IOIBUF_X41_Y3_N22
\m_clk_div[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(25),
	o => \m_clk_div[25]~input_o\);

-- Location: IOIBUF_X39_Y0_N8
\m_clk_div[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(26),
	o => \m_clk_div[26]~input_o\);

-- Location: LCCOMB_X28_Y2_N10
\Equal1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!\m_clk_div[28]~input_o\ & (!\m_clk_div[27]~input_o\ & (!\m_clk_div[25]~input_o\ & !\m_clk_div[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[28]~input_o\,
	datab => \m_clk_div[27]~input_o\,
	datac => \m_clk_div[25]~input_o\,
	datad => \m_clk_div[26]~input_o\,
	combout => \Equal1~7_combout\);

-- Location: IOIBUF_X37_Y0_N8
\m_clk_div[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(30),
	o => \m_clk_div[30]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\m_clk_div[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(31),
	o => \m_clk_div[31]~input_o\);

-- Location: LCCOMB_X28_Y2_N28
\Equal1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!\m_clk_div[29]~input_o\ & (\Equal1~7_combout\ & (!\m_clk_div[30]~input_o\ & !\m_clk_div[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[29]~input_o\,
	datab => \Equal1~7_combout\,
	datac => \m_clk_div[30]~input_o\,
	datad => \m_clk_div[31]~input_o\,
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X28_Y2_N6
\Equal1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~4_combout\ & (\Equal1~6_combout\ & (\Equal1~5_combout\ & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~6_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

-- Location: IOIBUF_X41_Y2_N8
\m_clk_div[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_clk_div(0),
	o => \m_clk_div[0]~input_o\);

-- Location: LCCOMB_X28_Y2_N8
\m_clk_ratio~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_ratio~0_combout\ = (!\Equal1~9_combout\ & !\m_clk_div[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~9_combout\,
	datad => \m_clk_div[0]~input_o\,
	combout => \m_clk_ratio~0_combout\);

-- Location: LCCOMB_X28_Y3_N24
\m_count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~4_combout\ = (\m_state~q\ & (!\Equal2~20_combout\ & (!\Add5~0_combout\))) # (!\m_state~q\ & (((\m_clk_ratio~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~20_combout\,
	datab => \Add5~0_combout\,
	datac => \m_clk_ratio~0_combout\,
	datad => \m_state~q\,
	combout => \m_count~4_combout\);

-- Location: LCCOMB_X27_Y2_N0
\m_count[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count[0]~2_combout\ = (\m_state~q\) # (!\s_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datad => \s_ss_n~input_o\,
	combout => \m_count[0]~2_combout\);

-- Location: FF_X28_Y3_N25
\m_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~4_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(0));

-- Location: LCCOMB_X26_Y3_N2
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (m_count(1) & (!\Add5~1\)) # (!m_count(1) & ((\Add5~1\) # (GND)))
-- \Add5~3\ = CARRY((!\Add5~1\) # (!m_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_count(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X28_Y3_N28
\m_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~3_combout\ = (\m_state~q\ & (!\Equal2~20_combout\ & ((\Add5~2_combout\)))) # (!\m_state~q\ & (((\m_clk_div[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~20_combout\,
	datab => \m_clk_div[1]~input_o\,
	datac => \m_state~q\,
	datad => \Add5~2_combout\,
	combout => \m_count~3_combout\);

-- Location: FF_X26_Y3_N31
\m_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_count~3_combout\,
	sload => VCC,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(1));

-- Location: LCCOMB_X26_Y3_N4
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (m_count(2) & (\Add5~3\ $ (GND))) # (!m_count(2) & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((m_count(2) & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X27_Y1_N22
\m_count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~6_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~4_combout\)))) # (!\m_state~q\ & (\m_clk_div[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[2]~input_o\,
	datab => \Equal2~20_combout\,
	datac => \Add5~4_combout\,
	datad => \m_state~q\,
	combout => \m_count~6_combout\);

-- Location: FF_X27_Y1_N23
\m_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~6_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(2));

-- Location: LCCOMB_X26_Y3_N6
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (m_count(3) & (!\Add5~5\)) # (!m_count(3) & ((\Add5~5\) # (GND)))
-- \Add5~7\ = CARRY((!\Add5~5\) # (!m_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X27_Y1_N0
\m_count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~5_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~6_combout\)))) # (!\m_state~q\ & (\m_clk_div[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[3]~input_o\,
	datab => \m_state~q\,
	datac => \Equal2~20_combout\,
	datad => \Add5~6_combout\,
	combout => \m_count~5_combout\);

-- Location: FF_X27_Y1_N1
\m_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~5_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(3));

-- Location: LCCOMB_X26_Y3_N8
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (m_count(4) & (\Add5~7\ $ (GND))) # (!m_count(4) & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((m_count(4) & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X27_Y1_N18
\m_count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~8_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~8_combout\)))) # (!\m_state~q\ & (\m_clk_div[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[4]~input_o\,
	datab => \m_state~q\,
	datac => \Equal2~20_combout\,
	datad => \Add5~8_combout\,
	combout => \m_count~8_combout\);

-- Location: FF_X27_Y1_N19
\m_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~8_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(4));

-- Location: LCCOMB_X26_Y3_N10
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (m_count(5) & (!\Add5~9\)) # (!m_count(5) & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!m_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(5),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X27_Y1_N8
\m_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~7_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~10_combout\)))) # (!\m_state~q\ & (\m_clk_div[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[5]~input_o\,
	datab => \m_state~q\,
	datac => \Equal2~20_combout\,
	datad => \Add5~10_combout\,
	combout => \m_count~7_combout\);

-- Location: FF_X27_Y1_N9
\m_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~7_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(5));

-- Location: LCCOMB_X26_Y3_N12
\Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (m_count(6) & (\Add5~11\ $ (GND))) # (!m_count(6) & (!\Add5~11\ & VCC))
-- \Add5~13\ = CARRY((m_count(6) & !\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(6),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X28_Y3_N20
\m_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~10_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~12_combout\)))) # (!\m_state~q\ & (\m_clk_div[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[6]~input_o\,
	datab => \m_state~q\,
	datac => \Equal2~20_combout\,
	datad => \Add5~12_combout\,
	combout => \m_count~10_combout\);

-- Location: FF_X28_Y3_N21
\m_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~10_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(6));

-- Location: LCCOMB_X26_Y3_N14
\Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (m_count(7) & (!\Add5~13\)) # (!m_count(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!m_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_count(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X28_Y3_N14
\m_count~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~9_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~14_combout\)))) # (!\m_state~q\ & (\m_clk_div[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[7]~input_o\,
	datab => \m_state~q\,
	datac => \Equal2~20_combout\,
	datad => \Add5~14_combout\,
	combout => \m_count~9_combout\);

-- Location: FF_X28_Y3_N15
\m_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~9_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(7));

-- Location: LCCOMB_X26_Y3_N16
\Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (m_count(8) & (\Add5~15\ $ (GND))) # (!m_count(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((m_count(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X24_Y3_N22
\m_count~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~12_combout\ = (\m_state~q\ & (((\Add5~16_combout\ & !\Equal2~20_combout\)))) # (!\m_state~q\ & (\m_clk_div[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[8]~input_o\,
	datac => \Add5~16_combout\,
	datad => \Equal2~20_combout\,
	combout => \m_count~12_combout\);

-- Location: FF_X24_Y3_N23
\m_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~12_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(8));

-- Location: LCCOMB_X26_Y3_N18
\Add5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (m_count(9) & (!\Add5~17\)) # (!m_count(9) & ((\Add5~17\) # (GND)))
-- \Add5~19\ = CARRY((!\Add5~17\) # (!m_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(9),
	datad => VCC,
	cin => \Add5~17\,
	combout => \Add5~18_combout\,
	cout => \Add5~19\);

-- Location: LCCOMB_X24_Y3_N28
\m_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~11_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~18_combout\)))) # (!\m_state~q\ & (\m_clk_div[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[9]~input_o\,
	datac => \Equal2~20_combout\,
	datad => \Add5~18_combout\,
	combout => \m_count~11_combout\);

-- Location: FF_X24_Y3_N29
\m_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~11_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(9));

-- Location: LCCOMB_X26_Y3_N20
\Add5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (m_count(10) & (\Add5~19\ $ (GND))) # (!m_count(10) & (!\Add5~19\ & VCC))
-- \Add5~21\ = CARRY((m_count(10) & !\Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(10),
	datad => VCC,
	cin => \Add5~19\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X24_Y3_N8
\m_count~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~14_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~20_combout\)))) # (!\m_state~q\ & (\m_clk_div[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[10]~input_o\,
	datac => \Equal2~20_combout\,
	datad => \Add5~20_combout\,
	combout => \m_count~14_combout\);

-- Location: FF_X24_Y3_N9
\m_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~14_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(10));

-- Location: LCCOMB_X26_Y3_N22
\Add5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (m_count(11) & (!\Add5~21\)) # (!m_count(11) & ((\Add5~21\) # (GND)))
-- \Add5~23\ = CARRY((!\Add5~21\) # (!m_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(11),
	datad => VCC,
	cin => \Add5~21\,
	combout => \Add5~22_combout\,
	cout => \Add5~23\);

-- Location: LCCOMB_X24_Y3_N2
\m_count~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~13_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~22_combout\)))) # (!\m_state~q\ & (\m_clk_div[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[11]~input_o\,
	datac => \Equal2~20_combout\,
	datad => \Add5~22_combout\,
	combout => \m_count~13_combout\);

-- Location: FF_X24_Y3_N3
\m_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~13_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(11));

-- Location: LCCOMB_X26_Y3_N24
\Add5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~24_combout\ = (m_count(12) & (\Add5~23\ $ (GND))) # (!m_count(12) & (!\Add5~23\ & VCC))
-- \Add5~25\ = CARRY((m_count(12) & !\Add5~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_count(12),
	datad => VCC,
	cin => \Add5~23\,
	combout => \Add5~24_combout\,
	cout => \Add5~25\);

-- Location: LCCOMB_X24_Y3_N4
\m_count~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~16_combout\ = (\m_state~q\ & (((\Add5~24_combout\ & !\Equal2~20_combout\)))) # (!\m_state~q\ & (\m_clk_div[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[12]~input_o\,
	datac => \Add5~24_combout\,
	datad => \Equal2~20_combout\,
	combout => \m_count~16_combout\);

-- Location: FF_X24_Y3_N5
\m_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~16_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(12));

-- Location: LCCOMB_X26_Y3_N26
\Add5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (m_count(13) & (!\Add5~25\)) # (!m_count(13) & ((\Add5~25\) # (GND)))
-- \Add5~27\ = CARRY((!\Add5~25\) # (!m_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_count(13),
	datad => VCC,
	cin => \Add5~25\,
	combout => \Add5~26_combout\,
	cout => \Add5~27\);

-- Location: LCCOMB_X24_Y3_N10
\m_count~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~15_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~26_combout\)))) # (!\m_state~q\ & (\m_clk_div[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[13]~input_o\,
	datac => \Equal2~20_combout\,
	datad => \Add5~26_combout\,
	combout => \m_count~15_combout\);

-- Location: FF_X24_Y3_N11
\m_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~15_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(13));

-- Location: LCCOMB_X26_Y3_N28
\Add5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~28_combout\ = (m_count(14) & (\Add5~27\ $ (GND))) # (!m_count(14) & (!\Add5~27\ & VCC))
-- \Add5~29\ = CARRY((m_count(14) & !\Add5~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(14),
	datad => VCC,
	cin => \Add5~27\,
	combout => \Add5~28_combout\,
	cout => \Add5~29\);

-- Location: LCCOMB_X24_Y3_N0
\m_count~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~18_combout\ = (\m_state~q\ & (!\Equal2~20_combout\ & ((\Add5~28_combout\)))) # (!\m_state~q\ & (((\m_clk_div[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \Equal2~20_combout\,
	datac => \m_clk_div[14]~input_o\,
	datad => \Add5~28_combout\,
	combout => \m_count~18_combout\);

-- Location: FF_X24_Y3_N1
\m_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~18_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(14));

-- Location: LCCOMB_X26_Y3_N30
\Add5~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~30_combout\ = (m_count(15) & (!\Add5~29\)) # (!m_count(15) & ((\Add5~29\) # (GND)))
-- \Add5~31\ = CARRY((!\Add5~29\) # (!m_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(15),
	datad => VCC,
	cin => \Add5~29\,
	combout => \Add5~30_combout\,
	cout => \Add5~31\);

-- Location: LCCOMB_X24_Y3_N6
\m_count~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~17_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~30_combout\)))) # (!\m_state~q\ & (\m_clk_div[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[15]~input_o\,
	datac => \Equal2~20_combout\,
	datad => \Add5~30_combout\,
	combout => \m_count~17_combout\);

-- Location: FF_X24_Y3_N7
\m_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~17_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(15));

-- Location: FF_X24_Y3_N25
\m_clk_ratio[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[15]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(15));

-- Location: FF_X24_Y3_N31
\m_clk_ratio[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[14]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(14));

-- Location: LCCOMB_X24_Y3_N30
\Equal2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (m_count(15) & (m_clk_ratio(15) & (m_clk_ratio(14) $ (!m_count(14))))) # (!m_count(15) & (!m_clk_ratio(15) & (m_clk_ratio(14) $ (!m_count(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(15),
	datab => m_clk_ratio(15),
	datac => m_clk_ratio(14),
	datad => m_count(14),
	combout => \Equal2~8_combout\);

-- Location: FF_X24_Y3_N19
\m_clk_ratio[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[9]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(9));

-- Location: FF_X24_Y3_N17
\m_clk_ratio[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[8]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(8));

-- Location: LCCOMB_X24_Y3_N16
\Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (m_count(8) & (m_clk_ratio(8) & (m_clk_ratio(9) $ (!m_count(9))))) # (!m_count(8) & (!m_clk_ratio(8) & (m_clk_ratio(9) $ (!m_count(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(8),
	datab => m_clk_ratio(9),
	datac => m_clk_ratio(8),
	datad => m_count(9),
	combout => \Equal2~5_combout\);

-- Location: FF_X24_Y3_N15
\m_clk_ratio[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[12]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(12));

-- Location: LCCOMB_X24_Y3_N20
\m_clk_ratio[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_ratio[13]~feeder_combout\ = \m_clk_div[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m_clk_div[13]~input_o\,
	combout => \m_clk_ratio[13]~feeder_combout\);

-- Location: FF_X24_Y3_N21
\m_clk_ratio[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_clk_ratio[13]~feeder_combout\,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(13));

-- Location: LCCOMB_X24_Y3_N14
\Equal2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (m_count(13) & (m_clk_ratio(13) & (m_count(12) $ (!m_clk_ratio(12))))) # (!m_count(13) & (!m_clk_ratio(13) & (m_count(12) $ (!m_clk_ratio(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(13),
	datab => m_count(12),
	datac => m_clk_ratio(12),
	datad => m_clk_ratio(13),
	combout => \Equal2~7_combout\);

-- Location: FF_X24_Y3_N13
\m_clk_ratio[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[10]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(10));

-- Location: FF_X28_Y3_N23
\m_clk_ratio[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[11]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(11));

-- Location: LCCOMB_X24_Y3_N12
\Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (m_count(10) & (m_clk_ratio(10) & (m_count(11) $ (!m_clk_ratio(11))))) # (!m_count(10) & (!m_clk_ratio(10) & (m_count(11) $ (!m_clk_ratio(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(10),
	datab => m_count(11),
	datac => m_clk_ratio(10),
	datad => m_clk_ratio(11),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X24_Y3_N26
\Equal2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~8_combout\ & (\Equal2~5_combout\ & (\Equal2~7_combout\ & \Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~8_combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~7_combout\,
	datad => \Equal2~6_combout\,
	combout => \Equal2~9_combout\);

-- Location: FF_X27_Y1_N25
\m_clk_ratio[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[2]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(2));

-- Location: LCCOMB_X27_Y1_N10
\m_clk_ratio[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_ratio[3]~feeder_combout\ = \m_clk_div[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m_clk_div[3]~input_o\,
	combout => \m_clk_ratio[3]~feeder_combout\);

-- Location: FF_X27_Y1_N11
\m_clk_ratio[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_clk_ratio[3]~feeder_combout\,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(3));

-- Location: LCCOMB_X27_Y1_N24
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (m_count(2) & (m_clk_ratio(2) & (m_count(3) $ (!m_clk_ratio(3))))) # (!m_count(2) & (!m_clk_ratio(2) & (m_count(3) $ (!m_clk_ratio(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(2),
	datab => m_count(3),
	datac => m_clk_ratio(2),
	datad => m_clk_ratio(3),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X28_Y3_N12
\m_clk_ratio[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_ratio[7]~feeder_combout\ = \m_clk_div[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m_clk_div[7]~input_o\,
	combout => \m_clk_ratio[7]~feeder_combout\);

-- Location: FF_X28_Y3_N13
\m_clk_ratio[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_clk_ratio[7]~feeder_combout\,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(7));

-- Location: FF_X28_Y3_N19
\m_clk_ratio[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[6]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(6));

-- Location: LCCOMB_X28_Y3_N18
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (m_clk_ratio(7) & (m_count(7) & (m_clk_ratio(6) $ (!m_count(6))))) # (!m_clk_ratio(7) & (!m_count(7) & (m_clk_ratio(6) $ (!m_count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_ratio(7),
	datab => m_count(7),
	datac => m_clk_ratio(6),
	datad => m_count(6),
	combout => \Equal2~3_combout\);

-- Location: FF_X28_Y3_N27
\m_clk_ratio[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[1]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(1));

-- Location: FF_X28_Y3_N1
\m_clk_ratio[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_ratio~0_combout\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(0));

-- Location: LCCOMB_X28_Y3_N0
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (m_clk_ratio(1) & (m_count(1) & (m_count(0) $ (!m_clk_ratio(0))))) # (!m_clk_ratio(1) & (!m_count(1) & (m_count(0) $ (!m_clk_ratio(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_ratio(1),
	datab => m_count(0),
	datac => m_clk_ratio(0),
	datad => m_count(1),
	combout => \Equal2~0_combout\);

-- Location: FF_X27_Y1_N27
\m_clk_ratio[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[5]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(5));

-- Location: FF_X27_Y1_N13
\m_clk_ratio[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[4]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(4));

-- Location: LCCOMB_X27_Y1_N12
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (m_clk_ratio(5) & (m_count(5) & (m_clk_ratio(4) $ (!m_count(4))))) # (!m_clk_ratio(5) & (!m_count(5) & (m_clk_ratio(4) $ (!m_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_ratio(5),
	datab => m_count(5),
	datac => m_clk_ratio(4),
	datad => m_count(4),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X27_Y3_N28
\Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~1_combout\ & (\Equal2~3_combout\ & (\Equal2~0_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X26_Y2_N0
\Add5~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~32_combout\ = (m_count(16) & (\Add5~31\ $ (GND))) # (!m_count(16) & (!\Add5~31\ & VCC))
-- \Add5~33\ = CARRY((m_count(16) & !\Add5~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(16),
	datad => VCC,
	cin => \Add5~31\,
	combout => \Add5~32_combout\,
	cout => \Add5~33\);

-- Location: LCCOMB_X27_Y3_N2
\m_count~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~20_combout\ = (\m_state~q\ & (((\Add5~32_combout\ & !\Equal2~20_combout\)))) # (!\m_state~q\ & (\m_clk_div[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[16]~input_o\,
	datab => \m_state~q\,
	datac => \Add5~32_combout\,
	datad => \Equal2~20_combout\,
	combout => \m_count~20_combout\);

-- Location: FF_X27_Y3_N3
\m_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~20_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(16));

-- Location: LCCOMB_X27_Y3_N24
\m_clk_ratio[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_ratio[17]~feeder_combout\ = \m_clk_div[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m_clk_div[17]~input_o\,
	combout => \m_clk_ratio[17]~feeder_combout\);

-- Location: FF_X27_Y3_N25
\m_clk_ratio[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_clk_ratio[17]~feeder_combout\,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(17));

-- Location: FF_X27_Y3_N27
\m_clk_ratio[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[16]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(16));

-- Location: LCCOMB_X26_Y2_N2
\Add5~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~34_combout\ = (m_count(17) & (!\Add5~33\)) # (!m_count(17) & ((\Add5~33\) # (GND)))
-- \Add5~35\ = CARRY((!\Add5~33\) # (!m_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(17),
	datad => VCC,
	cin => \Add5~33\,
	combout => \Add5~34_combout\,
	cout => \Add5~35\);

-- Location: LCCOMB_X27_Y2_N24
\m_count~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~19_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~34_combout\)))) # (!\m_state~q\ & (\m_clk_div[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[17]~input_o\,
	datac => \Equal2~20_combout\,
	datad => \Add5~34_combout\,
	combout => \m_count~19_combout\);

-- Location: FF_X27_Y2_N25
\m_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~19_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(17));

-- Location: LCCOMB_X27_Y3_N26
\Equal2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (m_count(16) & (m_clk_ratio(16) & (m_clk_ratio(17) $ (!m_count(17))))) # (!m_count(16) & (!m_clk_ratio(16) & (m_clk_ratio(17) $ (!m_count(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(16),
	datab => m_clk_ratio(17),
	datac => m_clk_ratio(16),
	datad => m_count(17),
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X27_Y3_N22
\m_clk_ratio[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_ratio[19]~feeder_combout\ = \m_clk_div[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m_clk_div[19]~input_o\,
	combout => \m_clk_ratio[19]~feeder_combout\);

-- Location: FF_X27_Y3_N23
\m_clk_ratio[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_clk_ratio[19]~feeder_combout\,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(19));

-- Location: LCCOMB_X26_Y2_N4
\Add5~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~36_combout\ = (m_count(18) & (\Add5~35\ $ (GND))) # (!m_count(18) & (!\Add5~35\ & VCC))
-- \Add5~37\ = CARRY((m_count(18) & !\Add5~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_count(18),
	datad => VCC,
	cin => \Add5~35\,
	combout => \Add5~36_combout\,
	cout => \Add5~37\);

-- Location: LCCOMB_X27_Y2_N20
\m_count~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~22_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~36_combout\)))) # (!\m_state~q\ & (\m_clk_div[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_div[18]~input_o\,
	datab => \Equal2~20_combout\,
	datac => \Add5~36_combout\,
	datad => \m_state~q\,
	combout => \m_count~22_combout\);

-- Location: FF_X27_Y2_N21
\m_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~22_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(18));

-- Location: FF_X27_Y3_N17
\m_clk_ratio[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[18]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(18));

-- Location: LCCOMB_X26_Y2_N6
\Add5~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~38_combout\ = (m_count(19) & (!\Add5~37\)) # (!m_count(19) & ((\Add5~37\) # (GND)))
-- \Add5~39\ = CARRY((!\Add5~37\) # (!m_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_count(19),
	datad => VCC,
	cin => \Add5~37\,
	combout => \Add5~38_combout\,
	cout => \Add5~39\);

-- Location: LCCOMB_X27_Y2_N10
\m_count~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~21_combout\ = (\m_state~q\ & (!\Equal2~20_combout\ & ((\Add5~38_combout\)))) # (!\m_state~q\ & (((\m_clk_div[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~20_combout\,
	datab => \m_clk_div[19]~input_o\,
	datac => \Add5~38_combout\,
	datad => \m_state~q\,
	combout => \m_count~21_combout\);

-- Location: FF_X27_Y2_N11
\m_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~21_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(19));

-- Location: LCCOMB_X27_Y3_N16
\Equal2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~11_combout\ = (m_clk_ratio(19) & (m_count(19) & (m_count(18) $ (!m_clk_ratio(18))))) # (!m_clk_ratio(19) & (!m_count(19) & (m_count(18) $ (!m_clk_ratio(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_ratio(19),
	datab => m_count(18),
	datac => m_clk_ratio(18),
	datad => m_count(19),
	combout => \Equal2~11_combout\);

-- Location: LCCOMB_X26_Y2_N8
\Add5~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~40_combout\ = (m_count(20) & (\Add5~39\ $ (GND))) # (!m_count(20) & (!\Add5~39\ & VCC))
-- \Add5~41\ = CARRY((m_count(20) & !\Add5~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(20),
	datad => VCC,
	cin => \Add5~39\,
	combout => \Add5~40_combout\,
	cout => \Add5~41\);

-- Location: LCCOMB_X27_Y2_N8
\m_count~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~24_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~40_combout\)))) # (!\m_state~q\ & (\m_clk_div[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[20]~input_o\,
	datac => \Equal2~20_combout\,
	datad => \Add5~40_combout\,
	combout => \m_count~24_combout\);

-- Location: FF_X27_Y2_N9
\m_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~24_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(20));

-- Location: LCCOMB_X26_Y2_N10
\Add5~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~42_combout\ = (m_count(21) & (!\Add5~41\)) # (!m_count(21) & ((\Add5~41\) # (GND)))
-- \Add5~43\ = CARRY((!\Add5~41\) # (!m_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(21),
	datad => VCC,
	cin => \Add5~41\,
	combout => \Add5~42_combout\,
	cout => \Add5~43\);

-- Location: LCCOMB_X27_Y2_N14
\m_count~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~23_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~42_combout\)))) # (!\m_state~q\ & (\m_clk_div[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[21]~input_o\,
	datac => \Equal2~20_combout\,
	datad => \Add5~42_combout\,
	combout => \m_count~23_combout\);

-- Location: FF_X27_Y2_N15
\m_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~23_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(21));

-- Location: LCCOMB_X26_Y2_N12
\Add5~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~44_combout\ = (m_count(22) & (\Add5~43\ $ (GND))) # (!m_count(22) & (!\Add5~43\ & VCC))
-- \Add5~45\ = CARRY((m_count(22) & !\Add5~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(22),
	datad => VCC,
	cin => \Add5~43\,
	combout => \Add5~44_combout\,
	cout => \Add5~45\);

-- Location: LCCOMB_X27_Y2_N18
\m_count~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~26_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~44_combout\)))) # (!\m_state~q\ & (\m_clk_div[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[22]~input_o\,
	datac => \Equal2~20_combout\,
	datad => \Add5~44_combout\,
	combout => \m_count~26_combout\);

-- Location: FF_X27_Y2_N19
\m_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~26_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(22));

-- Location: FF_X27_Y3_N19
\m_clk_ratio[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[23]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(23));

-- Location: FF_X27_Y3_N5
\m_clk_ratio[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[22]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(22));

-- Location: LCCOMB_X26_Y2_N14
\Add5~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~46_combout\ = (m_count(23) & (!\Add5~45\)) # (!m_count(23) & ((\Add5~45\) # (GND)))
-- \Add5~47\ = CARRY((!\Add5~45\) # (!m_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_count(23),
	datad => VCC,
	cin => \Add5~45\,
	combout => \Add5~46_combout\,
	cout => \Add5~47\);

-- Location: LCCOMB_X27_Y2_N16
\m_count~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~25_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~46_combout\)))) # (!\m_state~q\ & (\m_clk_div[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[23]~input_o\,
	datac => \Equal2~20_combout\,
	datad => \Add5~46_combout\,
	combout => \m_count~25_combout\);

-- Location: FF_X27_Y2_N17
\m_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~25_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(23));

-- Location: LCCOMB_X27_Y3_N4
\Equal2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~13_combout\ = (m_count(22) & (m_clk_ratio(22) & (m_clk_ratio(23) $ (!m_count(23))))) # (!m_count(22) & (!m_clk_ratio(22) & (m_clk_ratio(23) $ (!m_count(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(22),
	datab => m_clk_ratio(23),
	datac => m_clk_ratio(22),
	datad => m_count(23),
	combout => \Equal2~13_combout\);

-- Location: LCCOMB_X27_Y3_N6
\m_clk_ratio[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_ratio[21]~feeder_combout\ = \m_clk_div[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m_clk_div[21]~input_o\,
	combout => \m_clk_ratio[21]~feeder_combout\);

-- Location: FF_X27_Y3_N7
\m_clk_ratio[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_clk_ratio[21]~feeder_combout\,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(21));

-- Location: FF_X27_Y3_N13
\m_clk_ratio[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[20]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(20));

-- Location: LCCOMB_X27_Y3_N12
\Equal2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~12_combout\ = (m_count(20) & (m_clk_ratio(20) & (m_clk_ratio(21) $ (!m_count(21))))) # (!m_count(20) & (!m_clk_ratio(20) & (m_clk_ratio(21) $ (!m_count(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(20),
	datab => m_clk_ratio(21),
	datac => m_clk_ratio(20),
	datad => m_count(21),
	combout => \Equal2~12_combout\);

-- Location: LCCOMB_X27_Y3_N8
\Equal2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~14_combout\ = (\Equal2~10_combout\ & (\Equal2~11_combout\ & (\Equal2~13_combout\ & \Equal2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~10_combout\,
	datab => \Equal2~11_combout\,
	datac => \Equal2~13_combout\,
	datad => \Equal2~12_combout\,
	combout => \Equal2~14_combout\);

-- Location: LCCOMB_X26_Y2_N16
\Add5~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~48_combout\ = (m_count(24) & (\Add5~47\ $ (GND))) # (!m_count(24) & (!\Add5~47\ & VCC))
-- \Add5~49\ = CARRY((m_count(24) & !\Add5~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(24),
	datad => VCC,
	cin => \Add5~47\,
	combout => \Add5~48_combout\,
	cout => \Add5~49\);

-- Location: LCCOMB_X27_Y2_N28
\m_count~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~28_combout\ = (\m_state~q\ & (!\Equal2~20_combout\ & ((\Add5~48_combout\)))) # (!\m_state~q\ & (((\m_clk_div[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~20_combout\,
	datab => \m_clk_div[24]~input_o\,
	datac => \Add5~48_combout\,
	datad => \m_state~q\,
	combout => \m_count~28_combout\);

-- Location: FF_X27_Y2_N29
\m_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~28_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(24));

-- Location: FF_X27_Y3_N21
\m_clk_ratio[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[25]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(25));

-- Location: FF_X27_Y3_N31
\m_clk_ratio[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[24]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(24));

-- Location: LCCOMB_X26_Y2_N18
\Add5~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~50_combout\ = (m_count(25) & (!\Add5~49\)) # (!m_count(25) & ((\Add5~49\) # (GND)))
-- \Add5~51\ = CARRY((!\Add5~49\) # (!m_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(25),
	datad => VCC,
	cin => \Add5~49\,
	combout => \Add5~50_combout\,
	cout => \Add5~51\);

-- Location: LCCOMB_X27_Y2_N2
\m_count~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~27_combout\ = (\m_state~q\ & (!\Equal2~20_combout\ & (\Add5~50_combout\))) # (!\m_state~q\ & (((\m_clk_div[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~20_combout\,
	datab => \Add5~50_combout\,
	datac => \m_clk_div[25]~input_o\,
	datad => \m_state~q\,
	combout => \m_count~27_combout\);

-- Location: FF_X27_Y2_N3
\m_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~27_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(25));

-- Location: LCCOMB_X27_Y3_N30
\Equal2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~15_combout\ = (m_count(24) & (m_clk_ratio(24) & (m_clk_ratio(25) $ (!m_count(25))))) # (!m_count(24) & (!m_clk_ratio(24) & (m_clk_ratio(25) $ (!m_count(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(24),
	datab => m_clk_ratio(25),
	datac => m_clk_ratio(24),
	datad => m_count(25),
	combout => \Equal2~15_combout\);

-- Location: LCCOMB_X26_Y2_N20
\Add5~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~52_combout\ = (m_count(26) & (\Add5~51\ $ (GND))) # (!m_count(26) & (!\Add5~51\ & VCC))
-- \Add5~53\ = CARRY((m_count(26) & !\Add5~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_count(26),
	datad => VCC,
	cin => \Add5~51\,
	combout => \Add5~52_combout\,
	cout => \Add5~53\);

-- Location: LCCOMB_X27_Y2_N30
\m_count~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~30_combout\ = (\m_state~q\ & (!\Equal2~20_combout\ & ((\Add5~52_combout\)))) # (!\m_state~q\ & (((\m_clk_div[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \Equal2~20_combout\,
	datac => \m_clk_div[26]~input_o\,
	datad => \Add5~52_combout\,
	combout => \m_count~30_combout\);

-- Location: FF_X27_Y2_N31
\m_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~30_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(26));

-- Location: LCCOMB_X26_Y2_N22
\Add5~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~54_combout\ = (m_count(27) & (!\Add5~53\)) # (!m_count(27) & ((\Add5~53\) # (GND)))
-- \Add5~55\ = CARRY((!\Add5~53\) # (!m_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_count(27),
	datad => VCC,
	cin => \Add5~53\,
	combout => \Add5~54_combout\,
	cout => \Add5~55\);

-- Location: LCCOMB_X27_Y2_N4
\m_count~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~29_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~54_combout\)))) # (!\m_state~q\ & (\m_clk_div[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[27]~input_o\,
	datac => \Equal2~20_combout\,
	datad => \Add5~54_combout\,
	combout => \m_count~29_combout\);

-- Location: FF_X27_Y2_N5
\m_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~29_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(27));

-- Location: LCCOMB_X26_Y2_N24
\Add5~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~56_combout\ = (m_count(28) & (\Add5~55\ $ (GND))) # (!m_count(28) & (!\Add5~55\ & VCC))
-- \Add5~57\ = CARRY((m_count(28) & !\Add5~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_count(28),
	datad => VCC,
	cin => \Add5~55\,
	combout => \Add5~56_combout\,
	cout => \Add5~57\);

-- Location: LCCOMB_X27_Y2_N26
\m_count~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~32_combout\ = (\m_state~q\ & (((!\Equal2~20_combout\ & \Add5~56_combout\)))) # (!\m_state~q\ & (\m_clk_div[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_clk_div[28]~input_o\,
	datac => \Equal2~20_combout\,
	datad => \Add5~56_combout\,
	combout => \m_count~32_combout\);

-- Location: FF_X27_Y2_N27
\m_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~32_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(28));

-- Location: LCCOMB_X26_Y2_N26
\Add5~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~58_combout\ = (m_count(29) & (!\Add5~57\)) # (!m_count(29) & ((\Add5~57\) # (GND)))
-- \Add5~59\ = CARRY((!\Add5~57\) # (!m_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => m_count(29),
	datad => VCC,
	cin => \Add5~57\,
	combout => \Add5~58_combout\,
	cout => \Add5~59\);

-- Location: LCCOMB_X27_Y2_N22
\m_count~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~31_combout\ = (\m_state~q\ & (!\Equal2~20_combout\ & ((\Add5~58_combout\)))) # (!\m_state~q\ & (((\m_clk_div[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~20_combout\,
	datab => \m_clk_div[29]~input_o\,
	datac => \Add5~58_combout\,
	datad => \m_state~q\,
	combout => \m_count~31_combout\);

-- Location: FF_X27_Y2_N23
\m_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~31_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(29));

-- Location: LCCOMB_X26_Y2_N28
\Add5~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~60_combout\ = (m_count(30) & (\Add5~59\ $ (GND))) # (!m_count(30) & (!\Add5~59\ & VCC))
-- \Add5~61\ = CARRY((m_count(30) & !\Add5~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_count(30),
	datad => VCC,
	cin => \Add5~59\,
	combout => \Add5~60_combout\,
	cout => \Add5~61\);

-- Location: LCCOMB_X28_Y2_N22
\m_count~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~34_combout\ = (\m_state~q\ & (!\Equal2~20_combout\ & ((\Add5~60_combout\)))) # (!\m_state~q\ & (((\m_clk_div[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~20_combout\,
	datab => \m_clk_div[30]~input_o\,
	datac => \m_state~q\,
	datad => \Add5~60_combout\,
	combout => \m_count~34_combout\);

-- Location: FF_X28_Y2_N23
\m_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~34_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(30));

-- Location: LCCOMB_X28_Y2_N14
\m_clk_ratio[31]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_ratio[31]~2_combout\ = !\m_clk_div[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m_clk_div[31]~input_o\,
	combout => \m_clk_ratio[31]~2_combout\);

-- Location: FF_X28_Y2_N15
\m_clk_ratio[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_clk_ratio[31]~2_combout\,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(31));

-- Location: FF_X28_Y2_N13
\m_clk_ratio[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[30]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(30));

-- Location: LCCOMB_X26_Y2_N30
\Add5~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~62_combout\ = \Add5~61\ $ (!m_count(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => m_count(31),
	cin => \Add5~61\,
	combout => \Add5~62_combout\);

-- Location: LCCOMB_X28_Y2_N16
\m_count~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_count~33_combout\ = (\m_state~q\ & ((\Equal2~20_combout\) # ((!\Add5~62_combout\)))) # (!\m_state~q\ & (((!\m_clk_div[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~20_combout\,
	datab => \m_clk_div[31]~input_o\,
	datac => \m_state~q\,
	datad => \Add5~62_combout\,
	combout => \m_count~33_combout\);

-- Location: FF_X28_Y2_N17
\m_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_count~33_combout\,
	ena => \m_count[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_count(31));

-- Location: LCCOMB_X28_Y2_N12
\Equal2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~18_combout\ = (m_count(30) & (m_clk_ratio(30) & (m_clk_ratio(31) $ (!m_count(31))))) # (!m_count(30) & (!m_clk_ratio(30) & (m_clk_ratio(31) $ (!m_count(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(30),
	datab => m_clk_ratio(31),
	datac => m_clk_ratio(30),
	datad => m_count(31),
	combout => \Equal2~18_combout\);

-- Location: FF_X28_Y3_N11
\m_clk_ratio[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[27]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(27));

-- Location: FF_X28_Y3_N9
\m_clk_ratio[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[26]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(26));

-- Location: LCCOMB_X28_Y3_N8
\Equal2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~16_combout\ = (m_count(26) & (m_clk_ratio(26) & (m_clk_ratio(27) $ (!m_count(27))))) # (!m_count(26) & (!m_clk_ratio(26) & (m_clk_ratio(27) $ (!m_count(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(26),
	datab => m_clk_ratio(27),
	datac => m_clk_ratio(26),
	datad => m_count(27),
	combout => \Equal2~16_combout\);

-- Location: FF_X28_Y3_N3
\m_clk_ratio[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[29]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(29));

-- Location: FF_X28_Y3_N5
\m_clk_ratio[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_clk_div[28]~input_o\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_ratio(28));

-- Location: LCCOMB_X28_Y3_N4
\Equal2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~17_combout\ = (m_count(28) & (m_clk_ratio(28) & (m_clk_ratio(29) $ (!m_count(29))))) # (!m_count(28) & (!m_clk_ratio(28) & (m_clk_ratio(29) $ (!m_count(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_count(28),
	datab => m_clk_ratio(29),
	datac => m_clk_ratio(28),
	datad => m_count(29),
	combout => \Equal2~17_combout\);

-- Location: LCCOMB_X27_Y3_N10
\Equal2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~19_combout\ = (\Equal2~15_combout\ & (\Equal2~18_combout\ & (\Equal2~16_combout\ & \Equal2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~15_combout\,
	datab => \Equal2~18_combout\,
	datac => \Equal2~16_combout\,
	datad => \Equal2~17_combout\,
	combout => \Equal2~19_combout\);

-- Location: LCCOMB_X27_Y3_N0
\Equal2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~20_combout\ = (\Equal2~9_combout\ & (\Equal2~4_combout\ & (\Equal2~14_combout\ & \Equal2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~9_combout\,
	datab => \Equal2~4_combout\,
	datac => \Equal2~14_combout\,
	datad => \Equal2~19_combout\,
	combout => \Equal2~20_combout\);

-- Location: LCCOMB_X28_Y1_N28
\m_clk_toggles[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_toggles[3]~8_combout\ = (\m_state~q\ & ((\Equal2~20_combout\))) # (!\m_state~q\ & (!\s_ss_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_ss_n~input_o\,
	datac => \m_state~q\,
	datad => \Equal2~20_combout\,
	combout => \m_clk_toggles[3]~8_combout\);

-- Location: FF_X28_Y1_N3
\m_clk_toggles[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_clk_toggles~5_combout\,
	ena => \m_clk_toggles[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_toggles(3));

-- Location: LCCOMB_X28_Y1_N18
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = \Add1~7\ $ (!m_clk_toggles(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => m_clk_toggles(4),
	cin => \Add1~7\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X28_Y1_N4
\m_clk_toggles~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_toggles~2_combout\ = (\process_2~3_combout\ & (!\Add4~0_combout\)) # (!\process_2~3_combout\ & (((\Add1~8_combout\ & \Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add1~8_combout\,
	datac => \process_2~3_combout\,
	datad => \Equal4~1_combout\,
	combout => \m_clk_toggles~2_combout\);

-- Location: FF_X28_Y1_N5
\m_clk_toggles[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_clk_toggles~2_combout\,
	sclr => \ALT_INV_m_state~q\,
	ena => \m_clk_toggles[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_toggles(4));

-- Location: LCCOMB_X28_Y2_N26
\process_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~2_combout\ = (m_clk_toggles(4) & (m_last_bit_rx(4) & (m_last_bit_rx(0) $ (!m_clk_toggles(3))))) # (!m_clk_toggles(4) & (!m_last_bit_rx(4) & (m_last_bit_rx(0) $ (!m_clk_toggles(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_toggles(4),
	datab => m_last_bit_rx(4),
	datac => m_last_bit_rx(0),
	datad => m_clk_toggles(3),
	combout => \process_2~2_combout\);

-- Location: LCCOMB_X28_Y2_N18
\process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = (m_clk_toggles(0) & (m_last_bit_rx(0) & (m_clk_toggles(1) & m_clk_toggles(2)))) # (!m_clk_toggles(0) & (!m_last_bit_rx(0) & (!m_clk_toggles(1) & !m_clk_toggles(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_toggles(0),
	datab => m_last_bit_rx(0),
	datac => m_clk_toggles(1),
	datad => m_clk_toggles(2),
	combout => \process_2~1_combout\);

-- Location: LCCOMB_X28_Y4_N2
\process_2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~3_combout\ = (\m_cont~input_o\ & (\process_2~2_combout\ & \process_2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_cont~input_o\,
	datac => \process_2~2_combout\,
	datad => \process_2~1_combout\,
	combout => \process_2~3_combout\);

-- Location: LCCOMB_X28_Y1_N8
\m_clk_toggles~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_toggles~3_combout\ = (\process_2~3_combout\ & ((!m_last_bit_rx(0)))) # (!\process_2~3_combout\ & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datac => \process_2~3_combout\,
	datad => m_last_bit_rx(0),
	combout => \m_clk_toggles~3_combout\);

-- Location: FF_X28_Y1_N9
\m_clk_toggles[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_clk_toggles~3_combout\,
	sclr => \ALT_INV_m_state~q\,
	ena => \m_clk_toggles[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_toggles(0));

-- Location: LCCOMB_X28_Y1_N12
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (m_clk_toggles(1) & (!\Add1~1\)) # (!m_clk_toggles(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!m_clk_toggles(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_toggles(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X28_Y1_N26
\m_clk_toggles~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_toggles~7_combout\ = (\Add1~2_combout\ & (\Equal4~1_combout\ & \m_clk_toggles[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Equal4~1_combout\,
	datad => \m_clk_toggles[3]~4_combout\,
	combout => \m_clk_toggles~7_combout\);

-- Location: FF_X28_Y1_N27
\m_clk_toggles[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_clk_toggles~7_combout\,
	ena => \m_clk_toggles[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_toggles(1));

-- Location: LCCOMB_X28_Y1_N30
\m_clk_toggles~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_toggles~6_combout\ = (\m_clk_toggles[3]~4_combout\ & (\Add1~4_combout\ & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_toggles[3]~4_combout\,
	datab => \Add1~4_combout\,
	datad => \Equal4~1_combout\,
	combout => \m_clk_toggles~6_combout\);

-- Location: FF_X28_Y1_N31
\m_clk_toggles[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_clk_toggles~6_combout\,
	ena => \m_clk_toggles[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_clk_toggles(2));

-- Location: LCCOMB_X28_Y1_N6
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!m_clk_toggles(2) & (!m_clk_toggles(1) & !m_clk_toggles(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_toggles(2),
	datac => m_clk_toggles(1),
	datad => m_clk_toggles(3),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X29_Y2_N28
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = ((!m_clk_toggles(0)) # (!m_clk_toggles(4))) # (!\Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~0_combout\,
	datac => m_clk_toggles(4),
	datad => m_clk_toggles(0),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X29_Y2_N0
\m_ss_n~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_ss_n~2_combout\ = (\m_cont~input_o\) # ((\Equal4~1_combout\) # (!\Equal2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_cont~input_o\,
	datab => \Equal4~1_combout\,
	datad => \Equal2~20_combout\,
	combout => \m_ss_n~2_combout\);

-- Location: LCCOMB_X29_Y2_N14
\s_ss_n~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_ss_n~_wirecell_combout\ = !\s_ss_n~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_ss_n~input_o\,
	combout => \s_ss_n~_wirecell_combout\);

-- Location: FF_X29_Y2_N1
m_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_ss_n~2_combout\,
	asdata => \s_ss_n~_wirecell_combout\,
	sload => \ALT_INV_m_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_state~q\);

-- Location: LCCOMB_X28_Y4_N4
\m_clk_toggles[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_clk_toggles[3]~4_combout\ = (\m_state~q\ & (((!\process_2~1_combout\) # (!\process_2~2_combout\)) # (!\m_cont~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_cont~input_o\,
	datac => \process_2~2_combout\,
	datad => \process_2~1_combout\,
	combout => \m_clk_toggles[3]~4_combout\);

-- Location: LCCOMB_X28_Y5_N2
\m_assert_data~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_assert_data~0_combout\ = (\s_ss_n~input_o\ & (\m_assert_data~q\)) # (!\s_ss_n~input_o\ & ((!\m_cpha~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_assert_data~q\,
	datab => \s_ss_n~input_o\,
	datad => \m_cpha~input_o\,
	combout => \m_assert_data~0_combout\);

-- Location: LCCOMB_X28_Y5_N12
\m_assert_data~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_assert_data~feeder_combout\ = \m_assert_data~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_assert_data~0_combout\,
	combout => \m_assert_data~feeder_combout\);

-- Location: LCCOMB_X28_Y5_N4
\m_assert_data~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_assert_data~1_combout\ = \m_assert_data~q\ $ (\Equal2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_assert_data~q\,
	datad => \Equal2~20_combout\,
	combout => \m_assert_data~1_combout\);

-- Location: FF_X28_Y5_N13
m_assert_data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_assert_data~feeder_combout\,
	asdata => \m_assert_data~1_combout\,
	sload => \m_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_assert_data~q\);

-- Location: LCCOMB_X28_Y1_N0
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (((!m_clk_toggles(3)) # (!m_clk_toggles(1))) # (!m_clk_toggles(0))) # (!m_clk_toggles(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_toggles(2),
	datab => m_clk_toggles(0),
	datac => m_clk_toggles(1),
	datad => m_clk_toggles(3),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X28_Y2_N24
\LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (m_clk_toggles(4) & (m_last_bit_rx(4) & (m_last_bit_rx(0) & \LessThan3~0_combout\))) # (!m_clk_toggles(4) & ((m_last_bit_rx(4)) # ((m_last_bit_rx(0) & \LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_toggles(4),
	datab => m_last_bit_rx(4),
	datac => m_last_bit_rx(0),
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X28_Y2_N30
\m_mosi~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_mosi~1_combout\ = (\m_assert_data~q\ & \LessThan3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_assert_data~q\,
	datad => \LessThan3~1_combout\,
	combout => \m_mosi~1_combout\);

-- Location: LCCOMB_X28_Y4_N6
\s_rx_buf[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[0]~0_combout\ = (\s_wr_add~q\ & (((s_rx_buf(0))))) # (!\s_wr_add~q\ & ((s_bit_cnt(16) & (\s_mosi~input_o\)) # (!s_bit_cnt(16) & ((s_rx_buf(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datab => \s_wr_add~q\,
	datac => s_rx_buf(0),
	datad => s_bit_cnt(16),
	combout => \s_rx_buf[0]~0_combout\);

-- Location: FF_X28_Y4_N7
\s_rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(0));

-- Location: LCCOMB_X28_Y1_N22
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\s_rx_req~input_o\ & \s_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_rx_req~input_o\,
	datac => \s_ss_n~input_o\,
	combout => \process_1~0_combout\);

-- Location: CLKCTRL_G18
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

-- Location: LCCOMB_X28_Y4_N28
\s_rx_data[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(0) = (GLOBAL(\process_1~0clkctrl_outclk\) & ((s_rx_buf(0)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (s_rx_data(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_rx_data(0),
	datac => s_rx_buf(0),
	datad => \process_1~0clkctrl_outclk\,
	combout => s_rx_data(0));

-- Location: LCCOMB_X28_Y4_N26
\m_tx_buffer~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tx_buffer~9_combout\ = (\m_clk_toggles[3]~4_combout\ & (!\m_mosi~1_combout\ & (m_tx_buffer(0)))) # (!\m_clk_toggles[3]~4_combout\ & (((s_rx_data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_toggles[3]~4_combout\,
	datab => \m_mosi~1_combout\,
	datac => m_tx_buffer(0),
	datad => s_rx_data(0),
	combout => \m_tx_buffer~9_combout\);

-- Location: LCCOMB_X28_Y4_N16
\m_sclk~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_sclk~1_combout\ = (\m_state~q\ & ((\Equal2~20_combout\))) # (!\m_state~q\ & (!\s_ss_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_ss_n~input_o\,
	datac => \Equal2~20_combout\,
	datad => \m_state~q\,
	combout => \m_sclk~1_combout\);

-- Location: FF_X28_Y4_N27
\m_tx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_tx_buffer~9_combout\,
	ena => \m_sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_tx_buffer(0));

-- Location: LCCOMB_X28_Y8_N2
\s_rx_buf[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[1]~1_combout\ = (\s_wr_add~q\ & (((s_rx_buf(1))))) # (!\s_wr_add~q\ & ((s_bit_cnt(15) & (\s_mosi~input_o\)) # (!s_bit_cnt(15) & ((s_rx_buf(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datab => \s_wr_add~q\,
	datac => s_rx_buf(1),
	datad => s_bit_cnt(15),
	combout => \s_rx_buf[1]~1_combout\);

-- Location: FF_X28_Y8_N3
\s_rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(1));

-- Location: LCCOMB_X28_Y8_N10
\s_rx_data[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(1) = (GLOBAL(\process_1~0clkctrl_outclk\) & ((s_rx_buf(1)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (s_rx_data(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_rx_data(1),
	datac => s_rx_buf(1),
	datad => \process_1~0clkctrl_outclk\,
	combout => s_rx_data(1));

-- Location: LCCOMB_X28_Y8_N28
\m_tx_buffer~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tx_buffer~8_combout\ = (\m_clk_toggles[3]~4_combout\ & (m_tx_buffer(0))) # (!\m_clk_toggles[3]~4_combout\ & ((s_rx_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_toggles[3]~4_combout\,
	datac => m_tx_buffer(0),
	datad => s_rx_data(1),
	combout => \m_tx_buffer~8_combout\);

-- Location: LCCOMB_X28_Y4_N18
\m_tx_buffer[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tx_buffer[7]~1_combout\ = (!\process_2~3_combout\ & ((!\LessThan3~1_combout\) # (!\m_assert_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_assert_data~q\,
	datac => \LessThan3~1_combout\,
	datad => \process_2~3_combout\,
	combout => \m_tx_buffer[7]~1_combout\);

-- Location: LCCOMB_X28_Y4_N24
\m_tx_buffer[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tx_buffer[7]~2_combout\ = (\m_state~q\ & (((\Equal2~20_combout\ & !\m_tx_buffer[7]~1_combout\)))) # (!\m_state~q\ & (!\s_ss_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \s_ss_n~input_o\,
	datac => \Equal2~20_combout\,
	datad => \m_tx_buffer[7]~1_combout\,
	combout => \m_tx_buffer[7]~2_combout\);

-- Location: FF_X28_Y8_N29
\m_tx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_tx_buffer~8_combout\,
	ena => \m_tx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_tx_buffer(1));

-- Location: LCCOMB_X28_Y8_N24
\s_rx_buf[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[2]~2_combout\ = (\s_wr_add~q\ & (((s_rx_buf(2))))) # (!\s_wr_add~q\ & ((s_bit_cnt(14) & ((\s_mosi~input_o\))) # (!s_bit_cnt(14) & (s_rx_buf(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_wr_add~q\,
	datab => s_bit_cnt(14),
	datac => s_rx_buf(2),
	datad => \s_mosi~input_o\,
	combout => \s_rx_buf[2]~2_combout\);

-- Location: FF_X28_Y8_N25
\s_rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(2));

-- Location: LCCOMB_X28_Y8_N12
\s_rx_data[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(2) = (GLOBAL(\process_1~0clkctrl_outclk\) & ((s_rx_buf(2)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (s_rx_data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_rx_data(2),
	datac => s_rx_buf(2),
	datad => \process_1~0clkctrl_outclk\,
	combout => s_rx_data(2));

-- Location: LCCOMB_X28_Y8_N26
\m_tx_buffer~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tx_buffer~7_combout\ = (\m_clk_toggles[3]~4_combout\ & (m_tx_buffer(1))) # (!\m_clk_toggles[3]~4_combout\ & ((s_rx_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_clk_toggles[3]~4_combout\,
	datac => m_tx_buffer(1),
	datad => s_rx_data(2),
	combout => \m_tx_buffer~7_combout\);

-- Location: FF_X28_Y8_N27
\m_tx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_tx_buffer~7_combout\,
	ena => \m_tx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_tx_buffer(2));

-- Location: LCCOMB_X29_Y4_N24
\s_rx_buf[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[3]~3_combout\ = (\s_wr_add~q\ & (((s_rx_buf(3))))) # (!\s_wr_add~q\ & ((s_bit_cnt(13) & (\s_mosi~input_o\)) # (!s_bit_cnt(13) & ((s_rx_buf(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datab => \s_wr_add~q\,
	datac => s_rx_buf(3),
	datad => s_bit_cnt(13),
	combout => \s_rx_buf[3]~3_combout\);

-- Location: FF_X29_Y4_N25
\s_rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(3));

-- Location: LCCOMB_X29_Y4_N16
\s_rx_data[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(3) = (GLOBAL(\process_1~0clkctrl_outclk\) & ((s_rx_buf(3)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (s_rx_data(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_rx_data(3),
	datac => s_rx_buf(3),
	datad => \process_1~0clkctrl_outclk\,
	combout => s_rx_data(3));

-- Location: LCCOMB_X29_Y4_N22
\m_tx_buffer~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tx_buffer~6_combout\ = (\m_clk_toggles[3]~4_combout\ & (m_tx_buffer(2))) # (!\m_clk_toggles[3]~4_combout\ & ((s_rx_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m_tx_buffer(2),
	datac => \m_clk_toggles[3]~4_combout\,
	datad => s_rx_data(3),
	combout => \m_tx_buffer~6_combout\);

-- Location: FF_X29_Y4_N23
\m_tx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_tx_buffer~6_combout\,
	ena => \m_tx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_tx_buffer(3));

-- Location: LCCOMB_X28_Y4_N8
\s_rx_buf[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[4]~4_combout\ = (s_bit_cnt(12) & ((\s_wr_add~q\ & (s_rx_buf(4))) # (!\s_wr_add~q\ & ((\s_mosi~input_o\))))) # (!s_bit_cnt(12) & (((s_rx_buf(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_bit_cnt(12),
	datab => \s_wr_add~q\,
	datac => s_rx_buf(4),
	datad => \s_mosi~input_o\,
	combout => \s_rx_buf[4]~4_combout\);

-- Location: FF_X28_Y4_N9
\s_rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(4));

-- Location: LCCOMB_X29_Y4_N6
\s_rx_data[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(4) = (GLOBAL(\process_1~0clkctrl_outclk\) & ((s_rx_buf(4)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (s_rx_data(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_rx_data(4),
	datac => s_rx_buf(4),
	datad => \process_1~0clkctrl_outclk\,
	combout => s_rx_data(4));

-- Location: LCCOMB_X29_Y4_N8
\m_tx_buffer~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tx_buffer~5_combout\ = (\m_clk_toggles[3]~4_combout\ & (m_tx_buffer(3))) # (!\m_clk_toggles[3]~4_combout\ & ((s_rx_data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_tx_buffer(3),
	datac => \m_clk_toggles[3]~4_combout\,
	datad => s_rx_data(4),
	combout => \m_tx_buffer~5_combout\);

-- Location: FF_X29_Y4_N9
\m_tx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_tx_buffer~5_combout\,
	ena => \m_tx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_tx_buffer(4));

-- Location: LCCOMB_X28_Y4_N10
\s_rx_buf[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[5]~5_combout\ = (\s_wr_add~q\ & (((s_rx_buf(5))))) # (!\s_wr_add~q\ & ((s_bit_cnt(11) & (\s_mosi~input_o\)) # (!s_bit_cnt(11) & ((s_rx_buf(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datab => \s_wr_add~q\,
	datac => s_rx_buf(5),
	datad => s_bit_cnt(11),
	combout => \s_rx_buf[5]~5_combout\);

-- Location: FF_X28_Y4_N11
\s_rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(5));

-- Location: LCCOMB_X29_Y4_N20
\s_rx_data[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(5) = (GLOBAL(\process_1~0clkctrl_outclk\) & ((s_rx_buf(5)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (s_rx_data(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_rx_data(5),
	datac => s_rx_buf(5),
	datad => \process_1~0clkctrl_outclk\,
	combout => s_rx_data(5));

-- Location: LCCOMB_X29_Y4_N26
\m_tx_buffer~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tx_buffer~4_combout\ = (\m_clk_toggles[3]~4_combout\ & (m_tx_buffer(4))) # (!\m_clk_toggles[3]~4_combout\ & ((s_rx_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => m_tx_buffer(4),
	datac => \m_clk_toggles[3]~4_combout\,
	datad => s_rx_data(5),
	combout => \m_tx_buffer~4_combout\);

-- Location: FF_X29_Y4_N27
\m_tx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_tx_buffer~4_combout\,
	ena => \m_tx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_tx_buffer(5));

-- Location: LCCOMB_X28_Y4_N12
\s_rx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[6]~6_combout\ = (\s_wr_add~q\ & (((s_rx_buf(6))))) # (!\s_wr_add~q\ & ((s_bit_cnt(10) & (\s_mosi~input_o\)) # (!s_bit_cnt(10) & ((s_rx_buf(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datab => \s_wr_add~q\,
	datac => s_rx_buf(6),
	datad => s_bit_cnt(10),
	combout => \s_rx_buf[6]~6_combout\);

-- Location: FF_X28_Y4_N13
\s_rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(6));

-- Location: LCCOMB_X29_Y4_N18
\s_rx_data[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(6) = (GLOBAL(\process_1~0clkctrl_outclk\) & ((s_rx_buf(6)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (s_rx_data(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_rx_data(6),
	datac => s_rx_buf(6),
	datad => \process_1~0clkctrl_outclk\,
	combout => s_rx_data(6));

-- Location: LCCOMB_X29_Y4_N12
\m_tx_buffer~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tx_buffer~3_combout\ = (\m_clk_toggles[3]~4_combout\ & (m_tx_buffer(5))) # (!\m_clk_toggles[3]~4_combout\ & ((s_rx_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_tx_buffer(5),
	datac => \m_clk_toggles[3]~4_combout\,
	datad => s_rx_data(6),
	combout => \m_tx_buffer~3_combout\);

-- Location: FF_X29_Y4_N13
\m_tx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_tx_buffer~3_combout\,
	ena => \m_tx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_tx_buffer(6));

-- Location: LCCOMB_X28_Y4_N14
\s_rx_buf[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[7]~7_combout\ = (\s_wr_add~q\ & (((s_rx_buf(7))))) # (!\s_wr_add~q\ & ((s_bit_cnt(9) & (\s_mosi~input_o\)) # (!s_bit_cnt(9) & ((s_rx_buf(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datab => \s_wr_add~q\,
	datac => s_rx_buf(7),
	datad => s_bit_cnt(9),
	combout => \s_rx_buf[7]~7_combout\);

-- Location: FF_X28_Y4_N15
\s_rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(7));

-- Location: LCCOMB_X29_Y4_N28
\s_rx_data[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(7) = (GLOBAL(\process_1~0clkctrl_outclk\) & ((s_rx_buf(7)))) # (!GLOBAL(\process_1~0clkctrl_outclk\) & (s_rx_data(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_rx_data(7),
	datac => s_rx_buf(7),
	datad => \process_1~0clkctrl_outclk\,
	combout => s_rx_data(7));

-- Location: LCCOMB_X29_Y4_N30
\m_tx_buffer~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_tx_buffer~0_combout\ = (\m_clk_toggles[3]~4_combout\ & (m_tx_buffer(6))) # (!\m_clk_toggles[3]~4_combout\ & ((s_rx_data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_tx_buffer(6),
	datac => \m_clk_toggles[3]~4_combout\,
	datad => s_rx_data(7),
	combout => \m_tx_buffer~0_combout\);

-- Location: FF_X29_Y4_N31
\m_tx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_tx_buffer~0_combout\,
	ena => \m_tx_buffer[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_tx_buffer(7));

-- Location: LCCOMB_X26_Y1_N24
\m_mosi~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_mosi~reg0feeder_combout\ = m_tx_buffer(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_tx_buffer(7),
	combout => \m_mosi~reg0feeder_combout\);

-- Location: LCCOMB_X29_Y2_N30
\m_ss_n~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_ss_n~0_combout\ = (!\m_cont~input_o\ & (\Equal4~0_combout\ & (m_clk_toggles(4) & m_clk_toggles(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_cont~input_o\,
	datab => \Equal4~0_combout\,
	datac => m_clk_toggles(4),
	datad => m_clk_toggles(0),
	combout => \m_ss_n~0_combout\);

-- Location: LCCOMB_X26_Y1_N0
\m_mosi~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_mosi~2_combout\ = ((\Equal2~20_combout\ & ((\m_ss_n~0_combout\) # (\m_mosi~1_combout\)))) # (!\m_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_ss_n~0_combout\,
	datac => \Equal2~20_combout\,
	datad => \m_mosi~1_combout\,
	combout => \m_mosi~2_combout\);

-- Location: FF_X26_Y1_N25
\m_mosi~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_mosi~reg0feeder_combout\,
	ena => \m_mosi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_mosi~reg0_q\);

-- Location: LCCOMB_X26_Y1_N2
\m_mosi~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_mosi~3_combout\ = (\m_state~q\ & !\m_ss_n~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datac => \m_ss_n~0_combout\,
	combout => \m_mosi~3_combout\);

-- Location: FF_X26_Y1_N3
\m_mosi~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_mosi~3_combout\,
	ena => \m_mosi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_mosi~en_q\);

-- Location: IOIBUF_X14_Y0_N22
\m_addr[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(0),
	o => \m_addr[0]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\m_addr[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(31),
	o => \m_addr[31]~input_o\);

-- Location: LCCOMB_X28_Y3_N22
\m_slave~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_slave~1_combout\ = (!\m_addr[31]~input_o\) # (!\m_addr[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_addr[0]~input_o\,
	datad => \m_addr[31]~input_o\,
	combout => \m_slave~1_combout\);

-- Location: FF_X28_Y3_N17
\m_slave[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	asdata => \m_slave~1_combout\,
	sload => VCC,
	ena => \m_slave[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_slave(0));

-- Location: LCCOMB_X29_Y2_N12
\m_ss_n~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_ss_n~1_combout\ = (\m_ss_n~0_combout\ & ((\Equal2~20_combout\) # ((!m_slave(0) & \m_ss_n[0]~reg0_q\)))) # (!\m_ss_n~0_combout\ & (!m_slave(0) & (\m_ss_n[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ss_n~0_combout\,
	datab => m_slave(0),
	datac => \m_ss_n[0]~reg0_q\,
	datad => \Equal2~20_combout\,
	combout => \m_ss_n~1_combout\);

-- Location: FF_X29_Y2_N13
\m_ss_n[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_ss_n~1_combout\,
	asdata => VCC,
	sload => \ALT_INV_m_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_ss_n[0]~reg0_q\);

-- Location: LCCOMB_X28_Y1_N20
\process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (m_clk_toggles(0)) # ((m_clk_toggles(2)) # ((m_clk_toggles(1)) # (m_clk_toggles(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_toggles(0),
	datab => m_clk_toggles(2),
	datac => m_clk_toggles(1),
	datad => m_clk_toggles(3),
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X28_Y4_N20
\m_sclk~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_sclk~0_combout\ = \m_sclk~reg0_q\ $ (((!\m_ss_n[0]~reg0_q\ & ((!\process_2~0_combout\) # (!m_clk_toggles(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_toggles(4),
	datab => \m_ss_n[0]~reg0_q\,
	datac => \m_sclk~reg0_q\,
	datad => \process_2~0_combout\,
	combout => \m_sclk~0_combout\);

-- Location: IOIBUF_X41_Y4_N8
\m_cpol~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_cpol,
	o => \m_cpol~input_o\);

-- Location: FF_X28_Y4_N21
\m_sclk~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_sclk~0_combout\,
	asdata => \m_cpol~input_o\,
	sload => \ALT_INV_m_state~q\,
	ena => \m_sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_sclk~reg0_q\);

-- Location: LCCOMB_X27_Y2_N12
\m_continue~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_continue~0_combout\ = (\Equal2~20_combout\ & (!\m_continue~q\ & \process_2~3_combout\)) # (!\Equal2~20_combout\ & (\m_continue~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~20_combout\,
	datac => \m_continue~q\,
	datad => \process_2~3_combout\,
	combout => \m_continue~0_combout\);

-- Location: FF_X27_Y2_N13
m_continue : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_continue~0_combout\,
	sclr => \ALT_INV_m_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_continue~q\);

-- Location: LCCOMB_X29_Y2_N22
\m_busy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_busy~0_combout\ = ((!\m_ss_n~0_combout\ & !\m_continue~q\)) # (!\Equal2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_ss_n~0_combout\,
	datab => \m_continue~q\,
	datad => \Equal2~20_combout\,
	combout => \m_busy~0_combout\);

-- Location: FF_X29_Y2_N23
\m_busy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_busy~0_combout\,
	asdata => \s_ss_n~_wirecell_combout\,
	sload => \ALT_INV_m_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_busy~reg0_q\);

-- Location: IOIBUF_X35_Y0_N1
\m_miso~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_miso,
	o => \m_miso~input_o\);

-- Location: LCCOMB_X29_Y3_N16
\m_rx_buffer[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_buffer[0]~feeder_combout\ = \m_miso~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \m_miso~input_o\,
	combout => \m_rx_buffer[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y2_N0
\m_rx_buffer[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_buffer[0]~0_combout\ = (m_clk_toggles(4) & (m_last_bit_rx(4) & ((m_last_bit_rx(0)) # (!\process_2~0_combout\)))) # (!m_clk_toggles(4) & ((m_last_bit_rx(0)) # ((m_last_bit_rx(4)) # (!\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_clk_toggles(4),
	datab => m_last_bit_rx(0),
	datac => m_last_bit_rx(4),
	datad => \process_2~0_combout\,
	combout => \m_rx_buffer[0]~0_combout\);

-- Location: LCCOMB_X27_Y3_N20
\m_rx_data[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_data[0]~1_combout\ = (\m_state~q\ & \Equal2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_state~q\,
	datad => \Equal2~20_combout\,
	combout => \m_rx_data[0]~1_combout\);

-- Location: LCCOMB_X28_Y3_N6
\m_rx_buffer[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_buffer[0]~1_combout\ = (\m_rx_buffer[0]~0_combout\ & (!\m_assert_data~q\ & (!\m_ss_n[0]~reg0_q\ & \m_rx_data[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_rx_buffer[0]~0_combout\,
	datab => \m_assert_data~q\,
	datac => \m_ss_n[0]~reg0_q\,
	datad => \m_rx_data[0]~1_combout\,
	combout => \m_rx_buffer[0]~1_combout\);

-- Location: FF_X29_Y3_N17
\m_rx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_buffer[0]~feeder_combout\,
	ena => \m_rx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_rx_buffer(0));

-- Location: LCCOMB_X29_Y3_N8
\m_rx_data[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_data[0]~reg0feeder_combout\ = m_rx_buffer(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(0),
	combout => \m_rx_data[0]~reg0feeder_combout\);

-- Location: LCCOMB_X29_Y3_N6
\m_rx_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_data[0]~0_combout\ = (\m_state~q\ & (\Equal2~20_combout\ & ((\m_continue~q\) # (\m_ss_n~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_state~q\,
	datab => \m_continue~q\,
	datac => \m_ss_n~0_combout\,
	datad => \Equal2~20_combout\,
	combout => \m_rx_data[0]~0_combout\);

-- Location: FF_X29_Y3_N9
\m_rx_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_data[0]~reg0feeder_combout\,
	ena => \m_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_rx_data[0]~reg0_q\);

-- Location: LCCOMB_X29_Y3_N0
\m_rx_buffer[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_buffer[1]~feeder_combout\ = m_rx_buffer(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(0),
	combout => \m_rx_buffer[1]~feeder_combout\);

-- Location: FF_X29_Y3_N1
\m_rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_buffer[1]~feeder_combout\,
	ena => \m_rx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_rx_buffer(1));

-- Location: LCCOMB_X29_Y3_N30
\m_rx_data[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_data[1]~reg0feeder_combout\ = m_rx_buffer(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(1),
	combout => \m_rx_data[1]~reg0feeder_combout\);

-- Location: FF_X29_Y3_N31
\m_rx_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_data[1]~reg0feeder_combout\,
	ena => \m_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_rx_data[1]~reg0_q\);

-- Location: LCCOMB_X27_Y5_N8
\m_rx_buffer[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_buffer[2]~feeder_combout\ = m_rx_buffer(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => m_rx_buffer(1),
	combout => \m_rx_buffer[2]~feeder_combout\);

-- Location: FF_X27_Y5_N9
\m_rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_buffer[2]~feeder_combout\,
	ena => \m_rx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_rx_buffer(2));

-- Location: LCCOMB_X29_Y3_N24
\m_rx_data[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_data[2]~reg0feeder_combout\ = m_rx_buffer(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(2),
	combout => \m_rx_data[2]~reg0feeder_combout\);

-- Location: FF_X29_Y3_N25
\m_rx_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_data[2]~reg0feeder_combout\,
	ena => \m_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_rx_data[2]~reg0_q\);

-- Location: LCCOMB_X29_Y3_N2
\m_rx_buffer[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_buffer[3]~feeder_combout\ = m_rx_buffer(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(2),
	combout => \m_rx_buffer[3]~feeder_combout\);

-- Location: FF_X29_Y3_N3
\m_rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_buffer[3]~feeder_combout\,
	ena => \m_rx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_rx_buffer(3));

-- Location: LCCOMB_X29_Y3_N22
\m_rx_data[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_data[3]~reg0feeder_combout\ = m_rx_buffer(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(3),
	combout => \m_rx_data[3]~reg0feeder_combout\);

-- Location: FF_X29_Y3_N23
\m_rx_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_data[3]~reg0feeder_combout\,
	ena => \m_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_rx_data[3]~reg0_q\);

-- Location: LCCOMB_X29_Y3_N28
\m_rx_buffer[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_buffer[4]~feeder_combout\ = m_rx_buffer(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(3),
	combout => \m_rx_buffer[4]~feeder_combout\);

-- Location: FF_X29_Y3_N29
\m_rx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_buffer[4]~feeder_combout\,
	ena => \m_rx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_rx_buffer(4));

-- Location: LCCOMB_X29_Y3_N4
\m_rx_data[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_data[4]~reg0feeder_combout\ = m_rx_buffer(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(4),
	combout => \m_rx_data[4]~reg0feeder_combout\);

-- Location: FF_X29_Y3_N5
\m_rx_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_data[4]~reg0feeder_combout\,
	ena => \m_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_rx_data[4]~reg0_q\);

-- Location: LCCOMB_X29_Y3_N10
\m_rx_buffer[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_buffer[5]~feeder_combout\ = m_rx_buffer(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(4),
	combout => \m_rx_buffer[5]~feeder_combout\);

-- Location: FF_X29_Y3_N11
\m_rx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_buffer[5]~feeder_combout\,
	ena => \m_rx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_rx_buffer(5));

-- Location: LCCOMB_X29_Y3_N26
\m_rx_data[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_data[5]~reg0feeder_combout\ = m_rx_buffer(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(5),
	combout => \m_rx_data[5]~reg0feeder_combout\);

-- Location: FF_X29_Y3_N27
\m_rx_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_data[5]~reg0feeder_combout\,
	ena => \m_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_rx_data[5]~reg0_q\);

-- Location: LCCOMB_X29_Y3_N20
\m_rx_buffer[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_buffer[6]~feeder_combout\ = m_rx_buffer(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(5),
	combout => \m_rx_buffer[6]~feeder_combout\);

-- Location: FF_X29_Y3_N21
\m_rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_buffer[6]~feeder_combout\,
	ena => \m_rx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_rx_buffer(6));

-- Location: LCCOMB_X29_Y3_N12
\m_rx_data[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_data[6]~reg0feeder_combout\ = m_rx_buffer(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(6),
	combout => \m_rx_data[6]~reg0feeder_combout\);

-- Location: FF_X29_Y3_N13
\m_rx_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_data[6]~reg0feeder_combout\,
	ena => \m_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_rx_data[6]~reg0_q\);

-- Location: LCCOMB_X29_Y3_N18
\m_rx_buffer[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_buffer[7]~feeder_combout\ = m_rx_buffer(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(6),
	combout => \m_rx_buffer[7]~feeder_combout\);

-- Location: FF_X29_Y3_N19
\m_rx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_buffer[7]~feeder_combout\,
	ena => \m_rx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => m_rx_buffer(7));

-- Location: LCCOMB_X29_Y3_N14
\m_rx_data[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \m_rx_data[7]~reg0feeder_combout\ = m_rx_buffer(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => m_rx_buffer(7),
	combout => \m_rx_data[7]~reg0feeder_combout\);

-- Location: FF_X29_Y3_N15
\m_rx_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_m_clock~inputclkctrl_outclk\,
	d => \m_rx_data[7]~reg0feeder_combout\,
	ena => \m_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_rx_data[7]~reg0_q\);

-- Location: IOIBUF_X37_Y29_N29
\m_addr[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(1),
	o => \m_addr[1]~input_o\);

-- Location: IOIBUF_X41_Y21_N22
\m_addr[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(2),
	o => \m_addr[2]~input_o\);

-- Location: IOIBUF_X35_Y29_N29
\m_addr[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(3),
	o => \m_addr[3]~input_o\);

-- Location: IOIBUF_X28_Y29_N22
\m_addr[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(4),
	o => \m_addr[4]~input_o\);

-- Location: IOIBUF_X14_Y29_N1
\m_addr[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(5),
	o => \m_addr[5]~input_o\);

-- Location: IOIBUF_X37_Y29_N22
\m_addr[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(6),
	o => \m_addr[6]~input_o\);

-- Location: IOIBUF_X39_Y29_N15
\m_addr[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(7),
	o => \m_addr[7]~input_o\);

-- Location: IOIBUF_X5_Y29_N22
\m_addr[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(8),
	o => \m_addr[8]~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\m_addr[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(9),
	o => \m_addr[9]~input_o\);

-- Location: IOIBUF_X23_Y29_N22
\m_addr[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(10),
	o => \m_addr[10]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\m_addr[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(11),
	o => \m_addr[11]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\m_addr[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(12),
	o => \m_addr[12]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\m_addr[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(13),
	o => \m_addr[13]~input_o\);

-- Location: IOIBUF_X41_Y27_N8
\m_addr[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(14),
	o => \m_addr[14]~input_o\);

-- Location: IOIBUF_X5_Y29_N29
\m_addr[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(15),
	o => \m_addr[15]~input_o\);

-- Location: IOIBUF_X37_Y29_N8
\m_addr[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(16),
	o => \m_addr[16]~input_o\);

-- Location: IOIBUF_X41_Y6_N15
\m_addr[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(17),
	o => \m_addr[17]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\m_addr[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(18),
	o => \m_addr[18]~input_o\);

-- Location: IOIBUF_X41_Y25_N8
\m_addr[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(19),
	o => \m_addr[19]~input_o\);

-- Location: IOIBUF_X41_Y7_N22
\m_addr[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(20),
	o => \m_addr[20]~input_o\);

-- Location: IOIBUF_X41_Y23_N8
\m_addr[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(21),
	o => \m_addr[21]~input_o\);

-- Location: IOIBUF_X41_Y13_N8
\m_addr[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(22),
	o => \m_addr[22]~input_o\);

-- Location: IOIBUF_X37_Y0_N29
\m_addr[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(23),
	o => \m_addr[23]~input_o\);

-- Location: IOIBUF_X28_Y29_N1
\m_addr[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(24),
	o => \m_addr[24]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\m_addr[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(25),
	o => \m_addr[25]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\m_addr[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(26),
	o => \m_addr[26]~input_o\);

-- Location: IOIBUF_X5_Y29_N15
\m_addr[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(27),
	o => \m_addr[27]~input_o\);

-- Location: IOIBUF_X21_Y29_N1
\m_addr[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(28),
	o => \m_addr[28]~input_o\);

-- Location: IOIBUF_X39_Y29_N22
\m_addr[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(29),
	o => \m_addr[29]~input_o\);

-- Location: IOIBUF_X41_Y21_N15
\m_addr[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_addr(30),
	o => \m_addr[30]~input_o\);

ww_s_trdy <= \s_trdy~output_o\;

ww_s_rrdy <= \s_rrdy~output_o\;

ww_s_roe <= \s_roe~output_o\;

ww_s_miso <= \s_miso~output_o\;

ww_spi_led(0) <= \spi_led[0]~output_o\;

ww_spi_led(1) <= \spi_led[1]~output_o\;

ww_spi_led(2) <= \spi_led[2]~output_o\;

ww_spi_led(3) <= \spi_led[3]~output_o\;

ww_spi_led(4) <= \spi_led[4]~output_o\;

ww_spi_led(5) <= \spi_led[5]~output_o\;

ww_spi_led(6) <= \spi_led[6]~output_o\;

ww_spi_led(7) <= \spi_led[7]~output_o\;

ww_ena_led <= \ena_led~output_o\;

ww_m_sclk <= \m_sclk~output_o\;

ww_m_ss_n(0) <= \m_ss_n[0]~output_o\;

ww_m_mosi <= \m_mosi~output_o\;

ww_m_busy <= \m_busy~output_o\;

ww_m_rx_data(0) <= \m_rx_data[0]~output_o\;

ww_m_rx_data(1) <= \m_rx_data[1]~output_o\;

ww_m_rx_data(2) <= \m_rx_data[2]~output_o\;

ww_m_rx_data(3) <= \m_rx_data[3]~output_o\;

ww_m_rx_data(4) <= \m_rx_data[4]~output_o\;

ww_m_rx_data(5) <= \m_rx_data[5]~output_o\;

ww_m_rx_data(6) <= \m_rx_data[6]~output_o\;

ww_m_rx_data(7) <= \m_rx_data[7]~output_o\;
END structure;


