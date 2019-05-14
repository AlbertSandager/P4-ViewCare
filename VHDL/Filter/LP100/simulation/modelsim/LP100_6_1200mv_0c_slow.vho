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

-- DATE "05/14/2019 10:48:14"

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

ENTITY 	LP100 IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	ast_sink_data : IN std_logic_vector(23 DOWNTO 0);
	ast_sink_valid : IN std_logic;
	ast_sink_error : IN std_logic_vector(1 DOWNTO 0);
	ast_source_data : OUT std_logic_vector(23 DOWNTO 0);
	ast_source_valid : OUT std_logic;
	ast_source_error : OUT std_logic_vector(1 DOWNTO 0)
	);
END LP100;

-- Design Ports Information
-- ast_sink_error[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[1]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[2]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[3]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[8]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[9]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[10]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[11]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[12]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[13]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[14]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[15]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[16]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[17]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[18]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[19]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[20]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[21]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[22]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[23]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_valid	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_error[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_error[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_valid	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_error[0]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[5]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[7]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[8]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[10]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[11]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[13]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[15]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[16]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[17]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[18]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[19]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[20]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[21]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[22]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[23]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LP100 IS
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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_ast_sink_data : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_ast_sink_valid : std_logic;
SIGNAL ww_ast_sink_error : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ast_source_data : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_ast_source_valid : std_logic;
SIGNAL ww_ast_source_error : std_logic_vector(1 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \ast_sink_error[1]~input_o\ : std_logic;
SIGNAL \ast_source_data[0]~output_o\ : std_logic;
SIGNAL \ast_source_data[1]~output_o\ : std_logic;
SIGNAL \ast_source_data[2]~output_o\ : std_logic;
SIGNAL \ast_source_data[3]~output_o\ : std_logic;
SIGNAL \ast_source_data[4]~output_o\ : std_logic;
SIGNAL \ast_source_data[5]~output_o\ : std_logic;
SIGNAL \ast_source_data[6]~output_o\ : std_logic;
SIGNAL \ast_source_data[7]~output_o\ : std_logic;
SIGNAL \ast_source_data[8]~output_o\ : std_logic;
SIGNAL \ast_source_data[9]~output_o\ : std_logic;
SIGNAL \ast_source_data[10]~output_o\ : std_logic;
SIGNAL \ast_source_data[11]~output_o\ : std_logic;
SIGNAL \ast_source_data[12]~output_o\ : std_logic;
SIGNAL \ast_source_data[13]~output_o\ : std_logic;
SIGNAL \ast_source_data[14]~output_o\ : std_logic;
SIGNAL \ast_source_data[15]~output_o\ : std_logic;
SIGNAL \ast_source_data[16]~output_o\ : std_logic;
SIGNAL \ast_source_data[17]~output_o\ : std_logic;
SIGNAL \ast_source_data[18]~output_o\ : std_logic;
SIGNAL \ast_source_data[19]~output_o\ : std_logic;
SIGNAL \ast_source_data[20]~output_o\ : std_logic;
SIGNAL \ast_source_data[21]~output_o\ : std_logic;
SIGNAL \ast_source_data[22]~output_o\ : std_logic;
SIGNAL \ast_source_data[23]~output_o\ : std_logic;
SIGNAL \ast_source_valid~output_o\ : std_logic;
SIGNAL \ast_source_error[0]~output_o\ : std_logic;
SIGNAL \ast_source_error[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \ast_sink_valid~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\ : std_logic;
SIGNAL \ast_sink_data[0]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~7_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~8\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~9_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~10\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~11_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~_wirecell_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~12\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~13_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~14\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~15_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~16\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~17_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~_wirecell_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~1_cout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~3\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~17_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~5\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~1\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~16_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~3\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~15_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~5\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~14_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~11\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~12_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~13_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~13\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~14_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~12_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add2~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~18_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~7_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~8\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~9_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~20_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~18_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~1_cout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~19_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~3\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~5\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~12_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~10_wirecell_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~14_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~11\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~12_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~12_wirecell_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~15\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~16_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~13\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~14_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~10\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~11_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6_cout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~7_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~9_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~8\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~12\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~13_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~11\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~12_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~11\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~12_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~14\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~15_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~13\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~14_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~16\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~17_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~13\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~14_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~15\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~16_combout\ : std_logic;
SIGNAL \ast_sink_data[1]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~q\ : std_logic;
SIGNAL \ast_sink_data[2]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~q\ : std_logic;
SIGNAL \ast_sink_data[3]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][3]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~q\ : std_logic;
SIGNAL \ast_sink_data[4]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][4]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~q\ : std_logic;
SIGNAL \ast_sink_data[5]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~q\ : std_logic;
SIGNAL \ast_sink_data[6]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][6]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~q\ : std_logic;
SIGNAL \ast_sink_data[7]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~q\ : std_logic;
SIGNAL \ast_sink_data[8]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][8]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~q\ : std_logic;
SIGNAL \ast_sink_data[9]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~q\ : std_logic;
SIGNAL \ast_sink_data[10]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]~q\ : std_logic;
SIGNAL \ast_sink_data[11]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~q\ : std_logic;
SIGNAL \ast_sink_data[12]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]~q\ : std_logic;
SIGNAL \ast_sink_data[13]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~q\ : std_logic;
SIGNAL \ast_sink_data[14]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~q\ : std_logic;
SIGNAL \ast_sink_data[15]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][15]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]~q\ : std_logic;
SIGNAL \ast_sink_data[16]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~q\ : std_logic;
SIGNAL \ast_sink_data[17]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~q\ : std_logic;
SIGNAL \ast_sink_data[18]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][18]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~q\ : std_logic;
SIGNAL \ast_sink_data[19]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~q\ : std_logic;
SIGNAL \ast_sink_data[20]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~q\ : std_logic;
SIGNAL \ast_sink_data[21]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]~q\ : std_logic;
SIGNAL \ast_sink_data[22]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~q\ : std_logic;
SIGNAL \ast_sink_data[23]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~16_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~12_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~3\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~5\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~13\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~14_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[1]~5_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~1\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]~7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~3_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~5_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~7_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~9_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~11_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~12_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~7_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~9_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~3_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~5_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~3_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~5_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~7_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~9_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~11_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~5_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~7_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~13_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~9_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~3_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~5_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~3_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~7_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~3_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~5_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[9]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~39_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~1_cout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~3\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~5\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~11\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~12_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~13\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~14_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~15\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~16_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~40\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~41_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~42\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~43_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~44\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~45_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~46\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~47_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~48\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~49_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~50\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~51_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~52\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~53_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~54\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~55_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~56\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~57_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~58\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~59_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~60\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~61_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~62\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~63_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~64\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~65_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~66\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~67_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~68\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~69_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~70\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~71_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[17]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~15_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~72\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~73_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~17_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~74\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~75_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[2]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~19_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~76\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~77_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~21_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~78\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~79_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~23_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~80\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~81_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[5]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~25_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~82\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~83_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~27_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~84\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~85_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[24]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~29_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~86\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~87_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~31_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~88\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~89_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[9]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~33_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~90\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~91_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[10]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~35_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~92\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~93_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~37_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~94\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~95_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[12]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~39_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~96\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~97_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[13]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~41_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~98\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~99_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~42\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[31]~43_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~100\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~101_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[16]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~102\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~103_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[17]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~104\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~105_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[18]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~106\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~107_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[19]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~108\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~109_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~110\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~111_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[21]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~112\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~113_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[22]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~114\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~115_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out[23]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~1_cout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~2_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~3\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~4_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~4_wirecell_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~5\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~6_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~7\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~8_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~9\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~10_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~10_wirecell_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~11\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~12_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~12_wirecell_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~13\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~14_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~2\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~1_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~15\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~16_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_valid~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_valid~q\ : std_logic;
SIGNAL \ast_sink_error[0]~input_o\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|sink|at_sink_error_int~0_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|at_source_error_s[0]~feeder_combout\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|sink|packet_error_s\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|data_out\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|source|at_source_error_s\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\ : std_logic_vector(38 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_cm0_q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\ : std_logic;
SIGNAL \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\ : std_logic_vector(7 DOWNTO 7);

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_ast_sink_data <= ast_sink_data;
ww_ast_sink_valid <= ast_sink_valid;
ww_ast_sink_error <= ast_sink_error;
ast_source_data <= ww_ast_source_data;
ast_source_valid <= ww_ast_source_valid;
ast_source_error <= ww_ast_source_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAA_bus\ <= (
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT25\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT24\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT23\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT22\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT21\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT20\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT19\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT18\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT17\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT16\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT15\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT14\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT13\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT12\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT11\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT10\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT9\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT8\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT7\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT6\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT5\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT4\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT3\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT2\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT1\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~dataout\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~9\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~8\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~7\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~6\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~5\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~4\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~3\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~2\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~1\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~0\);

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~0\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~1\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~2\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~3\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~4\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~5\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~6\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~7\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~8\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~9\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(0) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(1) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(2) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(3) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(4) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(5) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(6) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(7) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(8) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(9) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(10) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(11) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(12) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(13) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(14) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(15) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(16) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(17) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(18) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(19) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(20) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(21) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(22) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(23) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(24) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(25) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAA_bus\ <= (
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT14\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT13\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT12\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT11\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT10\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT9\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT8\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT7\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT6\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT5\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT4\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT3\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT2\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT1\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~dataout\
& \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~2\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~1\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~0\);

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~0\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~1\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~2\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(0) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(1) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(2) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(3) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(4) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(5) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(6) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(7) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(8) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(9) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(10) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(11) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(12) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(13) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(14) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(17);

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(16) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(15) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(14) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(13) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(12) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(11) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(10) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(9) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(8) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(7) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(6) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(5) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(4) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(3) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(2) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(1) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(0));

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(6) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(5) & NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(4) & NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(3) & NOT 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(2) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(1) & NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(0) & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd);

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~0\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~1\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~2\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~3\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~4\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~5\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~6\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~7\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~8\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~9\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~dataout\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT1\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT2\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT3\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT4\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT5\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT6\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT7\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT8\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT9\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT10\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT11\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT12\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT13\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT14\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT15\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT16\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT17\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT18\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT19\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT20\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT21\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT22\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT23\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT24\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT25\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(6) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(5) & NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(4) & NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(3) & NOT 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(2) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(1) & NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(0) & gnd);

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAB_bus\ <= (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(23) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(22) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(21) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(20) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(19) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(18) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(17) & gnd & gnd);

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~0\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~1\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~2\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~dataout\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT1\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT2\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT3\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT4\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT5\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT6\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT7\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT8\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT9\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT10\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT11\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT12\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT13\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT14\ <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(17);

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]~q\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~q\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]~q\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]~q\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~q\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~q\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~q\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]~q\);

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~_wirecell_combout\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~_wirecell_combout\ & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\);

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(6) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(5) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(4) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(3) & 
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(2) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(1) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(0));

\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(0) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(1) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(2) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(3) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(4) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(5) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(6) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(7) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(8) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(9) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(10) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(11) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(12) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(13) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(14) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(15) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(16) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(17) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(18) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(19) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(20) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(21) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(22) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(23) <= \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);
\ALT_INV_reset_n~inputclkctrl_outclk\ <= NOT \reset_n~inputclkctrl_outclk\;
\lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\ <= NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\;
\lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_cm0_q\(4) <= NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(4);
\lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_cm0_q\(3) <= NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(3);
\lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_cm0_q\(2) <= NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(2);
\lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_cm0_q\(0) <= NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(0);
\lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\ <= NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\;
\lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\ <= NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\;
\lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(7) <= NOT \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7);

-- Location: IOOBUF_X23_Y0_N23
\ast_source_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(0),
	devoe => ww_devoe,
	o => \ast_source_data[0]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\ast_source_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(1),
	devoe => ww_devoe,
	o => \ast_source_data[1]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\ast_source_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(2),
	devoe => ww_devoe,
	o => \ast_source_data[2]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
\ast_source_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(3),
	devoe => ww_devoe,
	o => \ast_source_data[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\ast_source_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(4),
	devoe => ww_devoe,
	o => \ast_source_data[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\ast_source_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(5),
	devoe => ww_devoe,
	o => \ast_source_data[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\ast_source_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(6),
	devoe => ww_devoe,
	o => \ast_source_data[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\ast_source_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(7),
	devoe => ww_devoe,
	o => \ast_source_data[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\ast_source_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(8),
	devoe => ww_devoe,
	o => \ast_source_data[8]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\ast_source_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(9),
	devoe => ww_devoe,
	o => \ast_source_data[9]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\ast_source_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(10),
	devoe => ww_devoe,
	o => \ast_source_data[10]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\ast_source_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(11),
	devoe => ww_devoe,
	o => \ast_source_data[11]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\ast_source_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(12),
	devoe => ww_devoe,
	o => \ast_source_data[12]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\ast_source_data[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(13),
	devoe => ww_devoe,
	o => \ast_source_data[13]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\ast_source_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(14),
	devoe => ww_devoe,
	o => \ast_source_data[14]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\ast_source_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(15),
	devoe => ww_devoe,
	o => \ast_source_data[15]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\ast_source_data[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(16),
	devoe => ww_devoe,
	o => \ast_source_data[16]~output_o\);

-- Location: IOOBUF_X41_Y17_N9
\ast_source_data[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(17),
	devoe => ww_devoe,
	o => \ast_source_data[17]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ast_source_data[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(18),
	devoe => ww_devoe,
	o => \ast_source_data[18]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\ast_source_data[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(19),
	devoe => ww_devoe,
	o => \ast_source_data[19]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\ast_source_data[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(20),
	devoe => ww_devoe,
	o => \ast_source_data[20]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\ast_source_data[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(21),
	devoe => ww_devoe,
	o => \ast_source_data[21]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\ast_source_data[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(22),
	devoe => ww_devoe,
	o => \ast_source_data[22]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\ast_source_data[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_out\(23),
	devoe => ww_devoe,
	o => \ast_source_data[23]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\ast_source_valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|data_valid~q\,
	devoe => ww_devoe,
	o => \ast_source_valid~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\ast_source_error[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp100_inst|LP100_0002_ast_inst|source|at_source_error_s\(0),
	devoe => ww_devoe,
	o => \ast_source_error[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\ast_source_error[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ast_source_error[1]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y14_N8
\reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X41_Y15_N1
\ast_sink_valid~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_valid,
	o => \ast_sink_valid~input_o\);

-- Location: LCCOMB_X12_Y22_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]~feeder_combout\ = \ast_sink_valid~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_valid~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]~feeder_combout\);

-- Location: FF_X12_Y22_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]~q\);

-- Location: LCCOMB_X12_Y22_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]~feeder_combout\);

-- Location: FF_X12_Y22_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]~q\);

-- Location: LCCOMB_X12_Y22_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X12_Y22_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\);

-- Location: IOIBUF_X11_Y29_N29
\ast_sink_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(0),
	o => \ast_sink_data[0]~input_o\);

-- Location: LCCOMB_X12_Y25_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~feeder_combout\ = \ast_sink_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[0]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~feeder_combout\);

-- Location: FF_X12_Y25_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~q\);

-- Location: LCCOMB_X12_Y25_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~feeder_combout\);

-- Location: FF_X12_Y25_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~q\);

-- Location: LCCOMB_X12_Y25_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X12_Y25_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]~q\);

-- Location: LCCOMB_X12_Y22_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~6_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\ $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~6_combout\);

-- Location: FF_X12_Y22_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0));

-- Location: LCCOMB_X12_Y22_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\);

-- Location: LCCOMB_X12_Y22_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~7_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0) $ (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0) & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~8\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0),
	datad => VCC,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~7_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~8\);

-- Location: FF_X12_Y22_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~7_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1));

-- Location: LCCOMB_X12_Y22_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~9_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~8\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~8\) # (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~10\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~8\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~8\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~9_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~10\);

-- Location: FF_X12_Y22_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~9_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2));

-- Location: LCCOMB_X12_Y22_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~11_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~10\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~10\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~12\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~10\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~11_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~12\);

-- Location: FF_X12_Y22_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~11_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3));

-- Location: LCCOMB_X12_Y22_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~_wirecell_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~_wirecell_combout\);

-- Location: LCCOMB_X12_Y22_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~13_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~12\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~12\) # (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~14\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~12\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~12\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~13_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~14\);

-- Location: FF_X12_Y22_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~13_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4));

-- Location: LCCOMB_X12_Y22_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~15_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~14\ $ (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~14\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~16\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~14\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~15_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~16\);

-- Location: FF_X12_Y22_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~15_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5));

-- Location: LCCOMB_X12_Y22_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~17_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~16\ $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(6),
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~16\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~17_combout\);

-- Location: FF_X12_Y22_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~17_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(6));

-- Location: LCCOMB_X12_Y22_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~_wirecell_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(6),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~_wirecell_combout\);

-- Location: LCCOMB_X37_Y24_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0_combout\);

-- Location: LCCOMB_X39_Y24_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~0_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~0_combout\);

-- Location: FF_X37_Y24_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\);

-- Location: LCCOMB_X38_Y24_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~1_cout\ = CARRY(!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\,
	datad => VCC,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~1_cout\);

-- Location: LCCOMB_X38_Y24_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~1_cout\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~1_cout\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~3\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~1_cout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~2_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~3\);

-- Location: LCCOMB_X37_Y24_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~1_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~2_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~1_combout\);

-- Location: FF_X37_Y24_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\);

-- Location: LCCOMB_X38_Y24_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~4_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\ & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~3\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~3\ $ (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~5\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~3\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~4_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~5\);

-- Location: LCCOMB_X38_Y24_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~0_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\ $ (VCC)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~1\ = CARRY(\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\,
	datad => VCC,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~0_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~1\);

-- Location: LCCOMB_X39_Y24_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~17_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~0_combout\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~4_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~0_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~17_combout\);

-- Location: FF_X39_Y24_N31
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~17_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\);

-- Location: LCCOMB_X38_Y24_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~6_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~5\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~5\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~7\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~5\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~6_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~7\);

-- Location: LCCOMB_X38_Y24_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~1\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~1\) # (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~3\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~1\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~1\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~2_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~3\);

-- Location: LCCOMB_X38_Y24_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~16_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~2_combout\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~6_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~2_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~16_combout\);

-- Location: FF_X38_Y24_N31
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\);

-- Location: LCCOMB_X38_Y24_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~7\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~7\ $ (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~9\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~7\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~8_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~9\);

-- Location: LCCOMB_X38_Y24_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~4_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~3\ $ (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~3\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~5\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~3\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~4_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~5\);

-- Location: LCCOMB_X39_Y24_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~15_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~4_combout\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~8_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~4_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~15_combout\);

-- Location: FF_X39_Y24_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~15_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\);

-- Location: LCCOMB_X38_Y24_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~10_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~9\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~9\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~11\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~9\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~10_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~11\);

-- Location: LCCOMB_X38_Y24_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~6_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~5\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~5\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~7\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~5\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~6_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~7\);

-- Location: LCCOMB_X39_Y24_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~14_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~6_combout\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~10_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~6_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~14_combout\);

-- Location: FF_X39_Y24_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\);

-- Location: LCCOMB_X38_Y24_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~12_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~11\ $ (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\ & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~11\)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~13\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~11\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~11\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~12_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~13\);

-- Location: LCCOMB_X38_Y24_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~7\ $ (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\ & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~7\)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~9\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~7\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~7\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~8_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~9\);

-- Location: LCCOMB_X38_Y24_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~13_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~8_combout\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~12_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~8_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~13_combout\);

-- Location: FF_X38_Y24_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~13_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\);

-- Location: LCCOMB_X38_Y24_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~14_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~13\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~14_combout\);

-- Location: LCCOMB_X39_Y24_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~12_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~10_combout\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~14_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~10_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~12_combout\);

-- Location: FF_X39_Y24_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\);

-- Location: LCCOMB_X38_Y24_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~10_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~9\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~10_combout\);

-- Location: LCCOMB_X39_Y24_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~10_combout\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add0~10_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add1~14_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0_combout\);

-- Location: FF_X39_Y24_N15
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0));

-- Location: LCCOMB_X39_Y24_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0) $ (\ast_sink_valid~input_o\ $ (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0) & 
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0),
	datad => \ast_sink_valid~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0_combout\);

-- Location: FF_X39_Y24_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0));

-- Location: LCCOMB_X39_Y24_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add2~0_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & ((\ast_sink_valid~input_o\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0)) # (!\ast_sink_valid~input_o\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & ((\ast_sink_valid~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	datad => \ast_sink_valid~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add2~0_combout\);

-- Location: FF_X39_Y24_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add2~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1));

-- Location: LCCOMB_X39_Y24_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder_combout\);

-- Location: FF_X39_Y24_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_q\(0));

-- Location: FF_X39_Y24_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_run_q\(0),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\);

-- Location: LCCOMB_X14_Y22_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~6_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\ $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~6_combout\);

-- Location: FF_X14_Y22_N31
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0));

-- Location: LCCOMB_X14_Y22_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~18_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~18_combout\);

-- Location: FF_X14_Y22_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(0));

-- Location: LCCOMB_X14_Y22_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~7_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) $ (VCC))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~8\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1),
	datad => VCC,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~7_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~8\);

-- Location: FF_X14_Y22_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~7_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1));

-- Location: LCCOMB_X14_Y22_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~6_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) $ (VCC))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~7\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1),
	datad => VCC,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~6_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~7\);

-- Location: FF_X14_Y22_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(1));

-- Location: LCCOMB_X14_Y22_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~9_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~8\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~8\) # (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~10\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~8\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~8\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~9_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~10\);

-- Location: FF_X14_Y22_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~9_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2));

-- Location: LCCOMB_X38_Y25_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~6_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2) $ (VCC)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~7\ = CARRY(\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2),
	datad => VCC,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~6_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~7\);

-- Location: LCCOMB_X39_Y25_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~20_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~20_combout\);

-- Location: LCCOMB_X39_Y24_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~18_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~18_combout\);

-- Location: FF_X39_Y25_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0));

-- Location: LCCOMB_X38_Y25_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~1_cout\ = CARRY(!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0),
	datad => VCC,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~1_cout\);

-- Location: LCCOMB_X38_Y25_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~1_cout\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~1_cout\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~3\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~1_cout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~2_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~3\);

-- Location: LCCOMB_X39_Y25_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~19_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~2_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~19_combout\);

-- Location: FF_X39_Y25_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~19_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1));

-- Location: LCCOMB_X38_Y25_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~4_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2) & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~3\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~3\ $ (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~5\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~3\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~4_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~5\);

-- Location: FF_X38_Y25_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~6_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(7),
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2));

-- Location: LCCOMB_X38_Y25_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~7\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~7\) # (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~7\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~7\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~8_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\);

-- Location: LCCOMB_X38_Y25_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~6_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~5\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~5\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~7\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~5\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~6_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~7\);

-- Location: FF_X38_Y25_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~8_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(7),
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3));

-- Location: LCCOMB_X38_Y25_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~10_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\ $ (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~10_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\);

-- Location: LCCOMB_X38_Y25_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4) & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~7\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~7\ $ (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~9\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~7\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~8_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~9\);

-- Location: FF_X38_Y25_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~10_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(7),
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4));

-- Location: LCCOMB_X38_Y25_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~12_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\ $ (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~12_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\);

-- Location: LCCOMB_X38_Y25_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~10_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~9\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~9\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~11\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~9\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~10_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~11\);

-- Location: LCCOMB_X38_Y25_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~10_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~10_wirecell_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~10_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~10_wirecell_combout\);

-- Location: FF_X38_Y25_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~12_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~10_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(7),
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5));

-- Location: LCCOMB_X38_Y25_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~14_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\) # (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~15\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~14_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~15\);

-- Location: LCCOMB_X38_Y25_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~12_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~11\ $ (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6) & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~11\)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~13\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~11\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~11\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~12_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~13\);

-- Location: LCCOMB_X38_Y25_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~12_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~12_wirecell_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~12_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~12_wirecell_combout\);

-- Location: FF_X38_Y25_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~14_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~12_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(7),
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6));

-- Location: LCCOMB_X38_Y25_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~16_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7),
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~15\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~16_combout\);

-- Location: LCCOMB_X38_Y25_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~14_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7) $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7),
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~13\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~14_combout\);

-- Location: FF_X38_Y25_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~16_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add10~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(7),
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7));

-- Location: LCCOMB_X15_Y22_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~4_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2) $ (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7) & 
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~4_combout\);

-- Location: FF_X15_Y22_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2));

-- Location: LCCOMB_X14_Y22_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~7\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~7\ & VCC)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~7\) # (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~7\))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~9\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~7\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~7\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~8_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~9\);

-- Location: FF_X14_Y22_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(2));

-- Location: LCCOMB_X14_Y22_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~11_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~10\ $ (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~10\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~12\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~10\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~11_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~12\);

-- Location: FF_X14_Y22_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~11_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3));

-- Location: LCCOMB_X15_Y22_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6_cout\ = CARRY(!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2),
	datad => VCC,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6_cout\);

-- Location: LCCOMB_X15_Y22_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~7_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6_cout\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6_cout\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~8\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6_cout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~7_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~8\);

-- Location: LCCOMB_X15_Y22_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~9_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~9_combout\);

-- Location: FF_X15_Y22_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~7_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3));

-- Location: LCCOMB_X14_Y22_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~10_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~9\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~11\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~9\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~9\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~10_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~11\);

-- Location: FF_X14_Y22_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(3));

-- Location: LCCOMB_X15_Y22_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~10_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~8\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~8\ $ (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~11\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~8\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~10_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~11\);

-- Location: FF_X15_Y22_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4));

-- Location: LCCOMB_X14_Y22_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~13_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~12\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~12\) # (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~14\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~12\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~12\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~13_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~14\);

-- Location: FF_X14_Y22_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~13_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4));

-- Location: LCCOMB_X14_Y22_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~12_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~11\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~11\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~11\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~11\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~13\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~11\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~11\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~11\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~12_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~13\);

-- Location: FF_X14_Y22_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(4));

-- Location: LCCOMB_X15_Y22_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~12_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5) & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~11\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~11\ $ (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~13\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~11\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~12_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~13\);

-- Location: FF_X15_Y22_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5));

-- Location: LCCOMB_X14_Y22_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~15_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~14\ $ (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~14\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~16\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~14\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~15_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~16\);

-- Location: FF_X14_Y22_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~15_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5));

-- Location: LCCOMB_X14_Y22_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~14_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5) $ 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~13\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~15\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~13\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~13\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~14_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~15\);

-- Location: FF_X14_Y22_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(5));

-- Location: LCCOMB_X14_Y22_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~17_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~16\ $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6),
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~16\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~17_combout\);

-- Location: FF_X14_Y22_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~17_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6));

-- Location: LCCOMB_X15_Y22_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~14_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~13\ $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6),
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~13\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~14_combout\);

-- Location: FF_X15_Y22_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6));

-- Location: LCCOMB_X14_Y22_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~16_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~15\ $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6),
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~15\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~16_combout\);

-- Location: FF_X14_Y22_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(6));

-- Location: IOIBUF_X11_Y29_N1
\ast_sink_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(1),
	o => \ast_sink_data[1]~input_o\);

-- Location: FF_X12_Y25_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[1]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]~q\);

-- Location: FF_X12_Y25_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~q\);

-- Location: LCCOMB_X12_Y25_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~feeder_combout\);

-- Location: FF_X12_Y25_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~q\);

-- Location: IOIBUF_X11_Y29_N22
\ast_sink_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(2),
	o => \ast_sink_data[2]~input_o\);

-- Location: LCCOMB_X12_Y26_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~feeder_combout\ = \ast_sink_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[2]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~feeder_combout\);

-- Location: FF_X12_Y26_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~q\);

-- Location: LCCOMB_X12_Y26_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~feeder_combout\);

-- Location: FF_X12_Y26_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~q\);

-- Location: LCCOMB_X12_Y26_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~feeder_combout\);

-- Location: FF_X12_Y26_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~q\);

-- Location: IOIBUF_X11_Y29_N15
\ast_sink_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(3),
	o => \ast_sink_data[3]~input_o\);

-- Location: FF_X12_Y26_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[3]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]~q\);

-- Location: FF_X12_Y26_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][3]~q\);

-- Location: LCCOMB_X12_Y26_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][3]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~feeder_combout\);

-- Location: FF_X12_Y26_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~q\);

-- Location: IOIBUF_X9_Y29_N22
\ast_sink_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(4),
	o => \ast_sink_data[4]~input_o\);

-- Location: FF_X12_Y25_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[4]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][4]~q\);

-- Location: LCCOMB_X12_Y25_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][4]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~feeder_combout\);

-- Location: FF_X12_Y25_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~q\);

-- Location: LCCOMB_X12_Y25_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~feeder_combout\);

-- Location: FF_X12_Y25_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~q\);

-- Location: IOIBUF_X0_Y22_N22
\ast_sink_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(5),
	o => \ast_sink_data[5]~input_o\);

-- Location: LCCOMB_X1_Y22_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~feeder_combout\ = \ast_sink_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[5]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~feeder_combout\);

-- Location: FF_X1_Y22_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~q\);

-- Location: LCCOMB_X1_Y22_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~feeder_combout\);

-- Location: FF_X1_Y22_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~q\);

-- Location: LCCOMB_X1_Y22_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~feeder_combout\);

-- Location: FF_X1_Y22_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~q\);

-- Location: IOIBUF_X0_Y22_N8
\ast_sink_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(6),
	o => \ast_sink_data[6]~input_o\);

-- Location: LCCOMB_X1_Y22_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~feeder_combout\ = \ast_sink_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[6]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~feeder_combout\);

-- Location: FF_X1_Y22_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~q\);

-- Location: FF_X1_Y22_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][6]~q\);

-- Location: LCCOMB_X1_Y22_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][6]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~feeder_combout\);

-- Location: FF_X1_Y22_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~q\);

-- Location: IOIBUF_X9_Y29_N8
\ast_sink_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(7),
	o => \ast_sink_data[7]~input_o\);

-- Location: FF_X10_Y22_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[7]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~q\);

-- Location: LCCOMB_X10_Y22_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~feeder_combout\);

-- Location: FF_X10_Y22_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~q\);

-- Location: LCCOMB_X10_Y22_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~feeder_combout\);

-- Location: FF_X10_Y22_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~q\);

-- Location: IOIBUF_X0_Y22_N15
\ast_sink_data[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(8),
	o => \ast_sink_data[8]~input_o\);

-- Location: LCCOMB_X10_Y22_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~feeder_combout\ = \ast_sink_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[8]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~feeder_combout\);

-- Location: FF_X10_Y22_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~q\);

-- Location: FF_X10_Y22_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][8]~q\);

-- Location: LCCOMB_X10_Y22_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][8]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~feeder_combout\);

-- Location: FF_X10_Y22_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~q\);

-- Location: IOIBUF_X0_Y22_N1
\ast_sink_data[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(9),
	o => \ast_sink_data[9]~input_o\);

-- Location: LCCOMB_X1_Y22_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~feeder_combout\ = \ast_sink_data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[9]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~feeder_combout\);

-- Location: FF_X1_Y22_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~q\);

-- Location: LCCOMB_X1_Y22_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~feeder_combout\);

-- Location: FF_X1_Y22_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~q\);

-- Location: LCCOMB_X1_Y22_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~feeder_combout\);

-- Location: FF_X1_Y22_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~q\);

-- Location: IOIBUF_X16_Y29_N22
\ast_sink_data[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(10),
	o => \ast_sink_data[10]~input_o\);

-- Location: FF_X16_Y22_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[10]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~q\);

-- Location: LCCOMB_X16_Y22_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~feeder_combout\);

-- Location: FF_X16_Y22_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~q\);

-- Location: LCCOMB_X16_Y22_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]~feeder_combout\);

-- Location: FF_X16_Y22_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]~q\);

-- Location: IOIBUF_X16_Y29_N29
\ast_sink_data[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(11),
	o => \ast_sink_data[11]~input_o\);

-- Location: LCCOMB_X16_Y22_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]~feeder_combout\ = \ast_sink_data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[11]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]~feeder_combout\);

-- Location: FF_X16_Y22_N15
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]~q\);

-- Location: FF_X16_Y22_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~q\);

-- Location: LCCOMB_X16_Y22_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~feeder_combout\);

-- Location: FF_X16_Y22_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~q\);

-- Location: IOIBUF_X9_Y29_N1
\ast_sink_data[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(12),
	o => \ast_sink_data[12]~input_o\);

-- Location: FF_X11_Y26_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[12]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~q\);

-- Location: LCCOMB_X11_Y26_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~feeder_combout\);

-- Location: FF_X11_Y26_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~q\);

-- Location: FF_X11_Y26_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]~q\);

-- Location: IOIBUF_X9_Y29_N29
\ast_sink_data[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(13),
	o => \ast_sink_data[13]~input_o\);

-- Location: FF_X11_Y26_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[13]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~q\);

-- Location: LCCOMB_X11_Y26_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~feeder_combout\);

-- Location: FF_X11_Y26_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~q\);

-- Location: LCCOMB_X11_Y26_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~feeder_combout\);

-- Location: FF_X11_Y26_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~q\);

-- Location: IOIBUF_X16_Y29_N15
\ast_sink_data[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(14),
	o => \ast_sink_data[14]~input_o\);

-- Location: LCCOMB_X16_Y22_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]~feeder_combout\ = \ast_sink_data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[14]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]~feeder_combout\);

-- Location: FF_X16_Y22_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]~q\);

-- Location: LCCOMB_X16_Y22_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~feeder_combout\);

-- Location: FF_X16_Y22_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~q\);

-- Location: LCCOMB_X16_Y22_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~feeder_combout\);

-- Location: FF_X16_Y22_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~q\);

-- Location: IOIBUF_X16_Y29_N1
\ast_sink_data[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(15),
	o => \ast_sink_data[15]~input_o\);

-- Location: FF_X15_Y25_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[15]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][15]~q\);

-- Location: LCCOMB_X15_Y25_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][15]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~feeder_combout\);

-- Location: FF_X15_Y25_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~q\);

-- Location: FF_X15_Y25_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]~q\);

-- Location: IOIBUF_X14_Y29_N1
\ast_sink_data[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(16),
	o => \ast_sink_data[16]~input_o\);

-- Location: LCCOMB_X15_Y25_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~feeder_combout\ = \ast_sink_data[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[16]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~feeder_combout\);

-- Location: FF_X15_Y25_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~q\);

-- Location: LCCOMB_X15_Y25_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~feeder_combout\);

-- Location: FF_X15_Y25_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~q\);

-- Location: LCCOMB_X15_Y25_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~feeder_combout\);

-- Location: FF_X15_Y25_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~q\);

-- Location: IOIBUF_X14_Y29_N29
\ast_sink_data[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(17),
	o => \ast_sink_data[17]~input_o\);

-- Location: LCCOMB_X14_Y25_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~feeder_combout\ = \ast_sink_data[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[17]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~feeder_combout\);

-- Location: FF_X14_Y25_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~q\);

-- Location: LCCOMB_X14_Y25_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~feeder_combout\);

-- Location: FF_X14_Y25_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~q\);

-- Location: LCCOMB_X14_Y25_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~feeder_combout\);

-- Location: FF_X14_Y25_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~q\);

-- Location: IOIBUF_X14_Y29_N15
\ast_sink_data[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(18),
	o => \ast_sink_data[18]~input_o\);

-- Location: FF_X12_Y26_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[18]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][18]~q\);

-- Location: LCCOMB_X12_Y26_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][18]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~feeder_combout\);

-- Location: FF_X12_Y26_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~q\);

-- Location: LCCOMB_X12_Y26_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~feeder_combout\);

-- Location: FF_X12_Y26_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~q\);

-- Location: IOIBUF_X9_Y29_N15
\ast_sink_data[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(19),
	o => \ast_sink_data[19]~input_o\);

-- Location: LCCOMB_X10_Y22_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~feeder_combout\ = \ast_sink_data[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[19]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~feeder_combout\);

-- Location: FF_X10_Y22_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~q\);

-- Location: LCCOMB_X10_Y22_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~feeder_combout\);

-- Location: FF_X10_Y22_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~q\);

-- Location: LCCOMB_X10_Y22_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~feeder_combout\);

-- Location: FF_X10_Y22_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~q\);

-- Location: IOIBUF_X11_Y29_N8
\ast_sink_data[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(20),
	o => \ast_sink_data[20]~input_o\);

-- Location: FF_X11_Y26_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[20]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~q\);

-- Location: LCCOMB_X11_Y26_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~feeder_combout\);

-- Location: FF_X11_Y26_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~q\);

-- Location: LCCOMB_X11_Y26_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~feeder_combout\);

-- Location: FF_X11_Y26_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~q\);

-- Location: IOIBUF_X14_Y29_N8
\ast_sink_data[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(21),
	o => \ast_sink_data[21]~input_o\);

-- Location: LCCOMB_X14_Y25_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~feeder_combout\ = \ast_sink_data[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[21]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~feeder_combout\);

-- Location: FF_X14_Y25_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~q\);

-- Location: FF_X14_Y25_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]~q\);

-- Location: LCCOMB_X14_Y25_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]~feeder_combout\);

-- Location: FF_X14_Y25_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]~q\);

-- Location: IOIBUF_X16_Y29_N8
\ast_sink_data[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(22),
	o => \ast_sink_data[22]~input_o\);

-- Location: FF_X14_Y25_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[22]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~q\);

-- Location: LCCOMB_X14_Y25_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~feeder_combout\);

-- Location: FF_X14_Y25_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~q\);

-- Location: LCCOMB_X14_Y25_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~feeder_combout\);

-- Location: FF_X14_Y25_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~q\);

-- Location: IOIBUF_X14_Y29_N22
\ast_sink_data[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(23),
	o => \ast_sink_data[23]~input_o\);

-- Location: LCCOMB_X15_Y25_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~feeder_combout\ = \ast_sink_data[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[23]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~feeder_combout\);

-- Location: FF_X15_Y25_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~q\);

-- Location: LCCOMB_X15_Y25_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~feeder_combout\);

-- Location: FF_X15_Y25_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~q\);

-- Location: LCCOMB_X15_Y25_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~feeder_combout\);

-- Location: FF_X15_Y25_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~q\);

-- Location: M9K_X13_Y22_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "LP100_0002:lp100_inst|LP100_0002_ast:LP100_0002_ast_inst|LP100_0002_rtl:hpfircore|altsyncram:u0_m0_wo0_wi0_delayr0_dmem|altsyncram_r7o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 7,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 24,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_reset_n~inputclkctrl_outclk\,
	portadatain => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X24_Y22_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]~6_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) $ (VCC)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]~7\ = CARRY(\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datad => VCC,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]~6_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]~7\);

-- Location: LCCOMB_X24_Y22_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~16_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~16_combout\);

-- Location: LCCOMB_X24_Y22_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~10_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\ $ (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~10_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\);

-- Location: LCCOMB_X24_Y22_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~12_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\) # (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~13\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~12_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~13\);

-- Location: LCCOMB_X24_Y22_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~1\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~1\) # (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~3\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~1\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~1\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~2_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~3\);

-- Location: LCCOMB_X24_Y22_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~4_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~3\ $ (GND))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~3\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~5\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~3\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~4_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~5\);

-- Location: LCCOMB_X24_Y22_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~6_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~5\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~5\) # (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~7\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~5\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~5\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~6_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~7\);

-- Location: LCCOMB_X24_Y22_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~7\ $ (GND))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~7\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~9\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~7\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~8_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~9\);

-- Location: FF_X39_Y24_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]~q\);

-- Location: FF_X31_Y25_N31
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\);

-- Location: FF_X24_Y22_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~12_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5));

-- Location: LCCOMB_X24_Y22_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~14_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~13\ $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~13\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~14_combout\);

-- Location: LCCOMB_X24_Y22_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~10_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~9\ $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~9\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~10_combout\);

-- Location: FF_X24_Y22_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~14_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6));

-- Location: LCCOMB_X31_Y25_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1_combout\);

-- Location: LCCOMB_X20_Y22_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\);

-- Location: LCCOMB_X31_Y25_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1_combout\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\) # 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1_combout\ & 
-- (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~2_combout\);

-- Location: FF_X31_Y25_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\);

-- Location: LCCOMB_X31_Y25_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[1]~5_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[1]~5_combout\);

-- Location: FF_X24_Y22_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0));

-- Location: LCCOMB_X24_Y22_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~0_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) $ (VCC))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~1\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datad => VCC,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~0_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~1\);

-- Location: FF_X24_Y22_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1));

-- Location: FF_X24_Y22_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]~6_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2));

-- Location: LCCOMB_X24_Y22_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]~7\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]~7\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]~7\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~8_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\);

-- Location: FF_X24_Y22_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~8_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3));

-- Location: FF_X24_Y22_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~10_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add6~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4));

-- Location: LCCOMB_X23_Y22_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~4_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) 
-- & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~4_combout\);

-- Location: LCCOMB_X23_Y22_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~0_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4)) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)) # 
-- ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~0_combout\);

-- Location: LCCOMB_X23_Y22_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) $ (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)) 
-- # (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~1_combout\);

-- Location: LCCOMB_X23_Y22_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~2_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & 
-- ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~2_combout\);

-- Location: LCCOMB_X23_Y22_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~3_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~1_combout\) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5))))) 
-- # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~2_combout\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~1_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~2_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~3_combout\);

-- Location: LCCOMB_X23_Y22_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~5_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~3_combout\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~4_combout\) # ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5))))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~3_combout\ & (((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~0_combout\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~4_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~0_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~3_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~5_combout\);

-- Location: LCCOMB_X22_Y22_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~6_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~6_combout\);

-- Location: LCCOMB_X22_Y22_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~10_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) $ 
-- (((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~10_combout\);

-- Location: LCCOMB_X22_Y22_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) 
-- & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~8_combout\);

-- Location: LCCOMB_X22_Y22_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~7_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~7_combout\);

-- Location: LCCOMB_X22_Y22_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~9_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4))))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~7_combout\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~8_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~7_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~9_combout\);

-- Location: LCCOMB_X22_Y22_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~11_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~9_combout\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~10_combout\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~9_combout\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~6_combout\)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & 
-- (((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~6_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~10_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~9_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~11_combout\);

-- Location: LCCOMB_X22_Y22_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~12_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~5_combout\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & 
-- ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~5_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~11_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~12_combout\);

-- Location: FF_X22_Y22_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(0));

-- Location: LCCOMB_X24_Y22_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~7_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1))))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~7_combout\);

-- Location: LCCOMB_X24_Y22_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) $ 
-- (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)) # (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~8_combout\);

-- Location: LCCOMB_X24_Y22_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~9_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~8_combout\))) 
-- # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~7_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~8_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~9_combout\);

-- Location: LCCOMB_X20_Y22_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~6_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~6_combout\);

-- Location: LCCOMB_X20_Y22_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~0_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) $ 
-- (((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~0_combout\);

-- Location: LCCOMB_X20_Y22_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~4_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) 
-- & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & 
-- ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~4_combout\);

-- Location: LCCOMB_X20_Y22_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & 
-- (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~1_combout\);

-- Location: LCCOMB_X20_Y22_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & 
-- ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)) # 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~2_combout\);

-- Location: LCCOMB_X20_Y22_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~3_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~1_combout\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~1_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~2_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~3_combout\);

-- Location: LCCOMB_X20_Y22_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~5_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~3_combout\ & (((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~4_combout\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~3_combout\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~0_combout\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~0_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~4_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~3_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~5_combout\);

-- Location: LCCOMB_X20_Y22_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~10_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~9_combout\) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~6_combout\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~9_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~6_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~5_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~10_combout\);

-- Location: FF_X20_Y22_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux7~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(1));

-- Location: LCCOMB_X21_Y22_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)) # (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) 
-- $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) $ 
-- (((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~1_combout\);

-- Location: LCCOMB_X21_Y22_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~0_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) $ 
-- (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & 
-- ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y22_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~2_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~1_combout\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~1_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~0_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~2_combout\);

-- Location: LCCOMB_X21_Y22_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~3_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)) # (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~3_combout\);

-- Location: LCCOMB_X21_Y22_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~4_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~2_combout\) # ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~3_combout\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~2_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~3_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~4_combout\);

-- Location: LCCOMB_X23_Y22_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~5_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) $ 
-- (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~5_combout\);

-- Location: LCCOMB_X22_Y22_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~6_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) $ (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)) 
-- # (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4)))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~6_combout\);

-- Location: LCCOMB_X23_Y22_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~7_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)) # (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~7_combout\);

-- Location: LCCOMB_X23_Y22_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3))))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~6_combout\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~6_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~7_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~8_combout\);

-- Location: LCCOMB_X23_Y22_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~9_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & 
-- ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & 
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~9_combout\);

-- Location: LCCOMB_X23_Y22_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~10_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~8_combout\ & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~9_combout\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1))))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~8_combout\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~5_combout\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~5_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~8_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~9_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~10_combout\);

-- Location: LCCOMB_X21_Y22_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~11_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~4_combout\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & 
-- ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~4_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~10_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~11_combout\);

-- Location: FF_X21_Y22_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~11_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(2));

-- Location: LCCOMB_X22_Y22_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3))))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)) # 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~8_combout\);

-- Location: LCCOMB_X22_Y22_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~5_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) $ 
-- ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)) # 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~5_combout\);

-- Location: LCCOMB_X22_Y22_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~6_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) $ 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~6_combout\);

-- Location: LCCOMB_X22_Y22_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~7_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~5_combout\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~6_combout\ & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~5_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~6_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~7_combout\);

-- Location: LCCOMB_X22_Y22_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~13_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~13_combout\);

-- Location: LCCOMB_X22_Y22_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~9_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~7_combout\ & (((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~8_combout\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~7_combout\ & (((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~13_combout\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~8_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~7_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~13_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~9_combout\);

-- Location: LCCOMB_X23_Y22_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~0_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)) # (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y22_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)) 
-- # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & 
-- ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~2_combout\);

-- Location: LCCOMB_X23_Y22_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) 
-- & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~1_combout\);

-- Location: LCCOMB_X23_Y22_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~3_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~1_combout\) # (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5))))) 
-- # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~2_combout\ & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~2_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~1_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~3_combout\);

-- Location: LCCOMB_X23_Y22_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~4_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~3_combout\ & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~4_combout\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5))))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~3_combout\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~0_combout\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~0_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux8~4_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~3_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~4_combout\);

-- Location: LCCOMB_X22_Y22_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~10_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~4_combout\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) 
-- & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~9_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~4_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~10_combout\);

-- Location: FF_X22_Y22_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux5~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(3));

-- Location: LCCOMB_X20_Y22_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4)) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)) # (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~1_combout\);

-- Location: LCCOMB_X20_Y22_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~0_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)) # 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y22_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~1_combout\ & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3))))) 
-- # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~1_combout\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~1_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~0_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~2_combout\);

-- Location: LCCOMB_X22_Y22_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~5_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) $ (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)) 
-- # (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~5_combout\);

-- Location: LCCOMB_X21_Y22_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~3_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & 
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)) # 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~3_combout\);

-- Location: LCCOMB_X21_Y22_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~4_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~3_combout\) # (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4))))) 
-- # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~3_combout\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~3_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~3_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~4_combout\);

-- Location: LCCOMB_X21_Y22_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~6_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~4_combout\) # ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~5_combout\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~5_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~4_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~6_combout\);

-- Location: LCCOMB_X21_Y22_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~7_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~2_combout\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & 
-- ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~2_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~6_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~7_combout\);

-- Location: FF_X21_Y22_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux4~7_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(4));

-- Location: LCCOMB_X21_Y22_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~4_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) 
-- & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~4_combout\);

-- Location: LCCOMB_X21_Y22_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) 
-- & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~2_combout\);

-- Location: LCCOMB_X21_Y22_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~3_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4)) 
-- # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~2_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~3_combout\);

-- Location: LCCOMB_X21_Y22_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~0_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1))))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)) # 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y22_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~0_combout\))) 
-- # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux6~3_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~0_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~1_combout\);

-- Location: LCCOMB_X21_Y22_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~5_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~4_combout\ & (((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~1_combout\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6))))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~4_combout\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~3_combout\) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~1_combout\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~4_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~3_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~1_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~5_combout\);

-- Location: FF_X21_Y22_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux3~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(5));

-- Location: LCCOMB_X20_Y22_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~0_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)) # (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y22_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~0_combout\) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6)) # 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~0_combout\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~1_combout\);

-- Location: LCCOMB_X20_Y22_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~2_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) $ (((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5)) # ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) 
-- & \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~1_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~2_combout\);

-- Location: FF_X20_Y22_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Mux2~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(6));

-- Location: DSPMULT_X18_Y19_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y19_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X22_Y19_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(15),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder_combout\);

-- Location: FF_X22_Y19_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(15));

-- Location: LCCOMB_X22_Y19_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(15),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder_combout\);

-- Location: FF_X22_Y19_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15));

-- Location: LCCOMB_X22_Y19_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(14),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]~feeder_combout\);

-- Location: FF_X22_Y19_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(14));

-- Location: LCCOMB_X22_Y19_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(14),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder_combout\);

-- Location: FF_X22_Y19_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14));

-- Location: FF_X22_Y19_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(13),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(13));

-- Location: LCCOMB_X22_Y19_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(13),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]~feeder_combout\);

-- Location: FF_X22_Y19_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13));

-- Location: LCCOMB_X22_Y19_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(12),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]~feeder_combout\);

-- Location: FF_X22_Y19_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(12));

-- Location: LCCOMB_X22_Y19_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(12),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder_combout\);

-- Location: FF_X22_Y19_N31
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12));

-- Location: FF_X22_Y19_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(11),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(11));

-- Location: LCCOMB_X22_Y19_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(11),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder_combout\);

-- Location: FF_X22_Y19_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11));

-- Location: FF_X20_Y19_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(10),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(10));

-- Location: LCCOMB_X20_Y19_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(10),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder_combout\);

-- Location: FF_X20_Y19_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10));

-- Location: LCCOMB_X20_Y19_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[9]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(9),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[9]~feeder_combout\);

-- Location: FF_X20_Y19_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(9));

-- Location: LCCOMB_X20_Y19_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(9),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]~feeder_combout\);

-- Location: FF_X20_Y19_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9));

-- Location: LCCOMB_X20_Y19_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(8),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]~feeder_combout\);

-- Location: FF_X20_Y19_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(8));

-- Location: LCCOMB_X20_Y19_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(8),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder_combout\);

-- Location: FF_X20_Y19_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8));

-- Location: FF_X20_Y19_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(7),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(7));

-- Location: FF_X20_Y19_N15
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(7),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7));

-- Location: LCCOMB_X20_Y19_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(6),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]~feeder_combout\);

-- Location: FF_X20_Y19_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(6));

-- Location: LCCOMB_X20_Y19_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(6),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder_combout\);

-- Location: FF_X20_Y19_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6));

-- Location: LCCOMB_X21_Y19_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder_combout\);

-- Location: FF_X21_Y19_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(5));

-- Location: LCCOMB_X21_Y19_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder_combout\);

-- Location: FF_X21_Y19_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5));

-- Location: FF_X17_Y19_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(4),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(4));

-- Location: LCCOMB_X21_Y19_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(4),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder_combout\);

-- Location: FF_X21_Y19_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4));

-- Location: LCCOMB_X21_Y19_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder_combout\);

-- Location: FF_X21_Y19_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(3));

-- Location: LCCOMB_X21_Y19_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]~feeder_combout\);

-- Location: FF_X21_Y19_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3));

-- Location: LCCOMB_X20_Y19_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(2),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder_combout\);

-- Location: FF_X20_Y19_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(2));

-- Location: LCCOMB_X20_Y19_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(2),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder_combout\);

-- Location: FF_X20_Y19_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2));

-- Location: LCCOMB_X20_Y19_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(1),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder_combout\);

-- Location: FF_X20_Y19_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(1));

-- Location: LCCOMB_X20_Y19_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(1),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]~feeder_combout\);

-- Location: FF_X20_Y19_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1));

-- Location: LCCOMB_X20_Y19_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder_combout\);

-- Location: FF_X20_Y19_N31
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(0));

-- Location: FF_X20_Y19_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(0),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0));

-- Location: LCCOMB_X21_Y19_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~39_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0) $ (VCC))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0) & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~40\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0) & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0),
	datad => VCC,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~39_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~40\);

-- Location: LCCOMB_X17_Y21_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~1_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ $ (VCC)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\ = CARRY(\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\,
	datad => VCC,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~1_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\);

-- Location: LCCOMB_X16_Y21_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~1_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~1_combout\);

-- Location: LCCOMB_X31_Y25_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~feeder_combout\);

-- Location: FF_X31_Y25_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~q\);

-- Location: LCCOMB_X31_Y25_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~feeder_combout\);

-- Location: FF_X31_Y25_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~q\);

-- Location: FF_X31_Y25_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\);

-- Location: LCCOMB_X16_Y21_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~1_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y21_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~0_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\ & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y21_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~1_combout\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ & 
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~1_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~0_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~2_combout\);

-- Location: FF_X16_Y21_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal0~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\);

-- Location: LCCOMB_X16_Y21_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\);

-- Location: FF_X16_Y21_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\);

-- Location: LCCOMB_X17_Y21_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~1_cout\ = CARRY(\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\,
	datad => VCC,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~1_cout\);

-- Location: LCCOMB_X17_Y21_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~1_cout\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~1_cout\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~3\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~1_cout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~2_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~3\);

-- Location: FF_X17_Y21_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\);

-- Location: LCCOMB_X17_Y21_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~4_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~3\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~3\ $ (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~5\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~3\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~4_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~5\);

-- Location: FF_X17_Y21_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\);

-- Location: LCCOMB_X17_Y21_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\) # 
-- (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\);

-- Location: LCCOMB_X17_Y21_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~6_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~5\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~5\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~7\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~5\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~6_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~7\);

-- Location: FF_X17_Y21_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\);

-- Location: LCCOMB_X17_Y21_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\ $ 
-- (GND))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\);

-- Location: LCCOMB_X17_Y21_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~7\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~7\ $ (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~9\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~7\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~8_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~9\);

-- Location: FF_X17_Y21_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\);

-- Location: LCCOMB_X17_Y21_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\ & 
-- VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\);

-- Location: LCCOMB_X17_Y21_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~10_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~9\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~9\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~11\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~9\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~10_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~11\);

-- Location: FF_X17_Y21_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\);

-- Location: LCCOMB_X17_Y21_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ & ((GND) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\ $ 
-- (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~1_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\);

-- Location: LCCOMB_X17_Y21_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~12_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~11\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~11\ $ (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~13\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~11\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~12_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~13\);

-- Location: FF_X17_Y21_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\);

-- Location: LCCOMB_X17_Y21_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\) # 
-- (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~2\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~1_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~2\);

-- Location: LCCOMB_X17_Y21_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~14_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~13\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~13\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~15\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~13\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~14_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~15\);

-- Location: FF_X17_Y21_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\);

-- Location: LCCOMB_X17_Y21_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~1_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~2\ $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~2\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~1_combout\);

-- Location: LCCOMB_X17_Y21_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~16_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~15\ $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~15\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~16_combout\);

-- Location: FF_X17_Y21_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add4~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\);

-- Location: LCCOMB_X32_Y25_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X32_Y25_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\);

-- Location: FF_X21_Y19_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~39_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0));

-- Location: LCCOMB_X21_Y19_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~41_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~40\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~40\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~40\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~40\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~42\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~40\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~40\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~40\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~41_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~42\);

-- Location: FF_X21_Y19_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~41_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1));

-- Location: LCCOMB_X21_Y19_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~43_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~42\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~44\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~42\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~42\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~43_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~44\);

-- Location: FF_X21_Y19_N15
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~43_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2));

-- Location: LCCOMB_X21_Y19_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~45_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~44\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~44\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~44\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~44\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~46\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~44\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~44\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~44\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~45_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~46\);

-- Location: FF_X21_Y19_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~45_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3));

-- Location: LCCOMB_X21_Y19_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~47_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~46\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~48\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~46\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~46\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~47_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~48\);

-- Location: FF_X21_Y19_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~47_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4));

-- Location: LCCOMB_X21_Y19_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~49_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~48\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~48\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~48\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~48\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~50\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~48\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~48\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~48\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~49_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~50\);

-- Location: FF_X21_Y19_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~49_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5));

-- Location: LCCOMB_X21_Y19_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~51_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~50\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~52\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~50\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~50\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~50\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~51_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~52\);

-- Location: FF_X21_Y19_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~51_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6));

-- Location: LCCOMB_X21_Y19_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~53_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~52\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~52\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~52\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~52\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~54\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~52\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~52\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~52\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~53_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~54\);

-- Location: FF_X21_Y19_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~53_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7));

-- Location: LCCOMB_X21_Y19_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~55_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~54\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~56\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~54\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~54\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~54\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~55_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~56\);

-- Location: FF_X21_Y19_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~55_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8));

-- Location: LCCOMB_X21_Y19_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~57_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~56\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~56\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~56\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~56\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~58\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~56\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~56\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~56\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~57_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~58\);

-- Location: FF_X21_Y19_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~57_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9));

-- Location: LCCOMB_X21_Y19_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~59_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~58\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~60\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~58\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~58\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~59_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~60\);

-- Location: FF_X21_Y19_N31
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~59_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10));

-- Location: LCCOMB_X21_Y18_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~61_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~60\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~60\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~60\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~60\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~62\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~60\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~60\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~60\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~61_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~62\);

-- Location: FF_X21_Y18_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~61_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11));

-- Location: LCCOMB_X21_Y18_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~63_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~62\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~64\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~62\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~62\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~62\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~63_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~64\);

-- Location: FF_X21_Y18_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~63_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12));

-- Location: LCCOMB_X21_Y18_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~65_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~64\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~64\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~64\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~64\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~66\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~64\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~64\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~64\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~65_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~66\);

-- Location: FF_X21_Y18_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~65_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13));

-- Location: LCCOMB_X21_Y18_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~67_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~66\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~68\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~66\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~66\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~66\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~67_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~68\);

-- Location: FF_X21_Y18_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~67_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14));

-- Location: LCCOMB_X21_Y18_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~69_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~68\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~68\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~68\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~68\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~70\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~68\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~68\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~68\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~69_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~70\);

-- Location: FF_X21_Y18_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~69_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15));

-- Location: LCCOMB_X22_Y18_N24
\lp100_inst|LP100_0002_ast_inst|source|data_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[0]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[0]~feeder_combout\);

-- Location: FF_X22_Y18_N25
\lp100_inst|LP100_0002_ast_inst|source|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(0));

-- Location: LCCOMB_X22_Y19_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(16),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder_combout\);

-- Location: FF_X22_Y19_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(16));

-- Location: FF_X22_Y19_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(16),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16));

-- Location: LCCOMB_X21_Y18_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~71_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~70\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~72\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~70\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~70\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~71_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~72\);

-- Location: FF_X21_Y18_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~71_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16));

-- Location: LCCOMB_X22_Y18_N26
\lp100_inst|LP100_0002_ast_inst|source|data_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[1]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[1]~feeder_combout\);

-- Location: FF_X22_Y18_N27
\lp100_inst|LP100_0002_ast_inst|source|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(1));

-- Location: DSPMULT_X18_Y18_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y18_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X19_Y18_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]~feeder_combout\);

-- Location: FF_X19_Y18_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0));

-- Location: LCCOMB_X19_Y18_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[17]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(17),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[17]~feeder_combout\);

-- Location: FF_X19_Y18_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17));

-- Location: LCCOMB_X20_Y18_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~15_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17) $ (VCC))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17) & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0) & 
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17),
	datad => VCC,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~15_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\);

-- Location: FF_X20_Y18_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~15_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17));

-- Location: LCCOMB_X21_Y18_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~73_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~72\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~72\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~72\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~72\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~74\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~72\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~72\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~72\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~73_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~74\);

-- Location: FF_X21_Y18_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~73_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17));

-- Location: LCCOMB_X22_Y18_N28
\lp100_inst|LP100_0002_ast_inst|source|data_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[2]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[2]~feeder_combout\);

-- Location: FF_X22_Y18_N29
\lp100_inst|LP100_0002_ast_inst|source|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(2));

-- Location: FF_X19_Y19_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(18),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18));

-- Location: FF_X19_Y18_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(1),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1));

-- Location: LCCOMB_X20_Y18_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~17_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~17_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\);

-- Location: FF_X20_Y18_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~17_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18));

-- Location: LCCOMB_X21_Y18_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~75_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~74\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~76\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~74\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~74\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~75_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~76\);

-- Location: FF_X21_Y18_N15
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~75_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18));

-- Location: LCCOMB_X22_Y18_N6
\lp100_inst|LP100_0002_ast_inst|source|data_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[3]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[3]~feeder_combout\);

-- Location: FF_X22_Y18_N7
\lp100_inst|LP100_0002_ast_inst|source|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(3));

-- Location: LCCOMB_X19_Y19_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(19),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder_combout\);

-- Location: FF_X19_Y19_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19));

-- Location: LCCOMB_X19_Y18_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[2]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(2),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[2]~feeder_combout\);

-- Location: FF_X19_Y18_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2));

-- Location: LCCOMB_X20_Y18_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~19_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19) $ 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2) $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~19_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\);

-- Location: FF_X20_Y18_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~19_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19));

-- Location: LCCOMB_X21_Y18_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~77_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~76\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~76\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~76\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~76\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~78\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~76\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~76\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~76\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~77_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~78\);

-- Location: FF_X21_Y18_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~77_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19));

-- Location: FF_X22_Y18_N17
\lp100_inst|LP100_0002_ast_inst|source|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(4));

-- Location: LCCOMB_X19_Y19_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(20),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder_combout\);

-- Location: FF_X19_Y19_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20));

-- Location: LCCOMB_X19_Y18_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(3),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]~feeder_combout\);

-- Location: FF_X19_Y18_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3));

-- Location: LCCOMB_X20_Y18_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~21_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~21_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\);

-- Location: FF_X20_Y18_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~21_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20));

-- Location: LCCOMB_X21_Y18_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~79_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~78\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~80\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~78\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~78\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~78\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~79_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~80\);

-- Location: FF_X21_Y18_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~79_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20));

-- Location: LCCOMB_X22_Y18_N2
\lp100_inst|LP100_0002_ast_inst|source|data_out[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[5]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[5]~feeder_combout\);

-- Location: FF_X22_Y18_N3
\lp100_inst|LP100_0002_ast_inst|source|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(5));

-- Location: FF_X19_Y18_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(4),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4));

-- Location: LCCOMB_X19_Y19_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(21),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder_combout\);

-- Location: FF_X19_Y19_N31
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21));

-- Location: LCCOMB_X20_Y18_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~23_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4) $ 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21) $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~23_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\);

-- Location: FF_X20_Y18_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~23_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21));

-- Location: LCCOMB_X21_Y18_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~81_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~80\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~80\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~80\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~80\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~82\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~80\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~80\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~80\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~81_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~82\);

-- Location: FF_X21_Y18_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~81_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21));

-- Location: LCCOMB_X22_Y18_N4
\lp100_inst|LP100_0002_ast_inst|source|data_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[6]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[6]~feeder_combout\);

-- Location: FF_X22_Y18_N5
\lp100_inst|LP100_0002_ast_inst|source|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(6));

-- Location: FF_X19_Y19_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(22),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22));

-- Location: LCCOMB_X19_Y18_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[5]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(5),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[5]~feeder_combout\);

-- Location: FF_X19_Y18_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5));

-- Location: LCCOMB_X20_Y18_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~25_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~25_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\);

-- Location: FF_X20_Y18_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~25_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22));

-- Location: LCCOMB_X21_Y18_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~83_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~82\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~84\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~82\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~82\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~83_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~84\);

-- Location: FF_X21_Y18_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~83_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22));

-- Location: LCCOMB_X22_Y18_N14
\lp100_inst|LP100_0002_ast_inst|source|data_out[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[7]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[7]~feeder_combout\);

-- Location: FF_X22_Y18_N15
\lp100_inst|LP100_0002_ast_inst|source|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(7));

-- Location: LCCOMB_X19_Y19_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(23),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]~feeder_combout\);

-- Location: FF_X19_Y19_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23));

-- Location: LCCOMB_X19_Y18_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(6),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]~feeder_combout\);

-- Location: FF_X19_Y18_N31
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6));

-- Location: LCCOMB_X20_Y18_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~27_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23) $ 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6) $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~27_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\);

-- Location: FF_X20_Y18_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~27_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23));

-- Location: LCCOMB_X21_Y18_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~85_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~84\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~84\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~84\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~84\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~86\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~84\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~84\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~84\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~85_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~86\);

-- Location: FF_X21_Y18_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~85_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23));

-- Location: LCCOMB_X22_Y18_N8
\lp100_inst|LP100_0002_ast_inst|source|data_out[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[8]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[8]~feeder_combout\);

-- Location: FF_X22_Y18_N9
\lp100_inst|LP100_0002_ast_inst|source|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(8));

-- Location: LCCOMB_X20_Y18_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[24]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(24),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[24]~feeder_combout\);

-- Location: FF_X20_Y18_N31
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[24]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24));

-- Location: FF_X19_Y18_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(7),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7));

-- Location: LCCOMB_X20_Y18_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~29_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~29_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\);

-- Location: FF_X20_Y18_N15
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~29_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(24));

-- Location: LCCOMB_X21_Y18_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~87_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(24) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~86\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~88\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(24)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~86\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(24) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~86\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(24),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~86\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~87_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~88\);

-- Location: FF_X21_Y18_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~87_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(24),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24));

-- Location: FF_X22_Y18_N11
\lp100_inst|LP100_0002_ast_inst|source|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(9));

-- Location: FF_X19_Y18_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(8),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(8));

-- Location: LCCOMB_X20_Y18_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~31_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) $ 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(8) $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(8)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(8) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(8),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~31_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\);

-- Location: FF_X20_Y18_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~31_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25));

-- Location: LCCOMB_X21_Y18_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~89_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~88\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~88\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~88\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~88\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~90\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~88\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~88\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~88\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~89_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~90\);

-- Location: FF_X21_Y18_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~89_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25));

-- Location: LCCOMB_X22_Y18_N20
\lp100_inst|LP100_0002_ast_inst|source|data_out[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[10]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[10]~feeder_combout\);

-- Location: FF_X22_Y18_N21
\lp100_inst|LP100_0002_ast_inst|source|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(10));

-- Location: LCCOMB_X19_Y18_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[9]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(9),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[9]~feeder_combout\);

-- Location: FF_X19_Y18_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9));

-- Location: LCCOMB_X20_Y18_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~33_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~33_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\);

-- Location: FF_X20_Y18_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~33_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(26));

-- Location: LCCOMB_X21_Y18_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~91_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(26) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~90\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~92\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(26)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~90\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(26) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~90\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(26),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~90\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~91_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~92\);

-- Location: FF_X21_Y18_N31
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~91_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(26),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26));

-- Location: LCCOMB_X22_Y18_N22
\lp100_inst|LP100_0002_ast_inst|source|data_out[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[11]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[11]~feeder_combout\);

-- Location: FF_X22_Y18_N23
\lp100_inst|LP100_0002_ast_inst|source|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(11));

-- Location: LCCOMB_X19_Y18_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[10]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(10),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[10]~feeder_combout\);

-- Location: FF_X19_Y18_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(10));

-- Location: LCCOMB_X20_Y18_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~35_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) $ 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(10) $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(10)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(10) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(10),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~35_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\);

-- Location: FF_X20_Y18_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~35_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27));

-- Location: LCCOMB_X21_Y17_N0
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~93_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~92\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~92\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~92\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~92\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~94\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~92\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~92\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~92\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~93_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~94\);

-- Location: FF_X21_Y17_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~93_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27));

-- Location: FF_X22_Y17_N25
\lp100_inst|LP100_0002_ast_inst|source|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(12));

-- Location: FF_X19_Y18_N1
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(11),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11));

-- Location: LCCOMB_X20_Y18_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~37_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~37_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\);

-- Location: FF_X20_Y18_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~37_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(28));

-- Location: LCCOMB_X21_Y17_N2
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~95_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(28) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~94\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~96\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(28) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~94\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(28) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~94\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(28),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~94\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~95_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~96\);

-- Location: FF_X21_Y17_N3
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~95_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(28),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28));

-- Location: LCCOMB_X21_Y17_N24
\lp100_inst|LP100_0002_ast_inst|source|data_out[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[13]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[13]~feeder_combout\);

-- Location: FF_X21_Y17_N25
\lp100_inst|LP100_0002_ast_inst|source|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(13));

-- Location: LCCOMB_X19_Y18_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[12]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(12),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[12]~feeder_combout\);

-- Location: FF_X19_Y18_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(12));

-- Location: LCCOMB_X20_Y18_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~39_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) $ 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(12) $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(12)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(12) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(12),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~39_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\);

-- Location: FF_X20_Y18_N25
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~39_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29));

-- Location: LCCOMB_X21_Y17_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~97_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~96\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~96\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~96\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~96\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~98\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~96\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~96\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~96\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~97_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~98\);

-- Location: FF_X21_Y17_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~97_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29));

-- Location: FF_X22_Y17_N11
\lp100_inst|LP100_0002_ast_inst|source|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(14));

-- Location: LCCOMB_X19_Y18_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[13]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(13),
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[13]~feeder_combout\);

-- Location: FF_X19_Y18_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13));

-- Location: LCCOMB_X20_Y18_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~41_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13) & 
-- ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~42\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13) & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~41_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~42\);

-- Location: FF_X20_Y18_N27
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~41_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(30));

-- Location: LCCOMB_X21_Y17_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~99_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(30) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~98\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~100\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(30) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~98\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(30) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~98\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(30),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~98\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~99_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~100\);

-- Location: FF_X21_Y17_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~99_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(30),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30));

-- Location: FF_X22_Y17_N5
\lp100_inst|LP100_0002_ast_inst|source|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(15));

-- Location: FF_X19_Y18_N15
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(14),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(14));

-- Location: LCCOMB_X20_Y18_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[31]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[31]~43_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) $ 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~42\ $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(14),
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~42\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[31]~43_combout\);

-- Location: FF_X20_Y18_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[31]~43_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31));

-- Location: LCCOMB_X21_Y17_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~101_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~100\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~100\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~100\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~100\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~102\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~100\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~100\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~100\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~101_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~102\);

-- Location: FF_X21_Y17_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~101_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31));

-- Location: LCCOMB_X21_Y17_N26
\lp100_inst|LP100_0002_ast_inst|source|data_out[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[16]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[16]~feeder_combout\);

-- Location: FF_X21_Y17_N27
\lp100_inst|LP100_0002_ast_inst|source|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(16));

-- Location: LCCOMB_X21_Y17_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~103_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~102\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~104\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~102\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~102\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~102\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~103_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~104\);

-- Location: FF_X21_Y17_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~103_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32));

-- Location: LCCOMB_X22_Y17_N22
\lp100_inst|LP100_0002_ast_inst|source|data_out[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[17]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[17]~feeder_combout\);

-- Location: FF_X22_Y17_N23
\lp100_inst|LP100_0002_ast_inst|source|data_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(17));

-- Location: LCCOMB_X21_Y17_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~105_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~104\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~104\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~104\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~104\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~106\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~104\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~104\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~104\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~105_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~106\);

-- Location: FF_X21_Y17_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~105_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33));

-- Location: LCCOMB_X22_Y17_N16
\lp100_inst|LP100_0002_ast_inst|source|data_out[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[18]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[18]~feeder_combout\);

-- Location: FF_X22_Y17_N17
\lp100_inst|LP100_0002_ast_inst|source|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[18]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(18));

-- Location: LCCOMB_X21_Y17_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~107_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~106\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~108\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~106\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~106\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~106\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~107_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~108\);

-- Location: FF_X21_Y17_N15
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~107_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34));

-- Location: LCCOMB_X21_Y17_N28
\lp100_inst|LP100_0002_ast_inst|source|data_out[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[19]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[19]~feeder_combout\);

-- Location: FF_X21_Y17_N29
\lp100_inst|LP100_0002_ast_inst|source|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(19));

-- Location: LCCOMB_X21_Y17_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~109_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~108\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~108\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~108\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~108\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~110\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~108\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~108\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~108\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~109_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~110\);

-- Location: FF_X21_Y17_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~109_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35));

-- Location: FF_X22_Y17_N3
\lp100_inst|LP100_0002_ast_inst|source|data_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(20));

-- Location: LCCOMB_X21_Y17_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~111_combout\ = ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36) $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~110\)))) # (GND)
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~112\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~110\))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~110\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~110\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~111_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~112\);

-- Location: FF_X21_Y17_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~111_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36));

-- Location: LCCOMB_X22_Y17_N12
\lp100_inst|LP100_0002_ast_inst|source|data_out[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[21]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[21]~feeder_combout\);

-- Location: FF_X22_Y17_N13
\lp100_inst|LP100_0002_ast_inst|source|data_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(21));

-- Location: LCCOMB_X21_Y17_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~113_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37) & 
-- (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~112\ & VCC)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~112\)))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~112\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37) & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~112\) # (GND)))))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~114\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37) & 
-- !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~112\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~112\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37),
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~112\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~113_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~114\);

-- Location: FF_X21_Y17_N21
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~113_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37));

-- Location: LCCOMB_X22_Y17_N6
\lp100_inst|LP100_0002_ast_inst|source|data_out[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[22]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[22]~feeder_combout\);

-- Location: FF_X22_Y17_N7
\lp100_inst|LP100_0002_ast_inst|source|data_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[22]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(22));

-- Location: LCCOMB_X21_Y17_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~115_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~114\ $ 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(38),
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~114\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~115_combout\);

-- Location: FF_X21_Y17_N23
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~115_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(38));

-- Location: LCCOMB_X21_Y17_N30
\lp100_inst|LP100_0002_ast_inst|source|data_out[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_out[23]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(38),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_out[23]~feeder_combout\);

-- Location: FF_X21_Y17_N31
\lp100_inst|LP100_0002_ast_inst|source|data_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_out[23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_out\(23));

-- Location: LCCOMB_X32_Y25_N4
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~1_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\ = CARRY(!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~1_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\);

-- Location: LCCOMB_X31_Y25_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~1_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~1_combout\);

-- Location: LCCOMB_X32_Y25_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\ & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~1_combout\);

-- Location: LCCOMB_X32_Y25_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~0_combout\ = (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\ & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\,
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~0_combout\);

-- Location: LCCOMB_X32_Y25_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~1_combout\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~0_combout\ & 
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~1_combout\,
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~0_combout\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~2_combout\);

-- Location: FF_X32_Y25_N29
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Equal2~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\);

-- Location: LCCOMB_X31_Y25_N28
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\);

-- Location: FF_X31_Y25_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\);

-- Location: LCCOMB_X31_Y25_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~1_cout\ = CARRY(\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\,
	datad => VCC,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~1_cout\);

-- Location: LCCOMB_X31_Y25_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~2_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~1_cout\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~1_cout\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~3\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~1_cout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~2_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~3\);

-- Location: FF_X31_Y25_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\);

-- Location: LCCOMB_X31_Y25_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~4_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~3\ $ (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\ & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~3\)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~5\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~3\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~3\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~4_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~5\);

-- Location: LCCOMB_X32_Y25_N30
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~4_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~4_wirecell_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~4_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~4_wirecell_combout\);

-- Location: FF_X32_Y25_N5
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~4_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\);

-- Location: LCCOMB_X32_Y25_N6
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\) # 
-- (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\);

-- Location: LCCOMB_X31_Y25_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~6_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~5\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~5\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~7\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~5\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~6_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~7\);

-- Location: FF_X32_Y25_N7
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\);

-- Location: LCCOMB_X32_Y25_N8
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\ $ 
-- (GND))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\);

-- Location: LCCOMB_X31_Y25_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~8_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~7\))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~7\ $ (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~9\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~7\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~8_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~9\);

-- Location: FF_X32_Y25_N9
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\);

-- Location: LCCOMB_X32_Y25_N10
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\ $ 
-- (GND))) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\);

-- Location: LCCOMB_X31_Y25_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~10_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~9\)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~9\ & VCC))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~11\ = CARRY((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~9\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~10_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~11\);

-- Location: LCCOMB_X32_Y25_N26
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~10_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~10_wirecell_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~10_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~10_wirecell_combout\);

-- Location: FF_X32_Y25_N11
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~10_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\);

-- Location: LCCOMB_X32_Y25_N12
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\ & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\) # 
-- (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~1_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\);

-- Location: LCCOMB_X31_Y25_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~12_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~11\ $ (GND))) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\ & ((GND) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~11\)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~13\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~11\) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~11\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~12_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~13\);

-- Location: LCCOMB_X32_Y25_N20
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~12_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~12_wirecell_combout\ = !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~12_combout\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~12_wirecell_combout\);

-- Location: FF_X32_Y25_N13
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~12_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\);

-- Location: LCCOMB_X32_Y25_N14
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~1_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ & 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\)) # (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ & ((\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\) # 
-- (GND)))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~2\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~1_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~2\);

-- Location: LCCOMB_X31_Y25_N22
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~14_combout\ = (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ & (\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~13\ & VCC)) # 
-- (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ & (!\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~13\))
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~15\ = CARRY((!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ & !\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\,
	datad => VCC,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~13\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~14_combout\,
	cout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~15\);

-- Location: FF_X32_Y25_N15
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\);

-- Location: LCCOMB_X32_Y25_N16
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~1_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~2\ $ (!\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~2\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~1_combout\);

-- Location: LCCOMB_X31_Y25_N24
\lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~16_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~15\ $ (\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\,
	cin => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~15\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~16_combout\);

-- Location: FF_X32_Y25_N17
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~1_combout\,
	asdata => \lp100_inst|LP100_0002_ast_inst|hpfircore|Add16~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp100_inst|LP100_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\);

-- Location: LCCOMB_X32_Y25_N18
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q\(0) = (\lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\ & \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp100_inst|LP100_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\,
	combout => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q\(0));

-- Location: FF_X32_Y25_N19
\lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q\(0),
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q\(0));

-- Location: LCCOMB_X32_Y25_N0
\lp100_inst|LP100_0002_ast_inst|source|data_valid~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|data_valid~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|source|data_valid~feeder_combout\);

-- Location: FF_X32_Y25_N1
\lp100_inst|LP100_0002_ast_inst|source|data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|data_valid~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|data_valid~q\);

-- Location: IOIBUF_X41_Y24_N1
\ast_sink_error[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_error(0),
	o => \ast_sink_error[0]~input_o\);

-- Location: LCCOMB_X39_Y24_N18
\lp100_inst|LP100_0002_ast_inst|sink|at_sink_error_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|sink|at_sink_error_int~0_combout\ = (\ast_sink_valid~input_o\ & \ast_sink_error[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ast_sink_valid~input_o\,
	datac => \ast_sink_error[0]~input_o\,
	combout => \lp100_inst|LP100_0002_ast_inst|sink|at_sink_error_int~0_combout\);

-- Location: FF_X39_Y24_N19
\lp100_inst|LP100_0002_ast_inst|sink|packet_error_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|sink|at_sink_error_int~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|sink|packet_error_s\(0));

-- Location: LCCOMB_X39_Y24_N16
\lp100_inst|LP100_0002_ast_inst|source|at_source_error_s[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp100_inst|LP100_0002_ast_inst|source|at_source_error_s[0]~feeder_combout\ = \lp100_inst|LP100_0002_ast_inst|sink|packet_error_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp100_inst|LP100_0002_ast_inst|sink|packet_error_s\(0),
	combout => \lp100_inst|LP100_0002_ast_inst|source|at_source_error_s[0]~feeder_combout\);

-- Location: FF_X39_Y24_N17
\lp100_inst|LP100_0002_ast_inst|source|at_source_error_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp100_inst|LP100_0002_ast_inst|source|at_source_error_s[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp100_inst|LP100_0002_ast_inst|source|at_source_error_s\(0));

-- Location: IOIBUF_X41_Y15_N8
\ast_sink_error[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_error(1),
	o => \ast_sink_error[1]~input_o\);

ww_ast_source_data(0) <= \ast_source_data[0]~output_o\;

ww_ast_source_data(1) <= \ast_source_data[1]~output_o\;

ww_ast_source_data(2) <= \ast_source_data[2]~output_o\;

ww_ast_source_data(3) <= \ast_source_data[3]~output_o\;

ww_ast_source_data(4) <= \ast_source_data[4]~output_o\;

ww_ast_source_data(5) <= \ast_source_data[5]~output_o\;

ww_ast_source_data(6) <= \ast_source_data[6]~output_o\;

ww_ast_source_data(7) <= \ast_source_data[7]~output_o\;

ww_ast_source_data(8) <= \ast_source_data[8]~output_o\;

ww_ast_source_data(9) <= \ast_source_data[9]~output_o\;

ww_ast_source_data(10) <= \ast_source_data[10]~output_o\;

ww_ast_source_data(11) <= \ast_source_data[11]~output_o\;

ww_ast_source_data(12) <= \ast_source_data[12]~output_o\;

ww_ast_source_data(13) <= \ast_source_data[13]~output_o\;

ww_ast_source_data(14) <= \ast_source_data[14]~output_o\;

ww_ast_source_data(15) <= \ast_source_data[15]~output_o\;

ww_ast_source_data(16) <= \ast_source_data[16]~output_o\;

ww_ast_source_data(17) <= \ast_source_data[17]~output_o\;

ww_ast_source_data(18) <= \ast_source_data[18]~output_o\;

ww_ast_source_data(19) <= \ast_source_data[19]~output_o\;

ww_ast_source_data(20) <= \ast_source_data[20]~output_o\;

ww_ast_source_data(21) <= \ast_source_data[21]~output_o\;

ww_ast_source_data(22) <= \ast_source_data[22]~output_o\;

ww_ast_source_data(23) <= \ast_source_data[23]~output_o\;

ww_ast_source_valid <= \ast_source_valid~output_o\;

ww_ast_source_error(0) <= \ast_source_error[0]~output_o\;

ww_ast_source_error(1) <= \ast_source_error[1]~output_o\;
END structure;


