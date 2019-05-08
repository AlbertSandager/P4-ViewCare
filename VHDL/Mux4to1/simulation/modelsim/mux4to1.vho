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

-- DATE "05/08/2019 08:47:16"

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

ENTITY 	mux4to1 IS
    PORT (
	D1 : IN std_logic_vector(23 DOWNTO 0);
	D2 : IN std_logic_vector(23 DOWNTO 0);
	D3 : IN std_logic_vector(23 DOWNTO 0);
	D4 : IN std_logic_vector(23 DOWNTO 0);
	MX_OUT : OUT std_logic_vector(23 DOWNTO 0);
	SEL : IN std_logic_vector(1 DOWNTO 0)
	);
END mux4to1;

-- Design Ports Information
-- MX_OUT[0]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[4]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[7]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[8]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[9]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[10]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[11]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[12]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[13]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[14]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[15]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[16]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[17]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[18]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[19]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[20]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[21]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[22]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MX_OUT[23]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[0]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[2]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[2]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[4]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[4]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[5]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[6]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[7]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[7]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[7]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[8]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[8]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[9]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[9]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[10]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[10]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[10]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[10]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[11]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[11]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[11]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[12]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[12]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[12]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[13]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[13]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[13]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[14]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[14]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[14]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[14]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[15]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[15]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[15]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[15]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[16]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[16]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[16]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[16]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[17]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[17]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[17]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[17]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[18]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[18]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[18]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[18]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[19]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[19]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[19]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[19]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[20]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[20]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[20]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[20]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[21]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[21]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[21]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[21]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[22]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[22]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[22]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[22]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[23]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[23]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[23]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D4[23]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux4to1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D1 : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_D2 : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_D3 : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_D4 : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_MX_OUT : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL \MX_OUT[0]~output_o\ : std_logic;
SIGNAL \MX_OUT[1]~output_o\ : std_logic;
SIGNAL \MX_OUT[2]~output_o\ : std_logic;
SIGNAL \MX_OUT[3]~output_o\ : std_logic;
SIGNAL \MX_OUT[4]~output_o\ : std_logic;
SIGNAL \MX_OUT[5]~output_o\ : std_logic;
SIGNAL \MX_OUT[6]~output_o\ : std_logic;
SIGNAL \MX_OUT[7]~output_o\ : std_logic;
SIGNAL \MX_OUT[8]~output_o\ : std_logic;
SIGNAL \MX_OUT[9]~output_o\ : std_logic;
SIGNAL \MX_OUT[10]~output_o\ : std_logic;
SIGNAL \MX_OUT[11]~output_o\ : std_logic;
SIGNAL \MX_OUT[12]~output_o\ : std_logic;
SIGNAL \MX_OUT[13]~output_o\ : std_logic;
SIGNAL \MX_OUT[14]~output_o\ : std_logic;
SIGNAL \MX_OUT[15]~output_o\ : std_logic;
SIGNAL \MX_OUT[16]~output_o\ : std_logic;
SIGNAL \MX_OUT[17]~output_o\ : std_logic;
SIGNAL \MX_OUT[18]~output_o\ : std_logic;
SIGNAL \MX_OUT[19]~output_o\ : std_logic;
SIGNAL \MX_OUT[20]~output_o\ : std_logic;
SIGNAL \MX_OUT[21]~output_o\ : std_logic;
SIGNAL \MX_OUT[22]~output_o\ : std_logic;
SIGNAL \MX_OUT[23]~output_o\ : std_logic;
SIGNAL \D4[0]~input_o\ : std_logic;
SIGNAL \D3[0]~input_o\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \D1[0]~input_o\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \D2[0]~input_o\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \D2[1]~input_o\ : std_logic;
SIGNAL \D1[1]~input_o\ : std_logic;
SIGNAL \D3[1]~input_o\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \D4[1]~input_o\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \D3[2]~input_o\ : std_logic;
SIGNAL \D2[2]~input_o\ : std_logic;
SIGNAL \D1[2]~input_o\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \D4[2]~input_o\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \D2[3]~input_o\ : std_logic;
SIGNAL \D1[3]~input_o\ : std_logic;
SIGNAL \D3[3]~input_o\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \D4[3]~input_o\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \D4[4]~input_o\ : std_logic;
SIGNAL \D2[4]~input_o\ : std_logic;
SIGNAL \D1[4]~input_o\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \D3[4]~input_o\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \D2[5]~input_o\ : std_logic;
SIGNAL \D1[5]~input_o\ : std_logic;
SIGNAL \D3[5]~input_o\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \D4[5]~input_o\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \D2[6]~input_o\ : std_logic;
SIGNAL \D1[6]~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \D3[6]~input_o\ : std_logic;
SIGNAL \D4[6]~input_o\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \D2[7]~input_o\ : std_logic;
SIGNAL \D1[7]~input_o\ : std_logic;
SIGNAL \D3[7]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \D4[7]~input_o\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \D4[8]~input_o\ : std_logic;
SIGNAL \D3[8]~input_o\ : std_logic;
SIGNAL \D1[8]~input_o\ : std_logic;
SIGNAL \D2[8]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \D4[9]~input_o\ : std_logic;
SIGNAL \D2[9]~input_o\ : std_logic;
SIGNAL \D1[9]~input_o\ : std_logic;
SIGNAL \D3[9]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \D3[10]~input_o\ : std_logic;
SIGNAL \D4[10]~input_o\ : std_logic;
SIGNAL \D1[10]~input_o\ : std_logic;
SIGNAL \D2[10]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \D2[11]~input_o\ : std_logic;
SIGNAL \D3[11]~input_o\ : std_logic;
SIGNAL \D1[11]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \D4[11]~input_o\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \D3[12]~input_o\ : std_logic;
SIGNAL \D4[12]~input_o\ : std_logic;
SIGNAL \D1[12]~input_o\ : std_logic;
SIGNAL \D2[12]~input_o\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \D1[13]~input_o\ : std_logic;
SIGNAL \D3[13]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \D4[13]~input_o\ : std_logic;
SIGNAL \D2[13]~input_o\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \D1[14]~input_o\ : std_logic;
SIGNAL \D2[14]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \D4[14]~input_o\ : std_logic;
SIGNAL \D3[14]~input_o\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \D2[15]~input_o\ : std_logic;
SIGNAL \D1[15]~input_o\ : std_logic;
SIGNAL \D3[15]~input_o\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \D4[15]~input_o\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \D3[16]~input_o\ : std_logic;
SIGNAL \D2[16]~input_o\ : std_logic;
SIGNAL \D1[16]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \D4[16]~input_o\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \D3[17]~input_o\ : std_logic;
SIGNAL \D1[17]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \D2[17]~input_o\ : std_logic;
SIGNAL \D4[17]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \D1[18]~input_o\ : std_logic;
SIGNAL \D2[18]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \D3[18]~input_o\ : std_logic;
SIGNAL \D4[18]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \D1[19]~input_o\ : std_logic;
SIGNAL \D3[19]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \D4[19]~input_o\ : std_logic;
SIGNAL \D2[19]~input_o\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \D3[20]~input_o\ : std_logic;
SIGNAL \D4[20]~input_o\ : std_logic;
SIGNAL \D1[20]~input_o\ : std_logic;
SIGNAL \D2[20]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \D4[21]~input_o\ : std_logic;
SIGNAL \D3[21]~input_o\ : std_logic;
SIGNAL \D1[21]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \D2[21]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \D3[22]~input_o\ : std_logic;
SIGNAL \D4[22]~input_o\ : std_logic;
SIGNAL \D2[22]~input_o\ : std_logic;
SIGNAL \D1[22]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \D3[23]~input_o\ : std_logic;
SIGNAL \D1[23]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \D4[23]~input_o\ : std_logic;
SIGNAL \D2[23]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;

BEGIN

ww_D1 <= D1;
ww_D2 <= D2;
ww_D3 <= D3;
ww_D4 <= D4;
MX_OUT <= ww_MX_OUT;
ww_SEL <= SEL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X9_Y0_N30
\MX_OUT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\MX_OUT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\MX_OUT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\MX_OUT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\MX_OUT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\MX_OUT[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[5]~output_o\);

-- Location: IOOBUF_X9_Y29_N30
\MX_OUT[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\MX_OUT[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[7]~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\MX_OUT[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[8]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\MX_OUT[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[9]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\MX_OUT[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[10]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\MX_OUT[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[11]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\MX_OUT[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[12]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\MX_OUT[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[13]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\MX_OUT[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[14]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\MX_OUT[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[15]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\MX_OUT[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[16]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\MX_OUT[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[17]~output_o\);

-- Location: IOOBUF_X41_Y6_N16
\MX_OUT[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[18]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
\MX_OUT[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[19]~output_o\);

-- Location: IOOBUF_X41_Y6_N2
\MX_OUT[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[20]~output_o\);

-- Location: IOOBUF_X37_Y0_N9
\MX_OUT[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[21]~output_o\);

-- Location: IOOBUF_X41_Y6_N23
\MX_OUT[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[22]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\MX_OUT[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \MX_OUT[23]~output_o\);

-- Location: IOIBUF_X11_Y0_N8
\D4[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(0),
	o => \D4[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N15
\D3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(0),
	o => \D3[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\SEL[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: IOIBUF_X3_Y29_N22
\D1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(0),
	o => \D1[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\SEL[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\D2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(0),
	o => \D2[0]~input_o\);

-- Location: LCCOMB_X8_Y1_N16
\Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\SEL[0]~input_o\ & (((\SEL[1]~input_o\) # (\D2[0]~input_o\)))) # (!\SEL[0]~input_o\ & (\D1[0]~input_o\ & (!\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[0]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \D2[0]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X8_Y1_N10
\Mux23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\SEL[1]~input_o\ & ((\Mux23~0_combout\ & (\D4[0]~input_o\)) # (!\Mux23~0_combout\ & ((\D3[0]~input_o\))))) # (!\SEL[1]~input_o\ & (((\Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4[0]~input_o\,
	datab => \D3[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: IOIBUF_X9_Y0_N22
\D2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(1),
	o => \D2[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\D1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(1),
	o => \D1[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\D3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(1),
	o => \D3[1]~input_o\);

-- Location: LCCOMB_X8_Y1_N28
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\) # (\D3[1]~input_o\)))) # (!\SEL[1]~input_o\ & (\D1[1]~input_o\ & (!\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D1[1]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D3[1]~input_o\,
	combout => \Mux22~0_combout\);

-- Location: IOIBUF_X7_Y0_N29
\D4[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(1),
	o => \D4[1]~input_o\);

-- Location: LCCOMB_X8_Y1_N14
\Mux22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & (((\D4[1]~input_o\) # (!\SEL[0]~input_o\)))) # (!\Mux22~0_combout\ & (\D2[1]~input_o\ & (\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[1]~input_o\,
	datab => \Mux22~0_combout\,
	datac => \SEL[0]~input_o\,
	datad => \D4[1]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: IOIBUF_X7_Y0_N1
\D3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(2),
	o => \D3[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\D2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(2),
	o => \D2[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\D1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(2),
	o => \D1[2]~input_o\);

-- Location: LCCOMB_X8_Y1_N0
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & (\D2[2]~input_o\)) # (!\SEL[0]~input_o\ & ((\D1[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D2[2]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D1[2]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: IOIBUF_X9_Y0_N8
\D4[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(2),
	o => \D4[2]~input_o\);

-- Location: LCCOMB_X8_Y1_N2
\Mux21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & (((\D4[2]~input_o\) # (!\SEL[1]~input_o\)))) # (!\Mux21~0_combout\ & (\D3[2]~input_o\ & (\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[2]~input_o\,
	datab => \Mux21~0_combout\,
	datac => \SEL[1]~input_o\,
	datad => \D4[2]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: IOIBUF_X0_Y12_N8
\D2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(3),
	o => \D2[3]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\D1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(3),
	o => \D1[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\D3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(3),
	o => \D3[3]~input_o\);

-- Location: LCCOMB_X8_Y1_N20
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\) # (\D3[3]~input_o\)))) # (!\SEL[1]~input_o\ & (\D1[3]~input_o\ & (!\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D1[3]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D3[3]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: IOIBUF_X16_Y0_N15
\D4[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(3),
	o => \D4[3]~input_o\);

-- Location: LCCOMB_X8_Y1_N30
\Mux20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\ & (((\D4[3]~input_o\) # (!\SEL[0]~input_o\)))) # (!\Mux20~0_combout\ & (\D2[3]~input_o\ & (\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[3]~input_o\,
	datab => \Mux20~0_combout\,
	datac => \SEL[0]~input_o\,
	datad => \D4[3]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: IOIBUF_X5_Y0_N8
\D4[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(4),
	o => \D4[4]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\D2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(4),
	o => \D2[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\D1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(4),
	o => \D1[4]~input_o\);

-- Location: LCCOMB_X8_Y1_N8
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & (\D2[4]~input_o\)) # (!\SEL[0]~input_o\ & ((\D1[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D2[4]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D1[4]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: IOIBUF_X14_Y0_N8
\D3[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(4),
	o => \D3[4]~input_o\);

-- Location: LCCOMB_X8_Y1_N26
\Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\ & ((\D4[4]~input_o\) # ((!\SEL[1]~input_o\)))) # (!\Mux19~0_combout\ & (((\SEL[1]~input_o\ & \D3[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4[4]~input_o\,
	datab => \Mux19~0_combout\,
	datac => \SEL[1]~input_o\,
	datad => \D3[4]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: IOIBUF_X5_Y0_N22
\D2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(5),
	o => \D2[5]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\D1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(5),
	o => \D1[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N29
\D3[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(5),
	o => \D3[5]~input_o\);

-- Location: LCCOMB_X8_Y1_N4
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\SEL[1]~input_o\ & ((\SEL[0]~input_o\) # ((\D3[5]~input_o\)))) # (!\SEL[1]~input_o\ & (!\SEL[0]~input_o\ & (\D1[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \D1[5]~input_o\,
	datad => \D3[5]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: IOIBUF_X5_Y0_N29
\D4[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(5),
	o => \D4[5]~input_o\);

-- Location: LCCOMB_X8_Y1_N6
\Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & (((\D4[5]~input_o\) # (!\SEL[0]~input_o\)))) # (!\Mux18~0_combout\ & (\D2[5]~input_o\ & (\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[5]~input_o\,
	datab => \Mux18~0_combout\,
	datac => \SEL[0]~input_o\,
	datad => \D4[5]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: IOIBUF_X5_Y29_N15
\D2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(6),
	o => \D2[6]~input_o\);

-- Location: IOIBUF_X11_Y29_N8
\D1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(6),
	o => \D1[6]~input_o\);

-- Location: LCCOMB_X10_Y28_N24
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & (\D2[6]~input_o\)) # (!\SEL[0]~input_o\ & ((\D1[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D2[6]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D1[6]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: IOIBUF_X14_Y29_N29
\D3[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(6),
	o => \D3[6]~input_o\);

-- Location: IOIBUF_X16_Y29_N29
\D4[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(6),
	o => \D4[6]~input_o\);

-- Location: LCCOMB_X10_Y28_N26
\Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\SEL[1]~input_o\ & ((\Mux17~0_combout\ & ((\D4[6]~input_o\))) # (!\Mux17~0_combout\ & (\D3[6]~input_o\)))) # (!\SEL[1]~input_o\ & (\Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \Mux17~0_combout\,
	datac => \D3[6]~input_o\,
	datad => \D4[6]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: IOIBUF_X7_Y0_N15
\D2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(7),
	o => \D2[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\D1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(7),
	o => \D1[7]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\D3[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(7),
	o => \D3[7]~input_o\);

-- Location: LCCOMB_X8_Y1_N24
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\SEL[1]~input_o\ & ((\SEL[0]~input_o\) # ((\D3[7]~input_o\)))) # (!\SEL[1]~input_o\ & (!\SEL[0]~input_o\ & (\D1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \D1[7]~input_o\,
	datad => \D3[7]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: IOIBUF_X16_Y0_N29
\D4[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(7),
	o => \D4[7]~input_o\);

-- Location: LCCOMB_X8_Y1_N18
\Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & (((\D4[7]~input_o\) # (!\SEL[0]~input_o\)))) # (!\Mux16~0_combout\ & (\D2[7]~input_o\ & (\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[7]~input_o\,
	datab => \Mux16~0_combout\,
	datac => \SEL[0]~input_o\,
	datad => \D4[7]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: IOIBUF_X11_Y29_N29
\D4[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(8),
	o => \D4[8]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\D3[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(8),
	o => \D3[8]~input_o\);

-- Location: IOIBUF_X9_Y29_N1
\D1[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(8),
	o => \D1[8]~input_o\);

-- Location: IOIBUF_X16_Y29_N8
\D2[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(8),
	o => \D2[8]~input_o\);

-- Location: LCCOMB_X10_Y28_N12
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & ((\D2[8]~input_o\))) # (!\SEL[0]~input_o\ & (\D1[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D1[8]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D2[8]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X10_Y28_N22
\Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\SEL[1]~input_o\ & ((\Mux15~0_combout\ & (\D4[8]~input_o\)) # (!\Mux15~0_combout\ & ((\D3[8]~input_o\))))) # (!\SEL[1]~input_o\ & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D4[8]~input_o\,
	datac => \D3[8]~input_o\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: IOIBUF_X16_Y29_N15
\D4[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(9),
	o => \D4[9]~input_o\);

-- Location: IOIBUF_X7_Y29_N15
\D2[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(9),
	o => \D2[9]~input_o\);

-- Location: IOIBUF_X14_Y29_N22
\D1[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(9),
	o => \D1[9]~input_o\);

-- Location: IOIBUF_X5_Y29_N8
\D3[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(9),
	o => \D3[9]~input_o\);

-- Location: LCCOMB_X10_Y28_N0
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\) # (\D3[9]~input_o\)))) # (!\SEL[1]~input_o\ & (\D1[9]~input_o\ & (!\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D1[9]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D3[9]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X10_Y28_N18
\Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\SEL[0]~input_o\ & ((\Mux14~0_combout\ & (\D4[9]~input_o\)) # (!\Mux14~0_combout\ & ((\D2[9]~input_o\))))) # (!\SEL[0]~input_o\ & (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4[9]~input_o\,
	datab => \D2[9]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: IOIBUF_X7_Y29_N29
\D3[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(10),
	o => \D3[10]~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\D4[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(10),
	o => \D4[10]~input_o\);

-- Location: IOIBUF_X14_Y29_N1
\D1[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(10),
	o => \D1[10]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\D2[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(10),
	o => \D2[10]~input_o\);

-- Location: LCCOMB_X10_Y28_N20
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\SEL[0]~input_o\ & (((\D2[10]~input_o\) # (\SEL[1]~input_o\)))) # (!\SEL[0]~input_o\ & (\D1[10]~input_o\ & ((!\SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D1[10]~input_o\,
	datab => \D2[10]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \SEL[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X10_Y28_N30
\Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\SEL[1]~input_o\ & ((\Mux13~0_combout\ & ((\D4[10]~input_o\))) # (!\Mux13~0_combout\ & (\D3[10]~input_o\)))) # (!\SEL[1]~input_o\ & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D3[10]~input_o\,
	datac => \D4[10]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: IOIBUF_X0_Y27_N8
\D2[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(11),
	o => \D2[11]~input_o\);

-- Location: IOIBUF_X7_Y29_N1
\D3[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(11),
	o => \D3[11]~input_o\);

-- Location: IOIBUF_X11_Y29_N1
\D1[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(11),
	o => \D1[11]~input_o\);

-- Location: LCCOMB_X10_Y28_N8
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\SEL[1]~input_o\ & ((\D3[11]~input_o\) # ((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & (((!\SEL[0]~input_o\ & \D1[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D3[11]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D1[11]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: IOIBUF_X7_Y29_N22
\D4[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(11),
	o => \D4[11]~input_o\);

-- Location: LCCOMB_X10_Y28_N2
\Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & (((\D4[11]~input_o\) # (!\SEL[0]~input_o\)))) # (!\Mux12~0_combout\ & (\D2[11]~input_o\ & (\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[11]~input_o\,
	datab => \Mux12~0_combout\,
	datac => \SEL[0]~input_o\,
	datad => \D4[11]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: IOIBUF_X5_Y29_N29
\D3[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(12),
	o => \D3[12]~input_o\);

-- Location: IOIBUF_X5_Y29_N1
\D4[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(12),
	o => \D4[12]~input_o\);

-- Location: IOIBUF_X11_Y29_N22
\D1[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(12),
	o => \D1[12]~input_o\);

-- Location: IOIBUF_X16_Y29_N1
\D2[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(12),
	o => \D2[12]~input_o\);

-- Location: LCCOMB_X10_Y28_N28
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & ((\D2[12]~input_o\))) # (!\SEL[0]~input_o\ & (\D1[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D1[12]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D2[12]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X10_Y28_N14
\Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\SEL[1]~input_o\ & ((\Mux11~0_combout\ & ((\D4[12]~input_o\))) # (!\Mux11~0_combout\ & (\D3[12]~input_o\)))) # (!\SEL[1]~input_o\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D3[12]~input_o\,
	datac => \D4[12]~input_o\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: IOIBUF_X14_Y29_N8
\D1[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(13),
	o => \D1[13]~input_o\);

-- Location: IOIBUF_X19_Y29_N29
\D3[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(13),
	o => \D3[13]~input_o\);

-- Location: LCCOMB_X10_Y28_N16
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\) # (\D3[13]~input_o\)))) # (!\SEL[1]~input_o\ & (\D1[13]~input_o\ & (!\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D1[13]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D3[13]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: IOIBUF_X14_Y29_N15
\D4[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(13),
	o => \D4[13]~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\D2[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(13),
	o => \D2[13]~input_o\);

-- Location: LCCOMB_X10_Y28_N10
\Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\D4[13]~input_o\) # ((!\SEL[0]~input_o\)))) # (!\Mux10~0_combout\ & (((\SEL[0]~input_o\ & \D2[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \D4[13]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D2[13]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: IOIBUF_X14_Y0_N22
\D1[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(14),
	o => \D1[14]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\D2[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(14),
	o => \D2[14]~input_o\);

-- Location: LCCOMB_X8_Y1_N12
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & ((\D2[14]~input_o\))) # (!\SEL[0]~input_o\ & (\D1[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D1[14]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D2[14]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: IOIBUF_X19_Y0_N22
\D4[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(14),
	o => \D4[14]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\D3[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(14),
	o => \D3[14]~input_o\);

-- Location: LCCOMB_X23_Y1_N24
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & ((\D4[14]~input_o\) # ((!\SEL[1]~input_o\)))) # (!\Mux9~0_combout\ & (((\SEL[1]~input_o\ & \D3[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \D4[14]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \D3[14]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: IOIBUF_X41_Y2_N8
\D2[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(15),
	o => \D2[15]~input_o\);

-- Location: IOIBUF_X41_Y3_N22
\D1[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(15),
	o => \D1[15]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\D3[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(15),
	o => \D3[15]~input_o\);

-- Location: LCCOMB_X40_Y3_N24
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\SEL[0]~input_o\ & (((\SEL[1]~input_o\)))) # (!\SEL[0]~input_o\ & ((\SEL[1]~input_o\ & ((\D3[15]~input_o\))) # (!\SEL[1]~input_o\ & (\D1[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \D1[15]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \D3[15]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: IOIBUF_X41_Y5_N1
\D4[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(15),
	o => \D4[15]~input_o\);

-- Location: LCCOMB_X40_Y3_N26
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & (((\D4[15]~input_o\) # (!\SEL[0]~input_o\)))) # (!\Mux8~0_combout\ & (\D2[15]~input_o\ & (\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2[15]~input_o\,
	datab => \Mux8~0_combout\,
	datac => \SEL[0]~input_o\,
	datad => \D4[15]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: IOIBUF_X19_Y0_N15
\D3[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(16),
	o => \D3[16]~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\D2[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(16),
	o => \D2[16]~input_o\);

-- Location: IOIBUF_X41_Y3_N1
\D1[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(16),
	o => \D1[16]~input_o\);

-- Location: LCCOMB_X40_Y3_N4
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\SEL[0]~input_o\ & ((\D2[16]~input_o\) # ((\SEL[1]~input_o\)))) # (!\SEL[0]~input_o\ & (((!\SEL[1]~input_o\ & \D1[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \D2[16]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \D1[16]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X26_Y0_N8
\D4[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(16),
	o => \D4[16]~input_o\);

-- Location: LCCOMB_X23_Y1_N26
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\SEL[1]~input_o\ & ((\Mux7~0_combout\ & ((\D4[16]~input_o\))) # (!\Mux7~0_combout\ & (\D3[16]~input_o\)))) # (!\SEL[1]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[16]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \Mux7~0_combout\,
	datad => \D4[16]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X37_Y0_N29
\D3[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(17),
	o => \D3[17]~input_o\);

-- Location: IOIBUF_X41_Y2_N15
\D1[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(17),
	o => \D1[17]~input_o\);

-- Location: LCCOMB_X40_Y3_N6
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\SEL[0]~input_o\ & (((\SEL[1]~input_o\)))) # (!\SEL[0]~input_o\ & ((\SEL[1]~input_o\ & (\D3[17]~input_o\)) # (!\SEL[1]~input_o\ & ((\D1[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \D3[17]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \D1[17]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X41_Y5_N22
\D2[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(17),
	o => \D2[17]~input_o\);

-- Location: IOIBUF_X41_Y7_N1
\D4[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(17),
	o => \D4[17]~input_o\);

-- Location: LCCOMB_X40_Y3_N0
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\D4[17]~input_o\) # (!\SEL[0]~input_o\)))) # (!\Mux6~0_combout\ & (\D2[17]~input_o\ & (\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \D2[17]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D4[17]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X39_Y0_N8
\D1[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(18),
	o => \D1[18]~input_o\);

-- Location: IOIBUF_X41_Y9_N22
\D2[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(18),
	o => \D2[18]~input_o\);

-- Location: LCCOMB_X40_Y3_N10
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\SEL[0]~input_o\ & (((\SEL[1]~input_o\) # (\D2[18]~input_o\)))) # (!\SEL[0]~input_o\ & (\D1[18]~input_o\ & (!\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \D1[18]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \D2[18]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X41_Y4_N8
\D3[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(18),
	o => \D3[18]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\D4[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(18),
	o => \D4[18]~input_o\);

-- Location: LCCOMB_X40_Y3_N12
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\D4[18]~input_o\) # (!\SEL[1]~input_o\)))) # (!\Mux5~0_combout\ & (\D3[18]~input_o\ & (\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \D3[18]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \D4[18]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X37_Y0_N1
\D1[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(19),
	o => \D1[19]~input_o\);

-- Location: IOIBUF_X41_Y4_N1
\D3[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(19),
	o => \D3[19]~input_o\);

-- Location: LCCOMB_X40_Y3_N22
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\SEL[0]~input_o\ & (((\SEL[1]~input_o\)))) # (!\SEL[0]~input_o\ & ((\SEL[1]~input_o\ & ((\D3[19]~input_o\))) # (!\SEL[1]~input_o\ & (\D1[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \D1[19]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \D3[19]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X35_Y0_N15
\D4[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(19),
	o => \D4[19]~input_o\);

-- Location: IOIBUF_X41_Y7_N8
\D2[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(19),
	o => \D2[19]~input_o\);

-- Location: LCCOMB_X40_Y3_N16
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & ((\D4[19]~input_o\) # ((!\SEL[0]~input_o\)))) # (!\Mux4~0_combout\ & (((\SEL[0]~input_o\ & \D2[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \D4[19]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D2[19]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X41_Y3_N8
\D3[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(20),
	o => \D3[20]~input_o\);

-- Location: IOIBUF_X41_Y7_N22
\D4[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(20),
	o => \D4[20]~input_o\);

-- Location: IOIBUF_X39_Y0_N15
\D1[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(20),
	o => \D1[20]~input_o\);

-- Location: IOIBUF_X41_Y5_N8
\D2[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(20),
	o => \D2[20]~input_o\);

-- Location: LCCOMB_X40_Y3_N2
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\SEL[0]~input_o\ & (((\SEL[1]~input_o\) # (\D2[20]~input_o\)))) # (!\SEL[0]~input_o\ & (\D1[20]~input_o\ & (!\SEL[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \D1[20]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \D2[20]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X40_Y3_N28
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\SEL[1]~input_o\ & ((\Mux3~0_combout\ & ((\D4[20]~input_o\))) # (!\Mux3~0_combout\ & (\D3[20]~input_o\)))) # (!\SEL[1]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D3[20]~input_o\,
	datac => \D4[20]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X35_Y0_N1
\D4[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(21),
	o => \D4[21]~input_o\);

-- Location: IOIBUF_X41_Y8_N22
\D3[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(21),
	o => \D3[21]~input_o\);

-- Location: IOIBUF_X39_Y0_N29
\D1[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(21),
	o => \D1[21]~input_o\);

-- Location: LCCOMB_X40_Y3_N14
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\SEL[0]~input_o\ & (((\SEL[1]~input_o\)))) # (!\SEL[0]~input_o\ & ((\SEL[1]~input_o\ & (\D3[21]~input_o\)) # (!\SEL[1]~input_o\ & ((\D1[21]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[0]~input_o\,
	datab => \D3[21]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \D1[21]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X41_Y7_N15
\D2[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(21),
	o => \D2[21]~input_o\);

-- Location: LCCOMB_X40_Y3_N8
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\D4[21]~input_o\) # ((!\SEL[0]~input_o\)))) # (!\Mux2~0_combout\ & (((\SEL[0]~input_o\ & \D2[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D4[21]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \SEL[0]~input_o\,
	datad => \D2[21]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X21_Y0_N22
\D3[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(22),
	o => \D3[22]~input_o\);

-- Location: IOIBUF_X39_Y0_N22
\D4[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(22),
	o => \D4[22]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\D2[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(22),
	o => \D2[22]~input_o\);

-- Location: IOIBUF_X41_Y2_N22
\D1[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(22),
	o => \D1[22]~input_o\);

-- Location: LCCOMB_X40_Y3_N18
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & (\D2[22]~input_o\)) # (!\SEL[0]~input_o\ & ((\D1[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D2[22]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D1[22]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X40_Y3_N20
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\SEL[1]~input_o\ & ((\Mux1~0_combout\ & ((\D4[22]~input_o\))) # (!\Mux1~0_combout\ & (\D3[22]~input_o\)))) # (!\SEL[1]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \D3[22]~input_o\,
	datac => \D4[22]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X23_Y0_N15
\D3[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(23),
	o => \D3[23]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\D1[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1(23),
	o => \D1[23]~input_o\);

-- Location: LCCOMB_X23_Y1_N12
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\SEL[1]~input_o\ & ((\D3[23]~input_o\) # ((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & (((!\SEL[0]~input_o\ & \D1[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D3[23]~input_o\,
	datab => \SEL[1]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D1[23]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X19_Y0_N29
\D4[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D4(23),
	o => \D4[23]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\D2[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2(23),
	o => \D2[23]~input_o\);

-- Location: LCCOMB_X23_Y1_N6
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((\D4[23]~input_o\) # ((!\SEL[0]~input_o\)))) # (!\Mux0~0_combout\ & (((\SEL[0]~input_o\ & \D2[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \D4[23]~input_o\,
	datac => \SEL[0]~input_o\,
	datad => \D2[23]~input_o\,
	combout => \Mux0~1_combout\);

ww_MX_OUT(0) <= \MX_OUT[0]~output_o\;

ww_MX_OUT(1) <= \MX_OUT[1]~output_o\;

ww_MX_OUT(2) <= \MX_OUT[2]~output_o\;

ww_MX_OUT(3) <= \MX_OUT[3]~output_o\;

ww_MX_OUT(4) <= \MX_OUT[4]~output_o\;

ww_MX_OUT(5) <= \MX_OUT[5]~output_o\;

ww_MX_OUT(6) <= \MX_OUT[6]~output_o\;

ww_MX_OUT(7) <= \MX_OUT[7]~output_o\;

ww_MX_OUT(8) <= \MX_OUT[8]~output_o\;

ww_MX_OUT(9) <= \MX_OUT[9]~output_o\;

ww_MX_OUT(10) <= \MX_OUT[10]~output_o\;

ww_MX_OUT(11) <= \MX_OUT[11]~output_o\;

ww_MX_OUT(12) <= \MX_OUT[12]~output_o\;

ww_MX_OUT(13) <= \MX_OUT[13]~output_o\;

ww_MX_OUT(14) <= \MX_OUT[14]~output_o\;

ww_MX_OUT(15) <= \MX_OUT[15]~output_o\;

ww_MX_OUT(16) <= \MX_OUT[16]~output_o\;

ww_MX_OUT(17) <= \MX_OUT[17]~output_o\;

ww_MX_OUT(18) <= \MX_OUT[18]~output_o\;

ww_MX_OUT(19) <= \MX_OUT[19]~output_o\;

ww_MX_OUT(20) <= \MX_OUT[20]~output_o\;

ww_MX_OUT(21) <= \MX_OUT[21]~output_o\;

ww_MX_OUT(22) <= \MX_OUT[22]~output_o\;

ww_MX_OUT(23) <= \MX_OUT[23]~output_o\;
END structure;


