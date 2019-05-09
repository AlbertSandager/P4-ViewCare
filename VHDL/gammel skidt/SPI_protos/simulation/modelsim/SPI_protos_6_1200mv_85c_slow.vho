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

-- DATE "05/01/2019 12:51:32"

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

ENTITY 	SPI_protos IS
    PORT (
	s_ss_clk : IN std_logic;
	s_reset_n : IN std_logic;
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
	i_clk : IN std_logic;
	i_rstb : IN std_logic;
	i_tx_start : IN std_logic;
	o_tx_end : OUT std_logic;
	o_data_parallel : OUT std_logic_vector(7 DOWNTO 0);
	o_sclk : OUT std_logic;
	o_ss : OUT std_logic;
	o_mosi : OUT std_logic;
	i_miso : IN std_logic
	);
END SPI_protos;

-- Design Ports Information
-- s_trdy	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_rrdy	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_roe	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_miso	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_tx_end	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data_parallel[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data_parallel[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data_parallel[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data_parallel[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data_parallel[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data_parallel[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data_parallel[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data_parallel[7]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sclk	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ss	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_mosi	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rstb	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_mosi	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_ss_clk	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_ss_n	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_st_load_s_trdy	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_en	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_st_load_en	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_reset_n	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_rx_req	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_st_load_s_rrdy	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_st_load_s_roe	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_miso	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_tx_start	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_tx_load_data[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_s_reset_n : std_logic;
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
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_rstb : std_logic;
SIGNAL ww_i_tx_start : std_logic;
SIGNAL ww_o_tx_end : std_logic;
SIGNAL ww_o_data_parallel : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_sclk : std_logic;
SIGNAL ww_o_ss : std_logic;
SIGNAL ww_o_mosi : std_logic;
SIGNAL ww_i_miso : std_logic;
SIGNAL \s_tx_buf[0]~43clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_1~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_rstb~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_miso~output_o\ : std_logic;
SIGNAL \s_trdy~output_o\ : std_logic;
SIGNAL \s_rrdy~output_o\ : std_logic;
SIGNAL \s_roe~output_o\ : std_logic;
SIGNAL \o_tx_end~output_o\ : std_logic;
SIGNAL \o_data_parallel[0]~output_o\ : std_logic;
SIGNAL \o_data_parallel[1]~output_o\ : std_logic;
SIGNAL \o_data_parallel[2]~output_o\ : std_logic;
SIGNAL \o_data_parallel[3]~output_o\ : std_logic;
SIGNAL \o_data_parallel[4]~output_o\ : std_logic;
SIGNAL \o_data_parallel[5]~output_o\ : std_logic;
SIGNAL \o_data_parallel[6]~output_o\ : std_logic;
SIGNAL \o_data_parallel[7]~output_o\ : std_logic;
SIGNAL \o_sclk~output_o\ : std_logic;
SIGNAL \o_ss~output_o\ : std_logic;
SIGNAL \o_mosi~output_o\ : std_logic;
SIGNAL \s_ss_clk~input_o\ : std_logic;
SIGNAL \s_mosi~input_o\ : std_logic;
SIGNAL \s_bit_cnt[0]~feeder_combout\ : std_logic;
SIGNAL \s_reset_n~input_o\ : std_logic;
SIGNAL \s_ss_n~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \s_bit_cnt[1]~0_combout\ : std_logic;
SIGNAL \s_bit_cnt[2]~feeder_combout\ : std_logic;
SIGNAL \s_rd_add~0_combout\ : std_logic;
SIGNAL \s_rd_add~q\ : std_logic;
SIGNAL \s_tx_load_en~input_o\ : std_logic;
SIGNAL \s_tx_buf[0]~43_combout\ : std_logic;
SIGNAL \s_tx_load_data[7]~input_o\ : std_logic;
SIGNAL \s_tx_load_data[6]~input_o\ : std_logic;
SIGNAL \s_tx_load_data[5]~input_o\ : std_logic;
SIGNAL \s_tx_load_data[4]~input_o\ : std_logic;
SIGNAL \s_tx_buf[0]~43clkctrl_outclk\ : std_logic;
SIGNAL \s_tx_buf[4]~16_combout\ : std_logic;
SIGNAL \s_tx_load_data[3]~input_o\ : std_logic;
SIGNAL \s_tx_buf[3]~21_combout\ : std_logic;
SIGNAL \s_tx_load_data[2]~input_o\ : std_logic;
SIGNAL \s_tx_buf[2]~26_combout\ : std_logic;
SIGNAL \s_tx_load_data[1]~input_o\ : std_logic;
SIGNAL \s_tx_buf[1]~31_combout\ : std_logic;
SIGNAL \s_tx_load_data[0]~input_o\ : std_logic;
SIGNAL \s_tx_buf[0]~36_combout\ : std_logic;
SIGNAL \s_tx_buf[0]~39_combout\ : std_logic;
SIGNAL \s_tx_buf[7]~0_combout\ : std_logic;
SIGNAL \s_bit_cnt[3]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[6]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[7]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[11]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[15]~feeder_combout\ : std_logic;
SIGNAL \s_bit_cnt[16]~feeder_combout\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \process_1~9_combout\ : std_logic;
SIGNAL \s_tx_buf[0]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[0]~38_combout\ : std_logic;
SIGNAL \s_tx_buf[0]~37_combout\ : std_logic;
SIGNAL \s_tx_buf[1]~34_combout\ : std_logic;
SIGNAL \s_tx_buf[1]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[1]~33_combout\ : std_logic;
SIGNAL \s_tx_buf[1]~32_combout\ : std_logic;
SIGNAL \s_tx_buf[2]~29_combout\ : std_logic;
SIGNAL \s_tx_buf[2]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[2]~28_combout\ : std_logic;
SIGNAL \s_tx_buf[2]~27_combout\ : std_logic;
SIGNAL \s_tx_buf[3]~24_combout\ : std_logic;
SIGNAL \s_tx_buf[3]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[3]~23_combout\ : std_logic;
SIGNAL \s_tx_buf[3]~22_combout\ : std_logic;
SIGNAL \s_tx_buf[4]~19_combout\ : std_logic;
SIGNAL \s_tx_buf[4]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[4]~18_combout\ : std_logic;
SIGNAL \s_tx_buf[4]~17_combout\ : std_logic;
SIGNAL \s_tx_buf[5]~11_combout\ : std_logic;
SIGNAL \s_tx_buf[5]~14_combout\ : std_logic;
SIGNAL \s_tx_buf[5]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[5]~13_combout\ : std_logic;
SIGNAL \s_tx_buf[5]~12_combout\ : std_logic;
SIGNAL \s_tx_buf[6]~6_combout\ : std_logic;
SIGNAL \s_tx_buf[6]~9_combout\ : std_logic;
SIGNAL \s_tx_buf[6]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[6]~8_combout\ : std_logic;
SIGNAL \s_tx_buf[6]~7_combout\ : std_logic;
SIGNAL \s_tx_buf[7]~1_combout\ : std_logic;
SIGNAL \s_tx_buf[7]~4_combout\ : std_logic;
SIGNAL \s_tx_buf[7]~_emulated_q\ : std_logic;
SIGNAL \s_tx_buf[7]~3_combout\ : std_logic;
SIGNAL \s_tx_buf[7]~2_combout\ : std_logic;
SIGNAL \s_st_load_s_trdy~input_o\ : std_logic;
SIGNAL \s_st_load_en~input_o\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \s_trdy~8_combout\ : std_logic;
SIGNAL \s_trdy~1_combout\ : std_logic;
SIGNAL \s_wr_add~0_combout\ : std_logic;
SIGNAL \s_wr_add~q\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \s_trdy~7_combout\ : std_logic;
SIGNAL \s_trdy~3_combout\ : std_logic;
SIGNAL \s_trdy~0_combout\ : std_logic;
SIGNAL \s_trdy~reg0_emulated_q\ : std_logic;
SIGNAL \s_trdy~2_combout\ : std_logic;
SIGNAL \s_st_load_s_rrdy~input_o\ : std_logic;
SIGNAL \s_rx_req~input_o\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \s_rrdy~1_combout\ : std_logic;
SIGNAL \s_rrdy~7_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \s_rrdy~3_combout\ : std_logic;
SIGNAL \s_rrdy~0_combout\ : std_logic;
SIGNAL \s_rrdy~reg0_emulated_q\ : std_logic;
SIGNAL \s_rrdy~2_combout\ : std_logic;
SIGNAL \s_st_load_s_roe~input_o\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \s_roe~1_combout\ : std_logic;
SIGNAL \s_roe~6_combout\ : std_logic;
SIGNAL \s_roe~7_combout\ : std_logic;
SIGNAL \s_roe~3_combout\ : std_logic;
SIGNAL \s_roe~0_combout\ : std_logic;
SIGNAL \s_roe~reg0_emulated_q\ : std_logic;
SIGNAL \s_roe~2_combout\ : std_logic;
SIGNAL \s_miso~1_combout\ : std_logic;
SIGNAL \s_miso~2_combout\ : std_logic;
SIGNAL \s_miso~3_combout\ : std_logic;
SIGNAL \s_miso~5_combout\ : std_logic;
SIGNAL \s_miso~4_combout\ : std_logic;
SIGNAL \s_miso~6_combout\ : std_logic;
SIGNAL \s_miso~reg0_q\ : std_logic;
SIGNAL \s_miso~enfeeder_combout\ : std_logic;
SIGNAL \s_miso~en_q\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_tx_start~input_o\ : std_logic;
SIGNAL \r_tx_start~feeder_combout\ : std_logic;
SIGNAL \i_rstb~input_o\ : std_logic;
SIGNAL \i_rstb~inputclkctrl_outclk\ : std_logic;
SIGNAL \r_tx_start~q\ : std_logic;
SIGNAL \r_counter_clock[0]~8_combout\ : std_logic;
SIGNAL \r_sclk_fall~0_combout\ : std_logic;
SIGNAL \r_counter_clock[6]~21\ : std_logic;
SIGNAL \r_counter_clock[7]~23_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \r_counter_clock[7]~22_combout\ : std_logic;
SIGNAL \r_counter_clock[0]~9\ : std_logic;
SIGNAL \r_counter_clock[1]~10_combout\ : std_logic;
SIGNAL \r_counter_clock[1]~11\ : std_logic;
SIGNAL \r_counter_clock[2]~12_combout\ : std_logic;
SIGNAL \r_counter_clock[2]~13\ : std_logic;
SIGNAL \r_counter_clock[3]~14_combout\ : std_logic;
SIGNAL \r_counter_clock[3]~15\ : std_logic;
SIGNAL \r_counter_clock[4]~16_combout\ : std_logic;
SIGNAL \r_counter_clock[4]~17\ : std_logic;
SIGNAL \r_counter_clock[5]~18_combout\ : std_logic;
SIGNAL \r_counter_clock[5]~19\ : std_logic;
SIGNAL \r_counter_clock[6]~20_combout\ : std_logic;
SIGNAL \r_sclk_rise~0_combout\ : std_logic;
SIGNAL \r_sclk_rise~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \r_counter_data[2]~1_combout\ : std_logic;
SIGNAL \r_counter_data[0]~3_combout\ : std_logic;
SIGNAL \r_counter_data[1]~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \r_st_present.ST_TX_RX~q\ : std_logic;
SIGNAL \r_counter_data[2]~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \r_rx_data[0]~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \r_st_present.ST_END~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \r_st_present.ST_RESET~q\ : std_logic;
SIGNAL \r_counter_clock_ena~feeder_combout\ : std_logic;
SIGNAL \r_counter_clock_ena~q\ : std_logic;
SIGNAL \r_sclk_fall~1_combout\ : std_logic;
SIGNAL \r_sclk_fall~2_combout\ : std_logic;
SIGNAL \r_sclk_fall~q\ : std_logic;
SIGNAL \o_tx_end~0_combout\ : std_logic;
SIGNAL \o_tx_end~reg0_q\ : std_logic;
SIGNAL \i_miso~input_o\ : std_logic;
SIGNAL \o_data_parallel[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[0]~reg0_q\ : std_logic;
SIGNAL \r_rx_data[1]~feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[1]~reg0_q\ : std_logic;
SIGNAL \r_rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[2]~reg0_q\ : std_logic;
SIGNAL \r_rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[3]~reg0_q\ : std_logic;
SIGNAL \r_rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[4]~reg0_q\ : std_logic;
SIGNAL \o_data_parallel[5]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[5]~reg0_q\ : std_logic;
SIGNAL \r_rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[6]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[6]~reg0_q\ : std_logic;
SIGNAL \r_rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data_parallel[7]~reg0_q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \o_sclk~reg0_q\ : std_logic;
SIGNAL \o_ss~reg0feeder_combout\ : std_logic;
SIGNAL \o_ss~reg0_q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \s_rx_buf[0]~7_combout\ : std_logic;
SIGNAL \process_1~4clkctrl_outclk\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \s_rx_buf[1]~6_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \r_tx_data[7]~0_combout\ : std_logic;
SIGNAL \s_rx_buf[2]~5_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \s_rx_buf[3]~4_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \s_rx_buf[4]~3_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \s_rx_buf[5]~2_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \s_rx_buf[6]~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \s_rx_buf[7]~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \o_mosi~reg0_q\ : std_logic;
SIGNAL s_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL s_rx_buf : std_logic_vector(7 DOWNTO 0);
SIGNAL s_bit_cnt : std_logic_vector(16 DOWNTO 0);
SIGNAL r_tx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL r_rx_data : std_logic_vector(7 DOWNTO 0);
SIGNAL r_counter_data : std_logic_vector(3 DOWNTO 0);
SIGNAL r_counter_clock : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_s_ss_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_o_mosi~reg0_q\ : std_logic;
SIGNAL \ALT_INV_o_ss~reg0_q\ : std_logic;
SIGNAL \ALT_INV_o_sclk~reg0_q\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_s_roe~0_combout\ : std_logic;
SIGNAL \ALT_INV_s_rrdy~0_combout\ : std_logic;
SIGNAL \ALT_INV_s_trdy~0_combout\ : std_logic;
SIGNAL \ALT_INV_s_tx_buf[7]~0_combout\ : std_logic;

BEGIN

ww_s_ss_clk <= s_ss_clk;
ww_s_reset_n <= s_reset_n;
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
ww_i_clk <= i_clk;
ww_i_rstb <= i_rstb;
ww_i_tx_start <= i_tx_start;
o_tx_end <= ww_o_tx_end;
o_data_parallel <= ww_o_data_parallel;
o_sclk <= ww_o_sclk;
o_ss <= ww_o_ss;
o_mosi <= ww_o_mosi;
ww_i_miso <= i_miso;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\s_tx_buf[0]~43clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \s_tx_buf[0]~43_combout\);

\process_1~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \process_1~4_combout\);

\i_rstb~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_rstb~input_o\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\ALT_INV_s_ss_clk~input_o\ <= NOT \s_ss_clk~input_o\;
\ALT_INV_o_mosi~reg0_q\ <= NOT \o_mosi~reg0_q\;
\ALT_INV_o_ss~reg0_q\ <= NOT \o_ss~reg0_q\;
\ALT_INV_o_sclk~reg0_q\ <= NOT \o_sclk~reg0_q\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_s_roe~0_combout\ <= NOT \s_roe~0_combout\;
\ALT_INV_s_rrdy~0_combout\ <= NOT \s_rrdy~0_combout\;
\ALT_INV_s_trdy~0_combout\ <= NOT \s_trdy~0_combout\;
\ALT_INV_s_tx_buf[7]~0_combout\ <= NOT \s_tx_buf[7]~0_combout\;

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

-- Location: IOOBUF_X26_Y29_N30
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

-- Location: IOOBUF_X16_Y29_N16
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

-- Location: IOOBUF_X21_Y29_N23
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

-- Location: IOOBUF_X21_Y29_N9
\o_tx_end~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_tx_end~reg0_q\,
	devoe => ww_devoe,
	o => \o_tx_end~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\o_data_parallel[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[0]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\o_data_parallel[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[1]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\o_data_parallel[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[2]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\o_data_parallel[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[3]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\o_data_parallel[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\o_data_parallel[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[5]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\o_data_parallel[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[6]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\o_data_parallel[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data_parallel[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data_parallel[7]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\o_sclk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_sclk~reg0_q\,
	devoe => ww_devoe,
	o => \o_sclk~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\o_ss~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_ss~reg0_q\,
	devoe => ww_devoe,
	o => \o_ss~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\o_mosi~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_mosi~reg0_q\,
	devoe => ww_devoe,
	o => \o_mosi~output_o\);

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

-- Location: LCCOMB_X26_Y27_N6
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

-- Location: IOIBUF_X23_Y29_N1
\s_reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_reset_n,
	o => \s_reset_n~input_o\);

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

-- Location: LCCOMB_X24_Y27_N0
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\s_ss_n~input_o\) # (!\s_reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reset_n~input_o\,
	datad => \s_ss_n~input_o\,
	combout => \process_0~0_combout\);

-- Location: FF_X26_Y27_N7
\s_bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[0]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(0));

-- Location: LCCOMB_X26_Y27_N2
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

-- Location: FF_X26_Y27_N3
\s_bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[1]~0_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(1));

-- Location: LCCOMB_X26_Y27_N24
\s_bit_cnt[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[2]~feeder_combout\ = s_bit_cnt(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(1),
	combout => \s_bit_cnt[2]~feeder_combout\);

-- Location: FF_X26_Y27_N25
\s_bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[2]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(2));

-- Location: LCCOMB_X27_Y27_N18
\s_rd_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rd_add~0_combout\ = (s_bit_cnt(2) & (\s_mosi~input_o\)) # (!s_bit_cnt(2) & ((\s_rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_mosi~input_o\,
	datac => \s_rd_add~q\,
	datad => s_bit_cnt(2),
	combout => \s_rd_add~0_combout\);

-- Location: FF_X27_Y27_N19
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

-- Location: IOIBUF_X41_Y15_N8
\s_tx_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_en,
	o => \s_tx_load_en~input_o\);

-- Location: LCCOMB_X22_Y27_N24
\s_tx_buf[0]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[0]~43_combout\ = (\s_ss_n~input_o\ & (\s_tx_load_en~input_o\ & \s_reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_ss_n~input_o\,
	datab => \s_tx_load_en~input_o\,
	datad => \s_reset_n~input_o\,
	combout => \s_tx_buf[0]~43_combout\);

-- Location: IOIBUF_X21_Y29_N29
\s_tx_load_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(7),
	o => \s_tx_load_data[7]~input_o\);

-- Location: IOIBUF_X26_Y29_N1
\s_tx_load_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(6),
	o => \s_tx_load_data[6]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\s_tx_load_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(5),
	o => \s_tx_load_data[5]~input_o\);

-- Location: IOIBUF_X23_Y29_N29
\s_tx_load_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(4),
	o => \s_tx_load_data[4]~input_o\);

-- Location: CLKCTRL_G11
\s_tx_buf[0]~43clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \s_tx_buf[0]~43clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \s_tx_buf[0]~43clkctrl_outclk\);

-- Location: LCCOMB_X23_Y25_N6
\s_tx_buf[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[4]~16_combout\ = (\s_reset_n~input_o\ & ((GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & ((\s_tx_load_data[4]~input_o\))) # (!GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & (\s_tx_buf[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[4]~16_combout\,
	datab => \s_tx_load_data[4]~input_o\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[0]~43clkctrl_outclk\,
	combout => \s_tx_buf[4]~16_combout\);

-- Location: IOIBUF_X23_Y29_N22
\s_tx_load_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(3),
	o => \s_tx_load_data[3]~input_o\);

-- Location: LCCOMB_X23_Y27_N10
\s_tx_buf[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[3]~21_combout\ = (\s_reset_n~input_o\ & ((GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & ((\s_tx_load_data[3]~input_o\))) # (!GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & (\s_tx_buf[3]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[3]~21_combout\,
	datab => \s_tx_load_data[3]~input_o\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[0]~43clkctrl_outclk\,
	combout => \s_tx_buf[3]~21_combout\);

-- Location: IOIBUF_X23_Y29_N15
\s_tx_load_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(2),
	o => \s_tx_load_data[2]~input_o\);

-- Location: LCCOMB_X22_Y27_N14
\s_tx_buf[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[2]~26_combout\ = (\s_reset_n~input_o\ & ((GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & (\s_tx_load_data[2]~input_o\)) # (!GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & ((\s_tx_buf[2]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[2]~input_o\,
	datab => \s_tx_buf[2]~26_combout\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[0]~43clkctrl_outclk\,
	combout => \s_tx_buf[2]~26_combout\);

-- Location: IOIBUF_X26_Y29_N15
\s_tx_load_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(1),
	o => \s_tx_load_data[1]~input_o\);

-- Location: LCCOMB_X23_Y27_N24
\s_tx_buf[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[1]~31_combout\ = (\s_reset_n~input_o\ & ((GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & (\s_tx_load_data[1]~input_o\)) # (!GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & ((\s_tx_buf[1]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[1]~input_o\,
	datab => \s_tx_buf[1]~31_combout\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[0]~43clkctrl_outclk\,
	combout => \s_tx_buf[1]~31_combout\);

-- Location: IOIBUF_X23_Y29_N8
\s_tx_load_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_tx_load_data(0),
	o => \s_tx_load_data[0]~input_o\);

-- Location: LCCOMB_X23_Y27_N18
\s_tx_buf[0]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[0]~36_combout\ = (\s_reset_n~input_o\ & ((GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & (\s_tx_load_data[0]~input_o\)) # (!GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & ((\s_tx_buf[0]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[0]~input_o\,
	datab => \s_tx_buf[0]~36_combout\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[0]~43clkctrl_outclk\,
	combout => \s_tx_buf[0]~36_combout\);

-- Location: LCCOMB_X23_Y27_N8
\s_tx_buf[0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[0]~39_combout\ = \s_tx_buf[0]~36_combout\ $ (\s_tx_buf[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tx_buf[0]~36_combout\,
	datad => \s_tx_buf[7]~2_combout\,
	combout => \s_tx_buf[0]~39_combout\);

-- Location: LCCOMB_X22_Y27_N20
\s_tx_buf[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[7]~0_combout\ = (\s_tx_buf[0]~43_combout\) # (!\s_reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_reset_n~input_o\,
	datad => \s_tx_buf[0]~43_combout\,
	combout => \s_tx_buf[7]~0_combout\);

-- Location: LCCOMB_X26_Y27_N26
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

-- Location: FF_X26_Y27_N27
\s_bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[3]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(3));

-- Location: FF_X26_Y27_N9
\s_bit_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(3),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(4));

-- Location: FF_X24_Y27_N21
\s_bit_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(4),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(5));

-- Location: LCCOMB_X24_Y27_N6
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

-- Location: FF_X24_Y27_N7
\s_bit_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[6]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(6));

-- Location: LCCOMB_X24_Y27_N24
\s_bit_cnt[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[7]~feeder_combout\ = s_bit_cnt(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(6),
	combout => \s_bit_cnt[7]~feeder_combout\);

-- Location: FF_X24_Y27_N25
\s_bit_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[7]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(7));

-- Location: FF_X24_Y27_N5
\s_bit_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(7),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(8));

-- Location: FF_X24_Y27_N17
\s_bit_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(8),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(9));

-- Location: FF_X21_Y27_N31
\s_bit_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(9),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(10));

-- Location: LCCOMB_X24_Y27_N14
\s_bit_cnt[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[11]~feeder_combout\ = s_bit_cnt(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(10),
	combout => \s_bit_cnt[11]~feeder_combout\);

-- Location: FF_X24_Y27_N15
\s_bit_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[11]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(11));

-- Location: FF_X24_Y27_N13
\s_bit_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(11),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(12));

-- Location: FF_X24_Y27_N9
\s_bit_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(12),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(13));

-- Location: FF_X24_Y27_N1
\s_bit_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	asdata => s_bit_cnt(13),
	clrn => \ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(14));

-- Location: LCCOMB_X24_Y27_N26
\s_bit_cnt[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_bit_cnt[15]~feeder_combout\ = s_bit_cnt(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_bit_cnt(14),
	combout => \s_bit_cnt[15]~feeder_combout\);

-- Location: FF_X24_Y27_N27
\s_bit_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[15]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(15));

-- Location: LCCOMB_X24_Y27_N28
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

-- Location: FF_X24_Y27_N29
\s_bit_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_bit_cnt[16]~feeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_bit_cnt(16));

-- Location: LCCOMB_X24_Y27_N20
\process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (!s_bit_cnt(6) & (!s_bit_cnt(7) & (!s_bit_cnt(5) & !s_bit_cnt(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_bit_cnt(6),
	datab => s_bit_cnt(7),
	datac => s_bit_cnt(5),
	datad => s_bit_cnt(16),
	combout => \process_1~8_combout\);

-- Location: LCCOMB_X26_Y27_N0
\process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (!s_bit_cnt(3) & (!s_bit_cnt(1) & (!s_bit_cnt(4) & !s_bit_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_bit_cnt(3),
	datab => s_bit_cnt(1),
	datac => s_bit_cnt(4),
	datad => s_bit_cnt(2),
	combout => \process_1~7_combout\);

-- Location: LCCOMB_X27_Y27_N12
\process_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~9_combout\ = (\process_1~8_combout\ & (s_bit_cnt(0) & (\process_1~7_combout\ & !\s_rd_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~8_combout\,
	datab => s_bit_cnt(0),
	datac => \process_1~7_combout\,
	datad => \s_rd_add~q\,
	combout => \process_1~9_combout\);

-- Location: FF_X23_Y27_N9
\s_tx_buf[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[0]~39_combout\,
	clrn => \ALT_INV_s_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[0]~_emulated_q\);

-- Location: LCCOMB_X23_Y27_N6
\s_tx_buf[0]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[0]~38_combout\ = \s_tx_buf[0]~_emulated_q\ $ (\s_tx_buf[0]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[0]~_emulated_q\,
	datad => \s_tx_buf[0]~36_combout\,
	combout => \s_tx_buf[0]~38_combout\);

-- Location: LCCOMB_X23_Y27_N4
\s_tx_buf[0]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[0]~37_combout\ = (\s_reset_n~input_o\ & ((\s_tx_buf[0]~43_combout\ & (\s_tx_load_data[0]~input_o\)) # (!\s_tx_buf[0]~43_combout\ & ((\s_tx_buf[0]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[0]~43_combout\,
	datab => \s_tx_load_data[0]~input_o\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[0]~38_combout\,
	combout => \s_tx_buf[0]~37_combout\);

-- Location: LCCOMB_X23_Y27_N30
\s_tx_buf[1]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[1]~34_combout\ = \s_tx_buf[1]~31_combout\ $ (\s_tx_buf[0]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tx_buf[1]~31_combout\,
	datad => \s_tx_buf[0]~37_combout\,
	combout => \s_tx_buf[1]~34_combout\);

-- Location: FF_X23_Y27_N31
\s_tx_buf[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[1]~34_combout\,
	clrn => \ALT_INV_s_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[1]~_emulated_q\);

-- Location: LCCOMB_X23_Y27_N28
\s_tx_buf[1]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[1]~33_combout\ = \s_tx_buf[1]~_emulated_q\ $ (\s_tx_buf[1]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[1]~_emulated_q\,
	datad => \s_tx_buf[1]~31_combout\,
	combout => \s_tx_buf[1]~33_combout\);

-- Location: LCCOMB_X23_Y27_N26
\s_tx_buf[1]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[1]~32_combout\ = (\s_reset_n~input_o\ & ((\s_tx_buf[0]~43_combout\ & (\s_tx_load_data[1]~input_o\)) # (!\s_tx_buf[0]~43_combout\ & ((\s_tx_buf[1]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[0]~43_combout\,
	datab => \s_tx_load_data[1]~input_o\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[1]~33_combout\,
	combout => \s_tx_buf[1]~32_combout\);

-- Location: LCCOMB_X23_Y27_N0
\s_tx_buf[2]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[2]~29_combout\ = \s_tx_buf[2]~26_combout\ $ (\s_tx_buf[1]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[2]~26_combout\,
	datad => \s_tx_buf[1]~32_combout\,
	combout => \s_tx_buf[2]~29_combout\);

-- Location: FF_X23_Y27_N1
\s_tx_buf[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[2]~29_combout\,
	clrn => \ALT_INV_s_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[2]~_emulated_q\);

-- Location: LCCOMB_X23_Y27_N2
\s_tx_buf[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[2]~28_combout\ = \s_tx_buf[2]~_emulated_q\ $ (\s_tx_buf[2]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tx_buf[2]~_emulated_q\,
	datad => \s_tx_buf[2]~26_combout\,
	combout => \s_tx_buf[2]~28_combout\);

-- Location: LCCOMB_X23_Y27_N20
\s_tx_buf[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[2]~27_combout\ = (\s_reset_n~input_o\ & ((\s_tx_buf[0]~43_combout\ & (\s_tx_load_data[2]~input_o\)) # (!\s_tx_buf[0]~43_combout\ & ((\s_tx_buf[2]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reset_n~input_o\,
	datab => \s_tx_load_data[2]~input_o\,
	datac => \s_tx_buf[0]~43_combout\,
	datad => \s_tx_buf[2]~28_combout\,
	combout => \s_tx_buf[2]~27_combout\);

-- Location: LCCOMB_X23_Y27_N14
\s_tx_buf[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[3]~24_combout\ = \s_tx_buf[3]~21_combout\ $ (\s_tx_buf[2]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[3]~21_combout\,
	datad => \s_tx_buf[2]~27_combout\,
	combout => \s_tx_buf[3]~24_combout\);

-- Location: FF_X23_Y27_N15
\s_tx_buf[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[3]~24_combout\,
	clrn => \ALT_INV_s_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[3]~_emulated_q\);

-- Location: LCCOMB_X23_Y27_N12
\s_tx_buf[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[3]~23_combout\ = \s_tx_buf[3]~_emulated_q\ $ (\s_tx_buf[3]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[3]~_emulated_q\,
	datad => \s_tx_buf[3]~21_combout\,
	combout => \s_tx_buf[3]~23_combout\);

-- Location: LCCOMB_X23_Y27_N22
\s_tx_buf[3]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[3]~22_combout\ = (\s_reset_n~input_o\ & ((\s_tx_buf[0]~43_combout\ & (\s_tx_load_data[3]~input_o\)) # (!\s_tx_buf[0]~43_combout\ & ((\s_tx_buf[3]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[0]~43_combout\,
	datab => \s_tx_load_data[3]~input_o\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[3]~23_combout\,
	combout => \s_tx_buf[3]~22_combout\);

-- Location: LCCOMB_X23_Y27_N16
\s_tx_buf[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[4]~19_combout\ = \s_tx_buf[4]~16_combout\ $ (\s_tx_buf[3]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[4]~16_combout\,
	datad => \s_tx_buf[3]~22_combout\,
	combout => \s_tx_buf[4]~19_combout\);

-- Location: FF_X23_Y27_N17
\s_tx_buf[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[4]~19_combout\,
	clrn => \ALT_INV_s_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[4]~_emulated_q\);

-- Location: LCCOMB_X23_Y25_N10
\s_tx_buf[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[4]~18_combout\ = \s_tx_buf[4]~_emulated_q\ $ (\s_tx_buf[4]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[4]~_emulated_q\,
	datad => \s_tx_buf[4]~16_combout\,
	combout => \s_tx_buf[4]~18_combout\);

-- Location: LCCOMB_X23_Y25_N12
\s_tx_buf[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[4]~17_combout\ = (\s_reset_n~input_o\ & ((\s_tx_buf[0]~43_combout\ & (\s_tx_load_data[4]~input_o\)) # (!\s_tx_buf[0]~43_combout\ & ((\s_tx_buf[4]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reset_n~input_o\,
	datab => \s_tx_load_data[4]~input_o\,
	datac => \s_tx_buf[0]~43_combout\,
	datad => \s_tx_buf[4]~18_combout\,
	combout => \s_tx_buf[4]~17_combout\);

-- Location: LCCOMB_X23_Y25_N28
\s_tx_buf[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[5]~11_combout\ = (\s_reset_n~input_o\ & ((GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & (\s_tx_load_data[5]~input_o\)) # (!GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & ((\s_tx_buf[5]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[5]~input_o\,
	datab => \s_tx_buf[5]~11_combout\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[0]~43clkctrl_outclk\,
	combout => \s_tx_buf[5]~11_combout\);

-- Location: LCCOMB_X23_Y25_N8
\s_tx_buf[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[5]~14_combout\ = \s_tx_buf[4]~17_combout\ $ (\s_tx_buf[5]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[4]~17_combout\,
	datad => \s_tx_buf[5]~11_combout\,
	combout => \s_tx_buf[5]~14_combout\);

-- Location: FF_X23_Y25_N9
\s_tx_buf[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[5]~14_combout\,
	clrn => \ALT_INV_s_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[5]~_emulated_q\);

-- Location: LCCOMB_X23_Y25_N2
\s_tx_buf[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[5]~13_combout\ = \s_tx_buf[5]~_emulated_q\ $ (\s_tx_buf[5]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[5]~_emulated_q\,
	datad => \s_tx_buf[5]~11_combout\,
	combout => \s_tx_buf[5]~13_combout\);

-- Location: LCCOMB_X23_Y25_N24
\s_tx_buf[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[5]~12_combout\ = (\s_reset_n~input_o\ & ((\s_tx_buf[0]~43_combout\ & (\s_tx_load_data[5]~input_o\)) # (!\s_tx_buf[0]~43_combout\ & ((\s_tx_buf[5]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[0]~43_combout\,
	datab => \s_tx_load_data[5]~input_o\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[5]~13_combout\,
	combout => \s_tx_buf[5]~12_combout\);

-- Location: LCCOMB_X23_Y25_N18
\s_tx_buf[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[6]~6_combout\ = (\s_reset_n~input_o\ & ((GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & (\s_tx_load_data[6]~input_o\)) # (!GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & ((\s_tx_buf[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[6]~input_o\,
	datab => \s_tx_buf[6]~6_combout\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[0]~43clkctrl_outclk\,
	combout => \s_tx_buf[6]~6_combout\);

-- Location: LCCOMB_X23_Y25_N26
\s_tx_buf[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[6]~9_combout\ = \s_tx_buf[5]~12_combout\ $ (\s_tx_buf[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_tx_buf[5]~12_combout\,
	datad => \s_tx_buf[6]~6_combout\,
	combout => \s_tx_buf[6]~9_combout\);

-- Location: FF_X23_Y25_N27
\s_tx_buf[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[6]~9_combout\,
	clrn => \ALT_INV_s_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[6]~_emulated_q\);

-- Location: LCCOMB_X23_Y25_N20
\s_tx_buf[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[6]~8_combout\ = \s_tx_buf[6]~_emulated_q\ $ (\s_tx_buf[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[6]~_emulated_q\,
	datad => \s_tx_buf[6]~6_combout\,
	combout => \s_tx_buf[6]~8_combout\);

-- Location: LCCOMB_X23_Y25_N30
\s_tx_buf[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[6]~7_combout\ = (\s_reset_n~input_o\ & ((\s_tx_buf[0]~43_combout\ & (\s_tx_load_data[6]~input_o\)) # (!\s_tx_buf[0]~43_combout\ & ((\s_tx_buf[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[6]~input_o\,
	datab => \s_tx_buf[0]~43_combout\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[6]~8_combout\,
	combout => \s_tx_buf[6]~7_combout\);

-- Location: LCCOMB_X22_Y27_N0
\s_tx_buf[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[7]~1_combout\ = (\s_reset_n~input_o\ & ((GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & (\s_tx_load_data[7]~input_o\)) # (!GLOBAL(\s_tx_buf[0]~43clkctrl_outclk\) & ((\s_tx_buf[7]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_load_data[7]~input_o\,
	datab => \s_tx_buf[7]~1_combout\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[0]~43clkctrl_outclk\,
	combout => \s_tx_buf[7]~1_combout\);

-- Location: LCCOMB_X23_Y25_N4
\s_tx_buf[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[7]~4_combout\ = \s_tx_buf[6]~7_combout\ $ (\s_tx_buf[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[6]~7_combout\,
	datad => \s_tx_buf[7]~1_combout\,
	combout => \s_tx_buf[7]~4_combout\);

-- Location: FF_X23_Y25_N5
\s_tx_buf[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_tx_buf[7]~4_combout\,
	clrn => \ALT_INV_s_tx_buf[7]~0_combout\,
	ena => \process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_tx_buf[7]~_emulated_q\);

-- Location: LCCOMB_X22_Y27_N2
\s_tx_buf[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[7]~3_combout\ = \s_tx_buf[7]~_emulated_q\ $ (\s_tx_buf[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_tx_buf[7]~_emulated_q\,
	datad => \s_tx_buf[7]~1_combout\,
	combout => \s_tx_buf[7]~3_combout\);

-- Location: LCCOMB_X22_Y27_N12
\s_tx_buf[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_tx_buf[7]~2_combout\ = (\s_reset_n~input_o\ & ((\s_tx_buf[0]~43_combout\ & (\s_tx_load_data[7]~input_o\)) # (!\s_tx_buf[0]~43_combout\ & ((\s_tx_buf[7]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_tx_buf[0]~43_combout\,
	datab => \s_tx_load_data[7]~input_o\,
	datac => \s_reset_n~input_o\,
	datad => \s_tx_buf[7]~3_combout\,
	combout => \s_tx_buf[7]~2_combout\);

-- Location: IOIBUF_X26_Y29_N8
\s_st_load_s_trdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_st_load_s_trdy,
	o => \s_st_load_s_trdy~input_o\);

-- Location: IOIBUF_X14_Y29_N22
\s_st_load_en~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_st_load_en,
	o => \s_st_load_en~input_o\);

-- Location: LCCOMB_X22_Y27_N16
\process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (\s_st_load_en~input_o\ & \s_ss_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_st_load_en~input_o\,
	datad => \s_ss_n~input_o\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X24_Y27_N4
\process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = ((!\s_st_load_s_trdy~input_o\ & \process_1~3_combout\)) # (!\s_reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_st_load_s_trdy~input_o\,
	datab => \process_1~3_combout\,
	datad => \s_reset_n~input_o\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X22_Y27_N8
\s_trdy~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_trdy~8_combout\ = (\s_ss_n~input_o\ & ((\s_st_load_en~input_o\ & (\s_st_load_s_trdy~input_o\)) # (!\s_st_load_en~input_o\ & ((\s_tx_load_en~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_ss_n~input_o\,
	datab => \s_st_load_en~input_o\,
	datac => \s_st_load_s_trdy~input_o\,
	datad => \s_tx_load_en~input_o\,
	combout => \s_trdy~8_combout\);

-- Location: LCCOMB_X24_Y27_N10
\s_trdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_trdy~1_combout\ = (!\process_1~1_combout\ & ((\s_trdy~8_combout\) # (\s_trdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~1_combout\,
	datac => \s_trdy~8_combout\,
	datad => \s_trdy~1_combout\,
	combout => \s_trdy~1_combout\);

-- Location: LCCOMB_X22_Y28_N8
\s_wr_add~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_wr_add~0_combout\ = (s_bit_cnt(1) & (\s_mosi~input_o\)) # (!s_bit_cnt(1) & ((\s_wr_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datac => \s_wr_add~q\,
	datad => s_bit_cnt(1),
	combout => \s_wr_add~0_combout\);

-- Location: FF_X22_Y28_N9
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

-- Location: LCCOMB_X24_Y27_N16
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (s_bit_cnt(9) & \s_wr_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_bit_cnt(9),
	datad => \s_wr_add~q\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X24_Y27_N22
\s_trdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_trdy~7_combout\ = (\s_trdy~2_combout\ & (!\process_1~0_combout\ & ((\s_rd_add~q\) # (!s_bit_cnt(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_rd_add~q\,
	datab => s_bit_cnt(16),
	datac => \s_trdy~2_combout\,
	datad => \process_1~0_combout\,
	combout => \s_trdy~7_combout\);

-- Location: LCCOMB_X24_Y27_N2
\s_trdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_trdy~3_combout\ = \s_trdy~1_combout\ $ (((\s_trdy~7_combout\) # ((\s_mosi~input_o\ & \process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_trdy~1_combout\,
	datab => \s_mosi~input_o\,
	datac => \s_trdy~7_combout\,
	datad => \process_1~0_combout\,
	combout => \s_trdy~3_combout\);

-- Location: LCCOMB_X24_Y27_N8
\s_trdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_trdy~0_combout\ = (\s_trdy~8_combout\) # (\process_1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_trdy~8_combout\,
	datab => \process_1~1_combout\,
	combout => \s_trdy~0_combout\);

-- Location: FF_X24_Y27_N3
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

-- Location: LCCOMB_X24_Y27_N18
\s_trdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_trdy~2_combout\ = (!\process_1~1_combout\ & ((\s_trdy~8_combout\) # (\s_trdy~1_combout\ $ (\s_trdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_trdy~1_combout\,
	datab => \s_trdy~8_combout\,
	datac => \process_1~1_combout\,
	datad => \s_trdy~reg0_emulated_q\,
	combout => \s_trdy~2_combout\);

-- Location: IOIBUF_X21_Y29_N15
\s_st_load_s_rrdy~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_st_load_s_rrdy,
	o => \s_st_load_s_rrdy~input_o\);

-- Location: IOIBUF_X21_Y29_N1
\s_rx_req~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_rx_req,
	o => \s_rx_req~input_o\);

-- Location: LCCOMB_X21_Y27_N24
\process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\s_ss_n~input_o\ & \s_rx_req~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_ss_n~input_o\,
	datad => \s_rx_req~input_o\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X21_Y27_N22
\process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = ((\process_1~4_combout\) # ((!\s_st_load_s_rrdy~input_o\ & \process_1~3_combout\))) # (!\s_reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_st_load_s_rrdy~input_o\,
	datab => \process_1~3_combout\,
	datac => \s_reset_n~input_o\,
	datad => \process_1~4_combout\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X21_Y27_N20
\s_rrdy~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rrdy~1_combout\ = (!\process_1~5_combout\ & ((\process_1~3_combout\) # (\s_rrdy~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~5_combout\,
	datab => \process_1~3_combout\,
	datad => \s_rrdy~1_combout\,
	combout => \s_rrdy~1_combout\);

-- Location: LCCOMB_X21_Y27_N28
\s_rrdy~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rrdy~7_combout\ = (\s_rrdy~2_combout\) # ((!\s_wr_add~q\ & s_bit_cnt(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_wr_add~q\,
	datab => \s_rrdy~2_combout\,
	datac => s_bit_cnt(16),
	combout => \s_rrdy~7_combout\);

-- Location: LCCOMB_X21_Y27_N18
\process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (\s_wr_add~q\ & s_bit_cnt(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_wr_add~q\,
	datad => s_bit_cnt(10),
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X21_Y27_N12
\s_rrdy~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rrdy~3_combout\ = \s_rrdy~1_combout\ $ (((\process_1~2_combout\ & (\s_mosi~input_o\)) # (!\process_1~2_combout\ & ((\s_rrdy~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datab => \s_rrdy~1_combout\,
	datac => \s_rrdy~7_combout\,
	datad => \process_1~2_combout\,
	combout => \s_rrdy~3_combout\);

-- Location: LCCOMB_X21_Y27_N16
\s_rrdy~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rrdy~0_combout\ = (\process_1~5_combout\) # (\process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~5_combout\,
	datad => \process_1~3_combout\,
	combout => \s_rrdy~0_combout\);

-- Location: FF_X21_Y27_N13
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

-- Location: LCCOMB_X21_Y27_N26
\s_rrdy~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rrdy~2_combout\ = (!\process_1~5_combout\ & ((\process_1~3_combout\) # (\s_rrdy~1_combout\ $ (\s_rrdy~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~3_combout\,
	datab => \s_rrdy~1_combout\,
	datac => \process_1~5_combout\,
	datad => \s_rrdy~reg0_emulated_q\,
	combout => \s_rrdy~2_combout\);

-- Location: IOIBUF_X26_Y29_N22
\s_st_load_s_roe~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_st_load_s_roe,
	o => \s_st_load_s_roe~input_o\);

-- Location: LCCOMB_X22_Y27_N22
\process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = ((\process_1~3_combout\ & !\s_st_load_s_roe~input_o\)) # (!\s_reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~3_combout\,
	datac => \s_st_load_s_roe~input_o\,
	datad => \s_reset_n~input_o\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X22_Y27_N10
\s_roe~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_roe~1_combout\ = (!\process_1~6_combout\ & ((\process_1~3_combout\) # (\s_roe~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_1~3_combout\,
	datac => \process_1~6_combout\,
	datad => \s_roe~1_combout\,
	combout => \s_roe~1_combout\);

-- Location: LCCOMB_X24_Y27_N12
\s_roe~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_roe~6_combout\ = (\s_wr_add~q\ & (((!s_bit_cnt(11))) # (!\s_mosi~input_o\))) # (!\s_wr_add~q\ & (((!s_bit_cnt(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_wr_add~q\,
	datab => \s_mosi~input_o\,
	datac => s_bit_cnt(11),
	datad => s_bit_cnt(16),
	combout => \s_roe~6_combout\);

-- Location: LCCOMB_X22_Y27_N28
\s_roe~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_roe~7_combout\ = (\s_wr_add~q\ & (\s_roe~6_combout\ & ((s_bit_cnt(11)) # (!\s_roe~2_combout\)))) # (!\s_wr_add~q\ & (!\s_roe~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_roe~2_combout\,
	datab => \s_wr_add~q\,
	datac => s_bit_cnt(11),
	datad => \s_roe~6_combout\,
	combout => \s_roe~7_combout\);

-- Location: LCCOMB_X22_Y27_N18
\s_roe~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_roe~3_combout\ = \s_roe~1_combout\ $ ((((!\s_roe~6_combout\ & \s_rrdy~2_combout\)) # (!\s_roe~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_roe~6_combout\,
	datab => \s_roe~1_combout\,
	datac => \s_rrdy~2_combout\,
	datad => \s_roe~7_combout\,
	combout => \s_roe~3_combout\);

-- Location: LCCOMB_X22_Y27_N4
\s_roe~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_roe~0_combout\ = (\process_1~6_combout\) # (\process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_1~6_combout\,
	datad => \process_1~3_combout\,
	combout => \s_roe~0_combout\);

-- Location: FF_X22_Y27_N19
\s_roe~reg0_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_roe~3_combout\,
	clrn => \ALT_INV_s_roe~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_roe~reg0_emulated_q\);

-- Location: LCCOMB_X22_Y27_N6
\s_roe~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_roe~2_combout\ = (!\process_1~6_combout\ & ((\process_1~3_combout\) # (\s_roe~1_combout\ $ (\s_roe~reg0_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_roe~1_combout\,
	datab => \process_1~3_combout\,
	datac => \process_1~6_combout\,
	datad => \s_roe~reg0_emulated_q\,
	combout => \s_roe~2_combout\);

-- Location: LCCOMB_X21_Y27_N10
\s_miso~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~1_combout\ = (s_bit_cnt(9) & (\s_rrdy~2_combout\)) # (!s_bit_cnt(9) & ((\s_roe~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_bit_cnt(9),
	datac => \s_rrdy~2_combout\,
	datad => \s_roe~2_combout\,
	combout => \s_miso~1_combout\);

-- Location: LCCOMB_X21_Y27_N14
\s_miso~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~2_combout\ = (s_bit_cnt(8) & (\s_trdy~2_combout\)) # (!s_bit_cnt(8) & ((\s_miso~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_trdy~2_combout\,
	datac => s_bit_cnt(8),
	datad => \s_miso~1_combout\,
	combout => \s_miso~2_combout\);

-- Location: LCCOMB_X22_Y27_N30
\s_miso~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~3_combout\ = (\s_rd_add~q\ & ((\s_miso~2_combout\))) # (!\s_rd_add~q\ & (\s_tx_buf[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_rd_add~q\,
	datac => \s_tx_buf[7]~2_combout\,
	datad => \s_miso~2_combout\,
	combout => \s_miso~3_combout\);

-- Location: LCCOMB_X27_Y27_N4
\s_miso~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~5_combout\ = (s_bit_cnt(0) & \process_1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_bit_cnt(0),
	datad => \process_1~8_combout\,
	combout => \s_miso~5_combout\);

-- Location: LCCOMB_X24_Y27_N30
\s_miso~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~4_combout\ = (s_bit_cnt(9) & (!s_bit_cnt(8) & !s_bit_cnt(10))) # (!s_bit_cnt(9) & (s_bit_cnt(8) $ (s_bit_cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_bit_cnt(9),
	datac => s_bit_cnt(8),
	datad => s_bit_cnt(10),
	combout => \s_miso~4_combout\);

-- Location: LCCOMB_X27_Y27_N26
\s_miso~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_miso~6_combout\ = (\s_rd_add~q\ & (((\s_miso~4_combout\)))) # (!\s_rd_add~q\ & (\process_1~7_combout\ & (\s_miso~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~7_combout\,
	datab => \s_rd_add~q\,
	datac => \s_miso~5_combout\,
	datad => \s_miso~4_combout\,
	combout => \s_miso~6_combout\);

-- Location: FF_X22_Y27_N31
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

-- Location: LCCOMB_X27_Y27_N20
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

-- Location: FF_X27_Y27_N21
\s_miso~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \s_ss_clk~input_o\,
	d => \s_miso~enfeeder_combout\,
	clrn => \ALT_INV_process_0~0_combout\,
	ena => \s_miso~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_miso~en_q\);

-- Location: IOIBUF_X41_Y15_N22
\i_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G8
\i_clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X19_Y29_N29
\i_tx_start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_tx_start,
	o => \i_tx_start~input_o\);

-- Location: LCCOMB_X19_Y28_N8
\r_tx_start~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_tx_start~feeder_combout\ = \i_tx_start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_tx_start~input_o\,
	combout => \r_tx_start~feeder_combout\);

-- Location: IOIBUF_X21_Y0_N1
\i_rstb~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rstb,
	o => \i_rstb~input_o\);

-- Location: CLKCTRL_G19
\i_rstb~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_rstb~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_rstb~inputclkctrl_outclk\);

-- Location: FF_X19_Y28_N9
r_tx_start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_tx_start~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_tx_start~q\);

-- Location: LCCOMB_X19_Y28_N14
\r_counter_clock[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_clock[0]~8_combout\ = r_counter_clock(0) $ (VCC)
-- \r_counter_clock[0]~9\ = CARRY(r_counter_clock(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_counter_clock(0),
	datad => VCC,
	combout => \r_counter_clock[0]~8_combout\,
	cout => \r_counter_clock[0]~9\);

-- Location: LCCOMB_X19_Y28_N12
\r_sclk_fall~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sclk_fall~0_combout\ = (!r_counter_clock(4) & (r_counter_clock(1) & (r_counter_clock(0) & !r_counter_clock(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(4),
	datab => r_counter_clock(1),
	datac => r_counter_clock(0),
	datad => r_counter_clock(3),
	combout => \r_sclk_fall~0_combout\);

-- Location: LCCOMB_X19_Y28_N26
\r_counter_clock[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_clock[6]~20_combout\ = (r_counter_clock(6) & (\r_counter_clock[5]~19\ $ (GND))) # (!r_counter_clock(6) & (!\r_counter_clock[5]~19\ & VCC))
-- \r_counter_clock[6]~21\ = CARRY((r_counter_clock(6) & !\r_counter_clock[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(6),
	datad => VCC,
	cin => \r_counter_clock[5]~19\,
	combout => \r_counter_clock[6]~20_combout\,
	cout => \r_counter_clock[6]~21\);

-- Location: LCCOMB_X19_Y28_N28
\r_counter_clock[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_clock[7]~23_combout\ = \r_counter_clock[6]~21\ $ (r_counter_clock(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_counter_clock(7),
	cin => \r_counter_clock[6]~21\,
	combout => \r_counter_clock[7]~23_combout\);

-- Location: FF_X19_Y28_N29
\r_counter_clock[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_counter_clock[7]~23_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(7));

-- Location: LCCOMB_X19_Y28_N6
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (r_counter_clock(5)) # ((!r_counter_clock(2)) # (!r_counter_clock(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_counter_clock(5),
	datac => r_counter_clock(7),
	datad => r_counter_clock(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X19_Y28_N10
\r_counter_clock[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_clock[7]~22_combout\ = ((\r_sclk_fall~0_combout\ & (r_counter_clock(6) & !\Equal2~0_combout\))) # (!\r_counter_clock_ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sclk_fall~0_combout\,
	datab => \r_counter_clock_ena~q\,
	datac => r_counter_clock(6),
	datad => \Equal2~0_combout\,
	combout => \r_counter_clock[7]~22_combout\);

-- Location: FF_X19_Y28_N15
\r_counter_clock[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_counter_clock[0]~8_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(0));

-- Location: LCCOMB_X19_Y28_N16
\r_counter_clock[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_clock[1]~10_combout\ = (r_counter_clock(1) & (!\r_counter_clock[0]~9\)) # (!r_counter_clock(1) & ((\r_counter_clock[0]~9\) # (GND)))
-- \r_counter_clock[1]~11\ = CARRY((!\r_counter_clock[0]~9\) # (!r_counter_clock(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_counter_clock(1),
	datad => VCC,
	cin => \r_counter_clock[0]~9\,
	combout => \r_counter_clock[1]~10_combout\,
	cout => \r_counter_clock[1]~11\);

-- Location: FF_X19_Y28_N17
\r_counter_clock[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_counter_clock[1]~10_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(1));

-- Location: LCCOMB_X19_Y28_N18
\r_counter_clock[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_clock[2]~12_combout\ = (r_counter_clock(2) & (\r_counter_clock[1]~11\ $ (GND))) # (!r_counter_clock(2) & (!\r_counter_clock[1]~11\ & VCC))
-- \r_counter_clock[2]~13\ = CARRY((r_counter_clock(2) & !\r_counter_clock[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_counter_clock(2),
	datad => VCC,
	cin => \r_counter_clock[1]~11\,
	combout => \r_counter_clock[2]~12_combout\,
	cout => \r_counter_clock[2]~13\);

-- Location: FF_X19_Y28_N19
\r_counter_clock[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_counter_clock[2]~12_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(2));

-- Location: LCCOMB_X19_Y28_N20
\r_counter_clock[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_clock[3]~14_combout\ = (r_counter_clock(3) & (!\r_counter_clock[2]~13\)) # (!r_counter_clock(3) & ((\r_counter_clock[2]~13\) # (GND)))
-- \r_counter_clock[3]~15\ = CARRY((!\r_counter_clock[2]~13\) # (!r_counter_clock(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_counter_clock(3),
	datad => VCC,
	cin => \r_counter_clock[2]~13\,
	combout => \r_counter_clock[3]~14_combout\,
	cout => \r_counter_clock[3]~15\);

-- Location: FF_X19_Y28_N21
\r_counter_clock[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_counter_clock[3]~14_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(3));

-- Location: LCCOMB_X19_Y28_N22
\r_counter_clock[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_clock[4]~16_combout\ = (r_counter_clock(4) & (\r_counter_clock[3]~15\ $ (GND))) # (!r_counter_clock(4) & (!\r_counter_clock[3]~15\ & VCC))
-- \r_counter_clock[4]~17\ = CARRY((r_counter_clock(4) & !\r_counter_clock[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(4),
	datad => VCC,
	cin => \r_counter_clock[3]~15\,
	combout => \r_counter_clock[4]~16_combout\,
	cout => \r_counter_clock[4]~17\);

-- Location: FF_X19_Y28_N23
\r_counter_clock[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_counter_clock[4]~16_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(4));

-- Location: LCCOMB_X19_Y28_N24
\r_counter_clock[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_clock[5]~18_combout\ = (r_counter_clock(5) & (!\r_counter_clock[4]~17\)) # (!r_counter_clock(5) & ((\r_counter_clock[4]~17\) # (GND)))
-- \r_counter_clock[5]~19\ = CARRY((!\r_counter_clock[4]~17\) # (!r_counter_clock(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_counter_clock(5),
	datad => VCC,
	cin => \r_counter_clock[4]~17\,
	combout => \r_counter_clock[5]~18_combout\,
	cout => \r_counter_clock[5]~19\);

-- Location: FF_X19_Y28_N25
\r_counter_clock[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_counter_clock[5]~18_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(5));

-- Location: FF_X19_Y28_N27
\r_counter_clock[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_counter_clock[6]~20_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sclr => \r_counter_clock[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_clock(6));

-- Location: LCCOMB_X20_Y28_N20
\r_sclk_rise~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sclk_rise~0_combout\ = (r_counter_clock(6) & (\r_counter_clock_ena~q\ & (!\Equal2~0_combout\ & \r_sclk_fall~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_clock(6),
	datab => \r_counter_clock_ena~q\,
	datac => \Equal2~0_combout\,
	datad => \r_sclk_fall~0_combout\,
	combout => \r_sclk_rise~0_combout\);

-- Location: FF_X20_Y28_N21
r_sclk_rise : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sclk_rise~0_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sclk_rise~q\);

-- Location: LCCOMB_X23_Y28_N10
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (r_counter_data(1) & r_counter_data(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_counter_data(1),
	datad => r_counter_data(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X23_Y28_N16
\r_counter_data[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_data[2]~1_combout\ = (\r_st_present.ST_TX_RX~q\ & (((r_counter_data(2) & \Add0~0_combout\)) # (!\r_sclk_rise~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sclk_rise~q\,
	datab => r_counter_data(2),
	datac => \r_st_present.ST_TX_RX~q\,
	datad => \Add0~0_combout\,
	combout => \r_counter_data[2]~1_combout\);

-- Location: LCCOMB_X23_Y28_N0
\r_counter_data[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_data[0]~3_combout\ = (r_counter_data(0) & ((\r_counter_data[2]~1_combout\))) # (!r_counter_data(0) & (\r_st_present.ST_TX_RX~q\ & !\r_counter_data[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_st_present.ST_TX_RX~q\,
	datac => r_counter_data(0),
	datad => \r_counter_data[2]~1_combout\,
	combout => \r_counter_data[0]~3_combout\);

-- Location: FF_X23_Y28_N1
\r_counter_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_counter_data[0]~3_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_data(0));

-- Location: LCCOMB_X23_Y28_N26
\r_counter_data[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_data[1]~2_combout\ = (\r_counter_data[2]~1_combout\ & (((r_counter_data(1))))) # (!\r_counter_data[2]~1_combout\ & (\r_st_present.ST_TX_RX~q\ & (r_counter_data(0) $ (r_counter_data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_st_present.ST_TX_RX~q\,
	datab => r_counter_data(0),
	datac => r_counter_data(1),
	datad => \r_counter_data[2]~1_combout\,
	combout => \r_counter_data[1]~2_combout\);

-- Location: FF_X23_Y28_N27
\r_counter_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_counter_data[1]~2_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_data(1));

-- Location: LCCOMB_X20_Y28_N6
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (r_counter_data(1) & (\r_sclk_rise~q\ & (r_counter_data(0) & r_counter_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_data(1),
	datab => \r_sclk_rise~q\,
	datac => r_counter_data(0),
	datad => r_counter_data(2),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X20_Y28_N30
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\r_tx_start~q\ & (((\r_st_present.ST_TX_RX~q\ & !\Selector1~0_combout\)) # (!\r_st_present.ST_RESET~q\))) # (!\r_tx_start~q\ & (((\r_st_present.ST_TX_RX~q\ & !\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_tx_start~q\,
	datab => \r_st_present.ST_RESET~q\,
	datac => \r_st_present.ST_TX_RX~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X20_Y28_N31
\r_st_present.ST_TX_RX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_st_present.ST_TX_RX~q\);

-- Location: LCCOMB_X23_Y28_N28
\r_counter_data[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_data[2]~0_combout\ = (\r_st_present.ST_TX_RX~q\ & ((r_counter_data(2)) # ((\r_sclk_rise~q\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sclk_rise~q\,
	datab => \r_st_present.ST_TX_RX~q\,
	datac => r_counter_data(2),
	datad => \Add0~0_combout\,
	combout => \r_counter_data[2]~0_combout\);

-- Location: FF_X23_Y28_N29
\r_counter_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_counter_data[2]~0_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_counter_data(2));

-- Location: LCCOMB_X20_Y28_N8
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\r_sclk_fall~q\ & \r_st_present.ST_END~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sclk_fall~q\,
	datad => \r_st_present.ST_END~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X20_Y28_N18
\r_rx_data[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_rx_data[0]~0_combout\ = (\r_st_present.ST_TX_RX~q\ & \r_sclk_rise~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_st_present.ST_TX_RX~q\,
	datad => \r_sclk_rise~q\,
	combout => \r_rx_data[0]~0_combout\);

-- Location: LCCOMB_X20_Y28_N26
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((r_counter_data(2) & (\Add0~0_combout\ & \r_rx_data[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_counter_data(2),
	datab => \Selector2~0_combout\,
	datac => \Add0~0_combout\,
	datad => \r_rx_data[0]~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X20_Y28_N27
\r_st_present.ST_END\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_st_present.ST_END~q\);

-- Location: LCCOMB_X20_Y28_N4
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\r_tx_start~q\ & (((!\r_st_present.ST_END~q\)) # (!\r_sclk_fall~q\))) # (!\r_tx_start~q\ & (\r_st_present.ST_RESET~q\ & ((!\r_st_present.ST_END~q\) # (!\r_sclk_fall~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_tx_start~q\,
	datab => \r_sclk_fall~q\,
	datac => \r_st_present.ST_RESET~q\,
	datad => \r_st_present.ST_END~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X20_Y28_N5
\r_st_present.ST_RESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_st_present.ST_RESET~q\);

-- Location: LCCOMB_X19_Y28_N30
\r_counter_clock_ena~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_counter_clock_ena~feeder_combout\ = \r_st_present.ST_RESET~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_st_present.ST_RESET~q\,
	combout => \r_counter_clock_ena~feeder_combout\);

-- Location: FF_X19_Y28_N31
r_counter_clock_ena : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_counter_clock_ena~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_counter_clock_ena~q\);

-- Location: LCCOMB_X19_Y28_N4
\r_sclk_fall~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sclk_fall~1_combout\ = (\r_counter_clock_ena~q\ & (!r_counter_clock(7) & (!r_counter_clock(2) & r_counter_clock(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_counter_clock_ena~q\,
	datab => r_counter_clock(7),
	datac => r_counter_clock(2),
	datad => r_counter_clock(5),
	combout => \r_sclk_fall~1_combout\);

-- Location: LCCOMB_X20_Y28_N16
\r_sclk_fall~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_sclk_fall~2_combout\ = (\r_sclk_fall~1_combout\ & (r_counter_clock(6) & \r_sclk_fall~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_sclk_fall~1_combout\,
	datac => r_counter_clock(6),
	datad => \r_sclk_fall~0_combout\,
	combout => \r_sclk_fall~2_combout\);

-- Location: FF_X20_Y28_N17
r_sclk_fall : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sclk_fall~2_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sclk_fall~q\);

-- Location: LCCOMB_X20_Y28_N24
\o_tx_end~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_tx_end~0_combout\ = (\r_sclk_fall~q\ & \r_st_present.ST_END~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_sclk_fall~q\,
	datad => \r_st_present.ST_END~q\,
	combout => \o_tx_end~0_combout\);

-- Location: FF_X20_Y28_N25
\o_tx_end~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_tx_end~0_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_tx_end~reg0_q\);

-- Location: IOIBUF_X35_Y0_N1
\i_miso~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_miso,
	o => \i_miso~input_o\);

-- Location: FF_X20_Y28_N19
\r_rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_miso~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(0));

-- Location: LCCOMB_X19_Y28_N0
\o_data_parallel[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data_parallel[0]~reg0feeder_combout\ = r_rx_data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_rx_data(0),
	combout => \o_data_parallel[0]~reg0feeder_combout\);

-- Location: FF_X19_Y28_N1
\o_data_parallel[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data_parallel[0]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[0]~reg0_q\);

-- Location: LCCOMB_X20_Y28_N28
\r_rx_data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_rx_data[1]~feeder_combout\ = r_rx_data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_rx_data(0),
	combout => \r_rx_data[1]~feeder_combout\);

-- Location: FF_X20_Y28_N29
\r_rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rx_data[1]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(1));

-- Location: LCCOMB_X16_Y28_N0
\o_data_parallel[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data_parallel[1]~reg0feeder_combout\ = r_rx_data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_rx_data(1),
	combout => \o_data_parallel[1]~reg0feeder_combout\);

-- Location: FF_X16_Y28_N1
\o_data_parallel[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data_parallel[1]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[1]~reg0_q\);

-- Location: LCCOMB_X20_Y28_N0
\r_rx_data[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_rx_data[2]~feeder_combout\ = r_rx_data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_rx_data(1),
	combout => \r_rx_data[2]~feeder_combout\);

-- Location: FF_X20_Y28_N1
\r_rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rx_data[2]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(2));

-- Location: LCCOMB_X16_Y28_N6
\o_data_parallel[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data_parallel[2]~reg0feeder_combout\ = r_rx_data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_rx_data(2),
	combout => \o_data_parallel[2]~reg0feeder_combout\);

-- Location: FF_X16_Y28_N7
\o_data_parallel[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data_parallel[2]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[2]~reg0_q\);

-- Location: LCCOMB_X20_Y28_N14
\r_rx_data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_rx_data[3]~feeder_combout\ = r_rx_data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_rx_data(2),
	combout => \r_rx_data[3]~feeder_combout\);

-- Location: FF_X20_Y28_N15
\r_rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rx_data[3]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(3));

-- Location: LCCOMB_X16_Y28_N12
\o_data_parallel[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data_parallel[3]~reg0feeder_combout\ = r_rx_data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_rx_data(3),
	combout => \o_data_parallel[3]~reg0feeder_combout\);

-- Location: FF_X16_Y28_N13
\o_data_parallel[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data_parallel[3]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[3]~reg0_q\);

-- Location: LCCOMB_X20_Y28_N22
\r_rx_data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_rx_data[4]~feeder_combout\ = r_rx_data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_rx_data(3),
	combout => \r_rx_data[4]~feeder_combout\);

-- Location: FF_X20_Y28_N23
\r_rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rx_data[4]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(4));

-- Location: LCCOMB_X16_Y28_N2
\o_data_parallel[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data_parallel[4]~reg0feeder_combout\ = r_rx_data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_rx_data(4),
	combout => \o_data_parallel[4]~reg0feeder_combout\);

-- Location: FF_X16_Y28_N3
\o_data_parallel[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data_parallel[4]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[4]~reg0_q\);

-- Location: FF_X20_Y28_N9
\r_rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => r_rx_data(4),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(5));

-- Location: LCCOMB_X19_Y28_N2
\o_data_parallel[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data_parallel[5]~reg0feeder_combout\ = r_rx_data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_rx_data(5),
	combout => \o_data_parallel[5]~reg0feeder_combout\);

-- Location: FF_X19_Y28_N3
\o_data_parallel[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data_parallel[5]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[5]~reg0_q\);

-- Location: LCCOMB_X20_Y28_N10
\r_rx_data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_rx_data[6]~feeder_combout\ = r_rx_data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_rx_data(5),
	combout => \r_rx_data[6]~feeder_combout\);

-- Location: FF_X20_Y28_N11
\r_rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rx_data[6]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(6));

-- Location: LCCOMB_X16_Y28_N24
\o_data_parallel[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data_parallel[6]~reg0feeder_combout\ = r_rx_data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_rx_data(6),
	combout => \o_data_parallel[6]~reg0feeder_combout\);

-- Location: FF_X16_Y28_N25
\o_data_parallel[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data_parallel[6]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[6]~reg0_q\);

-- Location: LCCOMB_X20_Y28_N12
\r_rx_data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_rx_data[7]~feeder_combout\ = r_rx_data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_rx_data(6),
	combout => \r_rx_data[7]~feeder_combout\);

-- Location: FF_X20_Y28_N13
\r_rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_rx_data[7]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_rx_data(7));

-- Location: LCCOMB_X16_Y28_N22
\o_data_parallel[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data_parallel[7]~reg0feeder_combout\ = r_rx_data(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_rx_data(7),
	combout => \o_data_parallel[7]~reg0feeder_combout\);

-- Location: FF_X16_Y28_N23
\o_data_parallel[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data_parallel[7]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_st_present.ST_END~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data_parallel[7]~reg0_q\);

-- Location: LCCOMB_X23_Y28_N6
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\r_sclk_rise~q\) # (((!\o_sclk~reg0_q\ & !\r_sclk_fall~q\)) # (!\r_st_present.ST_TX_RX~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_sclk~reg0_q\,
	datab => \r_sclk_fall~q\,
	datac => \r_sclk_rise~q\,
	datad => \r_st_present.ST_TX_RX~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X23_Y28_N12
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = ((\r_st_present.ST_END~q\ & \o_sclk~reg0_q\)) # (!\Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_st_present.ST_END~q\,
	datac => \o_sclk~reg0_q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X23_Y28_N13
\o_sclk~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_sclk~reg0_q\);

-- Location: LCCOMB_X23_Y28_N14
\o_ss~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_ss~reg0feeder_combout\ = \r_st_present.ST_RESET~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r_st_present.ST_RESET~q\,
	combout => \o_ss~reg0feeder_combout\);

-- Location: FF_X23_Y28_N15
\o_ss~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_ss~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ss~reg0_q\);

-- Location: LCCOMB_X23_Y28_N8
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (r_tx_data(0)) # ((\r_sclk_fall~q\ & (!\r_sclk_rise~q\ & !\r_st_present.ST_END~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_tx_data(0),
	datab => \r_sclk_fall~q\,
	datac => \r_sclk_rise~q\,
	datad => \r_st_present.ST_END~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X22_Y28_N14
\s_rx_buf[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[0]~7_combout\ = (\s_wr_add~q\ & (((s_rx_buf(0))))) # (!\s_wr_add~q\ & ((s_bit_cnt(16) & (\s_mosi~input_o\)) # (!s_bit_cnt(16) & ((s_rx_buf(0))))))

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
	combout => \s_rx_buf[0]~7_combout\);

-- Location: FF_X22_Y28_N15
\s_rx_buf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[0]~7_combout\,
	clrn => \s_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(0));

-- Location: CLKCTRL_G12
\process_1~4clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \process_1~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \process_1~4clkctrl_outclk\);

-- Location: LCCOMB_X22_Y28_N24
\s_rx_data[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(0) = (\s_reset_n~input_o\ & ((GLOBAL(\process_1~4clkctrl_outclk\) & ((s_rx_buf(0)))) # (!GLOBAL(\process_1~4clkctrl_outclk\) & (s_rx_data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reset_n~input_o\,
	datab => s_rx_data(0),
	datac => s_rx_buf(0),
	datad => \process_1~4clkctrl_outclk\,
	combout => s_rx_data(0));

-- Location: LCCOMB_X23_Y28_N22
\Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\r_st_present.ST_RESET~q\ & (\Selector12~0_combout\)) # (!\r_st_present.ST_RESET~q\ & ((s_rx_data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_st_present.ST_RESET~q\,
	datac => \Selector12~0_combout\,
	datad => s_rx_data(0),
	combout => \Selector12~1_combout\);

-- Location: FF_X23_Y28_N23
\r_tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector12~1_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(0));

-- Location: LCCOMB_X21_Y28_N24
\s_rx_buf[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[1]~6_combout\ = (\s_wr_add~q\ & (((s_rx_buf(1))))) # (!\s_wr_add~q\ & ((s_bit_cnt(15) & (\s_mosi~input_o\)) # (!s_bit_cnt(15) & ((s_rx_buf(1))))))

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
	combout => \s_rx_buf[1]~6_combout\);

-- Location: FF_X21_Y28_N25
\s_rx_buf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[1]~6_combout\,
	clrn => \s_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(1));

-- Location: LCCOMB_X21_Y28_N10
\s_rx_data[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(1) = (\s_reset_n~input_o\ & ((GLOBAL(\process_1~4clkctrl_outclk\) & (s_rx_buf(1))) # (!GLOBAL(\process_1~4clkctrl_outclk\) & ((s_rx_data(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reset_n~input_o\,
	datab => s_rx_buf(1),
	datac => s_rx_data(1),
	datad => \process_1~4clkctrl_outclk\,
	combout => s_rx_data(1));

-- Location: LCCOMB_X21_Y28_N22
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(0))) # (!\r_st_present.ST_RESET~q\ & ((s_rx_data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_st_present.ST_RESET~q\,
	datac => r_tx_data(0),
	datad => s_rx_data(1),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X20_Y28_N2
\r_tx_data[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_tx_data[7]~0_combout\ = (!\r_st_present.ST_END~q\ & (((\r_sclk_fall~q\ & !\r_sclk_rise~q\)) # (!\r_st_present.ST_TX_RX~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_st_present.ST_END~q\,
	datab => \r_sclk_fall~q\,
	datac => \r_st_present.ST_TX_RX~q\,
	datad => \r_sclk_rise~q\,
	combout => \r_tx_data[7]~0_combout\);

-- Location: FF_X21_Y28_N23
\r_tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(1));

-- Location: LCCOMB_X21_Y28_N26
\s_rx_buf[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[2]~5_combout\ = (\s_wr_add~q\ & (((s_rx_buf(2))))) # (!\s_wr_add~q\ & ((s_bit_cnt(14) & (\s_mosi~input_o\)) # (!s_bit_cnt(14) & ((s_rx_buf(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datab => \s_wr_add~q\,
	datac => s_rx_buf(2),
	datad => s_bit_cnt(14),
	combout => \s_rx_buf[2]~5_combout\);

-- Location: FF_X21_Y28_N27
\s_rx_buf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[2]~5_combout\,
	clrn => \s_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(2));

-- Location: LCCOMB_X21_Y28_N0
\s_rx_data[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(2) = (\s_reset_n~input_o\ & ((GLOBAL(\process_1~4clkctrl_outclk\) & (s_rx_buf(2))) # (!GLOBAL(\process_1~4clkctrl_outclk\) & ((s_rx_data(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_rx_buf(2),
	datab => \s_reset_n~input_o\,
	datac => s_rx_data(2),
	datad => \process_1~4clkctrl_outclk\,
	combout => s_rx_data(2));

-- Location: LCCOMB_X21_Y28_N14
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(1))) # (!\r_st_present.ST_RESET~q\ & ((s_rx_data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_st_present.ST_RESET~q\,
	datac => r_tx_data(1),
	datad => s_rx_data(2),
	combout => \Selector10~0_combout\);

-- Location: FF_X21_Y28_N15
\r_tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(2));

-- Location: LCCOMB_X21_Y28_N20
\s_rx_buf[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[3]~4_combout\ = (\s_wr_add~q\ & (((s_rx_buf(3))))) # (!\s_wr_add~q\ & ((s_bit_cnt(13) & (\s_mosi~input_o\)) # (!s_bit_cnt(13) & ((s_rx_buf(3))))))

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
	combout => \s_rx_buf[3]~4_combout\);

-- Location: FF_X21_Y28_N21
\s_rx_buf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[3]~4_combout\,
	clrn => \s_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(3));

-- Location: LCCOMB_X21_Y28_N2
\s_rx_data[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(3) = (\s_reset_n~input_o\ & ((GLOBAL(\process_1~4clkctrl_outclk\) & (s_rx_buf(3))) # (!GLOBAL(\process_1~4clkctrl_outclk\) & ((s_rx_data(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_rx_buf(3),
	datab => s_rx_data(3),
	datac => \s_reset_n~input_o\,
	datad => \process_1~4clkctrl_outclk\,
	combout => s_rx_data(3));

-- Location: LCCOMB_X21_Y28_N30
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(2))) # (!\r_st_present.ST_RESET~q\ & ((s_rx_data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_st_present.ST_RESET~q\,
	datac => r_tx_data(2),
	datad => s_rx_data(3),
	combout => \Selector9~0_combout\);

-- Location: FF_X21_Y28_N31
\r_tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(3));

-- Location: LCCOMB_X21_Y28_N4
\s_rx_buf[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[4]~3_combout\ = (\s_wr_add~q\ & (((s_rx_buf(4))))) # (!\s_wr_add~q\ & ((s_bit_cnt(12) & (\s_mosi~input_o\)) # (!s_bit_cnt(12) & ((s_rx_buf(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_mosi~input_o\,
	datab => \s_wr_add~q\,
	datac => s_rx_buf(4),
	datad => s_bit_cnt(12),
	combout => \s_rx_buf[4]~3_combout\);

-- Location: FF_X21_Y28_N5
\s_rx_buf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[4]~3_combout\,
	clrn => \s_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(4));

-- Location: LCCOMB_X21_Y28_N12
\s_rx_data[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(4) = (\s_reset_n~input_o\ & ((GLOBAL(\process_1~4clkctrl_outclk\) & (s_rx_buf(4))) # (!GLOBAL(\process_1~4clkctrl_outclk\) & ((s_rx_data(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reset_n~input_o\,
	datab => s_rx_buf(4),
	datac => s_rx_data(4),
	datad => \process_1~4clkctrl_outclk\,
	combout => s_rx_data(4));

-- Location: LCCOMB_X21_Y28_N8
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(3))) # (!\r_st_present.ST_RESET~q\ & ((s_rx_data(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_st_present.ST_RESET~q\,
	datac => r_tx_data(3),
	datad => s_rx_data(4),
	combout => \Selector8~0_combout\);

-- Location: FF_X21_Y28_N9
\r_tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(4));

-- Location: LCCOMB_X21_Y28_N28
\s_rx_buf[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[5]~2_combout\ = (\s_wr_add~q\ & (((s_rx_buf(5))))) # (!\s_wr_add~q\ & ((s_bit_cnt(11) & (\s_mosi~input_o\)) # (!s_bit_cnt(11) & ((s_rx_buf(5))))))

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
	combout => \s_rx_buf[5]~2_combout\);

-- Location: FF_X21_Y28_N29
\s_rx_buf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[5]~2_combout\,
	clrn => \s_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(5));

-- Location: LCCOMB_X21_Y28_N6
\s_rx_data[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(5) = (\s_reset_n~input_o\ & ((GLOBAL(\process_1~4clkctrl_outclk\) & ((s_rx_buf(5)))) # (!GLOBAL(\process_1~4clkctrl_outclk\) & (s_rx_data(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_rx_data(5),
	datab => s_rx_buf(5),
	datac => \s_reset_n~input_o\,
	datad => \process_1~4clkctrl_outclk\,
	combout => s_rx_data(5));

-- Location: LCCOMB_X21_Y28_N18
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(4))) # (!\r_st_present.ST_RESET~q\ & ((s_rx_data(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_st_present.ST_RESET~q\,
	datac => r_tx_data(4),
	datad => s_rx_data(5),
	combout => \Selector7~0_combout\);

-- Location: FF_X21_Y28_N19
\r_tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(5));

-- Location: LCCOMB_X22_Y28_N16
\s_rx_buf[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[6]~1_combout\ = (\s_wr_add~q\ & (((s_rx_buf(6))))) # (!\s_wr_add~q\ & ((s_bit_cnt(10) & (\s_mosi~input_o\)) # (!s_bit_cnt(10) & ((s_rx_buf(6))))))

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
	combout => \s_rx_buf[6]~1_combout\);

-- Location: FF_X22_Y28_N17
\s_rx_buf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[6]~1_combout\,
	clrn => \s_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(6));

-- Location: LCCOMB_X22_Y28_N6
\s_rx_data[6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(6) = (\s_reset_n~input_o\ & ((GLOBAL(\process_1~4clkctrl_outclk\) & ((s_rx_buf(6)))) # (!GLOBAL(\process_1~4clkctrl_outclk\) & (s_rx_data(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_rx_data(6),
	datab => \s_reset_n~input_o\,
	datac => s_rx_buf(6),
	datad => \process_1~4clkctrl_outclk\,
	combout => s_rx_data(6));

-- Location: LCCOMB_X21_Y28_N16
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(5))) # (!\r_st_present.ST_RESET~q\ & ((s_rx_data(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_st_present.ST_RESET~q\,
	datac => r_tx_data(5),
	datad => s_rx_data(6),
	combout => \Selector6~0_combout\);

-- Location: FF_X21_Y28_N17
\r_tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(6));

-- Location: LCCOMB_X22_Y28_N22
\s_rx_buf[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \s_rx_buf[7]~0_combout\ = (\s_wr_add~q\ & (((s_rx_buf(7))))) # (!\s_wr_add~q\ & ((s_bit_cnt(9) & (\s_mosi~input_o\)) # (!s_bit_cnt(9) & ((s_rx_buf(7))))))

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
	combout => \s_rx_buf[7]~0_combout\);

-- Location: FF_X22_Y28_N23
\s_rx_buf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_s_ss_clk~input_o\,
	d => \s_rx_buf[7]~0_combout\,
	clrn => \s_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_rx_buf(7));

-- Location: LCCOMB_X22_Y28_N20
\s_rx_data[7]\ : cycloneiii_lcell_comb
-- Equation(s):
-- s_rx_data(7) = (\s_reset_n~input_o\ & ((GLOBAL(\process_1~4clkctrl_outclk\) & ((s_rx_buf(7)))) # (!GLOBAL(\process_1~4clkctrl_outclk\) & (s_rx_data(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_reset_n~input_o\,
	datab => s_rx_data(7),
	datac => s_rx_buf(7),
	datad => \process_1~4clkctrl_outclk\,
	combout => s_rx_data(7));

-- Location: LCCOMB_X23_Y28_N24
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\r_st_present.ST_RESET~q\ & (r_tx_data(6))) # (!\r_st_present.ST_RESET~q\ & ((s_rx_data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_st_present.ST_RESET~q\,
	datac => r_tx_data(6),
	datad => s_rx_data(7),
	combout => \Selector5~0_combout\);

-- Location: FF_X23_Y28_N25
\r_tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	ena => \r_tx_data[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_tx_data(7));

-- Location: LCCOMB_X23_Y28_N18
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\r_sclk_rise~q\ & (!\o_mosi~reg0_q\)) # (!\r_sclk_rise~q\ & ((\r_sclk_fall~q\ & ((r_tx_data(7)))) # (!\r_sclk_fall~q\ & (!\o_mosi~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sclk_rise~q\,
	datab => \o_mosi~reg0_q\,
	datac => \r_sclk_fall~q\,
	datad => r_tx_data(7),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X23_Y28_N20
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\r_st_present.ST_TX_RX~q\ & (((\r_st_present.ST_END~q\ & \o_mosi~reg0_q\)) # (!\Selector4~0_combout\))) # (!\r_st_present.ST_TX_RX~q\ & (\r_st_present.ST_END~q\ & (\o_mosi~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_st_present.ST_TX_RX~q\,
	datab => \r_st_present.ST_END~q\,
	datac => \o_mosi~reg0_q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X23_Y28_N21
\o_mosi~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_mosi~reg0_q\);

ww_s_trdy <= \s_trdy~output_o\;

ww_s_rrdy <= \s_rrdy~output_o\;

ww_s_roe <= \s_roe~output_o\;

ww_s_miso <= \s_miso~output_o\;

ww_o_tx_end <= \o_tx_end~output_o\;

ww_o_data_parallel(0) <= \o_data_parallel[0]~output_o\;

ww_o_data_parallel(1) <= \o_data_parallel[1]~output_o\;

ww_o_data_parallel(2) <= \o_data_parallel[2]~output_o\;

ww_o_data_parallel(3) <= \o_data_parallel[3]~output_o\;

ww_o_data_parallel(4) <= \o_data_parallel[4]~output_o\;

ww_o_data_parallel(5) <= \o_data_parallel[5]~output_o\;

ww_o_data_parallel(6) <= \o_data_parallel[6]~output_o\;

ww_o_data_parallel(7) <= \o_data_parallel[7]~output_o\;

ww_o_sclk <= \o_sclk~output_o\;

ww_o_ss <= \o_ss~output_o\;

ww_o_mosi <= \o_mosi~output_o\;
END structure;


