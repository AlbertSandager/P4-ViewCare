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

-- DATE "03/15/2019 08:31:47"

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

ENTITY 	fir IS
    PORT (
	i_clk : IN std_logic;
	i_rstb : IN std_logic;
	i_coeff_0 : IN std_logic_vector(7 DOWNTO 0);
	i_coeff_1 : IN std_logic_vector(7 DOWNTO 0);
	i_coeff_2 : IN std_logic_vector(7 DOWNTO 0);
	i_coeff_3 : IN std_logic_vector(7 DOWNTO 0);
	i_data : IN std_logic_vector(7 DOWNTO 0);
	o_data : OUT std_logic_vector(9 DOWNTO 0)
	);
END fir;

-- Design Ports Information
-- o_data[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[4]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[7]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[8]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_data[9]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rstb	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_3[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_3[1]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_3[2]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_3[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_3[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_3[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_3[6]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_3[7]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_2[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_2[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_2[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_2[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_2[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_2[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_2[6]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_2[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_1[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_1[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_1[2]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_1[3]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_1[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_1[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_1[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_1[7]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data[1]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data[4]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data[5]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data[6]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_data[7]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_0[0]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_0[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_0[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_0[3]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_0[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_0[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_0[6]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_coeff_0[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fir IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_rstb : std_logic;
SIGNAL ww_i_coeff_0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_coeff_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_coeff_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_coeff_3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_data : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult2|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_rstb~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult3|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \o_data[0]~output_o\ : std_logic;
SIGNAL \o_data[1]~output_o\ : std_logic;
SIGNAL \o_data[2]~output_o\ : std_logic;
SIGNAL \o_data[3]~output_o\ : std_logic;
SIGNAL \o_data[4]~output_o\ : std_logic;
SIGNAL \o_data[5]~output_o\ : std_logic;
SIGNAL \o_data[6]~output_o\ : std_logic;
SIGNAL \o_data[7]~output_o\ : std_logic;
SIGNAL \o_data[8]~output_o\ : std_logic;
SIGNAL \o_data[9]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_rstb~input_o\ : std_logic;
SIGNAL \i_rstb~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_data[0]~input_o\ : std_logic;
SIGNAL \p_data[0][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[0][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[1][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[1][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_data[1]~input_o\ : std_logic;
SIGNAL \p_data[0][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[1][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_data[2]~input_o\ : std_logic;
SIGNAL \p_data[0][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[0][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[1][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_data[3]~input_o\ : std_logic;
SIGNAL \p_data[0][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[0][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[1][3]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[1][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_data[4]~input_o\ : std_logic;
SIGNAL \p_data[0][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[0][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[1][4]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[1][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_data[5]~input_o\ : std_logic;
SIGNAL \p_data[0][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[1][5]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[1][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_data[6]~input_o\ : std_logic;
SIGNAL \p_data[0][6]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[0][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[1][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_data[7]~input_o\ : std_logic;
SIGNAL \p_data[0][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[1][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_coeff_2[0]~input_o\ : std_logic;
SIGNAL \i_coeff_2[1]~input_o\ : std_logic;
SIGNAL \i_coeff_2[2]~input_o\ : std_logic;
SIGNAL \i_coeff_2[3]~input_o\ : std_logic;
SIGNAL \i_coeff_2[4]~input_o\ : std_logic;
SIGNAL \i_coeff_2[5]~input_o\ : std_logic;
SIGNAL \i_coeff_2[6]~input_o\ : std_logic;
SIGNAL \i_coeff_2[7]~input_o\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult2|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \r_mult[2][8]\ : std_logic;
SIGNAL \p_data[2][0]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[2][0]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[2][1]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[2][1]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[2][2]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[2][2]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[2][3]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[2][4]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[2][5]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[2][6]~_Duplicate_1_q\ : std_logic;
SIGNAL \p_data[2][7]~_Duplicate_1feeder_combout\ : std_logic;
SIGNAL \p_data[2][7]~_Duplicate_1_q\ : std_logic;
SIGNAL \i_coeff_3[0]~input_o\ : std_logic;
SIGNAL \i_coeff_3[1]~input_o\ : std_logic;
SIGNAL \i_coeff_3[2]~input_o\ : std_logic;
SIGNAL \i_coeff_3[3]~input_o\ : std_logic;
SIGNAL \i_coeff_3[4]~input_o\ : std_logic;
SIGNAL \i_coeff_3[5]~input_o\ : std_logic;
SIGNAL \i_coeff_3[6]~input_o\ : std_logic;
SIGNAL \i_coeff_3[7]~input_o\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult3|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \r_mult[3][8]\ : std_logic;
SIGNAL \r_mult[2][7]\ : std_logic;
SIGNAL \r_mult[3][7]\ : std_logic;
SIGNAL \r_mult[3][6]\ : std_logic;
SIGNAL \r_mult[2][6]\ : std_logic;
SIGNAL \r_mult[2][5]\ : std_logic;
SIGNAL \r_mult[3][5]\ : std_logic;
SIGNAL \r_mult[2][4]\ : std_logic;
SIGNAL \r_mult[3][4]\ : std_logic;
SIGNAL \r_mult[2][3]\ : std_logic;
SIGNAL \r_mult[3][3]\ : std_logic;
SIGNAL \r_mult[2][2]\ : std_logic;
SIGNAL \r_mult[3][2]\ : std_logic;
SIGNAL \r_mult[2][1]\ : std_logic;
SIGNAL \r_mult[3][1]\ : std_logic;
SIGNAL \r_mult[3][0]\ : std_logic;
SIGNAL \r_mult[2][0]\ : std_logic;
SIGNAL \r_add_st0[1][0]~35\ : std_logic;
SIGNAL \r_add_st0[1][1]~37\ : std_logic;
SIGNAL \r_add_st0[1][2]~39\ : std_logic;
SIGNAL \r_add_st0[1][3]~41\ : std_logic;
SIGNAL \r_add_st0[1][4]~43\ : std_logic;
SIGNAL \r_add_st0[1][5]~45\ : std_logic;
SIGNAL \r_add_st0[1][6]~47\ : std_logic;
SIGNAL \r_add_st0[1][7]~49\ : std_logic;
SIGNAL \r_add_st0[1][8]~50_combout\ : std_logic;
SIGNAL \r_add_st0[1][8]~q\ : std_logic;
SIGNAL \i_coeff_1[0]~input_o\ : std_logic;
SIGNAL \i_coeff_1[1]~input_o\ : std_logic;
SIGNAL \i_coeff_1[2]~input_o\ : std_logic;
SIGNAL \i_coeff_1[3]~input_o\ : std_logic;
SIGNAL \i_coeff_1[4]~input_o\ : std_logic;
SIGNAL \i_coeff_1[5]~input_o\ : std_logic;
SIGNAL \i_coeff_1[6]~input_o\ : std_logic;
SIGNAL \i_coeff_1[7]~input_o\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult1|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \r_mult[1][8]\ : std_logic;
SIGNAL \i_coeff_0[0]~input_o\ : std_logic;
SIGNAL \i_coeff_0[1]~input_o\ : std_logic;
SIGNAL \i_coeff_0[2]~input_o\ : std_logic;
SIGNAL \i_coeff_0[3]~input_o\ : std_logic;
SIGNAL \i_coeff_0[4]~input_o\ : std_logic;
SIGNAL \i_coeff_0[5]~input_o\ : std_logic;
SIGNAL \i_coeff_0[6]~input_o\ : std_logic;
SIGNAL \i_coeff_0[7]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \r_mult[0][8]\ : std_logic;
SIGNAL \r_mult[0][7]\ : std_logic;
SIGNAL \r_mult[1][7]\ : std_logic;
SIGNAL \r_mult[1][6]\ : std_logic;
SIGNAL \r_mult[0][6]\ : std_logic;
SIGNAL \r_mult[0][5]\ : std_logic;
SIGNAL \r_mult[1][5]\ : std_logic;
SIGNAL \r_mult[1][4]\ : std_logic;
SIGNAL \r_mult[0][4]\ : std_logic;
SIGNAL \r_mult[0][3]\ : std_logic;
SIGNAL \r_mult[1][3]\ : std_logic;
SIGNAL \r_mult[1][2]\ : std_logic;
SIGNAL \r_mult[0][2]\ : std_logic;
SIGNAL \r_mult[0][1]\ : std_logic;
SIGNAL \r_mult[1][1]\ : std_logic;
SIGNAL \r_mult[0][0]\ : std_logic;
SIGNAL \r_mult[1][0]\ : std_logic;
SIGNAL \r_add_st0[0][0]~53\ : std_logic;
SIGNAL \r_add_st0[0][1]~55\ : std_logic;
SIGNAL \r_add_st0[0][2]~57\ : std_logic;
SIGNAL \r_add_st0[0][3]~59\ : std_logic;
SIGNAL \r_add_st0[0][4]~61\ : std_logic;
SIGNAL \r_add_st0[0][5]~63\ : std_logic;
SIGNAL \r_add_st0[0][6]~65\ : std_logic;
SIGNAL \r_add_st0[0][7]~67\ : std_logic;
SIGNAL \r_add_st0[0][8]~68_combout\ : std_logic;
SIGNAL \r_add_st0[0][8]~q\ : std_logic;
SIGNAL \r_add_st0[0][7]~66_combout\ : std_logic;
SIGNAL \r_add_st0[0][7]~q\ : std_logic;
SIGNAL \r_add_st0[1][7]~48_combout\ : std_logic;
SIGNAL \r_add_st0[1][7]~q\ : std_logic;
SIGNAL \r_add_st0[0][6]~64_combout\ : std_logic;
SIGNAL \r_add_st0[0][6]~q\ : std_logic;
SIGNAL \r_add_st0[1][6]~46_combout\ : std_logic;
SIGNAL \r_add_st0[1][6]~q\ : std_logic;
SIGNAL \r_add_st0[1][5]~44_combout\ : std_logic;
SIGNAL \r_add_st0[1][5]~q\ : std_logic;
SIGNAL \r_add_st0[0][5]~62_combout\ : std_logic;
SIGNAL \r_add_st0[0][5]~q\ : std_logic;
SIGNAL \r_add_st0[0][4]~60_combout\ : std_logic;
SIGNAL \r_add_st0[0][4]~q\ : std_logic;
SIGNAL \r_add_st0[1][4]~42_combout\ : std_logic;
SIGNAL \r_add_st0[1][4]~q\ : std_logic;
SIGNAL \r_add_st0[0][3]~58_combout\ : std_logic;
SIGNAL \r_add_st0[0][3]~q\ : std_logic;
SIGNAL \r_add_st0[1][3]~40_combout\ : std_logic;
SIGNAL \r_add_st0[1][3]~q\ : std_logic;
SIGNAL \r_add_st0[0][2]~56_combout\ : std_logic;
SIGNAL \r_add_st0[0][2]~q\ : std_logic;
SIGNAL \r_add_st0[1][2]~38_combout\ : std_logic;
SIGNAL \r_add_st0[1][2]~q\ : std_logic;
SIGNAL \r_add_st0[1][1]~36_combout\ : std_logic;
SIGNAL \r_add_st0[1][1]~q\ : std_logic;
SIGNAL \r_add_st0[0][1]~54_combout\ : std_logic;
SIGNAL \r_add_st0[0][1]~q\ : std_logic;
SIGNAL \r_add_st0[1][0]~34_combout\ : std_logic;
SIGNAL \r_add_st0[1][0]~q\ : std_logic;
SIGNAL \r_add_st0[0][0]~52_combout\ : std_logic;
SIGNAL \r_add_st0[0][0]~q\ : std_logic;
SIGNAL \r_add_st1[8]~11_cout\ : std_logic;
SIGNAL \r_add_st1[8]~13_cout\ : std_logic;
SIGNAL \r_add_st1[8]~15_cout\ : std_logic;
SIGNAL \r_add_st1[8]~17_cout\ : std_logic;
SIGNAL \r_add_st1[8]~19_cout\ : std_logic;
SIGNAL \r_add_st1[8]~21_cout\ : std_logic;
SIGNAL \r_add_st1[8]~23_cout\ : std_logic;
SIGNAL \r_add_st1[8]~25_cout\ : std_logic;
SIGNAL \r_add_st1[8]~26_combout\ : std_logic;
SIGNAL \o_data[0]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data[0]~reg0_q\ : std_logic;
SIGNAL \r_mult[3][9]\ : std_logic;
SIGNAL \r_mult[2][9]\ : std_logic;
SIGNAL \r_add_st0[1][8]~51\ : std_logic;
SIGNAL \r_add_st0[1][9]~70_combout\ : std_logic;
SIGNAL \r_add_st0[1][9]~q\ : std_logic;
SIGNAL \r_mult[1][9]\ : std_logic;
SIGNAL \r_mult[0][9]\ : std_logic;
SIGNAL \r_add_st0[0][8]~69\ : std_logic;
SIGNAL \r_add_st0[0][9]~72_combout\ : std_logic;
SIGNAL \r_add_st0[0][9]~q\ : std_logic;
SIGNAL \r_add_st1[8]~27\ : std_logic;
SIGNAL \r_add_st1[9]~28_combout\ : std_logic;
SIGNAL \o_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data[1]~reg0_q\ : std_logic;
SIGNAL \r_mult[1][10]\ : std_logic;
SIGNAL \r_mult[0][10]\ : std_logic;
SIGNAL \r_add_st0[0][9]~73\ : std_logic;
SIGNAL \r_add_st0[0][10]~76_combout\ : std_logic;
SIGNAL \r_add_st0[0][10]~q\ : std_logic;
SIGNAL \r_mult[2][10]\ : std_logic;
SIGNAL \r_mult[3][10]\ : std_logic;
SIGNAL \r_add_st0[1][9]~71\ : std_logic;
SIGNAL \r_add_st0[1][10]~74_combout\ : std_logic;
SIGNAL \r_add_st0[1][10]~q\ : std_logic;
SIGNAL \r_add_st1[9]~29\ : std_logic;
SIGNAL \r_add_st1[10]~30_combout\ : std_logic;
SIGNAL \o_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data[2]~reg0_q\ : std_logic;
SIGNAL \r_mult[1][11]\ : std_logic;
SIGNAL \r_mult[0][11]\ : std_logic;
SIGNAL \r_add_st0[0][10]~77\ : std_logic;
SIGNAL \r_add_st0[0][11]~80_combout\ : std_logic;
SIGNAL \r_add_st0[0][11]~q\ : std_logic;
SIGNAL \r_mult[2][11]\ : std_logic;
SIGNAL \r_mult[3][11]\ : std_logic;
SIGNAL \r_add_st0[1][10]~75\ : std_logic;
SIGNAL \r_add_st0[1][11]~78_combout\ : std_logic;
SIGNAL \r_add_st0[1][11]~q\ : std_logic;
SIGNAL \r_add_st1[10]~31\ : std_logic;
SIGNAL \r_add_st1[11]~32_combout\ : std_logic;
SIGNAL \o_data[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data[3]~reg0_q\ : std_logic;
SIGNAL \r_mult[0][12]\ : std_logic;
SIGNAL \r_mult[1][12]\ : std_logic;
SIGNAL \r_add_st0[0][11]~81\ : std_logic;
SIGNAL \r_add_st0[0][12]~84_combout\ : std_logic;
SIGNAL \r_add_st0[0][12]~q\ : std_logic;
SIGNAL \r_mult[2][12]\ : std_logic;
SIGNAL \r_mult[3][12]\ : std_logic;
SIGNAL \r_add_st0[1][11]~79\ : std_logic;
SIGNAL \r_add_st0[1][12]~82_combout\ : std_logic;
SIGNAL \r_add_st0[1][12]~q\ : std_logic;
SIGNAL \r_add_st1[11]~33\ : std_logic;
SIGNAL \r_add_st1[12]~34_combout\ : std_logic;
SIGNAL \o_data[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data[4]~reg0_q\ : std_logic;
SIGNAL \r_mult[3][13]\ : std_logic;
SIGNAL \r_mult[2][13]\ : std_logic;
SIGNAL \r_add_st0[1][12]~83\ : std_logic;
SIGNAL \r_add_st0[1][13]~86_combout\ : std_logic;
SIGNAL \r_add_st0[1][13]~q\ : std_logic;
SIGNAL \r_mult[0][13]\ : std_logic;
SIGNAL \r_mult[1][13]\ : std_logic;
SIGNAL \r_add_st0[0][12]~85\ : std_logic;
SIGNAL \r_add_st0[0][13]~88_combout\ : std_logic;
SIGNAL \r_add_st0[0][13]~q\ : std_logic;
SIGNAL \r_add_st1[12]~35\ : std_logic;
SIGNAL \r_add_st1[13]~36_combout\ : std_logic;
SIGNAL \o_data[5]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data[5]~reg0_q\ : std_logic;
SIGNAL \r_mult[2][14]\ : std_logic;
SIGNAL \r_mult[3][14]\ : std_logic;
SIGNAL \r_add_st0[1][13]~87\ : std_logic;
SIGNAL \r_add_st0[1][14]~90_combout\ : std_logic;
SIGNAL \r_add_st0[1][14]~q\ : std_logic;
SIGNAL \r_mult[0][14]\ : std_logic;
SIGNAL \r_mult[1][14]\ : std_logic;
SIGNAL \r_add_st0[0][13]~89\ : std_logic;
SIGNAL \r_add_st0[0][14]~92_combout\ : std_logic;
SIGNAL \r_add_st0[0][14]~q\ : std_logic;
SIGNAL \r_add_st1[13]~37\ : std_logic;
SIGNAL \r_add_st1[14]~38_combout\ : std_logic;
SIGNAL \o_data[6]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data[6]~reg0_q\ : std_logic;
SIGNAL \r_mult[2][15]\ : std_logic;
SIGNAL \r_mult[3][15]\ : std_logic;
SIGNAL \r_add_st0[1][14]~91\ : std_logic;
SIGNAL \r_add_st0[1][15]~94_combout\ : std_logic;
SIGNAL \r_add_st0[1][15]~q\ : std_logic;
SIGNAL \r_mult[1][15]\ : std_logic;
SIGNAL \r_mult[0][15]\ : std_logic;
SIGNAL \r_add_st0[0][14]~93\ : std_logic;
SIGNAL \r_add_st0[0][15]~96_combout\ : std_logic;
SIGNAL \r_add_st0[0][15]~q\ : std_logic;
SIGNAL \r_add_st1[14]~39\ : std_logic;
SIGNAL \r_add_st1[15]~40_combout\ : std_logic;
SIGNAL \o_data[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data[7]~reg0_q\ : std_logic;
SIGNAL \r_add_st0[1][15]~95\ : std_logic;
SIGNAL \r_add_st0[1][16]~98_combout\ : std_logic;
SIGNAL \r_add_st0[1][16]~q\ : std_logic;
SIGNAL \r_add_st0[0][15]~97\ : std_logic;
SIGNAL \r_add_st0[0][16]~100_combout\ : std_logic;
SIGNAL \r_add_st0[0][16]~q\ : std_logic;
SIGNAL \r_add_st1[15]~41\ : std_logic;
SIGNAL \r_add_st1[16]~42_combout\ : std_logic;
SIGNAL \o_data[8]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data[8]~reg0_q\ : std_logic;
SIGNAL \r_add_st1[16]~43\ : std_logic;
SIGNAL \r_add_st1[17]~44_combout\ : std_logic;
SIGNAL \o_data[9]~reg0feeder_combout\ : std_logic;
SIGNAL \o_data[9]~reg0_q\ : std_logic;
SIGNAL r_add_st1 : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_i_rstb~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_i_clk <= i_clk;
ww_i_rstb <= i_rstb;
ww_i_coeff_0 <= i_coeff_0;
ww_i_coeff_1 <= i_coeff_1;
ww_i_coeff_2 <= i_coeff_2;
ww_i_coeff_3 <= i_coeff_3;
ww_i_data <= i_data;
o_data <= ww_o_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult3|auto_generated|mac_out2_DATAA_bus\ <= (\Mult3|auto_generated|mac_mult1~DATAOUT15\ & \Mult3|auto_generated|mac_mult1~DATAOUT14\ & \Mult3|auto_generated|mac_mult1~DATAOUT13\ & \Mult3|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT11\ & \Mult3|auto_generated|mac_mult1~DATAOUT10\ & \Mult3|auto_generated|mac_mult1~DATAOUT9\ & \Mult3|auto_generated|mac_mult1~DATAOUT8\ & \Mult3|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT6\ & \Mult3|auto_generated|mac_mult1~DATAOUT5\ & \Mult3|auto_generated|mac_mult1~DATAOUT4\ & \Mult3|auto_generated|mac_mult1~DATAOUT3\ & \Mult3|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult3|auto_generated|mac_mult1~DATAOUT1\ & \Mult3|auto_generated|mac_mult1~dataout\ & \Mult3|auto_generated|mac_mult1~1\ & \Mult3|auto_generated|mac_mult1~0\);

\Mult3|auto_generated|mac_out2~0\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult3|auto_generated|mac_out2~1\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(1);
\r_mult[3][0]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(2);
\r_mult[3][1]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(3);
\r_mult[3][2]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(4);
\r_mult[3][3]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(5);
\r_mult[3][4]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(6);
\r_mult[3][5]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(7);
\r_mult[3][6]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(8);
\r_mult[3][7]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(9);
\r_mult[3][8]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(10);
\r_mult[3][9]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(11);
\r_mult[3][10]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(12);
\r_mult[3][11]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(13);
\r_mult[3][12]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(14);
\r_mult[3][13]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(15);
\r_mult[3][14]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(16);
\r_mult[3][15]\ <= \Mult3|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult2|auto_generated|mac_out2_DATAA_bus\ <= (\Mult2|auto_generated|mac_mult1~DATAOUT15\ & \Mult2|auto_generated|mac_mult1~DATAOUT14\ & \Mult2|auto_generated|mac_mult1~DATAOUT13\ & \Mult2|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT11\ & \Mult2|auto_generated|mac_mult1~DATAOUT10\ & \Mult2|auto_generated|mac_mult1~DATAOUT9\ & \Mult2|auto_generated|mac_mult1~DATAOUT8\ & \Mult2|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT6\ & \Mult2|auto_generated|mac_mult1~DATAOUT5\ & \Mult2|auto_generated|mac_mult1~DATAOUT4\ & \Mult2|auto_generated|mac_mult1~DATAOUT3\ & \Mult2|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult2|auto_generated|mac_mult1~DATAOUT1\ & \Mult2|auto_generated|mac_mult1~dataout\ & \Mult2|auto_generated|mac_mult1~1\ & \Mult2|auto_generated|mac_mult1~0\);

\Mult2|auto_generated|mac_out2~0\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_out2~1\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(1);
\r_mult[2][0]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(2);
\r_mult[2][1]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(3);
\r_mult[2][2]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(4);
\r_mult[2][3]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(5);
\r_mult[2][4]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(6);
\r_mult[2][5]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(7);
\r_mult[2][6]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(8);
\r_mult[2][7]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(9);
\r_mult[2][8]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(10);
\r_mult[2][9]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(11);
\r_mult[2][10]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(12);
\r_mult[2][11]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(13);
\r_mult[2][12]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(14);
\r_mult[2][13]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(15);
\r_mult[2][14]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(16);
\r_mult[2][15]\ <= \Mult2|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\Mult1|auto_generated|mac_mult1~DATAOUT15\ & \Mult1|auto_generated|mac_mult1~DATAOUT14\ & \Mult1|auto_generated|mac_mult1~DATAOUT13\ & \Mult1|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT11\ & \Mult1|auto_generated|mac_mult1~DATAOUT10\ & \Mult1|auto_generated|mac_mult1~DATAOUT9\ & \Mult1|auto_generated|mac_mult1~DATAOUT8\ & \Mult1|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT6\ & \Mult1|auto_generated|mac_mult1~DATAOUT5\ & \Mult1|auto_generated|mac_mult1~DATAOUT4\ & \Mult1|auto_generated|mac_mult1~DATAOUT3\ & \Mult1|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult1|auto_generated|mac_mult1~DATAOUT1\ & \Mult1|auto_generated|mac_mult1~dataout\ & \Mult1|auto_generated|mac_mult1~1\ & \Mult1|auto_generated|mac_mult1~0\);

\Mult1|auto_generated|mac_out2~0\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_out2~1\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\r_mult[1][0]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\r_mult[1][1]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\r_mult[1][2]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\r_mult[1][3]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\r_mult[1][4]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\r_mult[1][5]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\r_mult[1][6]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\r_mult[1][7]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\r_mult[1][8]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\r_mult[1][9]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\r_mult[1][10]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\r_mult[1][11]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\r_mult[1][12]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\r_mult[1][13]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\r_mult[1][14]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\r_mult[1][15]\ <= \Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\r_mult[0][0]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\r_mult[0][1]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\r_mult[0][2]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\r_mult[0][3]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\r_mult[0][4]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\r_mult[0][5]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\r_mult[0][6]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\r_mult[0][7]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\r_mult[0][8]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\r_mult[0][9]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\r_mult[0][10]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\r_mult[0][11]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\r_mult[0][12]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\r_mult[0][13]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\r_mult[0][14]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\r_mult[0][15]\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult3|auto_generated|mac_mult1_DATAA_bus\ <= (\p_data[2][7]~_Duplicate_1_q\ & \p_data[2][6]~_Duplicate_1_q\ & \p_data[2][5]~_Duplicate_1_q\ & \p_data[2][4]~_Duplicate_1_q\ & \p_data[2][3]~_Duplicate_1_q\ & \p_data[2][2]~_Duplicate_1_q\ & 
\p_data[2][1]~_Duplicate_1_q\ & \p_data[2][0]~_Duplicate_1_q\ & gnd);

\Mult3|auto_generated|mac_mult1_DATAB_bus\ <= (\i_coeff_3[7]~input_o\ & \i_coeff_3[6]~input_o\ & \i_coeff_3[5]~input_o\ & \i_coeff_3[4]~input_o\ & \i_coeff_3[3]~input_o\ & \i_coeff_3[2]~input_o\ & \i_coeff_3[1]~input_o\ & \i_coeff_3[0]~input_o\ & gnd);

\Mult3|auto_generated|mac_mult1~0\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult3|auto_generated|mac_mult1~1\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult3|auto_generated|mac_mult1~dataout\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult3|auto_generated|mac_mult1~DATAOUT1\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult3|auto_generated|mac_mult1~DATAOUT2\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult3|auto_generated|mac_mult1~DATAOUT3\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult3|auto_generated|mac_mult1~DATAOUT4\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult3|auto_generated|mac_mult1~DATAOUT5\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult3|auto_generated|mac_mult1~DATAOUT6\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult3|auto_generated|mac_mult1~DATAOUT7\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult3|auto_generated|mac_mult1~DATAOUT8\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult3|auto_generated|mac_mult1~DATAOUT9\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult3|auto_generated|mac_mult1~DATAOUT10\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult3|auto_generated|mac_mult1~DATAOUT11\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult3|auto_generated|mac_mult1~DATAOUT12\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult3|auto_generated|mac_mult1~DATAOUT13\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult3|auto_generated|mac_mult1~DATAOUT14\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult3|auto_generated|mac_mult1~DATAOUT15\ <= \Mult3|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Mult2|auto_generated|mac_mult1_DATAA_bus\ <= (\p_data[1][7]~_Duplicate_1_q\ & \p_data[1][6]~_Duplicate_1_q\ & \p_data[1][5]~_Duplicate_1_q\ & \p_data[1][4]~_Duplicate_1_q\ & \p_data[1][3]~_Duplicate_1_q\ & \p_data[1][2]~_Duplicate_1_q\ & 
\p_data[1][1]~_Duplicate_1_q\ & \p_data[1][0]~_Duplicate_1_q\ & gnd);

\Mult2|auto_generated|mac_mult1_DATAB_bus\ <= (\i_coeff_2[7]~input_o\ & \i_coeff_2[6]~input_o\ & \i_coeff_2[5]~input_o\ & \i_coeff_2[4]~input_o\ & \i_coeff_2[3]~input_o\ & \i_coeff_2[2]~input_o\ & \i_coeff_2[1]~input_o\ & \i_coeff_2[0]~input_o\ & gnd);

\Mult2|auto_generated|mac_mult1~0\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult2|auto_generated|mac_mult1~1\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult2|auto_generated|mac_mult1~dataout\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult2|auto_generated|mac_mult1~DATAOUT1\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult2|auto_generated|mac_mult1~DATAOUT2\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult2|auto_generated|mac_mult1~DATAOUT3\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult2|auto_generated|mac_mult1~DATAOUT4\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult2|auto_generated|mac_mult1~DATAOUT5\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult2|auto_generated|mac_mult1~DATAOUT6\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult2|auto_generated|mac_mult1~DATAOUT7\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult2|auto_generated|mac_mult1~DATAOUT8\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult2|auto_generated|mac_mult1~DATAOUT9\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult2|auto_generated|mac_mult1~DATAOUT10\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult2|auto_generated|mac_mult1~DATAOUT11\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult2|auto_generated|mac_mult1~DATAOUT12\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult2|auto_generated|mac_mult1~DATAOUT13\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult2|auto_generated|mac_mult1~DATAOUT14\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult2|auto_generated|mac_mult1~DATAOUT15\ <= \Mult2|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\p_data[0][7]~_Duplicate_1_q\ & \p_data[0][6]~_Duplicate_1_q\ & \p_data[0][5]~_Duplicate_1_q\ & \p_data[0][4]~_Duplicate_1_q\ & \p_data[0][3]~_Duplicate_1_q\ & \p_data[0][2]~_Duplicate_1_q\ & 
\p_data[0][1]~_Duplicate_1_q\ & \p_data[0][0]~_Duplicate_1_q\ & gnd);

\Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\i_coeff_1[7]~input_o\ & \i_coeff_1[6]~input_o\ & \i_coeff_1[5]~input_o\ & \i_coeff_1[4]~input_o\ & \i_coeff_1[3]~input_o\ & \i_coeff_1[2]~input_o\ & \i_coeff_1[1]~input_o\ & \i_coeff_1[0]~input_o\ & gnd);

\Mult1|auto_generated|mac_mult1~0\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult1|auto_generated|mac_mult1~1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult1|auto_generated|mac_mult1~dataout\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\i_data[7]~input_o\ & \i_data[6]~input_o\ & \i_data[5]~input_o\ & \i_data[4]~input_o\ & \i_data[3]~input_o\ & \i_data[2]~input_o\ & \i_data[1]~input_o\ & \i_data[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\i_coeff_0[7]~input_o\ & \i_coeff_0[6]~input_o\ & \i_coeff_0[5]~input_o\ & \i_coeff_0[4]~input_o\ & \i_coeff_0[3]~input_o\ & \i_coeff_0[2]~input_o\ & \i_coeff_0[1]~input_o\ & \i_coeff_0[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);

\i_rstb~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_rstb~input_o\);
\ALT_INV_i_rstb~inputclkctrl_outclk\ <= NOT \i_rstb~inputclkctrl_outclk\;

-- Location: IOOBUF_X41_Y3_N9
\o_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\o_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[1]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\o_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[2]~output_o\);

-- Location: IOOBUF_X41_Y5_N9
\o_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[3]~output_o\);

-- Location: IOOBUF_X41_Y5_N2
\o_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[4]~output_o\);

-- Location: IOOBUF_X41_Y4_N9
\o_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[5]~output_o\);

-- Location: IOOBUF_X37_Y0_N16
\o_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\o_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[7]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\o_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[8]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[8]~output_o\);

-- Location: IOOBUF_X41_Y4_N2
\o_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_data[9]~reg0_q\,
	devoe => ww_devoe,
	o => \o_data[9]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X0_Y14_N8
\i_rstb~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rstb,
	o => \i_rstb~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X32_Y0_N22
\i_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data(0),
	o => \i_data[0]~input_o\);

-- Location: LCCOMB_X33_Y1_N20
\p_data[0][0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[0][0]~_Duplicate_1feeder_combout\ = \i_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_data[0]~input_o\,
	combout => \p_data[0][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y1_N21
\p_data[0][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[0][0]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[0][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X33_Y1_N18
\p_data[1][0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[1][0]~_Duplicate_1feeder_combout\ = \p_data[0][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p_data[0][0]~_Duplicate_1_q\,
	combout => \p_data[1][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y1_N19
\p_data[1][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[1][0]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[1][0]~_Duplicate_1_q\);

-- Location: IOIBUF_X35_Y0_N8
\i_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data(1),
	o => \i_data[1]~input_o\);

-- Location: FF_X35_Y1_N23
\p_data[0][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_data[1]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[0][1]~_Duplicate_1_q\);

-- Location: FF_X35_Y1_N25
\p_data[1][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \p_data[0][1]~_Duplicate_1_q\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[1][1]~_Duplicate_1_q\);

-- Location: IOIBUF_X32_Y0_N15
\i_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data(2),
	o => \i_data[2]~input_o\);

-- Location: LCCOMB_X33_Y1_N26
\p_data[0][2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[0][2]~_Duplicate_1feeder_combout\ = \i_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_data[2]~input_o\,
	combout => \p_data[0][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y1_N27
\p_data[0][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[0][2]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[0][2]~_Duplicate_1_q\);

-- Location: FF_X33_Y1_N29
\p_data[1][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \p_data[0][2]~_Duplicate_1_q\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[1][2]~_Duplicate_1_q\);

-- Location: IOIBUF_X32_Y0_N8
\i_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data(3),
	o => \i_data[3]~input_o\);

-- Location: LCCOMB_X33_Y1_N24
\p_data[0][3]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[0][3]~_Duplicate_1feeder_combout\ = \i_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_data[3]~input_o\,
	combout => \p_data[0][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y1_N25
\p_data[0][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[0][3]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[0][3]~_Duplicate_1_q\);

-- Location: LCCOMB_X33_Y1_N22
\p_data[1][3]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[1][3]~_Duplicate_1feeder_combout\ = \p_data[0][3]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p_data[0][3]~_Duplicate_1_q\,
	combout => \p_data[1][3]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y1_N23
\p_data[1][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[1][3]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[1][3]~_Duplicate_1_q\);

-- Location: IOIBUF_X39_Y0_N15
\i_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data(4),
	o => \i_data[4]~input_o\);

-- Location: LCCOMB_X35_Y2_N6
\p_data[0][4]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[0][4]~_Duplicate_1feeder_combout\ = \i_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_data[4]~input_o\,
	combout => \p_data[0][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y2_N7
\p_data[0][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[0][4]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[0][4]~_Duplicate_1_q\);

-- Location: LCCOMB_X35_Y2_N14
\p_data[1][4]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[1][4]~_Duplicate_1feeder_combout\ = \p_data[0][4]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p_data[0][4]~_Duplicate_1_q\,
	combout => \p_data[1][4]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y2_N15
\p_data[1][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[1][4]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[1][4]~_Duplicate_1_q\);

-- Location: IOIBUF_X23_Y0_N1
\i_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data(5),
	o => \i_data[5]~input_o\);

-- Location: FF_X35_Y2_N13
\p_data[0][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_data[5]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[0][5]~_Duplicate_1_q\);

-- Location: LCCOMB_X35_Y2_N4
\p_data[1][5]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[1][5]~_Duplicate_1feeder_combout\ = \p_data[0][5]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p_data[0][5]~_Duplicate_1_q\,
	combout => \p_data[1][5]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y2_N5
\p_data[1][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[1][5]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[1][5]~_Duplicate_1_q\);

-- Location: IOIBUF_X37_Y0_N8
\i_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data(6),
	o => \i_data[6]~input_o\);

-- Location: LCCOMB_X33_Y2_N4
\p_data[0][6]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[0][6]~_Duplicate_1feeder_combout\ = \i_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_data[6]~input_o\,
	combout => \p_data[0][6]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y2_N5
\p_data[0][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[0][6]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[0][6]~_Duplicate_1_q\);

-- Location: FF_X33_Y2_N9
\p_data[1][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \p_data[0][6]~_Duplicate_1_q\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[1][6]~_Duplicate_1_q\);

-- Location: IOIBUF_X39_Y0_N8
\i_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_data(7),
	o => \i_data[7]~input_o\);

-- Location: FF_X33_Y2_N15
\p_data[0][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_data[7]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[0][7]~_Duplicate_1_q\);

-- Location: FF_X33_Y2_N7
\p_data[1][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \p_data[0][7]~_Duplicate_1_q\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[1][7]~_Duplicate_1_q\);

-- Location: IOIBUF_X26_Y0_N1
\i_coeff_2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_2(0),
	o => \i_coeff_2[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\i_coeff_2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_2(1),
	o => \i_coeff_2[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\i_coeff_2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_2(2),
	o => \i_coeff_2[2]~input_o\);

-- Location: IOIBUF_X41_Y3_N1
\i_coeff_2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_2(3),
	o => \i_coeff_2[3]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\i_coeff_2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_2(4),
	o => \i_coeff_2[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\i_coeff_2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_2(5),
	o => \i_coeff_2[5]~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\i_coeff_2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_2(6),
	o => \i_coeff_2[6]~input_o\);

-- Location: IOIBUF_X41_Y2_N22
\i_coeff_2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_2(7),
	o => \i_coeff_2[7]~input_o\);

-- Location: DSPMULT_X34_Y2_N1
\Mult2|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \i_clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult2|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult2|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y2_N3
\Mult2|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult2|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult2|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X33_Y2_N12
\p_data[2][0]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[2][0]~_Duplicate_1feeder_combout\ = \p_data[1][0]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p_data[1][0]~_Duplicate_1_q\,
	combout => \p_data[2][0]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y2_N13
\p_data[2][0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[2][0]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[2][0]~_Duplicate_1_q\);

-- Location: LCCOMB_X35_Y2_N8
\p_data[2][1]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[2][1]~_Duplicate_1feeder_combout\ = \p_data[1][1]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p_data[1][1]~_Duplicate_1_q\,
	combout => \p_data[2][1]~_Duplicate_1feeder_combout\);

-- Location: FF_X35_Y2_N9
\p_data[2][1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[2][1]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[2][1]~_Duplicate_1_q\);

-- Location: LCCOMB_X33_Y2_N2
\p_data[2][2]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[2][2]~_Duplicate_1feeder_combout\ = \p_data[1][2]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p_data[1][2]~_Duplicate_1_q\,
	combout => \p_data[2][2]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y2_N3
\p_data[2][2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[2][2]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[2][2]~_Duplicate_1_q\);

-- Location: FF_X33_Y2_N19
\p_data[2][3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \p_data[1][3]~_Duplicate_1_q\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[2][3]~_Duplicate_1_q\);

-- Location: FF_X35_Y2_N11
\p_data[2][4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \p_data[1][4]~_Duplicate_1_q\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[2][4]~_Duplicate_1_q\);

-- Location: FF_X35_Y2_N1
\p_data[2][5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \p_data[1][5]~_Duplicate_1_q\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[2][5]~_Duplicate_1_q\);

-- Location: FF_X33_Y2_N1
\p_data[2][6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \p_data[1][6]~_Duplicate_1_q\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[2][6]~_Duplicate_1_q\);

-- Location: LCCOMB_X33_Y2_N10
\p_data[2][7]~_Duplicate_1feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \p_data[2][7]~_Duplicate_1feeder_combout\ = \p_data[1][7]~_Duplicate_1_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \p_data[1][7]~_Duplicate_1_q\,
	combout => \p_data[2][7]~_Duplicate_1feeder_combout\);

-- Location: FF_X33_Y2_N11
\p_data[2][7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \p_data[2][7]~_Duplicate_1feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_data[2][7]~_Duplicate_1_q\);

-- Location: IOIBUF_X41_Y15_N8
\i_coeff_3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_3(0),
	o => \i_coeff_3[0]~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\i_coeff_3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_3(1),
	o => \i_coeff_3[1]~input_o\);

-- Location: IOIBUF_X41_Y2_N15
\i_coeff_3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_3(2),
	o => \i_coeff_3[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\i_coeff_3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_3(3),
	o => \i_coeff_3[3]~input_o\);

-- Location: IOIBUF_X41_Y2_N8
\i_coeff_3[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_3(4),
	o => \i_coeff_3[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\i_coeff_3[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_3(5),
	o => \i_coeff_3[5]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\i_coeff_3[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_3(6),
	o => \i_coeff_3[6]~input_o\);

-- Location: IOIBUF_X30_Y0_N29
\i_coeff_3[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_3(7),
	o => \i_coeff_3[7]~input_o\);

-- Location: DSPMULT_X34_Y2_N0
\Mult3|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \i_clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult3|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult3|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y2_N2
\Mult3|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult3|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult3|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X35_Y2_N16
\r_add_st0[1][0]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][0]~34_combout\ = (\r_mult[3][0]\ & (\r_mult[2][0]\ $ (VCC))) # (!\r_mult[3][0]\ & (\r_mult[2][0]\ & VCC))
-- \r_add_st0[1][0]~35\ = CARRY((\r_mult[3][0]\ & \r_mult[2][0]\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[3][0]\,
	datab => \r_mult[2][0]\,
	datad => VCC,
	combout => \r_add_st0[1][0]~34_combout\,
	cout => \r_add_st0[1][0]~35\);

-- Location: LCCOMB_X35_Y2_N18
\r_add_st0[1][1]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][1]~36_combout\ = (\r_mult[2][1]\ & ((\r_mult[3][1]\ & (\r_add_st0[1][0]~35\ & VCC)) # (!\r_mult[3][1]\ & (!\r_add_st0[1][0]~35\)))) # (!\r_mult[2][1]\ & ((\r_mult[3][1]\ & (!\r_add_st0[1][0]~35\)) # (!\r_mult[3][1]\ & ((\r_add_st0[1][0]~35\) 
-- # (GND)))))
-- \r_add_st0[1][1]~37\ = CARRY((\r_mult[2][1]\ & (!\r_mult[3][1]\ & !\r_add_st0[1][0]~35\)) # (!\r_mult[2][1]\ & ((!\r_add_st0[1][0]~35\) # (!\r_mult[3][1]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[2][1]\,
	datab => \r_mult[3][1]\,
	datad => VCC,
	cin => \r_add_st0[1][0]~35\,
	combout => \r_add_st0[1][1]~36_combout\,
	cout => \r_add_st0[1][1]~37\);

-- Location: LCCOMB_X35_Y2_N20
\r_add_st0[1][2]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][2]~38_combout\ = ((\r_mult[2][2]\ $ (\r_mult[3][2]\ $ (!\r_add_st0[1][1]~37\)))) # (GND)
-- \r_add_st0[1][2]~39\ = CARRY((\r_mult[2][2]\ & ((\r_mult[3][2]\) # (!\r_add_st0[1][1]~37\))) # (!\r_mult[2][2]\ & (\r_mult[3][2]\ & !\r_add_st0[1][1]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[2][2]\,
	datab => \r_mult[3][2]\,
	datad => VCC,
	cin => \r_add_st0[1][1]~37\,
	combout => \r_add_st0[1][2]~38_combout\,
	cout => \r_add_st0[1][2]~39\);

-- Location: LCCOMB_X35_Y2_N22
\r_add_st0[1][3]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][3]~40_combout\ = (\r_mult[2][3]\ & ((\r_mult[3][3]\ & (\r_add_st0[1][2]~39\ & VCC)) # (!\r_mult[3][3]\ & (!\r_add_st0[1][2]~39\)))) # (!\r_mult[2][3]\ & ((\r_mult[3][3]\ & (!\r_add_st0[1][2]~39\)) # (!\r_mult[3][3]\ & ((\r_add_st0[1][2]~39\) 
-- # (GND)))))
-- \r_add_st0[1][3]~41\ = CARRY((\r_mult[2][3]\ & (!\r_mult[3][3]\ & !\r_add_st0[1][2]~39\)) # (!\r_mult[2][3]\ & ((!\r_add_st0[1][2]~39\) # (!\r_mult[3][3]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[2][3]\,
	datab => \r_mult[3][3]\,
	datad => VCC,
	cin => \r_add_st0[1][2]~39\,
	combout => \r_add_st0[1][3]~40_combout\,
	cout => \r_add_st0[1][3]~41\);

-- Location: LCCOMB_X35_Y2_N24
\r_add_st0[1][4]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][4]~42_combout\ = ((\r_mult[2][4]\ $ (\r_mult[3][4]\ $ (!\r_add_st0[1][3]~41\)))) # (GND)
-- \r_add_st0[1][4]~43\ = CARRY((\r_mult[2][4]\ & ((\r_mult[3][4]\) # (!\r_add_st0[1][3]~41\))) # (!\r_mult[2][4]\ & (\r_mult[3][4]\ & !\r_add_st0[1][3]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[2][4]\,
	datab => \r_mult[3][4]\,
	datad => VCC,
	cin => \r_add_st0[1][3]~41\,
	combout => \r_add_st0[1][4]~42_combout\,
	cout => \r_add_st0[1][4]~43\);

-- Location: LCCOMB_X35_Y2_N26
\r_add_st0[1][5]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][5]~44_combout\ = (\r_mult[2][5]\ & ((\r_mult[3][5]\ & (\r_add_st0[1][4]~43\ & VCC)) # (!\r_mult[3][5]\ & (!\r_add_st0[1][4]~43\)))) # (!\r_mult[2][5]\ & ((\r_mult[3][5]\ & (!\r_add_st0[1][4]~43\)) # (!\r_mult[3][5]\ & ((\r_add_st0[1][4]~43\) 
-- # (GND)))))
-- \r_add_st0[1][5]~45\ = CARRY((\r_mult[2][5]\ & (!\r_mult[3][5]\ & !\r_add_st0[1][4]~43\)) # (!\r_mult[2][5]\ & ((!\r_add_st0[1][4]~43\) # (!\r_mult[3][5]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[2][5]\,
	datab => \r_mult[3][5]\,
	datad => VCC,
	cin => \r_add_st0[1][4]~43\,
	combout => \r_add_st0[1][5]~44_combout\,
	cout => \r_add_st0[1][5]~45\);

-- Location: LCCOMB_X35_Y2_N28
\r_add_st0[1][6]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][6]~46_combout\ = ((\r_mult[3][6]\ $ (\r_mult[2][6]\ $ (!\r_add_st0[1][5]~45\)))) # (GND)
-- \r_add_st0[1][6]~47\ = CARRY((\r_mult[3][6]\ & ((\r_mult[2][6]\) # (!\r_add_st0[1][5]~45\))) # (!\r_mult[3][6]\ & (\r_mult[2][6]\ & !\r_add_st0[1][5]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[3][6]\,
	datab => \r_mult[2][6]\,
	datad => VCC,
	cin => \r_add_st0[1][5]~45\,
	combout => \r_add_st0[1][6]~46_combout\,
	cout => \r_add_st0[1][6]~47\);

-- Location: LCCOMB_X35_Y2_N30
\r_add_st0[1][7]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][7]~48_combout\ = (\r_mult[2][7]\ & ((\r_mult[3][7]\ & (\r_add_st0[1][6]~47\ & VCC)) # (!\r_mult[3][7]\ & (!\r_add_st0[1][6]~47\)))) # (!\r_mult[2][7]\ & ((\r_mult[3][7]\ & (!\r_add_st0[1][6]~47\)) # (!\r_mult[3][7]\ & ((\r_add_st0[1][6]~47\) 
-- # (GND)))))
-- \r_add_st0[1][7]~49\ = CARRY((\r_mult[2][7]\ & (!\r_mult[3][7]\ & !\r_add_st0[1][6]~47\)) # (!\r_mult[2][7]\ & ((!\r_add_st0[1][6]~47\) # (!\r_mult[3][7]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[2][7]\,
	datab => \r_mult[3][7]\,
	datad => VCC,
	cin => \r_add_st0[1][6]~47\,
	combout => \r_add_st0[1][7]~48_combout\,
	cout => \r_add_st0[1][7]~49\);

-- Location: LCCOMB_X35_Y1_N0
\r_add_st0[1][8]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][8]~50_combout\ = ((\r_mult[2][8]\ $ (\r_mult[3][8]\ $ (!\r_add_st0[1][7]~49\)))) # (GND)
-- \r_add_st0[1][8]~51\ = CARRY((\r_mult[2][8]\ & ((\r_mult[3][8]\) # (!\r_add_st0[1][7]~49\))) # (!\r_mult[2][8]\ & (\r_mult[3][8]\ & !\r_add_st0[1][7]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[2][8]\,
	datab => \r_mult[3][8]\,
	datad => VCC,
	cin => \r_add_st0[1][7]~49\,
	combout => \r_add_st0[1][8]~50_combout\,
	cout => \r_add_st0[1][8]~51\);

-- Location: FF_X35_Y1_N1
\r_add_st0[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][8]~50_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][8]~q\);

-- Location: IOIBUF_X35_Y0_N15
\i_coeff_1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_1(0),
	o => \i_coeff_1[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\i_coeff_1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_1(1),
	o => \i_coeff_1[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\i_coeff_1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_1(2),
	o => \i_coeff_1[2]~input_o\);

-- Location: IOIBUF_X39_Y0_N29
\i_coeff_1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_1(3),
	o => \i_coeff_1[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N29
\i_coeff_1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_1(4),
	o => \i_coeff_1[4]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\i_coeff_1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_1(5),
	o => \i_coeff_1[5]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\i_coeff_1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_1(6),
	o => \i_coeff_1[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\i_coeff_1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_1(7),
	o => \i_coeff_1[7]~input_o\);

-- Location: DSPMULT_X34_Y1_N0
\Mult1|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \i_clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y1_N2
\Mult1|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: IOIBUF_X39_Y0_N22
\i_coeff_0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_0(0),
	o => \i_coeff_0[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\i_coeff_0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_0(1),
	o => \i_coeff_0[1]~input_o\);

-- Location: IOIBUF_X41_Y5_N15
\i_coeff_0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_0(2),
	o => \i_coeff_0[2]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\i_coeff_0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_0(3),
	o => \i_coeff_0[3]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\i_coeff_0[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_0(4),
	o => \i_coeff_0[4]~input_o\);

-- Location: IOIBUF_X41_Y3_N22
\i_coeff_0[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_0(5),
	o => \i_coeff_0[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\i_coeff_0[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_0(6),
	o => \i_coeff_0[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N29
\i_coeff_0[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_coeff_0(7),
	o => \i_coeff_0[7]~input_o\);

-- Location: DSPMULT_X34_Y1_N1
\Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \i_clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y1_N3
\Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X33_Y2_N16
\r_add_st0[0][0]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][0]~52_combout\ = (\r_mult[0][0]\ & (\r_mult[1][0]\ $ (VCC))) # (!\r_mult[0][0]\ & (\r_mult[1][0]\ & VCC))
-- \r_add_st0[0][0]~53\ = CARRY((\r_mult[0][0]\ & \r_mult[1][0]\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[0][0]\,
	datab => \r_mult[1][0]\,
	datad => VCC,
	combout => \r_add_st0[0][0]~52_combout\,
	cout => \r_add_st0[0][0]~53\);

-- Location: LCCOMB_X33_Y2_N18
\r_add_st0[0][1]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][1]~54_combout\ = (\r_mult[0][1]\ & ((\r_mult[1][1]\ & (\r_add_st0[0][0]~53\ & VCC)) # (!\r_mult[1][1]\ & (!\r_add_st0[0][0]~53\)))) # (!\r_mult[0][1]\ & ((\r_mult[1][1]\ & (!\r_add_st0[0][0]~53\)) # (!\r_mult[1][1]\ & ((\r_add_st0[0][0]~53\) 
-- # (GND)))))
-- \r_add_st0[0][1]~55\ = CARRY((\r_mult[0][1]\ & (!\r_mult[1][1]\ & !\r_add_st0[0][0]~53\)) # (!\r_mult[0][1]\ & ((!\r_add_st0[0][0]~53\) # (!\r_mult[1][1]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[0][1]\,
	datab => \r_mult[1][1]\,
	datad => VCC,
	cin => \r_add_st0[0][0]~53\,
	combout => \r_add_st0[0][1]~54_combout\,
	cout => \r_add_st0[0][1]~55\);

-- Location: LCCOMB_X33_Y2_N20
\r_add_st0[0][2]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][2]~56_combout\ = ((\r_mult[1][2]\ $ (\r_mult[0][2]\ $ (!\r_add_st0[0][1]~55\)))) # (GND)
-- \r_add_st0[0][2]~57\ = CARRY((\r_mult[1][2]\ & ((\r_mult[0][2]\) # (!\r_add_st0[0][1]~55\))) # (!\r_mult[1][2]\ & (\r_mult[0][2]\ & !\r_add_st0[0][1]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[1][2]\,
	datab => \r_mult[0][2]\,
	datad => VCC,
	cin => \r_add_st0[0][1]~55\,
	combout => \r_add_st0[0][2]~56_combout\,
	cout => \r_add_st0[0][2]~57\);

-- Location: LCCOMB_X33_Y2_N22
\r_add_st0[0][3]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][3]~58_combout\ = (\r_mult[0][3]\ & ((\r_mult[1][3]\ & (\r_add_st0[0][2]~57\ & VCC)) # (!\r_mult[1][3]\ & (!\r_add_st0[0][2]~57\)))) # (!\r_mult[0][3]\ & ((\r_mult[1][3]\ & (!\r_add_st0[0][2]~57\)) # (!\r_mult[1][3]\ & ((\r_add_st0[0][2]~57\) 
-- # (GND)))))
-- \r_add_st0[0][3]~59\ = CARRY((\r_mult[0][3]\ & (!\r_mult[1][3]\ & !\r_add_st0[0][2]~57\)) # (!\r_mult[0][3]\ & ((!\r_add_st0[0][2]~57\) # (!\r_mult[1][3]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[0][3]\,
	datab => \r_mult[1][3]\,
	datad => VCC,
	cin => \r_add_st0[0][2]~57\,
	combout => \r_add_st0[0][3]~58_combout\,
	cout => \r_add_st0[0][3]~59\);

-- Location: LCCOMB_X33_Y2_N24
\r_add_st0[0][4]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][4]~60_combout\ = ((\r_mult[1][4]\ $ (\r_mult[0][4]\ $ (!\r_add_st0[0][3]~59\)))) # (GND)
-- \r_add_st0[0][4]~61\ = CARRY((\r_mult[1][4]\ & ((\r_mult[0][4]\) # (!\r_add_st0[0][3]~59\))) # (!\r_mult[1][4]\ & (\r_mult[0][4]\ & !\r_add_st0[0][3]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[1][4]\,
	datab => \r_mult[0][4]\,
	datad => VCC,
	cin => \r_add_st0[0][3]~59\,
	combout => \r_add_st0[0][4]~60_combout\,
	cout => \r_add_st0[0][4]~61\);

-- Location: LCCOMB_X33_Y2_N26
\r_add_st0[0][5]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][5]~62_combout\ = (\r_mult[0][5]\ & ((\r_mult[1][5]\ & (\r_add_st0[0][4]~61\ & VCC)) # (!\r_mult[1][5]\ & (!\r_add_st0[0][4]~61\)))) # (!\r_mult[0][5]\ & ((\r_mult[1][5]\ & (!\r_add_st0[0][4]~61\)) # (!\r_mult[1][5]\ & ((\r_add_st0[0][4]~61\) 
-- # (GND)))))
-- \r_add_st0[0][5]~63\ = CARRY((\r_mult[0][5]\ & (!\r_mult[1][5]\ & !\r_add_st0[0][4]~61\)) # (!\r_mult[0][5]\ & ((!\r_add_st0[0][4]~61\) # (!\r_mult[1][5]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[0][5]\,
	datab => \r_mult[1][5]\,
	datad => VCC,
	cin => \r_add_st0[0][4]~61\,
	combout => \r_add_st0[0][5]~62_combout\,
	cout => \r_add_st0[0][5]~63\);

-- Location: LCCOMB_X33_Y2_N28
\r_add_st0[0][6]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][6]~64_combout\ = ((\r_mult[1][6]\ $ (\r_mult[0][6]\ $ (!\r_add_st0[0][5]~63\)))) # (GND)
-- \r_add_st0[0][6]~65\ = CARRY((\r_mult[1][6]\ & ((\r_mult[0][6]\) # (!\r_add_st0[0][5]~63\))) # (!\r_mult[1][6]\ & (\r_mult[0][6]\ & !\r_add_st0[0][5]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[1][6]\,
	datab => \r_mult[0][6]\,
	datad => VCC,
	cin => \r_add_st0[0][5]~63\,
	combout => \r_add_st0[0][6]~64_combout\,
	cout => \r_add_st0[0][6]~65\);

-- Location: LCCOMB_X33_Y2_N30
\r_add_st0[0][7]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][7]~66_combout\ = (\r_mult[0][7]\ & ((\r_mult[1][7]\ & (\r_add_st0[0][6]~65\ & VCC)) # (!\r_mult[1][7]\ & (!\r_add_st0[0][6]~65\)))) # (!\r_mult[0][7]\ & ((\r_mult[1][7]\ & (!\r_add_st0[0][6]~65\)) # (!\r_mult[1][7]\ & ((\r_add_st0[0][6]~65\) 
-- # (GND)))))
-- \r_add_st0[0][7]~67\ = CARRY((\r_mult[0][7]\ & (!\r_mult[1][7]\ & !\r_add_st0[0][6]~65\)) # (!\r_mult[0][7]\ & ((!\r_add_st0[0][6]~65\) # (!\r_mult[1][7]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[0][7]\,
	datab => \r_mult[1][7]\,
	datad => VCC,
	cin => \r_add_st0[0][6]~65\,
	combout => \r_add_st0[0][7]~66_combout\,
	cout => \r_add_st0[0][7]~67\);

-- Location: LCCOMB_X33_Y1_N0
\r_add_st0[0][8]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][8]~68_combout\ = ((\r_mult[1][8]\ $ (\r_mult[0][8]\ $ (!\r_add_st0[0][7]~67\)))) # (GND)
-- \r_add_st0[0][8]~69\ = CARRY((\r_mult[1][8]\ & ((\r_mult[0][8]\) # (!\r_add_st0[0][7]~67\))) # (!\r_mult[1][8]\ & (\r_mult[0][8]\ & !\r_add_st0[0][7]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[1][8]\,
	datab => \r_mult[0][8]\,
	datad => VCC,
	cin => \r_add_st0[0][7]~67\,
	combout => \r_add_st0[0][8]~68_combout\,
	cout => \r_add_st0[0][8]~69\);

-- Location: FF_X33_Y1_N1
\r_add_st0[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][8]~68_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][8]~q\);

-- Location: FF_X33_Y2_N31
\r_add_st0[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][7]~66_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][7]~q\);

-- Location: FF_X35_Y2_N31
\r_add_st0[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][7]~48_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][7]~q\);

-- Location: FF_X33_Y2_N29
\r_add_st0[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][6]~64_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][6]~q\);

-- Location: FF_X35_Y2_N29
\r_add_st0[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][6]~46_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][6]~q\);

-- Location: FF_X35_Y2_N27
\r_add_st0[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][5]~44_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][5]~q\);

-- Location: FF_X33_Y2_N27
\r_add_st0[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][5]~62_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][5]~q\);

-- Location: FF_X33_Y2_N25
\r_add_st0[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][4]~60_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][4]~q\);

-- Location: FF_X35_Y2_N25
\r_add_st0[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][4]~42_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][4]~q\);

-- Location: FF_X33_Y2_N23
\r_add_st0[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][3]~58_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][3]~q\);

-- Location: FF_X35_Y2_N23
\r_add_st0[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][3]~40_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][3]~q\);

-- Location: FF_X33_Y2_N21
\r_add_st0[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][2]~56_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][2]~q\);

-- Location: FF_X35_Y2_N21
\r_add_st0[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][2]~38_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][2]~q\);

-- Location: FF_X35_Y2_N19
\r_add_st0[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][1]~36_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][1]~q\);

-- Location: FF_X36_Y2_N17
\r_add_st0[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \r_add_st0[0][1]~54_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][1]~q\);

-- Location: FF_X35_Y2_N17
\r_add_st0[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][0]~34_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][0]~q\);

-- Location: FF_X33_Y2_N17
\r_add_st0[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][0]~52_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][0]~q\);

-- Location: LCCOMB_X36_Y2_N14
\r_add_st1[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[8]~11_cout\ = CARRY((\r_add_st0[1][0]~q\ & \r_add_st0[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[1][0]~q\,
	datab => \r_add_st0[0][0]~q\,
	datad => VCC,
	cout => \r_add_st1[8]~11_cout\);

-- Location: LCCOMB_X36_Y2_N16
\r_add_st1[8]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[8]~13_cout\ = CARRY((\r_add_st0[1][1]~q\ & (!\r_add_st0[0][1]~q\ & !\r_add_st1[8]~11_cout\)) # (!\r_add_st0[1][1]~q\ & ((!\r_add_st1[8]~11_cout\) # (!\r_add_st0[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[1][1]~q\,
	datab => \r_add_st0[0][1]~q\,
	datad => VCC,
	cin => \r_add_st1[8]~11_cout\,
	cout => \r_add_st1[8]~13_cout\);

-- Location: LCCOMB_X36_Y2_N18
\r_add_st1[8]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[8]~15_cout\ = CARRY((\r_add_st0[0][2]~q\ & ((\r_add_st0[1][2]~q\) # (!\r_add_st1[8]~13_cout\))) # (!\r_add_st0[0][2]~q\ & (\r_add_st0[1][2]~q\ & !\r_add_st1[8]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[0][2]~q\,
	datab => \r_add_st0[1][2]~q\,
	datad => VCC,
	cin => \r_add_st1[8]~13_cout\,
	cout => \r_add_st1[8]~15_cout\);

-- Location: LCCOMB_X36_Y2_N20
\r_add_st1[8]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[8]~17_cout\ = CARRY((\r_add_st0[0][3]~q\ & (!\r_add_st0[1][3]~q\ & !\r_add_st1[8]~15_cout\)) # (!\r_add_st0[0][3]~q\ & ((!\r_add_st1[8]~15_cout\) # (!\r_add_st0[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[0][3]~q\,
	datab => \r_add_st0[1][3]~q\,
	datad => VCC,
	cin => \r_add_st1[8]~15_cout\,
	cout => \r_add_st1[8]~17_cout\);

-- Location: LCCOMB_X36_Y2_N22
\r_add_st1[8]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[8]~19_cout\ = CARRY((\r_add_st0[0][4]~q\ & ((\r_add_st0[1][4]~q\) # (!\r_add_st1[8]~17_cout\))) # (!\r_add_st0[0][4]~q\ & (\r_add_st0[1][4]~q\ & !\r_add_st1[8]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[0][4]~q\,
	datab => \r_add_st0[1][4]~q\,
	datad => VCC,
	cin => \r_add_st1[8]~17_cout\,
	cout => \r_add_st1[8]~19_cout\);

-- Location: LCCOMB_X36_Y2_N24
\r_add_st1[8]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[8]~21_cout\ = CARRY((\r_add_st0[1][5]~q\ & (!\r_add_st0[0][5]~q\ & !\r_add_st1[8]~19_cout\)) # (!\r_add_st0[1][5]~q\ & ((!\r_add_st1[8]~19_cout\) # (!\r_add_st0[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[1][5]~q\,
	datab => \r_add_st0[0][5]~q\,
	datad => VCC,
	cin => \r_add_st1[8]~19_cout\,
	cout => \r_add_st1[8]~21_cout\);

-- Location: LCCOMB_X36_Y2_N26
\r_add_st1[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[8]~23_cout\ = CARRY((\r_add_st0[0][6]~q\ & ((\r_add_st0[1][6]~q\) # (!\r_add_st1[8]~21_cout\))) # (!\r_add_st0[0][6]~q\ & (\r_add_st0[1][6]~q\ & !\r_add_st1[8]~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[0][6]~q\,
	datab => \r_add_st0[1][6]~q\,
	datad => VCC,
	cin => \r_add_st1[8]~21_cout\,
	cout => \r_add_st1[8]~23_cout\);

-- Location: LCCOMB_X36_Y2_N28
\r_add_st1[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[8]~25_cout\ = CARRY((\r_add_st0[0][7]~q\ & (!\r_add_st0[1][7]~q\ & !\r_add_st1[8]~23_cout\)) # (!\r_add_st0[0][7]~q\ & ((!\r_add_st1[8]~23_cout\) # (!\r_add_st0[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[0][7]~q\,
	datab => \r_add_st0[1][7]~q\,
	datad => VCC,
	cin => \r_add_st1[8]~23_cout\,
	cout => \r_add_st1[8]~25_cout\);

-- Location: LCCOMB_X36_Y2_N30
\r_add_st1[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[8]~26_combout\ = ((\r_add_st0[1][8]~q\ $ (\r_add_st0[0][8]~q\ $ (!\r_add_st1[8]~25_cout\)))) # (GND)
-- \r_add_st1[8]~27\ = CARRY((\r_add_st0[1][8]~q\ & ((\r_add_st0[0][8]~q\) # (!\r_add_st1[8]~25_cout\))) # (!\r_add_st0[1][8]~q\ & (\r_add_st0[0][8]~q\ & !\r_add_st1[8]~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[1][8]~q\,
	datab => \r_add_st0[0][8]~q\,
	datad => VCC,
	cin => \r_add_st1[8]~25_cout\,
	combout => \r_add_st1[8]~26_combout\,
	cout => \r_add_st1[8]~27\);

-- Location: FF_X36_Y2_N31
\r_add_st1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st1[8]~26_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_add_st1(8));

-- Location: LCCOMB_X37_Y2_N0
\o_data[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data[0]~reg0feeder_combout\ = r_add_st1(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_add_st1(8),
	combout => \o_data[0]~reg0feeder_combout\);

-- Location: FF_X37_Y2_N1
\o_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data[0]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[0]~reg0_q\);

-- Location: LCCOMB_X35_Y1_N2
\r_add_st0[1][9]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][9]~70_combout\ = (\r_mult[3][9]\ & ((\r_mult[2][9]\ & (\r_add_st0[1][8]~51\ & VCC)) # (!\r_mult[2][9]\ & (!\r_add_st0[1][8]~51\)))) # (!\r_mult[3][9]\ & ((\r_mult[2][9]\ & (!\r_add_st0[1][8]~51\)) # (!\r_mult[2][9]\ & ((\r_add_st0[1][8]~51\) 
-- # (GND)))))
-- \r_add_st0[1][9]~71\ = CARRY((\r_mult[3][9]\ & (!\r_mult[2][9]\ & !\r_add_st0[1][8]~51\)) # (!\r_mult[3][9]\ & ((!\r_add_st0[1][8]~51\) # (!\r_mult[2][9]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[3][9]\,
	datab => \r_mult[2][9]\,
	datad => VCC,
	cin => \r_add_st0[1][8]~51\,
	combout => \r_add_st0[1][9]~70_combout\,
	cout => \r_add_st0[1][9]~71\);

-- Location: FF_X35_Y1_N3
\r_add_st0[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][9]~70_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][9]~q\);

-- Location: LCCOMB_X33_Y1_N2
\r_add_st0[0][9]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][9]~72_combout\ = (\r_mult[1][9]\ & ((\r_mult[0][9]\ & (\r_add_st0[0][8]~69\ & VCC)) # (!\r_mult[0][9]\ & (!\r_add_st0[0][8]~69\)))) # (!\r_mult[1][9]\ & ((\r_mult[0][9]\ & (!\r_add_st0[0][8]~69\)) # (!\r_mult[0][9]\ & ((\r_add_st0[0][8]~69\) 
-- # (GND)))))
-- \r_add_st0[0][9]~73\ = CARRY((\r_mult[1][9]\ & (!\r_mult[0][9]\ & !\r_add_st0[0][8]~69\)) # (!\r_mult[1][9]\ & ((!\r_add_st0[0][8]~69\) # (!\r_mult[0][9]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[1][9]\,
	datab => \r_mult[0][9]\,
	datad => VCC,
	cin => \r_add_st0[0][8]~69\,
	combout => \r_add_st0[0][9]~72_combout\,
	cout => \r_add_st0[0][9]~73\);

-- Location: FF_X33_Y1_N3
\r_add_st0[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][9]~72_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][9]~q\);

-- Location: LCCOMB_X36_Y1_N0
\r_add_st1[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[9]~28_combout\ = (\r_add_st0[1][9]~q\ & ((\r_add_st0[0][9]~q\ & (\r_add_st1[8]~27\ & VCC)) # (!\r_add_st0[0][9]~q\ & (!\r_add_st1[8]~27\)))) # (!\r_add_st0[1][9]~q\ & ((\r_add_st0[0][9]~q\ & (!\r_add_st1[8]~27\)) # (!\r_add_st0[0][9]~q\ & 
-- ((\r_add_st1[8]~27\) # (GND)))))
-- \r_add_st1[9]~29\ = CARRY((\r_add_st0[1][9]~q\ & (!\r_add_st0[0][9]~q\ & !\r_add_st1[8]~27\)) # (!\r_add_st0[1][9]~q\ & ((!\r_add_st1[8]~27\) # (!\r_add_st0[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[1][9]~q\,
	datab => \r_add_st0[0][9]~q\,
	datad => VCC,
	cin => \r_add_st1[8]~27\,
	combout => \r_add_st1[9]~28_combout\,
	cout => \r_add_st1[9]~29\);

-- Location: FF_X36_Y1_N1
\r_add_st1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st1[9]~28_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_add_st1(9));

-- Location: LCCOMB_X36_Y1_N26
\o_data[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data[1]~reg0feeder_combout\ = r_add_st1(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_add_st1(9),
	combout => \o_data[1]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N27
\o_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data[1]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[1]~reg0_q\);

-- Location: LCCOMB_X33_Y1_N4
\r_add_st0[0][10]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][10]~76_combout\ = ((\r_mult[1][10]\ $ (\r_mult[0][10]\ $ (!\r_add_st0[0][9]~73\)))) # (GND)
-- \r_add_st0[0][10]~77\ = CARRY((\r_mult[1][10]\ & ((\r_mult[0][10]\) # (!\r_add_st0[0][9]~73\))) # (!\r_mult[1][10]\ & (\r_mult[0][10]\ & !\r_add_st0[0][9]~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[1][10]\,
	datab => \r_mult[0][10]\,
	datad => VCC,
	cin => \r_add_st0[0][9]~73\,
	combout => \r_add_st0[0][10]~76_combout\,
	cout => \r_add_st0[0][10]~77\);

-- Location: FF_X33_Y1_N5
\r_add_st0[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][10]~76_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][10]~q\);

-- Location: LCCOMB_X35_Y1_N4
\r_add_st0[1][10]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][10]~74_combout\ = ((\r_mult[2][10]\ $ (\r_mult[3][10]\ $ (!\r_add_st0[1][9]~71\)))) # (GND)
-- \r_add_st0[1][10]~75\ = CARRY((\r_mult[2][10]\ & ((\r_mult[3][10]\) # (!\r_add_st0[1][9]~71\))) # (!\r_mult[2][10]\ & (\r_mult[3][10]\ & !\r_add_st0[1][9]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[2][10]\,
	datab => \r_mult[3][10]\,
	datad => VCC,
	cin => \r_add_st0[1][9]~71\,
	combout => \r_add_st0[1][10]~74_combout\,
	cout => \r_add_st0[1][10]~75\);

-- Location: FF_X35_Y1_N5
\r_add_st0[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][10]~74_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][10]~q\);

-- Location: LCCOMB_X36_Y1_N2
\r_add_st1[10]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[10]~30_combout\ = ((\r_add_st0[0][10]~q\ $ (\r_add_st0[1][10]~q\ $ (!\r_add_st1[9]~29\)))) # (GND)
-- \r_add_st1[10]~31\ = CARRY((\r_add_st0[0][10]~q\ & ((\r_add_st0[1][10]~q\) # (!\r_add_st1[9]~29\))) # (!\r_add_st0[0][10]~q\ & (\r_add_st0[1][10]~q\ & !\r_add_st1[9]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[0][10]~q\,
	datab => \r_add_st0[1][10]~q\,
	datad => VCC,
	cin => \r_add_st1[9]~29\,
	combout => \r_add_st1[10]~30_combout\,
	cout => \r_add_st1[10]~31\);

-- Location: FF_X36_Y1_N3
\r_add_st1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st1[10]~30_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_add_st1(10));

-- Location: LCCOMB_X37_Y1_N28
\o_data[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data[2]~reg0feeder_combout\ = r_add_st1(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_add_st1(10),
	combout => \o_data[2]~reg0feeder_combout\);

-- Location: FF_X37_Y1_N29
\o_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data[2]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[2]~reg0_q\);

-- Location: LCCOMB_X33_Y1_N6
\r_add_st0[0][11]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][11]~80_combout\ = (\r_mult[1][11]\ & ((\r_mult[0][11]\ & (\r_add_st0[0][10]~77\ & VCC)) # (!\r_mult[0][11]\ & (!\r_add_st0[0][10]~77\)))) # (!\r_mult[1][11]\ & ((\r_mult[0][11]\ & (!\r_add_st0[0][10]~77\)) # (!\r_mult[0][11]\ & 
-- ((\r_add_st0[0][10]~77\) # (GND)))))
-- \r_add_st0[0][11]~81\ = CARRY((\r_mult[1][11]\ & (!\r_mult[0][11]\ & !\r_add_st0[0][10]~77\)) # (!\r_mult[1][11]\ & ((!\r_add_st0[0][10]~77\) # (!\r_mult[0][11]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[1][11]\,
	datab => \r_mult[0][11]\,
	datad => VCC,
	cin => \r_add_st0[0][10]~77\,
	combout => \r_add_st0[0][11]~80_combout\,
	cout => \r_add_st0[0][11]~81\);

-- Location: FF_X33_Y1_N7
\r_add_st0[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][11]~80_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][11]~q\);

-- Location: LCCOMB_X35_Y1_N6
\r_add_st0[1][11]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][11]~78_combout\ = (\r_mult[2][11]\ & ((\r_mult[3][11]\ & (\r_add_st0[1][10]~75\ & VCC)) # (!\r_mult[3][11]\ & (!\r_add_st0[1][10]~75\)))) # (!\r_mult[2][11]\ & ((\r_mult[3][11]\ & (!\r_add_st0[1][10]~75\)) # (!\r_mult[3][11]\ & 
-- ((\r_add_st0[1][10]~75\) # (GND)))))
-- \r_add_st0[1][11]~79\ = CARRY((\r_mult[2][11]\ & (!\r_mult[3][11]\ & !\r_add_st0[1][10]~75\)) # (!\r_mult[2][11]\ & ((!\r_add_st0[1][10]~75\) # (!\r_mult[3][11]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[2][11]\,
	datab => \r_mult[3][11]\,
	datad => VCC,
	cin => \r_add_st0[1][10]~75\,
	combout => \r_add_st0[1][11]~78_combout\,
	cout => \r_add_st0[1][11]~79\);

-- Location: FF_X35_Y1_N7
\r_add_st0[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][11]~78_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][11]~q\);

-- Location: LCCOMB_X36_Y1_N4
\r_add_st1[11]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[11]~32_combout\ = (\r_add_st0[0][11]~q\ & ((\r_add_st0[1][11]~q\ & (\r_add_st1[10]~31\ & VCC)) # (!\r_add_st0[1][11]~q\ & (!\r_add_st1[10]~31\)))) # (!\r_add_st0[0][11]~q\ & ((\r_add_st0[1][11]~q\ & (!\r_add_st1[10]~31\)) # 
-- (!\r_add_st0[1][11]~q\ & ((\r_add_st1[10]~31\) # (GND)))))
-- \r_add_st1[11]~33\ = CARRY((\r_add_st0[0][11]~q\ & (!\r_add_st0[1][11]~q\ & !\r_add_st1[10]~31\)) # (!\r_add_st0[0][11]~q\ & ((!\r_add_st1[10]~31\) # (!\r_add_st0[1][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[0][11]~q\,
	datab => \r_add_st0[1][11]~q\,
	datad => VCC,
	cin => \r_add_st1[10]~31\,
	combout => \r_add_st1[11]~32_combout\,
	cout => \r_add_st1[11]~33\);

-- Location: FF_X36_Y1_N5
\r_add_st1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st1[11]~32_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_add_st1(11));

-- Location: LCCOMB_X37_Y1_N2
\o_data[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data[3]~reg0feeder_combout\ = r_add_st1(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_add_st1(11),
	combout => \o_data[3]~reg0feeder_combout\);

-- Location: FF_X37_Y1_N3
\o_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data[3]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[3]~reg0_q\);

-- Location: LCCOMB_X33_Y1_N8
\r_add_st0[0][12]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][12]~84_combout\ = ((\r_mult[0][12]\ $ (\r_mult[1][12]\ $ (!\r_add_st0[0][11]~81\)))) # (GND)
-- \r_add_st0[0][12]~85\ = CARRY((\r_mult[0][12]\ & ((\r_mult[1][12]\) # (!\r_add_st0[0][11]~81\))) # (!\r_mult[0][12]\ & (\r_mult[1][12]\ & !\r_add_st0[0][11]~81\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[0][12]\,
	datab => \r_mult[1][12]\,
	datad => VCC,
	cin => \r_add_st0[0][11]~81\,
	combout => \r_add_st0[0][12]~84_combout\,
	cout => \r_add_st0[0][12]~85\);

-- Location: FF_X33_Y1_N9
\r_add_st0[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][12]~84_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][12]~q\);

-- Location: LCCOMB_X35_Y1_N8
\r_add_st0[1][12]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][12]~82_combout\ = ((\r_mult[2][12]\ $ (\r_mult[3][12]\ $ (!\r_add_st0[1][11]~79\)))) # (GND)
-- \r_add_st0[1][12]~83\ = CARRY((\r_mult[2][12]\ & ((\r_mult[3][12]\) # (!\r_add_st0[1][11]~79\))) # (!\r_mult[2][12]\ & (\r_mult[3][12]\ & !\r_add_st0[1][11]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[2][12]\,
	datab => \r_mult[3][12]\,
	datad => VCC,
	cin => \r_add_st0[1][11]~79\,
	combout => \r_add_st0[1][12]~82_combout\,
	cout => \r_add_st0[1][12]~83\);

-- Location: FF_X35_Y1_N9
\r_add_st0[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][12]~82_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][12]~q\);

-- Location: LCCOMB_X36_Y1_N6
\r_add_st1[12]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[12]~34_combout\ = ((\r_add_st0[0][12]~q\ $ (\r_add_st0[1][12]~q\ $ (!\r_add_st1[11]~33\)))) # (GND)
-- \r_add_st1[12]~35\ = CARRY((\r_add_st0[0][12]~q\ & ((\r_add_st0[1][12]~q\) # (!\r_add_st1[11]~33\))) # (!\r_add_st0[0][12]~q\ & (\r_add_st0[1][12]~q\ & !\r_add_st1[11]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[0][12]~q\,
	datab => \r_add_st0[1][12]~q\,
	datad => VCC,
	cin => \r_add_st1[11]~33\,
	combout => \r_add_st1[12]~34_combout\,
	cout => \r_add_st1[12]~35\);

-- Location: FF_X36_Y1_N7
\r_add_st1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st1[12]~34_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_add_st1(12));

-- Location: LCCOMB_X37_Y1_N8
\o_data[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data[4]~reg0feeder_combout\ = r_add_st1(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_add_st1(12),
	combout => \o_data[4]~reg0feeder_combout\);

-- Location: FF_X37_Y1_N9
\o_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data[4]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[4]~reg0_q\);

-- Location: LCCOMB_X35_Y1_N10
\r_add_st0[1][13]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][13]~86_combout\ = (\r_mult[3][13]\ & ((\r_mult[2][13]\ & (\r_add_st0[1][12]~83\ & VCC)) # (!\r_mult[2][13]\ & (!\r_add_st0[1][12]~83\)))) # (!\r_mult[3][13]\ & ((\r_mult[2][13]\ & (!\r_add_st0[1][12]~83\)) # (!\r_mult[2][13]\ & 
-- ((\r_add_st0[1][12]~83\) # (GND)))))
-- \r_add_st0[1][13]~87\ = CARRY((\r_mult[3][13]\ & (!\r_mult[2][13]\ & !\r_add_st0[1][12]~83\)) # (!\r_mult[3][13]\ & ((!\r_add_st0[1][12]~83\) # (!\r_mult[2][13]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[3][13]\,
	datab => \r_mult[2][13]\,
	datad => VCC,
	cin => \r_add_st0[1][12]~83\,
	combout => \r_add_st0[1][13]~86_combout\,
	cout => \r_add_st0[1][13]~87\);

-- Location: FF_X35_Y1_N11
\r_add_st0[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][13]~86_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][13]~q\);

-- Location: LCCOMB_X33_Y1_N10
\r_add_st0[0][13]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][13]~88_combout\ = (\r_mult[0][13]\ & ((\r_mult[1][13]\ & (\r_add_st0[0][12]~85\ & VCC)) # (!\r_mult[1][13]\ & (!\r_add_st0[0][12]~85\)))) # (!\r_mult[0][13]\ & ((\r_mult[1][13]\ & (!\r_add_st0[0][12]~85\)) # (!\r_mult[1][13]\ & 
-- ((\r_add_st0[0][12]~85\) # (GND)))))
-- \r_add_st0[0][13]~89\ = CARRY((\r_mult[0][13]\ & (!\r_mult[1][13]\ & !\r_add_st0[0][12]~85\)) # (!\r_mult[0][13]\ & ((!\r_add_st0[0][12]~85\) # (!\r_mult[1][13]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[0][13]\,
	datab => \r_mult[1][13]\,
	datad => VCC,
	cin => \r_add_st0[0][12]~85\,
	combout => \r_add_st0[0][13]~88_combout\,
	cout => \r_add_st0[0][13]~89\);

-- Location: FF_X33_Y1_N11
\r_add_st0[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][13]~88_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][13]~q\);

-- Location: LCCOMB_X36_Y1_N8
\r_add_st1[13]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[13]~36_combout\ = (\r_add_st0[1][13]~q\ & ((\r_add_st0[0][13]~q\ & (\r_add_st1[12]~35\ & VCC)) # (!\r_add_st0[0][13]~q\ & (!\r_add_st1[12]~35\)))) # (!\r_add_st0[1][13]~q\ & ((\r_add_st0[0][13]~q\ & (!\r_add_st1[12]~35\)) # 
-- (!\r_add_st0[0][13]~q\ & ((\r_add_st1[12]~35\) # (GND)))))
-- \r_add_st1[13]~37\ = CARRY((\r_add_st0[1][13]~q\ & (!\r_add_st0[0][13]~q\ & !\r_add_st1[12]~35\)) # (!\r_add_st0[1][13]~q\ & ((!\r_add_st1[12]~35\) # (!\r_add_st0[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[1][13]~q\,
	datab => \r_add_st0[0][13]~q\,
	datad => VCC,
	cin => \r_add_st1[12]~35\,
	combout => \r_add_st1[13]~36_combout\,
	cout => \r_add_st1[13]~37\);

-- Location: FF_X36_Y1_N9
\r_add_st1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st1[13]~36_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_add_st1(13));

-- Location: LCCOMB_X37_Y1_N10
\o_data[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data[5]~reg0feeder_combout\ = r_add_st1(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_add_st1(13),
	combout => \o_data[5]~reg0feeder_combout\);

-- Location: FF_X37_Y1_N11
\o_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data[5]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[5]~reg0_q\);

-- Location: LCCOMB_X35_Y1_N12
\r_add_st0[1][14]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][14]~90_combout\ = ((\r_mult[2][14]\ $ (\r_mult[3][14]\ $ (!\r_add_st0[1][13]~87\)))) # (GND)
-- \r_add_st0[1][14]~91\ = CARRY((\r_mult[2][14]\ & ((\r_mult[3][14]\) # (!\r_add_st0[1][13]~87\))) # (!\r_mult[2][14]\ & (\r_mult[3][14]\ & !\r_add_st0[1][13]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[2][14]\,
	datab => \r_mult[3][14]\,
	datad => VCC,
	cin => \r_add_st0[1][13]~87\,
	combout => \r_add_st0[1][14]~90_combout\,
	cout => \r_add_st0[1][14]~91\);

-- Location: FF_X35_Y1_N13
\r_add_st0[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][14]~90_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][14]~q\);

-- Location: LCCOMB_X33_Y1_N12
\r_add_st0[0][14]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][14]~92_combout\ = ((\r_mult[0][14]\ $ (\r_mult[1][14]\ $ (!\r_add_st0[0][13]~89\)))) # (GND)
-- \r_add_st0[0][14]~93\ = CARRY((\r_mult[0][14]\ & ((\r_mult[1][14]\) # (!\r_add_st0[0][13]~89\))) # (!\r_mult[0][14]\ & (\r_mult[1][14]\ & !\r_add_st0[0][13]~89\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[0][14]\,
	datab => \r_mult[1][14]\,
	datad => VCC,
	cin => \r_add_st0[0][13]~89\,
	combout => \r_add_st0[0][14]~92_combout\,
	cout => \r_add_st0[0][14]~93\);

-- Location: FF_X33_Y1_N13
\r_add_st0[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][14]~92_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][14]~q\);

-- Location: LCCOMB_X36_Y1_N10
\r_add_st1[14]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[14]~38_combout\ = ((\r_add_st0[1][14]~q\ $ (\r_add_st0[0][14]~q\ $ (!\r_add_st1[13]~37\)))) # (GND)
-- \r_add_st1[14]~39\ = CARRY((\r_add_st0[1][14]~q\ & ((\r_add_st0[0][14]~q\) # (!\r_add_st1[13]~37\))) # (!\r_add_st0[1][14]~q\ & (\r_add_st0[0][14]~q\ & !\r_add_st1[13]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[1][14]~q\,
	datab => \r_add_st0[0][14]~q\,
	datad => VCC,
	cin => \r_add_st1[13]~37\,
	combout => \r_add_st1[14]~38_combout\,
	cout => \r_add_st1[14]~39\);

-- Location: FF_X36_Y1_N11
\r_add_st1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st1[14]~38_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_add_st1(14));

-- Location: LCCOMB_X37_Y1_N12
\o_data[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data[6]~reg0feeder_combout\ = r_add_st1(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_add_st1(14),
	combout => \o_data[6]~reg0feeder_combout\);

-- Location: FF_X37_Y1_N13
\o_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data[6]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[6]~reg0_q\);

-- Location: LCCOMB_X35_Y1_N14
\r_add_st0[1][15]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][15]~94_combout\ = (\r_mult[2][15]\ & ((\r_mult[3][15]\ & (\r_add_st0[1][14]~91\ & VCC)) # (!\r_mult[3][15]\ & (!\r_add_st0[1][14]~91\)))) # (!\r_mult[2][15]\ & ((\r_mult[3][15]\ & (!\r_add_st0[1][14]~91\)) # (!\r_mult[3][15]\ & 
-- ((\r_add_st0[1][14]~91\) # (GND)))))
-- \r_add_st0[1][15]~95\ = CARRY((\r_mult[2][15]\ & (!\r_mult[3][15]\ & !\r_add_st0[1][14]~91\)) # (!\r_mult[2][15]\ & ((!\r_add_st0[1][14]~91\) # (!\r_mult[3][15]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[2][15]\,
	datab => \r_mult[3][15]\,
	datad => VCC,
	cin => \r_add_st0[1][14]~91\,
	combout => \r_add_st0[1][15]~94_combout\,
	cout => \r_add_st0[1][15]~95\);

-- Location: FF_X35_Y1_N15
\r_add_st0[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][15]~94_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][15]~q\);

-- Location: LCCOMB_X33_Y1_N14
\r_add_st0[0][15]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][15]~96_combout\ = (\r_mult[1][15]\ & ((\r_mult[0][15]\ & (\r_add_st0[0][14]~93\ & VCC)) # (!\r_mult[0][15]\ & (!\r_add_st0[0][14]~93\)))) # (!\r_mult[1][15]\ & ((\r_mult[0][15]\ & (!\r_add_st0[0][14]~93\)) # (!\r_mult[0][15]\ & 
-- ((\r_add_st0[0][14]~93\) # (GND)))))
-- \r_add_st0[0][15]~97\ = CARRY((\r_mult[1][15]\ & (!\r_mult[0][15]\ & !\r_add_st0[0][14]~93\)) # (!\r_mult[1][15]\ & ((!\r_add_st0[0][14]~93\) # (!\r_mult[0][15]\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_mult[1][15]\,
	datab => \r_mult[0][15]\,
	datad => VCC,
	cin => \r_add_st0[0][14]~93\,
	combout => \r_add_st0[0][15]~96_combout\,
	cout => \r_add_st0[0][15]~97\);

-- Location: FF_X33_Y1_N15
\r_add_st0[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][15]~96_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][15]~q\);

-- Location: LCCOMB_X36_Y1_N12
\r_add_st1[15]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[15]~40_combout\ = (\r_add_st0[1][15]~q\ & ((\r_add_st0[0][15]~q\ & (\r_add_st1[14]~39\ & VCC)) # (!\r_add_st0[0][15]~q\ & (!\r_add_st1[14]~39\)))) # (!\r_add_st0[1][15]~q\ & ((\r_add_st0[0][15]~q\ & (!\r_add_st1[14]~39\)) # 
-- (!\r_add_st0[0][15]~q\ & ((\r_add_st1[14]~39\) # (GND)))))
-- \r_add_st1[15]~41\ = CARRY((\r_add_st0[1][15]~q\ & (!\r_add_st0[0][15]~q\ & !\r_add_st1[14]~39\)) # (!\r_add_st0[1][15]~q\ & ((!\r_add_st1[14]~39\) # (!\r_add_st0[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[1][15]~q\,
	datab => \r_add_st0[0][15]~q\,
	datad => VCC,
	cin => \r_add_st1[14]~39\,
	combout => \r_add_st1[15]~40_combout\,
	cout => \r_add_st1[15]~41\);

-- Location: FF_X36_Y1_N13
\r_add_st1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st1[15]~40_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_add_st1(15));

-- Location: LCCOMB_X35_Y1_N26
\o_data[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data[7]~reg0feeder_combout\ = r_add_st1(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_add_st1(15),
	combout => \o_data[7]~reg0feeder_combout\);

-- Location: FF_X35_Y1_N27
\o_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data[7]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[7]~reg0_q\);

-- Location: LCCOMB_X35_Y1_N16
\r_add_st0[1][16]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[1][16]~98_combout\ = \r_mult[3][15]\ $ (\r_add_st0[1][15]~95\ $ (!\r_mult[2][15]\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_mult[3][15]\,
	datad => \r_mult[2][15]\,
	cin => \r_add_st0[1][15]~95\,
	combout => \r_add_st0[1][16]~98_combout\);

-- Location: FF_X35_Y1_N17
\r_add_st0[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[1][16]~98_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[1][16]~q\);

-- Location: LCCOMB_X33_Y1_N16
\r_add_st0[0][16]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st0[0][16]~100_combout\ = \r_mult[0][15]\ $ (\r_add_st0[0][15]~97\ $ (!\r_mult[1][15]\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \r_mult[0][15]\,
	datad => \r_mult[1][15]\,
	cin => \r_add_st0[0][15]~97\,
	combout => \r_add_st0[0][16]~100_combout\);

-- Location: FF_X33_Y1_N17
\r_add_st0[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st0[0][16]~100_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_add_st0[0][16]~q\);

-- Location: LCCOMB_X36_Y1_N14
\r_add_st1[16]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[16]~42_combout\ = ((\r_add_st0[1][16]~q\ $ (\r_add_st0[0][16]~q\ $ (!\r_add_st1[15]~41\)))) # (GND)
-- \r_add_st1[16]~43\ = CARRY((\r_add_st0[1][16]~q\ & ((\r_add_st0[0][16]~q\) # (!\r_add_st1[15]~41\))) # (!\r_add_st0[1][16]~q\ & (\r_add_st0[0][16]~q\ & !\r_add_st1[15]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[1][16]~q\,
	datab => \r_add_st0[0][16]~q\,
	datad => VCC,
	cin => \r_add_st1[15]~41\,
	combout => \r_add_st1[16]~42_combout\,
	cout => \r_add_st1[16]~43\);

-- Location: FF_X36_Y1_N15
\r_add_st1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st1[16]~42_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_add_st1(16));

-- Location: LCCOMB_X37_Y1_N30
\o_data[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data[8]~reg0feeder_combout\ = r_add_st1(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_add_st1(16),
	combout => \o_data[8]~reg0feeder_combout\);

-- Location: FF_X37_Y1_N31
\o_data[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data[8]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[8]~reg0_q\);

-- Location: LCCOMB_X36_Y1_N16
\r_add_st1[17]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r_add_st1[17]~44_combout\ = \r_add_st0[1][16]~q\ $ (\r_add_st1[16]~43\ $ (\r_add_st0[0][16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \r_add_st0[1][16]~q\,
	datad => \r_add_st0[0][16]~q\,
	cin => \r_add_st1[16]~43\,
	combout => \r_add_st1[17]~44_combout\);

-- Location: FF_X36_Y1_N17
\r_add_st1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_add_st1[17]~44_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_add_st1(17));

-- Location: LCCOMB_X37_Y1_N4
\o_data[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_data[9]~reg0feeder_combout\ = r_add_st1(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_add_st1(17),
	combout => \o_data[9]~reg0feeder_combout\);

-- Location: FF_X37_Y1_N5
\o_data[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \o_data[9]~reg0feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_data[9]~reg0_q\);

ww_o_data(0) <= \o_data[0]~output_o\;

ww_o_data(1) <= \o_data[1]~output_o\;

ww_o_data(2) <= \o_data[2]~output_o\;

ww_o_data(3) <= \o_data[3]~output_o\;

ww_o_data(4) <= \o_data[4]~output_o\;

ww_o_data(5) <= \o_data[5]~output_o\;

ww_o_data(6) <= \o_data[6]~output_o\;

ww_o_data(7) <= \o_data[7]~output_o\;

ww_o_data(8) <= \o_data[8]~output_o\;

ww_o_data(9) <= \o_data[9]~output_o\;
END structure;


