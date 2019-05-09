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

-- DATE "05/09/2019 11:47:09"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	i2s IS
    PORT (
	clk : IN std_logic;
	bclk : IN std_logic;
	lrclk : IN std_logic;
	sample_out : OUT std_logic_vector(47 DOWNTO 0);
	sample_in : IN std_logic_vector(47 DOWNTO 0);
	dac_data : OUT std_logic;
	adc_data : IN std_logic;
	valid : OUT std_logic;
	ready : OUT std_logic;
	led_out : OUT std_logic_vector(47 DOWNTO 0)
	);
END i2s;

-- Design Ports Information
-- clk	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bclk	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lrclk	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[3]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[4]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[6]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[7]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[8]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[9]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[10]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[11]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[13]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[14]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[15]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[16]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[17]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[18]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[19]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[20]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[21]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[22]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[23]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[24]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[25]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[26]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[27]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[28]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[29]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[30]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[31]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[32]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[33]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[34]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[35]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[36]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[37]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[38]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[39]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[40]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[41]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[42]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[43]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[44]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[45]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[46]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_out[47]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[3]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[6]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[7]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[9]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[10]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[11]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[13]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[14]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[15]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[16]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[17]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[18]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[19]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[20]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[21]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[22]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[23]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[24]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[25]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[26]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[27]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[28]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[29]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[30]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[31]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[32]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[33]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[34]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[35]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[36]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[37]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[38]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[39]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[40]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[41]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[42]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[43]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[44]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[45]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[46]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sample_in[47]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dac_data	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- adc_data	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ready	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[3]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[5]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[6]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[7]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[8]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[9]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[11]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[12]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[13]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[14]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[15]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[16]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[17]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[18]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[19]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[20]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[21]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[22]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[23]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[24]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[25]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[26]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[27]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[28]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[29]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[30]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[31]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[32]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[33]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[34]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[35]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[36]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[37]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[38]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[39]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[40]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[41]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[42]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[43]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[44]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[45]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[46]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[47]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF i2s IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_bclk : std_logic;
SIGNAL ww_lrclk : std_logic;
SIGNAL ww_sample_out : std_logic_vector(47 DOWNTO 0);
SIGNAL ww_sample_in : std_logic_vector(47 DOWNTO 0);
SIGNAL ww_dac_data : std_logic;
SIGNAL ww_adc_data : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL ww_ready : std_logic;
SIGNAL ww_led_out : std_logic_vector(47 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \bclk~input_o\ : std_logic;
SIGNAL \lrclk~input_o\ : std_logic;
SIGNAL \sample_in[0]~input_o\ : std_logic;
SIGNAL \sample_in[1]~input_o\ : std_logic;
SIGNAL \sample_in[2]~input_o\ : std_logic;
SIGNAL \sample_in[3]~input_o\ : std_logic;
SIGNAL \sample_in[4]~input_o\ : std_logic;
SIGNAL \sample_in[5]~input_o\ : std_logic;
SIGNAL \sample_in[6]~input_o\ : std_logic;
SIGNAL \sample_in[7]~input_o\ : std_logic;
SIGNAL \sample_in[8]~input_o\ : std_logic;
SIGNAL \sample_in[9]~input_o\ : std_logic;
SIGNAL \sample_in[10]~input_o\ : std_logic;
SIGNAL \sample_in[11]~input_o\ : std_logic;
SIGNAL \sample_in[12]~input_o\ : std_logic;
SIGNAL \sample_in[13]~input_o\ : std_logic;
SIGNAL \sample_in[14]~input_o\ : std_logic;
SIGNAL \sample_in[15]~input_o\ : std_logic;
SIGNAL \sample_in[16]~input_o\ : std_logic;
SIGNAL \sample_in[17]~input_o\ : std_logic;
SIGNAL \sample_in[18]~input_o\ : std_logic;
SIGNAL \sample_in[19]~input_o\ : std_logic;
SIGNAL \sample_in[20]~input_o\ : std_logic;
SIGNAL \sample_in[21]~input_o\ : std_logic;
SIGNAL \sample_in[22]~input_o\ : std_logic;
SIGNAL \sample_in[23]~input_o\ : std_logic;
SIGNAL \sample_in[24]~input_o\ : std_logic;
SIGNAL \sample_in[25]~input_o\ : std_logic;
SIGNAL \sample_in[26]~input_o\ : std_logic;
SIGNAL \sample_in[27]~input_o\ : std_logic;
SIGNAL \sample_in[28]~input_o\ : std_logic;
SIGNAL \sample_in[29]~input_o\ : std_logic;
SIGNAL \sample_in[30]~input_o\ : std_logic;
SIGNAL \sample_in[31]~input_o\ : std_logic;
SIGNAL \sample_in[32]~input_o\ : std_logic;
SIGNAL \sample_in[33]~input_o\ : std_logic;
SIGNAL \sample_in[34]~input_o\ : std_logic;
SIGNAL \sample_in[35]~input_o\ : std_logic;
SIGNAL \sample_in[36]~input_o\ : std_logic;
SIGNAL \sample_in[37]~input_o\ : std_logic;
SIGNAL \sample_in[38]~input_o\ : std_logic;
SIGNAL \sample_in[39]~input_o\ : std_logic;
SIGNAL \sample_in[40]~input_o\ : std_logic;
SIGNAL \sample_in[41]~input_o\ : std_logic;
SIGNAL \sample_in[42]~input_o\ : std_logic;
SIGNAL \sample_in[43]~input_o\ : std_logic;
SIGNAL \sample_in[44]~input_o\ : std_logic;
SIGNAL \sample_in[45]~input_o\ : std_logic;
SIGNAL \sample_in[46]~input_o\ : std_logic;
SIGNAL \sample_in[47]~input_o\ : std_logic;
SIGNAL \adc_data~input_o\ : std_logic;
SIGNAL \sample_out[0]~output_o\ : std_logic;
SIGNAL \sample_out[1]~output_o\ : std_logic;
SIGNAL \sample_out[2]~output_o\ : std_logic;
SIGNAL \sample_out[3]~output_o\ : std_logic;
SIGNAL \sample_out[4]~output_o\ : std_logic;
SIGNAL \sample_out[5]~output_o\ : std_logic;
SIGNAL \sample_out[6]~output_o\ : std_logic;
SIGNAL \sample_out[7]~output_o\ : std_logic;
SIGNAL \sample_out[8]~output_o\ : std_logic;
SIGNAL \sample_out[9]~output_o\ : std_logic;
SIGNAL \sample_out[10]~output_o\ : std_logic;
SIGNAL \sample_out[11]~output_o\ : std_logic;
SIGNAL \sample_out[12]~output_o\ : std_logic;
SIGNAL \sample_out[13]~output_o\ : std_logic;
SIGNAL \sample_out[14]~output_o\ : std_logic;
SIGNAL \sample_out[15]~output_o\ : std_logic;
SIGNAL \sample_out[16]~output_o\ : std_logic;
SIGNAL \sample_out[17]~output_o\ : std_logic;
SIGNAL \sample_out[18]~output_o\ : std_logic;
SIGNAL \sample_out[19]~output_o\ : std_logic;
SIGNAL \sample_out[20]~output_o\ : std_logic;
SIGNAL \sample_out[21]~output_o\ : std_logic;
SIGNAL \sample_out[22]~output_o\ : std_logic;
SIGNAL \sample_out[23]~output_o\ : std_logic;
SIGNAL \sample_out[24]~output_o\ : std_logic;
SIGNAL \sample_out[25]~output_o\ : std_logic;
SIGNAL \sample_out[26]~output_o\ : std_logic;
SIGNAL \sample_out[27]~output_o\ : std_logic;
SIGNAL \sample_out[28]~output_o\ : std_logic;
SIGNAL \sample_out[29]~output_o\ : std_logic;
SIGNAL \sample_out[30]~output_o\ : std_logic;
SIGNAL \sample_out[31]~output_o\ : std_logic;
SIGNAL \sample_out[32]~output_o\ : std_logic;
SIGNAL \sample_out[33]~output_o\ : std_logic;
SIGNAL \sample_out[34]~output_o\ : std_logic;
SIGNAL \sample_out[35]~output_o\ : std_logic;
SIGNAL \sample_out[36]~output_o\ : std_logic;
SIGNAL \sample_out[37]~output_o\ : std_logic;
SIGNAL \sample_out[38]~output_o\ : std_logic;
SIGNAL \sample_out[39]~output_o\ : std_logic;
SIGNAL \sample_out[40]~output_o\ : std_logic;
SIGNAL \sample_out[41]~output_o\ : std_logic;
SIGNAL \sample_out[42]~output_o\ : std_logic;
SIGNAL \sample_out[43]~output_o\ : std_logic;
SIGNAL \sample_out[44]~output_o\ : std_logic;
SIGNAL \sample_out[45]~output_o\ : std_logic;
SIGNAL \sample_out[46]~output_o\ : std_logic;
SIGNAL \sample_out[47]~output_o\ : std_logic;
SIGNAL \dac_data~output_o\ : std_logic;
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \ready~output_o\ : std_logic;
SIGNAL \led_out[0]~output_o\ : std_logic;
SIGNAL \led_out[1]~output_o\ : std_logic;
SIGNAL \led_out[2]~output_o\ : std_logic;
SIGNAL \led_out[3]~output_o\ : std_logic;
SIGNAL \led_out[4]~output_o\ : std_logic;
SIGNAL \led_out[5]~output_o\ : std_logic;
SIGNAL \led_out[6]~output_o\ : std_logic;
SIGNAL \led_out[7]~output_o\ : std_logic;
SIGNAL \led_out[8]~output_o\ : std_logic;
SIGNAL \led_out[9]~output_o\ : std_logic;
SIGNAL \led_out[10]~output_o\ : std_logic;
SIGNAL \led_out[11]~output_o\ : std_logic;
SIGNAL \led_out[12]~output_o\ : std_logic;
SIGNAL \led_out[13]~output_o\ : std_logic;
SIGNAL \led_out[14]~output_o\ : std_logic;
SIGNAL \led_out[15]~output_o\ : std_logic;
SIGNAL \led_out[16]~output_o\ : std_logic;
SIGNAL \led_out[17]~output_o\ : std_logic;
SIGNAL \led_out[18]~output_o\ : std_logic;
SIGNAL \led_out[19]~output_o\ : std_logic;
SIGNAL \led_out[20]~output_o\ : std_logic;
SIGNAL \led_out[21]~output_o\ : std_logic;
SIGNAL \led_out[22]~output_o\ : std_logic;
SIGNAL \led_out[23]~output_o\ : std_logic;
SIGNAL \led_out[24]~output_o\ : std_logic;
SIGNAL \led_out[25]~output_o\ : std_logic;
SIGNAL \led_out[26]~output_o\ : std_logic;
SIGNAL \led_out[27]~output_o\ : std_logic;
SIGNAL \led_out[28]~output_o\ : std_logic;
SIGNAL \led_out[29]~output_o\ : std_logic;
SIGNAL \led_out[30]~output_o\ : std_logic;
SIGNAL \led_out[31]~output_o\ : std_logic;
SIGNAL \led_out[32]~output_o\ : std_logic;
SIGNAL \led_out[33]~output_o\ : std_logic;
SIGNAL \led_out[34]~output_o\ : std_logic;
SIGNAL \led_out[35]~output_o\ : std_logic;
SIGNAL \led_out[36]~output_o\ : std_logic;
SIGNAL \led_out[37]~output_o\ : std_logic;
SIGNAL \led_out[38]~output_o\ : std_logic;
SIGNAL \led_out[39]~output_o\ : std_logic;
SIGNAL \led_out[40]~output_o\ : std_logic;
SIGNAL \led_out[41]~output_o\ : std_logic;
SIGNAL \led_out[42]~output_o\ : std_logic;
SIGNAL \led_out[43]~output_o\ : std_logic;
SIGNAL \led_out[44]~output_o\ : std_logic;
SIGNAL \led_out[45]~output_o\ : std_logic;
SIGNAL \led_out[46]~output_o\ : std_logic;
SIGNAL \led_out[47]~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_bclk <= bclk;
ww_lrclk <= lrclk;
sample_out <= ww_sample_out;
ww_sample_in <= sample_in;
dac_data <= ww_dac_data;
ww_adc_data <= adc_data;
valid <= ww_valid;
ready <= ww_ready;
led_out <= ww_led_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y27_N16
\sample_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\sample_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\sample_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\sample_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\sample_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\sample_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[5]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\sample_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\sample_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[7]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\sample_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[8]~output_o\);

-- Location: IOOBUF_X41_Y8_N23
\sample_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[9]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\sample_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[10]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\sample_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[11]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\sample_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[12]~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\sample_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\sample_out[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[14]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\sample_out[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[15]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\sample_out[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[16]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\sample_out[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[17]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\sample_out[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[18]~output_o\);

-- Location: IOOBUF_X37_Y29_N9
\sample_out[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[19]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\sample_out[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[20]~output_o\);

-- Location: IOOBUF_X35_Y29_N23
\sample_out[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[21]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\sample_out[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[22]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\sample_out[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[23]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\sample_out[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[24]~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\sample_out[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[25]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\sample_out[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[26]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\sample_out[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[27]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\sample_out[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[28]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\sample_out[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[29]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\sample_out[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[30]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\sample_out[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[31]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\sample_out[32]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[32]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\sample_out[33]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[33]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\sample_out[34]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[34]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\sample_out[35]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[35]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\sample_out[36]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[36]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\sample_out[37]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[37]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\sample_out[38]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[38]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\sample_out[39]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[39]~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\sample_out[40]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[40]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\sample_out[41]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[41]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\sample_out[42]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[42]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\sample_out[43]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[43]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\sample_out[44]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[44]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\sample_out[45]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[45]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\sample_out[46]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[46]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\sample_out[47]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sample_out[47]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\dac_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dac_data~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valid~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\ready~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ready~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\led_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\led_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[1]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\led_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\led_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[3]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\led_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[4]~output_o\);

-- Location: IOOBUF_X41_Y5_N23
\led_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[5]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\led_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[6]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\led_out[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\led_out[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[8]~output_o\);

-- Location: IOOBUF_X41_Y2_N9
\led_out[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[9]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\led_out[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[10]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\led_out[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\led_out[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[12]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\led_out[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[13]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\led_out[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[14]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\led_out[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[15]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\led_out[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[16]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\led_out[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[17]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\led_out[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[18]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\led_out[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[19]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\led_out[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[20]~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\led_out[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[21]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\led_out[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[22]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\led_out[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[23]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\led_out[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[24]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\led_out[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[25]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\led_out[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[26]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\led_out[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[27]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\led_out[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[28]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\led_out[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[29]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\led_out[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[30]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\led_out[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[31]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\led_out[32]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[32]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\led_out[33]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[33]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\led_out[34]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[34]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\led_out[35]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[35]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\led_out[36]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[36]~output_o\);

-- Location: IOOBUF_X41_Y3_N23
\led_out[37]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[37]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\led_out[38]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[38]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\led_out[39]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[39]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\led_out[40]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[40]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\led_out[41]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[41]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\led_out[42]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[42]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\led_out[43]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[43]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\led_out[44]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[44]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\led_out[45]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[45]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\led_out[46]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[46]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\led_out[47]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_out[47]~output_o\);

-- Location: IOIBUF_X41_Y15_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X5_Y0_N29
\bclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bclk,
	o => \bclk~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\lrclk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lrclk,
	o => \lrclk~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\sample_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(0),
	o => \sample_in[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\sample_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(1),
	o => \sample_in[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\sample_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(2),
	o => \sample_in[2]~input_o\);

-- Location: IOIBUF_X41_Y26_N8
\sample_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(3),
	o => \sample_in[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\sample_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(4),
	o => \sample_in[4]~input_o\);

-- Location: IOIBUF_X3_Y29_N22
\sample_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(5),
	o => \sample_in[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\sample_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(6),
	o => \sample_in[6]~input_o\);

-- Location: IOIBUF_X41_Y10_N1
\sample_in[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(7),
	o => \sample_in[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\sample_in[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(8),
	o => \sample_in[8]~input_o\);

-- Location: IOIBUF_X30_Y0_N29
\sample_in[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(9),
	o => \sample_in[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\sample_in[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(10),
	o => \sample_in[10]~input_o\);

-- Location: IOIBUF_X41_Y13_N15
\sample_in[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(11),
	o => \sample_in[11]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\sample_in[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(12),
	o => \sample_in[12]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\sample_in[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(13),
	o => \sample_in[13]~input_o\);

-- Location: IOIBUF_X41_Y10_N22
\sample_in[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(14),
	o => \sample_in[14]~input_o\);

-- Location: IOIBUF_X9_Y29_N1
\sample_in[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(15),
	o => \sample_in[15]~input_o\);

-- Location: IOIBUF_X39_Y29_N8
\sample_in[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(16),
	o => \sample_in[16]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\sample_in[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(17),
	o => \sample_in[17]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\sample_in[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(18),
	o => \sample_in[18]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\sample_in[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(19),
	o => \sample_in[19]~input_o\);

-- Location: IOIBUF_X0_Y22_N8
\sample_in[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(20),
	o => \sample_in[20]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\sample_in[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(21),
	o => \sample_in[21]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\sample_in[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(22),
	o => \sample_in[22]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\sample_in[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(23),
	o => \sample_in[23]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\sample_in[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(24),
	o => \sample_in[24]~input_o\);

-- Location: IOIBUF_X41_Y11_N1
\sample_in[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(25),
	o => \sample_in[25]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\sample_in[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(26),
	o => \sample_in[26]~input_o\);

-- Location: IOIBUF_X41_Y19_N22
\sample_in[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(27),
	o => \sample_in[27]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\sample_in[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(28),
	o => \sample_in[28]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\sample_in[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(29),
	o => \sample_in[29]~input_o\);

-- Location: IOIBUF_X39_Y0_N8
\sample_in[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(30),
	o => \sample_in[30]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\sample_in[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(31),
	o => \sample_in[31]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\sample_in[32]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(32),
	o => \sample_in[32]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\sample_in[33]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(33),
	o => \sample_in[33]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\sample_in[34]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(34),
	o => \sample_in[34]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\sample_in[35]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(35),
	o => \sample_in[35]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\sample_in[36]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(36),
	o => \sample_in[36]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\sample_in[37]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(37),
	o => \sample_in[37]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\sample_in[38]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(38),
	o => \sample_in[38]~input_o\);

-- Location: IOIBUF_X14_Y29_N15
\sample_in[39]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(39),
	o => \sample_in[39]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\sample_in[40]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(40),
	o => \sample_in[40]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\sample_in[41]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(41),
	o => \sample_in[41]~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\sample_in[42]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(42),
	o => \sample_in[42]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\sample_in[43]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(43),
	o => \sample_in[43]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\sample_in[44]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(44),
	o => \sample_in[44]~input_o\);

-- Location: IOIBUF_X39_Y29_N15
\sample_in[45]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(45),
	o => \sample_in[45]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\sample_in[46]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(46),
	o => \sample_in[46]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\sample_in[47]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sample_in(47),
	o => \sample_in[47]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\adc_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_adc_data,
	o => \adc_data~input_o\);

ww_sample_out(0) <= \sample_out[0]~output_o\;

ww_sample_out(1) <= \sample_out[1]~output_o\;

ww_sample_out(2) <= \sample_out[2]~output_o\;

ww_sample_out(3) <= \sample_out[3]~output_o\;

ww_sample_out(4) <= \sample_out[4]~output_o\;

ww_sample_out(5) <= \sample_out[5]~output_o\;

ww_sample_out(6) <= \sample_out[6]~output_o\;

ww_sample_out(7) <= \sample_out[7]~output_o\;

ww_sample_out(8) <= \sample_out[8]~output_o\;

ww_sample_out(9) <= \sample_out[9]~output_o\;

ww_sample_out(10) <= \sample_out[10]~output_o\;

ww_sample_out(11) <= \sample_out[11]~output_o\;

ww_sample_out(12) <= \sample_out[12]~output_o\;

ww_sample_out(13) <= \sample_out[13]~output_o\;

ww_sample_out(14) <= \sample_out[14]~output_o\;

ww_sample_out(15) <= \sample_out[15]~output_o\;

ww_sample_out(16) <= \sample_out[16]~output_o\;

ww_sample_out(17) <= \sample_out[17]~output_o\;

ww_sample_out(18) <= \sample_out[18]~output_o\;

ww_sample_out(19) <= \sample_out[19]~output_o\;

ww_sample_out(20) <= \sample_out[20]~output_o\;

ww_sample_out(21) <= \sample_out[21]~output_o\;

ww_sample_out(22) <= \sample_out[22]~output_o\;

ww_sample_out(23) <= \sample_out[23]~output_o\;

ww_sample_out(24) <= \sample_out[24]~output_o\;

ww_sample_out(25) <= \sample_out[25]~output_o\;

ww_sample_out(26) <= \sample_out[26]~output_o\;

ww_sample_out(27) <= \sample_out[27]~output_o\;

ww_sample_out(28) <= \sample_out[28]~output_o\;

ww_sample_out(29) <= \sample_out[29]~output_o\;

ww_sample_out(30) <= \sample_out[30]~output_o\;

ww_sample_out(31) <= \sample_out[31]~output_o\;

ww_sample_out(32) <= \sample_out[32]~output_o\;

ww_sample_out(33) <= \sample_out[33]~output_o\;

ww_sample_out(34) <= \sample_out[34]~output_o\;

ww_sample_out(35) <= \sample_out[35]~output_o\;

ww_sample_out(36) <= \sample_out[36]~output_o\;

ww_sample_out(37) <= \sample_out[37]~output_o\;

ww_sample_out(38) <= \sample_out[38]~output_o\;

ww_sample_out(39) <= \sample_out[39]~output_o\;

ww_sample_out(40) <= \sample_out[40]~output_o\;

ww_sample_out(41) <= \sample_out[41]~output_o\;

ww_sample_out(42) <= \sample_out[42]~output_o\;

ww_sample_out(43) <= \sample_out[43]~output_o\;

ww_sample_out(44) <= \sample_out[44]~output_o\;

ww_sample_out(45) <= \sample_out[45]~output_o\;

ww_sample_out(46) <= \sample_out[46]~output_o\;

ww_sample_out(47) <= \sample_out[47]~output_o\;

ww_dac_data <= \dac_data~output_o\;

ww_valid <= \valid~output_o\;

ww_ready <= \ready~output_o\;

ww_led_out(0) <= \led_out[0]~output_o\;

ww_led_out(1) <= \led_out[1]~output_o\;

ww_led_out(2) <= \led_out[2]~output_o\;

ww_led_out(3) <= \led_out[3]~output_o\;

ww_led_out(4) <= \led_out[4]~output_o\;

ww_led_out(5) <= \led_out[5]~output_o\;

ww_led_out(6) <= \led_out[6]~output_o\;

ww_led_out(7) <= \led_out[7]~output_o\;

ww_led_out(8) <= \led_out[8]~output_o\;

ww_led_out(9) <= \led_out[9]~output_o\;

ww_led_out(10) <= \led_out[10]~output_o\;

ww_led_out(11) <= \led_out[11]~output_o\;

ww_led_out(12) <= \led_out[12]~output_o\;

ww_led_out(13) <= \led_out[13]~output_o\;

ww_led_out(14) <= \led_out[14]~output_o\;

ww_led_out(15) <= \led_out[15]~output_o\;

ww_led_out(16) <= \led_out[16]~output_o\;

ww_led_out(17) <= \led_out[17]~output_o\;

ww_led_out(18) <= \led_out[18]~output_o\;

ww_led_out(19) <= \led_out[19]~output_o\;

ww_led_out(20) <= \led_out[20]~output_o\;

ww_led_out(21) <= \led_out[21]~output_o\;

ww_led_out(22) <= \led_out[22]~output_o\;

ww_led_out(23) <= \led_out[23]~output_o\;

ww_led_out(24) <= \led_out[24]~output_o\;

ww_led_out(25) <= \led_out[25]~output_o\;

ww_led_out(26) <= \led_out[26]~output_o\;

ww_led_out(27) <= \led_out[27]~output_o\;

ww_led_out(28) <= \led_out[28]~output_o\;

ww_led_out(29) <= \led_out[29]~output_o\;

ww_led_out(30) <= \led_out[30]~output_o\;

ww_led_out(31) <= \led_out[31]~output_o\;

ww_led_out(32) <= \led_out[32]~output_o\;

ww_led_out(33) <= \led_out[33]~output_o\;

ww_led_out(34) <= \led_out[34]~output_o\;

ww_led_out(35) <= \led_out[35]~output_o\;

ww_led_out(36) <= \led_out[36]~output_o\;

ww_led_out(37) <= \led_out[37]~output_o\;

ww_led_out(38) <= \led_out[38]~output_o\;

ww_led_out(39) <= \led_out[39]~output_o\;

ww_led_out(40) <= \led_out[40]~output_o\;

ww_led_out(41) <= \led_out[41]~output_o\;

ww_led_out(42) <= \led_out[42]~output_o\;

ww_led_out(43) <= \led_out[43]~output_o\;

ww_led_out(44) <= \led_out[44]~output_o\;

ww_led_out(45) <= \led_out[45]~output_o\;

ww_led_out(46) <= \led_out[46]~output_o\;

ww_led_out(47) <= \led_out[47]~output_o\;
END structure;


