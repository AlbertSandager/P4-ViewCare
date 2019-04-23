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

-- DATE "04/23/2019 13:53:33"

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
	clk : IN std_logic;
	reset_n : IN std_logic;
	ast_sink_data : IN std_logic_vector(23 DOWNTO 0);
	ast_sink_valid : IN std_logic;
	ast_sink_error : IN std_logic_vector(1 DOWNTO 0);
	ast_source_data : OUT std_logic_vector(23 DOWNTO 0);
	ast_source_valid : OUT std_logic;
	ast_source_error : OUT std_logic_vector(1 DOWNTO 0)
	);
END fir;

-- Design Ports Information
-- ast_sink_error[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[2]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[4]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[6]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[8]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[9]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[10]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[11]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[12]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[13]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[14]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[15]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[16]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[17]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[18]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[19]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[20]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[21]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[22]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[23]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_valid	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_error[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_error[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_valid	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_error[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[7]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[8]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[9]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[11]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[12]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[13]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[14]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[15]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[16]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[17]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[18]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[19]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[20]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[21]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[22]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[23]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_ast_sink_data : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_ast_sink_valid : std_logic;
SIGNAL ww_ast_sink_error : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ast_source_data : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_ast_source_valid : std_logic;
SIGNAL ww_ast_source_error : std_logic_vector(1 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~2\ : std_logic;
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
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\ : std_logic;
SIGNAL \ast_sink_data[0]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~2_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~_wirecell_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~3_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~4_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~2_cout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~3_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~14_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~4\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~5_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~13_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add0~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~6\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~7_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~12_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~11_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~8\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~9_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add1~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add2~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~11_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~2_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~14_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~5_cout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~6_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~_wirecell_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~7\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~8_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add9~2_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~9\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~10_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add9~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~11\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~12_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add9~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~4_cout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~5_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~2_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add11~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~6\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~7_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~3_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~4_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~8\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~9_combout\ : std_logic;
SIGNAL \ast_sink_data[1]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~q\ : std_logic;
SIGNAL \ast_sink_data[2]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~q\ : std_logic;
SIGNAL \ast_sink_data[3]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][3]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~q\ : std_logic;
SIGNAL \ast_sink_data[4]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][4]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~q\ : std_logic;
SIGNAL \ast_sink_data[5]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~q\ : std_logic;
SIGNAL \ast_sink_data[6]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][6]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~q\ : std_logic;
SIGNAL \ast_sink_data[7]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~q\ : std_logic;
SIGNAL \ast_sink_data[8]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][8]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~q\ : std_logic;
SIGNAL \ast_sink_data[9]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~q\ : std_logic;
SIGNAL \ast_sink_data[10]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]~q\ : std_logic;
SIGNAL \ast_sink_data[11]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~q\ : std_logic;
SIGNAL \ast_sink_data[12]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]~q\ : std_logic;
SIGNAL \ast_sink_data[13]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~q\ : std_logic;
SIGNAL \ast_sink_data[14]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~q\ : std_logic;
SIGNAL \ast_sink_data[15]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][15]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]~q\ : std_logic;
SIGNAL \ast_sink_data[16]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~q\ : std_logic;
SIGNAL \ast_sink_data[17]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~q\ : std_logic;
SIGNAL \ast_sink_data[18]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][18]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~q\ : std_logic;
SIGNAL \ast_sink_data[19]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~q\ : std_logic;
SIGNAL \ast_sink_data[20]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~q\ : std_logic;
SIGNAL \ast_sink_data[21]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]~q\ : std_logic;
SIGNAL \ast_sink_data[22]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~q\ : std_logic;
SIGNAL \ast_sink_data[23]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i~2_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~3_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~4_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Equal1~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Mux3~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Mux2~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~24_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add3~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~2_cout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~3_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~4\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Equal0~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Equal0~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~25\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~26_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~27\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~28_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[2]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~29\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~30_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~31\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~32_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~33\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~34_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[5]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~35\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~36_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~37\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~38_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~39\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~40_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~41\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~42_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[10]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~43\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~44_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~45\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~46_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~47\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~48_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~49\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~50_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~51\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~52_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~53\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~54_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[15]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~55\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~56_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~7_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~57\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~58_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~8\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~9_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~59\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~60_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~10\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~11_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~61\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~62_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[19]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~12\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~13_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~63\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~64_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[20]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~14\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~15_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~65\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~66_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[21]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~16\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~17_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~67\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~68_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~18\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~19_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~69\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~70_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out[23]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Add15~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~2_cout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~3_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~4\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Equal2~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|Equal2~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_valid~q\ : std_logic;
SIGNAL \ast_sink_error[0]~input_o\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|sink|at_sink_error_int~0_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|source|at_source_error_s[0]~feeder_combout\ : std_logic;
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|sink|packet_error_s\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|source|data_out\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|source|at_source_error_s\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \fir_inst|fir_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_cm0_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~inputclkctrl_outclk\ : std_logic;

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

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAA_bus\ <= (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT25\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT24\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT23\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT22\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT21\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT20\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT19\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT18\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT17\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT16\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT15\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT14\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT13\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT12\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT11\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT10\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT9\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT8\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT7\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT6\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT5\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT4\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT3\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT2\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT1\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~dataout\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~9\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~8\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~7\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~6\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~5\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~4\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~3\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~2\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~1\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~0\);

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~0\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~1\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~2\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~3\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~4\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~5\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~6\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~7\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~8\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~9\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(0) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(1) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(2) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(3) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(4) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(5) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(6) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(7) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(8) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(9) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(10) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(11) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(12) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(13) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(14) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(15) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(16) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(17) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(18) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(19) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(20) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(21) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(22) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(23) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(24) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(25) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAA_bus\ <= (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT14\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT13\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT12\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT11\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT10\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT9\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT8\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT7\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT6\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT5\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT4\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT3\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT2\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT1\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~dataout\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~2\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~1\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~0\);

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~0\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~1\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~2\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(0) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(1) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(2) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(3) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(4) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(5) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(6) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(7) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(8) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(9) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(10) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(11) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(12) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(13) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(14) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(17);

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(16) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(15) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(14) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(13) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(12) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(11) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(10) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(9) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(8) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(7) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(6) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(5) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(4) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(3) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(2) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(1) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(0));

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAB_bus\ <= (gnd & vcc & vcc & vcc & vcc & vcc & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(1) & NOT 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(0) & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~0\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~1\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~2\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~3\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~4\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~5\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~6\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~7\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~8\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~9\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~dataout\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT1\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT2\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT3\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT4\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT5\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT6\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT7\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT8\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT9\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT10\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT11\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT12\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT13\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT14\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT15\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT16\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT17\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT18\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT19\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT20\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT21\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT22\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT23\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT24\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT25\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & vcc & vcc & vcc & vcc & vcc & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(1) & NOT 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(0) & gnd);

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAB_bus\ <= (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(23) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(22) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(21) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(20) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(19) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(18) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(17) & gnd & gnd);

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~0\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~1\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~2\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~dataout\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT1\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT2\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT3\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT4\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT5\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT6\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT7\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT8\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT9\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT10\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT11\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT12\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT13\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT14\ <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(17);

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]~q\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~q\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]~q\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]~q\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~q\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~q\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~q\ & 
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]~q\);

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~_wirecell_combout\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\);

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(3) & 
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(2) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(1) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(0));

\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(0) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(1) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(2) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(3) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(4) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(5) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(6) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(7) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(8) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(9) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(10) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(11) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(12) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(13) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(14) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(15) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(16) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(17) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(18) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(19) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(20) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(21) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(22) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(23) <= \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);
\fir_inst|fir_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_cm0_q\(0) <= NOT \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(0);
\ALT_INV_reset_n~inputclkctrl_outclk\ <= NOT \reset_n~inputclkctrl_outclk\;

-- Location: IOOBUF_X16_Y0_N16
\ast_source_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(0),
	devoe => ww_devoe,
	o => \ast_source_data[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\ast_source_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(1),
	devoe => ww_devoe,
	o => \ast_source_data[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\ast_source_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(2),
	devoe => ww_devoe,
	o => \ast_source_data[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\ast_source_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(3),
	devoe => ww_devoe,
	o => \ast_source_data[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\ast_source_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(4),
	devoe => ww_devoe,
	o => \ast_source_data[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\ast_source_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(5),
	devoe => ww_devoe,
	o => \ast_source_data[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\ast_source_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(6),
	devoe => ww_devoe,
	o => \ast_source_data[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\ast_source_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(7),
	devoe => ww_devoe,
	o => \ast_source_data[7]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\ast_source_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(8),
	devoe => ww_devoe,
	o => \ast_source_data[8]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\ast_source_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(9),
	devoe => ww_devoe,
	o => \ast_source_data[9]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\ast_source_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(10),
	devoe => ww_devoe,
	o => \ast_source_data[10]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\ast_source_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(11),
	devoe => ww_devoe,
	o => \ast_source_data[11]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\ast_source_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(12),
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
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(13),
	devoe => ww_devoe,
	o => \ast_source_data[13]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\ast_source_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(14),
	devoe => ww_devoe,
	o => \ast_source_data[14]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\ast_source_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(15),
	devoe => ww_devoe,
	o => \ast_source_data[15]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\ast_source_data[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(16),
	devoe => ww_devoe,
	o => \ast_source_data[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\ast_source_data[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(17),
	devoe => ww_devoe,
	o => \ast_source_data[17]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\ast_source_data[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(18),
	devoe => ww_devoe,
	o => \ast_source_data[18]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\ast_source_data[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(19),
	devoe => ww_devoe,
	o => \ast_source_data[19]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ast_source_data[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(20),
	devoe => ww_devoe,
	o => \ast_source_data[20]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\ast_source_data[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(21),
	devoe => ww_devoe,
	o => \ast_source_data[21]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\ast_source_data[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(22),
	devoe => ww_devoe,
	o => \ast_source_data[22]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\ast_source_data[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_out\(23),
	devoe => ww_devoe,
	o => \ast_source_data[23]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\ast_source_valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|data_valid~q\,
	devoe => ww_devoe,
	o => \ast_source_valid~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\ast_source_error[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fir_inst|fir_0002_ast_inst|source|at_source_error_s\(0),
	devoe => ww_devoe,
	o => \ast_source_error[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
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

-- Location: FF_X23_Y19_N9
\fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_valid~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]~q\);

-- Location: FF_X23_Y19_N23
\fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[2][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]~q\);

-- Location: FF_X23_Y19_N13
\fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[1][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\);

-- Location: IOIBUF_X32_Y29_N22
\ast_sink_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(0),
	o => \ast_sink_data[0]~input_o\);

-- Location: LCCOMB_X26_Y22_N12
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~feeder_combout\ = \ast_sink_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[0]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~feeder_combout\);

-- Location: FF_X26_Y22_N13
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~q\);

-- Location: LCCOMB_X26_Y22_N22
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~feeder_combout\);

-- Location: FF_X26_Y22_N23
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~q\);

-- Location: FF_X26_Y22_N17
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][0]~q\);

-- Location: LCCOMB_X23_Y19_N6
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~0_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0) $ (\fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~0_combout\);

-- Location: FF_X23_Y19_N7
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0));

-- Location: LCCOMB_X23_Y19_N26
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\ = !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\);

-- Location: LCCOMB_X23_Y19_N16
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~1_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) $ (((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0) & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~1_combout\);

-- Location: FF_X23_Y19_N17
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1));

-- Location: LCCOMB_X23_Y19_N18
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~2_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2) $ (((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~2_combout\);

-- Location: FF_X23_Y19_N19
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2));

-- Location: LCCOMB_X23_Y19_N28
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~_wirecell_combout\ = !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~_wirecell_combout\);

-- Location: LCCOMB_X23_Y19_N12
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~3_combout\ = (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\ & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~3_combout\);

-- Location: LCCOMB_X23_Y19_N20
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~4_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~3_combout\ $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~3_combout\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~4_combout\);

-- Location: FF_X23_Y19_N21
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3));

-- Location: LCCOMB_X27_Y19_N10
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\ $ 
-- (((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0_combout\);

-- Location: FF_X27_Y19_N11
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\);

-- Location: LCCOMB_X27_Y19_N20
\fir_inst|fir_0002_ast_inst|hpfircore|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~2_cout\ = CARRY(!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\,
	datad => VCC,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~2_cout\);

-- Location: LCCOMB_X27_Y19_N22
\fir_inst|fir_0002_ast_inst|hpfircore|Add1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~3_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ & (\fir_inst|fir_0002_ast_inst|hpfircore|Add1~2_cout\ & VCC)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|Add1~2_cout\))
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~4\ = CARRY((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ & !\fir_inst|fir_0002_ast_inst|hpfircore|Add1~2_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\,
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~2_cout\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~3_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~4\);

-- Location: LCCOMB_X27_Y19_N6
\fir_inst|fir_0002_ast_inst|hpfircore|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~14_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & (\fir_inst|fir_0002_ast_inst|hpfircore|Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~3_combout\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~14_combout\);

-- Location: FF_X27_Y19_N7
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\);

-- Location: LCCOMB_X27_Y19_N24
\fir_inst|fir_0002_ast_inst|hpfircore|Add1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~5_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\ & ((GND) # (!\fir_inst|fir_0002_ast_inst|hpfircore|Add1~4\))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\ & (\fir_inst|fir_0002_ast_inst|hpfircore|Add1~4\ $ (GND)))
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~6\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\) # (!\fir_inst|fir_0002_ast_inst|hpfircore|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\,
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~4\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~5_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~6\);

-- Location: LCCOMB_X27_Y19_N12
\fir_inst|fir_0002_ast_inst|hpfircore|Add1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~13_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ $ 
-- ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\)))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & (((\fir_inst|fir_0002_ast_inst|hpfircore|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~5_combout\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~13_combout\);

-- Location: FF_X27_Y19_N13
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~13_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\);

-- Location: LCCOMB_X27_Y19_N30
\fir_inst|fir_0002_ast_inst|hpfircore|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add0~0_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add0~0_combout\);

-- Location: LCCOMB_X27_Y19_N26
\fir_inst|fir_0002_ast_inst|hpfircore|Add1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~7_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|Add1~6\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ & (\fir_inst|fir_0002_ast_inst|hpfircore|Add1~6\ & VCC))
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~8\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ & !\fir_inst|fir_0002_ast_inst|hpfircore|Add1~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\,
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~6\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~7_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~8\);

-- Location: LCCOMB_X27_Y19_N18
\fir_inst|fir_0002_ast_inst|hpfircore|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~12_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|Add0~0_combout\)))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|Add1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~7_combout\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|Add0~0_combout\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~12_combout\);

-- Location: FF_X27_Y19_N19
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\);

-- Location: LCCOMB_X27_Y19_N0
\fir_inst|fir_0002_ast_inst|hpfircore|Add1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~11_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|Add0~0_combout\ & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & (((\fir_inst|fir_0002_ast_inst|hpfircore|Add1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|Add0~0_combout\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~9_combout\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~11_combout\);

-- Location: FF_X27_Y19_N1
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~11_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\);

-- Location: LCCOMB_X27_Y19_N28
\fir_inst|fir_0002_ast_inst|hpfircore|Add1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~9_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|Add1~8\ $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~8\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~9_combout\);

-- Location: LCCOMB_X27_Y19_N16
\fir_inst|fir_0002_ast_inst|hpfircore|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add1~0_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ & 
-- ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~0_combout\);

-- Location: LCCOMB_X27_Y19_N14
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & ((\fir_inst|fir_0002_ast_inst|hpfircore|Add1~0_combout\) # ((\fir_inst|fir_0002_ast_inst|hpfircore|Add1~9_combout\ & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~9_combout\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|Add1~0_combout\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0_combout\);

-- Location: FF_X27_Y19_N15
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0));

-- Location: LCCOMB_X27_Y19_N4
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0_combout\ = \ast_sink_valid~input_o\ $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0) $ (((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0) & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0),
	datab => \ast_sink_valid~input_o\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0_combout\);

-- Location: FF_X27_Y19_N5
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0));

-- Location: LCCOMB_X27_Y19_N2
\fir_inst|fir_0002_ast_inst|hpfircore|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add2~0_combout\ = (\ast_sink_valid~input_o\ & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0)) # 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0)))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0)))))) # (!\ast_sink_valid~input_o\ & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0),
	datab => \ast_sink_valid~input_o\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add2~0_combout\);

-- Location: FF_X27_Y19_N3
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|Add2~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1));

-- Location: LCCOMB_X27_Y19_N8
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder_combout\);

-- Location: FF_X27_Y19_N9
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_q\(0));

-- Location: FF_X24_Y19_N25
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_run_q\(0),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\);

-- Location: LCCOMB_X24_Y19_N18
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~0_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~0_combout\);

-- Location: FF_X24_Y19_N19
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0));

-- Location: LCCOMB_X24_Y19_N0
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~11_combout\ = !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~11_combout\);

-- Location: FF_X24_Y19_N1
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~11_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(0));

-- Location: LCCOMB_X24_Y19_N30
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~1_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) $ (((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~1_combout\);

-- Location: FF_X24_Y19_N31
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1));

-- Location: LCCOMB_X24_Y19_N20
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~2_combout\ = !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~2_combout\);

-- Location: LCCOMB_X22_Y19_N10
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~14_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0) $ (((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4) & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~14_combout\);

-- Location: FF_X22_Y19_N11
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0));

-- Location: LCCOMB_X22_Y19_N12
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~5_cout\ = CARRY(!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0),
	datad => VCC,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~5_cout\);

-- Location: LCCOMB_X22_Y19_N14
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~6_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~5_cout\ & VCC)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~5_cout\))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~7\ = CARRY((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1) & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~5_cout\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~6_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~7\);

-- Location: LCCOMB_X22_Y19_N26
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~_wirecell_combout\ = !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~_wirecell_combout\);

-- Location: FF_X22_Y19_N15
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~6_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4),
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1));

-- Location: LCCOMB_X22_Y19_N16
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~8_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2) & ((GND) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~7\))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~7\ $ (GND)))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~9\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~7\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~8_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~9\);

-- Location: LCCOMB_X22_Y19_N8
\fir_inst|fir_0002_ast_inst|hpfircore|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add9~2_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add9~2_combout\);

-- Location: FF_X22_Y19_N17
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~8_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|Add9~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4),
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2));

-- Location: LCCOMB_X22_Y19_N18
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~10_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~9\ $ (GND))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~9\ & VCC))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~11\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~9\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~10_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~11\);

-- Location: LCCOMB_X22_Y19_N30
\fir_inst|fir_0002_ast_inst|hpfircore|Add9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add9~1_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) $ (((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add9~1_combout\);

-- Location: FF_X22_Y19_N19
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~10_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|Add9~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4),
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3));

-- Location: LCCOMB_X22_Y19_N20
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~12_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~11\ $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4),
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~11\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~12_combout\);

-- Location: LCCOMB_X22_Y19_N4
\fir_inst|fir_0002_ast_inst|hpfircore|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add9~0_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4) $ ((((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2) & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add9~0_combout\);

-- Location: FF_X22_Y19_N21
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~12_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|Add9~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4),
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4));

-- Location: LCCOMB_X22_Y19_N0
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~0_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~0_combout\);

-- Location: FF_X24_Y19_N21
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1));

-- Location: LCCOMB_X24_Y19_N6
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~4_cout\ = CARRY(\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	datad => VCC,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~4_cout\);

-- Location: LCCOMB_X24_Y19_N8
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~5_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1) & 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~4_cout\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~4_cout\ & VCC)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~4_cout\) # (GND))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~4_cout\))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~6\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~4_cout\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~4_cout\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~5_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~6\);

-- Location: FF_X24_Y19_N9
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(1));

-- Location: LCCOMB_X24_Y19_N2
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~2_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) $ (((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~2_combout\);

-- Location: FF_X24_Y19_N3
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2));

-- Location: LCCOMB_X24_Y19_N16
\fir_inst|fir_0002_ast_inst|hpfircore|Add11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add11~0_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add11~0_combout\);

-- Location: FF_X24_Y19_N17
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|Add11~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2));

-- Location: LCCOMB_X24_Y19_N10
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~7_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2) $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~6\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~8\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~6\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~6\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~7_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~8\);

-- Location: FF_X24_Y19_N11
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~7_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(2));

-- Location: LCCOMB_X24_Y19_N24
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~3_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~3_combout\);

-- Location: LCCOMB_X24_Y19_N22
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~4_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~3_combout\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~4_combout\);

-- Location: FF_X24_Y19_N23
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3));

-- Location: LCCOMB_X24_Y19_N28
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~1_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3) $ (((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~0_combout\ & 
-- ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[1]~0_combout\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(2),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(1),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~1_combout\);

-- Location: FF_X24_Y19_N29
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3));

-- Location: LCCOMB_X24_Y19_N12
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~9_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~8\ $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3),
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~8\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~9_combout\);

-- Location: FF_X24_Y19_N13
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~9_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(3));

-- Location: IOIBUF_X41_Y22_N15
\ast_sink_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(1),
	o => \ast_sink_data[1]~input_o\);

-- Location: LCCOMB_X26_Y22_N6
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]~feeder_combout\ = \ast_sink_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[1]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]~feeder_combout\);

-- Location: FF_X26_Y22_N7
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]~q\);

-- Location: LCCOMB_X26_Y22_N24
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][1]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~feeder_combout\);

-- Location: FF_X26_Y22_N25
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~q\);

-- Location: LCCOMB_X26_Y22_N18
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][1]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~feeder_combout\);

-- Location: FF_X26_Y22_N19
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][1]~q\);

-- Location: IOIBUF_X21_Y29_N22
\ast_sink_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(2),
	o => \ast_sink_data[2]~input_o\);

-- Location: LCCOMB_X26_Y19_N20
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~feeder_combout\ = \ast_sink_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[2]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~feeder_combout\);

-- Location: FF_X26_Y19_N21
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~q\);

-- Location: LCCOMB_X26_Y19_N6
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][2]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~feeder_combout\);

-- Location: FF_X26_Y19_N7
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~q\);

-- Location: LCCOMB_X26_Y19_N8
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][2]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~feeder_combout\);

-- Location: FF_X26_Y19_N9
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][2]~q\);

-- Location: IOIBUF_X28_Y29_N1
\ast_sink_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(3),
	o => \ast_sink_data[3]~input_o\);

-- Location: LCCOMB_X26_Y19_N22
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]~feeder_combout\ = \ast_sink_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[3]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]~feeder_combout\);

-- Location: FF_X26_Y19_N23
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]~q\);

-- Location: FF_X26_Y19_N1
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][3]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][3]~q\);

-- Location: LCCOMB_X26_Y19_N10
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][3]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~feeder_combout\);

-- Location: FF_X26_Y19_N11
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][3]~q\);

-- Location: IOIBUF_X30_Y29_N1
\ast_sink_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(4),
	o => \ast_sink_data[4]~input_o\);

-- Location: FF_X26_Y22_N1
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][4]\ : dffeas
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
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][4]~q\);

-- Location: LCCOMB_X26_Y22_N2
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][4]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~feeder_combout\);

-- Location: FF_X26_Y22_N3
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~q\);

-- Location: LCCOMB_X26_Y22_N20
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][4]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~feeder_combout\);

-- Location: FF_X26_Y22_N21
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][4]~q\);

-- Location: IOIBUF_X21_Y29_N8
\ast_sink_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(5),
	o => \ast_sink_data[5]~input_o\);

-- Location: FF_X24_Y27_N13
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[5]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~q\);

-- Location: LCCOMB_X24_Y27_N6
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][5]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~feeder_combout\);

-- Location: FF_X24_Y27_N7
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~q\);

-- Location: LCCOMB_X24_Y27_N0
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][5]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~feeder_combout\);

-- Location: FF_X24_Y27_N1
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][5]~q\);

-- Location: IOIBUF_X28_Y29_N15
\ast_sink_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(6),
	o => \ast_sink_data[6]~input_o\);

-- Location: LCCOMB_X24_Y27_N22
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~feeder_combout\ = \ast_sink_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[6]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~feeder_combout\);

-- Location: FF_X24_Y27_N23
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~q\);

-- Location: FF_X24_Y27_N25
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][6]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][6]~q\);

-- Location: LCCOMB_X24_Y27_N26
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][6]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~feeder_combout\);

-- Location: FF_X24_Y27_N27
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][6]~q\);

-- Location: IOIBUF_X26_Y29_N8
\ast_sink_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(7),
	o => \ast_sink_data[7]~input_o\);

-- Location: LCCOMB_X26_Y21_N12
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~feeder_combout\ = \ast_sink_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[7]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~feeder_combout\);

-- Location: FF_X26_Y21_N13
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~q\);

-- Location: LCCOMB_X26_Y21_N6
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][7]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~feeder_combout\);

-- Location: FF_X26_Y21_N7
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~q\);

-- Location: LCCOMB_X26_Y21_N16
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][7]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~feeder_combout\);

-- Location: FF_X26_Y21_N17
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][7]~q\);

-- Location: IOIBUF_X41_Y22_N22
\ast_sink_data[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(8),
	o => \ast_sink_data[8]~input_o\);

-- Location: LCCOMB_X26_Y21_N22
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~feeder_combout\ = \ast_sink_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[8]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~feeder_combout\);

-- Location: FF_X26_Y21_N23
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~q\);

-- Location: FF_X26_Y21_N1
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][8]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][8]~q\);

-- Location: LCCOMB_X26_Y21_N18
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][8]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~feeder_combout\);

-- Location: FF_X26_Y21_N19
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][8]~q\);

-- Location: IOIBUF_X23_Y29_N29
\ast_sink_data[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(9),
	o => \ast_sink_data[9]~input_o\);

-- Location: LCCOMB_X24_Y27_N16
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~feeder_combout\ = \ast_sink_data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[9]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~feeder_combout\);

-- Location: FF_X24_Y27_N17
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~q\);

-- Location: LCCOMB_X24_Y27_N10
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][9]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~feeder_combout\);

-- Location: FF_X24_Y27_N11
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~q\);

-- Location: LCCOMB_X24_Y27_N4
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][9]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~feeder_combout\);

-- Location: FF_X24_Y27_N5
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][9]~q\);

-- Location: IOIBUF_X28_Y29_N29
\ast_sink_data[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(10),
	o => \ast_sink_data[10]~input_o\);

-- Location: LCCOMB_X27_Y22_N12
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~feeder_combout\ = \ast_sink_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[10]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~feeder_combout\);

-- Location: FF_X27_Y22_N13
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~q\);

-- Location: LCCOMB_X27_Y22_N22
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][10]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~feeder_combout\);

-- Location: FF_X27_Y22_N23
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~q\);

-- Location: FF_X27_Y22_N17
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][10]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][10]~q\);

-- Location: IOIBUF_X28_Y29_N22
\ast_sink_data[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(11),
	o => \ast_sink_data[11]~input_o\);

-- Location: FF_X27_Y22_N7
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[11]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]~q\);

-- Location: LCCOMB_X27_Y22_N0
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][11]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~feeder_combout\);

-- Location: FF_X27_Y22_N1
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~q\);

-- Location: LCCOMB_X27_Y22_N10
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][11]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~feeder_combout\);

-- Location: FF_X27_Y22_N11
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][11]~q\);

-- Location: IOIBUF_X28_Y29_N8
\ast_sink_data[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(12),
	o => \ast_sink_data[12]~input_o\);

-- Location: LCCOMB_X27_Y22_N24
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~feeder_combout\ = \ast_sink_data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[12]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~feeder_combout\);

-- Location: FF_X27_Y22_N25
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~q\);

-- Location: LCCOMB_X27_Y22_N2
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][12]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~feeder_combout\);

-- Location: FF_X27_Y22_N3
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~q\);

-- Location: LCCOMB_X27_Y22_N28
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][12]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]~feeder_combout\);

-- Location: FF_X27_Y22_N29
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][12]~q\);

-- Location: IOIBUF_X30_Y29_N29
\ast_sink_data[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(13),
	o => \ast_sink_data[13]~input_o\);

-- Location: LCCOMB_X28_Y21_N12
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~feeder_combout\ = \ast_sink_data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[13]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~feeder_combout\);

-- Location: FF_X28_Y21_N13
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~q\);

-- Location: LCCOMB_X28_Y21_N6
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][13]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~feeder_combout\);

-- Location: FF_X28_Y21_N7
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~q\);

-- Location: LCCOMB_X28_Y21_N16
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][13]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~feeder_combout\);

-- Location: FF_X28_Y21_N17
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][13]~q\);

-- Location: IOIBUF_X41_Y21_N15
\ast_sink_data[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(14),
	o => \ast_sink_data[14]~input_o\);

-- Location: FF_X28_Y21_N23
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[14]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]~q\);

-- Location: FF_X28_Y21_N1
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][14]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~q\);

-- Location: LCCOMB_X28_Y21_N18
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][14]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~feeder_combout\);

-- Location: FF_X28_Y21_N19
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][14]~q\);

-- Location: IOIBUF_X19_Y29_N29
\ast_sink_data[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(15),
	o => \ast_sink_data[15]~input_o\);

-- Location: FF_X23_Y27_N13
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][15]\ : dffeas
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
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][15]~q\);

-- Location: LCCOMB_X23_Y27_N6
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][15]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~feeder_combout\);

-- Location: FF_X23_Y27_N7
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~q\);

-- Location: LCCOMB_X23_Y27_N8
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][15]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]~feeder_combout\);

-- Location: FF_X23_Y27_N9
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][15]~q\);

-- Location: IOIBUF_X21_Y29_N1
\ast_sink_data[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(16),
	o => \ast_sink_data[16]~input_o\);

-- Location: LCCOMB_X23_Y27_N22
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~feeder_combout\ = \ast_sink_data[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[16]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~feeder_combout\);

-- Location: FF_X23_Y27_N23
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~q\);

-- Location: FF_X23_Y27_N25
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][16]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~q\);

-- Location: LCCOMB_X23_Y27_N26
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][16]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~feeder_combout\);

-- Location: FF_X23_Y27_N27
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][16]~q\);

-- Location: IOIBUF_X26_Y29_N15
\ast_sink_data[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(17),
	o => \ast_sink_data[17]~input_o\);

-- Location: LCCOMB_X26_Y19_N24
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~feeder_combout\ = \ast_sink_data[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[17]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~feeder_combout\);

-- Location: FF_X26_Y19_N25
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~q\);

-- Location: LCCOMB_X26_Y19_N2
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][17]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~feeder_combout\);

-- Location: FF_X26_Y19_N3
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~q\);

-- Location: LCCOMB_X26_Y19_N12
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][17]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~feeder_combout\);

-- Location: FF_X26_Y19_N13
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][17]~q\);

-- Location: IOIBUF_X26_Y29_N1
\ast_sink_data[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(18),
	o => \ast_sink_data[18]~input_o\);

-- Location: FF_X26_Y21_N25
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][18]\ : dffeas
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
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][18]~q\);

-- Location: LCCOMB_X26_Y21_N2
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][18]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~feeder_combout\);

-- Location: FF_X26_Y21_N3
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~q\);

-- Location: LCCOMB_X26_Y21_N4
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][18]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~feeder_combout\);

-- Location: FF_X26_Y21_N5
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][18]~q\);

-- Location: IOIBUF_X30_Y29_N8
\ast_sink_data[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(19),
	o => \ast_sink_data[19]~input_o\);

-- Location: LCCOMB_X28_Y21_N24
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~feeder_combout\ = \ast_sink_data[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[19]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~feeder_combout\);

-- Location: FF_X28_Y21_N25
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~q\);

-- Location: LCCOMB_X28_Y21_N2
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][19]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~feeder_combout\);

-- Location: FF_X28_Y21_N3
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~q\);

-- Location: LCCOMB_X28_Y21_N4
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][19]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~feeder_combout\);

-- Location: FF_X28_Y21_N5
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][19]~q\);

-- Location: IOIBUF_X23_Y29_N22
\ast_sink_data[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(20),
	o => \ast_sink_data[20]~input_o\);

-- Location: LCCOMB_X23_Y27_N0
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~feeder_combout\ = \ast_sink_data[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[20]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~feeder_combout\);

-- Location: FF_X23_Y27_N1
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~q\);

-- Location: LCCOMB_X23_Y27_N2
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][20]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~feeder_combout\);

-- Location: FF_X23_Y27_N3
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~q\);

-- Location: LCCOMB_X23_Y27_N4
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][20]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~feeder_combout\);

-- Location: FF_X23_Y27_N5
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][20]~q\);

-- Location: IOIBUF_X41_Y19_N1
\ast_sink_data[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(21),
	o => \ast_sink_data[21]~input_o\);

-- Location: LCCOMB_X29_Y19_N12
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~feeder_combout\ = \ast_sink_data[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[21]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~feeder_combout\);

-- Location: FF_X29_Y19_N13
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~q\);

-- Location: LCCOMB_X29_Y19_N22
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][21]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]~feeder_combout\);

-- Location: FF_X29_Y19_N23
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]~q\);

-- Location: FF_X29_Y19_N25
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][21]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][21]~q\);

-- Location: IOIBUF_X41_Y19_N8
\ast_sink_data[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(22),
	o => \ast_sink_data[22]~input_o\);

-- Location: LCCOMB_X29_Y19_N6
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~feeder_combout\ = \ast_sink_data[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[22]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~feeder_combout\);

-- Location: FF_X29_Y19_N7
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~q\);

-- Location: LCCOMB_X29_Y19_N0
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][22]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~feeder_combout\);

-- Location: FF_X29_Y19_N1
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~q\);

-- Location: LCCOMB_X29_Y19_N2
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][22]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~feeder_combout\);

-- Location: FF_X29_Y19_N3
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][22]~q\);

-- Location: IOIBUF_X41_Y19_N22
\ast_sink_data[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(23),
	o => \ast_sink_data[23]~input_o\);

-- Location: LCCOMB_X29_Y19_N16
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~feeder_combout\ = \ast_sink_data[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[23]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~feeder_combout\);

-- Location: FF_X29_Y19_N17
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~q\);

-- Location: LCCOMB_X29_Y19_N10
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[2][23]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~feeder_combout\);

-- Location: FF_X29_Y19_N11
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~q\);

-- Location: LCCOMB_X29_Y19_N28
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[1][23]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~feeder_combout\);

-- Location: FF_X29_Y19_N29
\fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_xIn_0_13|delay_signals[0][23]~q\);

-- Location: M9K_X25_Y19_N0
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "fir_0002:fir_inst|fir_0002_ast:fir_0002_ast_inst|fir_0002_rtl:hpfircore|altsyncram:u0_m0_wo0_wi0_delayr0_dmem|altsyncram_d4o3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 24,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \fir_inst|fir_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_13|delay_signals[0][0]~q\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_reset_n~inputclkctrl_outclk\,
	portadatain => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X22_Y9_N28
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]~feeder_combout\);

-- Location: FF_X22_Y9_N29
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]~q\);

-- Location: LCCOMB_X22_Y9_N2
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[1][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X22_Y9_N3
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\);

-- Location: LCCOMB_X22_Y9_N12
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~0_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) $ (((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\ & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~0_combout\);

-- Location: FF_X22_Y9_N13
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0));

-- Location: LCCOMB_X22_Y9_N0
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i~2_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) $ (((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\ & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i~2_combout\);

-- Location: FF_X22_Y9_N1
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2));

-- Location: LCCOMB_X22_Y9_N16
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~3_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\) # ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~3_combout\);

-- Location: LCCOMB_X22_Y9_N10
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~4_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) $ (((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~3_combout\ & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~3_combout\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~4_combout\);

-- Location: FF_X22_Y9_N11
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3));

-- Location: LCCOMB_X22_Y9_N30
\fir_inst|fir_0002_ast_inst|hpfircore|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Equal1~0_combout\ = (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Equal1~0_combout\);

-- Location: FF_X22_Y9_N31
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|Equal1~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\);

-- Location: LCCOMB_X22_Y9_N6
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i~1_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) $ (((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\) # (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i~1_combout\);

-- Location: FF_X22_Y9_N7
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1));

-- Location: LCCOMB_X22_Y9_N22
\fir_inst|fir_0002_ast_inst|hpfircore|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Mux3~0_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)) # ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) $ (((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Mux3~0_combout\);

-- Location: FF_X22_Y9_N23
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|Mux3~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(0));

-- Location: LCCOMB_X22_Y9_N24
\fir_inst|fir_0002_ast_inst|hpfircore|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Mux2~0_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)) # ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Mux2~0_combout\);

-- Location: FF_X22_Y9_N25
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|Mux2~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_q\(1));

-- Location: DSPMULT_X18_Y11_N0
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y11_N2
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X23_Y9_N24
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(0),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder_combout\);

-- Location: FF_X23_Y9_N25
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(0));

-- Location: LCCOMB_X23_Y9_N0
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(0),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]~feeder_combout\);

-- Location: FF_X23_Y9_N1
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0));

-- Location: LCCOMB_X22_Y5_N8
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~24_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0) $ (VCC))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0) & VCC))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~25\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0) & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0),
	datad => VCC,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~24_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~25\);

-- Location: LCCOMB_X22_Y9_N20
\fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~feeder_combout\);

-- Location: FF_X22_Y9_N21
\fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~q\);

-- Location: LCCOMB_X22_Y9_N18
\fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[2][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~feeder_combout\);

-- Location: FF_X22_Y9_N19
\fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~q\);

-- Location: LCCOMB_X22_Y9_N8
\fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[1][0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X22_Y9_N9
\fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\);

-- Location: LCCOMB_X23_Y5_N2
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\ $ (((\fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\ & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\);

-- Location: FF_X23_Y5_N3
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\);

-- Location: LCCOMB_X23_Y5_N12
\fir_inst|fir_0002_ast_inst|hpfircore|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add3~0_combout\ = (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add3~0_combout\);

-- Location: LCCOMB_X23_Y5_N18
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~2_cout\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|Add3~0_combout\ & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|Add3~0_combout\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\,
	datad => VCC,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~2_cout\);

-- Location: LCCOMB_X23_Y5_N20
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~3_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~2_cout\ & VCC)) 
-- # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~2_cout\))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~4\ = CARRY((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~2_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\,
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~2_cout\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~3_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~4\);

-- Location: FF_X23_Y5_N21
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\);

-- Location: LCCOMB_X23_Y5_N22
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~1_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\ $ 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~4\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~4\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\ & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\,
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~4\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~1_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\);

-- Location: FF_X23_Y5_N23
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\);

-- Location: LCCOMB_X23_Y5_N24
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\ & VCC)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\ = CARRY((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\,
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~2\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\);

-- Location: FF_X23_Y5_N25
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\);

-- Location: LCCOMB_X23_Y5_N26
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\ $ 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\ & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\,
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\);

-- Location: FF_X23_Y5_N27
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\);

-- Location: LCCOMB_X23_Y5_N6
\fir_inst|fir_0002_ast_inst|hpfircore|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Equal0~0_combout\ = (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\ & 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y5_N0
\fir_inst|fir_0002_ast_inst|hpfircore|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Equal0~1_combout\ = (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|Equal0~0_combout\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Equal0~1_combout\);

-- Location: FF_X23_Y5_N1
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|Equal0~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\);

-- Location: LCCOMB_X23_Y5_N28
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\ $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\ $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1_combout\);

-- Location: FF_X23_Y5_N29
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\);

-- Location: FF_X23_Y3_N25
\fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\);

-- Location: FF_X22_Y5_N9
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~24_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0));

-- Location: LCCOMB_X22_Y3_N24
\fir_inst|fir_0002_ast_inst|source|data_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[0]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[0]~feeder_combout\);

-- Location: FF_X22_Y3_N25
\fir_inst|fir_0002_ast_inst|source|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(0));

-- Location: LCCOMB_X23_Y9_N2
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(1),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder_combout\);

-- Location: FF_X23_Y9_N3
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(1));

-- Location: LCCOMB_X23_Y9_N18
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(1),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]~feeder_combout\);

-- Location: FF_X23_Y9_N19
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1));

-- Location: LCCOMB_X22_Y5_N10
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~26_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~25\ & VCC)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~25\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~25\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~25\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~27\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~25\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~25\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~25\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~26_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~27\);

-- Location: FF_X22_Y5_N11
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~26_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1));

-- Location: LCCOMB_X22_Y3_N26
\fir_inst|fir_0002_ast_inst|source|data_out[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[1]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[1]~feeder_combout\);

-- Location: FF_X22_Y3_N27
\fir_inst|fir_0002_ast_inst|source|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(1));

-- Location: LCCOMB_X23_Y9_N12
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(2),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder_combout\);

-- Location: FF_X23_Y9_N13
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(2));

-- Location: LCCOMB_X23_Y9_N20
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(2),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder_combout\);

-- Location: FF_X23_Y9_N21
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2));

-- Location: LCCOMB_X22_Y5_N12
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~28_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2) $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~27\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~29\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~27\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~27\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~28_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~29\);

-- Location: FF_X22_Y5_N13
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~28_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2));

-- Location: LCCOMB_X22_Y5_N0
\fir_inst|fir_0002_ast_inst|source|data_out[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[2]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[2]~feeder_combout\);

-- Location: FF_X22_Y5_N1
\fir_inst|fir_0002_ast_inst|source|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(2));

-- Location: LCCOMB_X23_Y9_N30
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(3),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder_combout\);

-- Location: FF_X23_Y9_N31
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(3));

-- Location: FF_X23_Y9_N15
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(3),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3));

-- Location: LCCOMB_X22_Y5_N14
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~30_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~29\ & VCC)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~29\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~29\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~29\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~31\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~29\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~29\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~29\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~30_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~31\);

-- Location: FF_X22_Y5_N15
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~30_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3));

-- Location: LCCOMB_X22_Y5_N2
\fir_inst|fir_0002_ast_inst|source|data_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[3]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[3]~feeder_combout\);

-- Location: FF_X22_Y5_N3
\fir_inst|fir_0002_ast_inst|source|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(3));

-- Location: FF_X22_Y3_N29
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(4),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(4));

-- Location: LCCOMB_X22_Y3_N8
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(4),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder_combout\);

-- Location: FF_X22_Y3_N9
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4));

-- Location: LCCOMB_X22_Y5_N16
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~32_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4) $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~31\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~33\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~31\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~31\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~32_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~33\);

-- Location: FF_X22_Y5_N17
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~32_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4));

-- Location: LCCOMB_X22_Y5_N4
\fir_inst|fir_0002_ast_inst|source|data_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[4]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[4]~feeder_combout\);

-- Location: FF_X22_Y5_N5
\fir_inst|fir_0002_ast_inst|source|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(4));

-- Location: LCCOMB_X22_Y3_N6
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(5),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder_combout\);

-- Location: FF_X22_Y3_N7
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(5));

-- Location: LCCOMB_X22_Y3_N18
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(5),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder_combout\);

-- Location: FF_X22_Y3_N19
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5));

-- Location: LCCOMB_X22_Y5_N18
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~34_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~33\ & VCC)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~33\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~33\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~33\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~35\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~33\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~33\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~33\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~34_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~35\);

-- Location: FF_X22_Y5_N19
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~34_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5));

-- Location: LCCOMB_X22_Y5_N6
\fir_inst|fir_0002_ast_inst|source|data_out[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[5]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[5]~feeder_combout\);

-- Location: FF_X22_Y5_N7
\fir_inst|fir_0002_ast_inst|source|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(5));

-- Location: FF_X23_Y9_N17
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(6),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(6));

-- Location: LCCOMB_X23_Y9_N8
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(6),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder_combout\);

-- Location: FF_X23_Y9_N9
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6));

-- Location: LCCOMB_X22_Y5_N20
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~36_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6) $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~35\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~37\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~35\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~35\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~36_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~37\);

-- Location: FF_X22_Y5_N21
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~36_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6));

-- Location: FF_X22_Y3_N5
\fir_inst|fir_0002_ast_inst|source|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(6));

-- Location: LCCOMB_X23_Y9_N10
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(7),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]~feeder_combout\);

-- Location: FF_X23_Y9_N11
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(7));

-- Location: LCCOMB_X23_Y9_N26
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(7),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]~feeder_combout\);

-- Location: FF_X23_Y9_N27
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7));

-- Location: LCCOMB_X22_Y5_N22
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~38_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~37\ & VCC)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~37\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~37\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~37\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~39\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~37\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~37\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~37\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~38_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~39\);

-- Location: FF_X22_Y5_N23
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~38_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7));

-- Location: LCCOMB_X22_Y3_N22
\fir_inst|fir_0002_ast_inst|source|data_out[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[7]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[7]~feeder_combout\);

-- Location: FF_X22_Y3_N23
\fir_inst|fir_0002_ast_inst|source|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(7));

-- Location: FF_X23_Y9_N29
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(8),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(8));

-- Location: LCCOMB_X23_Y9_N4
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(8),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder_combout\);

-- Location: FF_X23_Y9_N5
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8));

-- Location: LCCOMB_X22_Y5_N24
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~40_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8) $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~39\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~41\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~39\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~39\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~40_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~41\);

-- Location: FF_X22_Y5_N25
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~40_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8));

-- Location: FF_X22_Y3_N1
\fir_inst|fir_0002_ast_inst|source|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(8));

-- Location: FF_X23_Y9_N23
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(9),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(9));

-- Location: FF_X23_Y9_N7
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(9),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9));

-- Location: LCCOMB_X22_Y5_N26
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~42_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~41\ & VCC)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~41\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~41\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~41\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~43\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~41\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~41\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~41\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~42_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~43\);

-- Location: FF_X22_Y5_N27
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~42_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9));

-- Location: LCCOMB_X22_Y3_N2
\fir_inst|fir_0002_ast_inst|source|data_out[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[9]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[9]~feeder_combout\);

-- Location: FF_X22_Y3_N3
\fir_inst|fir_0002_ast_inst|source|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(9));

-- Location: LCCOMB_X20_Y8_N28
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[10]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(10),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[10]~feeder_combout\);

-- Location: FF_X20_Y8_N29
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(10));

-- Location: LCCOMB_X20_Y8_N8
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(10),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder_combout\);

-- Location: FF_X20_Y8_N9
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10));

-- Location: LCCOMB_X22_Y5_N28
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~44_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10) $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~43\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~45\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~43\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~43\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~44_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~45\);

-- Location: FF_X22_Y5_N29
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~44_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10));

-- Location: LCCOMB_X22_Y3_N12
\fir_inst|fir_0002_ast_inst|source|data_out[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[10]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[10]~feeder_combout\);

-- Location: FF_X22_Y3_N13
\fir_inst|fir_0002_ast_inst|source|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(10));

-- Location: FF_X20_Y8_N7
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(11),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(11));

-- Location: LCCOMB_X20_Y8_N2
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(11),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder_combout\);

-- Location: FF_X20_Y8_N3
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11));

-- Location: LCCOMB_X22_Y5_N30
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~46_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~45\ & VCC)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~45\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~45\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~45\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~47\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~45\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~45\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~45\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~46_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~47\);

-- Location: FF_X22_Y5_N31
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~46_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11));

-- Location: LCCOMB_X22_Y3_N30
\fir_inst|fir_0002_ast_inst|source|data_out[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[11]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[11]~feeder_combout\);

-- Location: FF_X22_Y3_N31
\fir_inst|fir_0002_ast_inst|source|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(11));

-- Location: FF_X21_Y4_N29
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(12),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(12));

-- Location: LCCOMB_X21_Y4_N16
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(12),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder_combout\);

-- Location: FF_X21_Y4_N17
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12));

-- Location: LCCOMB_X22_Y4_N0
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~48_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12) $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~47\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~49\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~47\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~47\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~48_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~49\);

-- Location: FF_X22_Y4_N1
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~48_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12));

-- Location: FF_X21_Y4_N1
\fir_inst|fir_0002_ast_inst|source|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(12));

-- Location: FF_X23_Y8_N7
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(13),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(13));

-- Location: LCCOMB_X23_Y8_N0
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(13),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]~feeder_combout\);

-- Location: FF_X23_Y8_N1
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13));

-- Location: LCCOMB_X22_Y4_N2
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~50_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~49\ & VCC)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~49\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~49\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~49\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~51\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~49\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~49\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~49\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~50_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~51\);

-- Location: FF_X22_Y4_N3
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~50_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13));

-- Location: LCCOMB_X21_Y4_N2
\fir_inst|fir_0002_ast_inst|source|data_out[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[13]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[13]~feeder_combout\);

-- Location: FF_X21_Y4_N3
\fir_inst|fir_0002_ast_inst|source|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(13));

-- Location: LCCOMB_X23_Y8_N16
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(14),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]~feeder_combout\);

-- Location: FF_X23_Y8_N17
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(14));

-- Location: LCCOMB_X23_Y8_N18
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(14),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder_combout\);

-- Location: FF_X23_Y8_N19
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14));

-- Location: LCCOMB_X22_Y4_N4
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~52_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14) $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~51\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~53\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~51\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~51\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~52_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~53\);

-- Location: FF_X22_Y4_N5
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~52_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14));

-- Location: LCCOMB_X22_Y4_N24
\fir_inst|fir_0002_ast_inst|source|data_out[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[14]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[14]~feeder_combout\);

-- Location: FF_X22_Y4_N25
\fir_inst|fir_0002_ast_inst|source|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(14));

-- Location: LCCOMB_X23_Y8_N2
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(15),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder_combout\);

-- Location: FF_X23_Y8_N3
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(15));

-- Location: LCCOMB_X23_Y8_N12
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(15),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder_combout\);

-- Location: FF_X23_Y8_N13
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15));

-- Location: LCCOMB_X22_Y4_N6
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~54_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~53\ & VCC)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~53\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~53\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~53\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~55\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~53\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~53\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~53\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~54_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~55\);

-- Location: FF_X22_Y4_N7
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~54_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15));

-- Location: LCCOMB_X22_Y4_N26
\fir_inst|fir_0002_ast_inst|source|data_out[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[15]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[15]~feeder_combout\);

-- Location: FF_X22_Y4_N27
\fir_inst|fir_0002_ast_inst|source|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(15));

-- Location: LCCOMB_X21_Y4_N6
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(16),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder_combout\);

-- Location: FF_X21_Y4_N7
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(16));

-- Location: LCCOMB_X21_Y4_N10
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(16),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]~feeder_combout\);

-- Location: FF_X21_Y4_N11
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16));

-- Location: LCCOMB_X22_Y4_N8
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~56_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16) $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~55\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~57\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~55\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~55\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~56_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~57\);

-- Location: FF_X22_Y4_N9
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~56_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16));

-- Location: FF_X21_Y4_N13
\fir_inst|fir_0002_ast_inst|source|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(16));

-- Location: FF_X22_Y8_N3
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(17),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17));

-- Location: DSPMULT_X18_Y8_N0
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y8_N2
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: FF_X22_Y8_N1
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(0),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0));

-- Location: LCCOMB_X22_Y8_N8
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~7_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0) $ (VCC))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0) & VCC))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~8\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17) & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0),
	datad => VCC,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~7_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~8\);

-- Location: FF_X22_Y8_N9
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~7_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17));

-- Location: LCCOMB_X22_Y4_N10
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~58_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~57\ & VCC)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~57\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~57\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~57\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~59\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~57\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~57\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~57\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~58_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~59\);

-- Location: FF_X22_Y4_N11
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~58_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17));

-- Location: FF_X21_Y4_N23
\fir_inst|fir_0002_ast_inst|source|data_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(17));

-- Location: FF_X22_Y8_N31
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(18),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18));

-- Location: LCCOMB_X22_Y8_N4
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(1),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]~feeder_combout\);

-- Location: FF_X22_Y8_N5
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1));

-- Location: LCCOMB_X22_Y8_N10
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~9_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & 
-- ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~8\ & VCC)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~8\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~8\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & 
-- ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~8\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~10\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~8\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~8\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~8\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~9_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~10\);

-- Location: FF_X22_Y8_N11
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~9_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18));

-- Location: LCCOMB_X22_Y4_N12
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~60_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18) $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~59\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~61\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~59\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~59\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~60_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~61\);

-- Location: FF_X22_Y4_N13
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~60_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18));

-- Location: FF_X21_Y4_N25
\fir_inst|fir_0002_ast_inst|source|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(18));

-- Location: FF_X22_Y8_N7
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(2),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2));

-- Location: LCCOMB_X21_Y8_N16
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(19),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder_combout\);

-- Location: FF_X21_Y8_N17
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19));

-- Location: LCCOMB_X22_Y8_N12
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~11_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2) $ 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19) $ (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~10\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~12\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2) & 
-- ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~10\))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~10\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~11_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~12\);

-- Location: FF_X22_Y8_N13
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~11_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19));

-- Location: LCCOMB_X22_Y4_N14
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~62_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~61\ & VCC)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~61\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~61\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~61\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~63\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~61\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~61\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~61\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~62_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~63\);

-- Location: FF_X22_Y4_N15
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~62_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19));

-- Location: LCCOMB_X22_Y4_N28
\fir_inst|fir_0002_ast_inst|source|data_out[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[19]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[19]~feeder_combout\);

-- Location: FF_X22_Y4_N29
\fir_inst|fir_0002_ast_inst|source|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(19));

-- Location: LCCOMB_X22_Y8_N26
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(20),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder_combout\);

-- Location: FF_X22_Y8_N27
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20));

-- Location: LCCOMB_X22_Y8_N24
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(3),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]~feeder_combout\);

-- Location: FF_X22_Y8_N25
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3));

-- Location: LCCOMB_X22_Y8_N14
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~13_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20) & 
-- ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~12\ & VCC)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~12\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~12\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & 
-- ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~12\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~14\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20) & 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~12\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~12\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~12\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~13_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~14\);

-- Location: FF_X22_Y8_N15
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~13_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20));

-- Location: LCCOMB_X22_Y4_N16
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~64_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20) $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~63\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~65\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~63\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~63\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~64_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~65\);

-- Location: FF_X22_Y4_N17
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~64_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20));

-- Location: LCCOMB_X21_Y4_N26
\fir_inst|fir_0002_ast_inst|source|data_out[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[20]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[20]~feeder_combout\);

-- Location: FF_X21_Y4_N27
\fir_inst|fir_0002_ast_inst|source|data_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(20));

-- Location: LCCOMB_X21_Y8_N10
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(21),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder_combout\);

-- Location: FF_X21_Y8_N11
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21));

-- Location: FF_X22_Y8_N29
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(4),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4));

-- Location: LCCOMB_X22_Y8_N16
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~15_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21) $ 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4) $ (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~14\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~16\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21) & 
-- ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~14\))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~14\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~15_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~16\);

-- Location: FF_X22_Y8_N17
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~15_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21));

-- Location: LCCOMB_X22_Y4_N18
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~66_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~65\ & VCC)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~65\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~65\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~65\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~67\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~65\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~65\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~65\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~66_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~67\);

-- Location: FF_X22_Y4_N19
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~66_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21));

-- Location: LCCOMB_X22_Y4_N30
\fir_inst|fir_0002_ast_inst|source|data_out[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[21]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[21]~feeder_combout\);

-- Location: FF_X22_Y4_N31
\fir_inst|fir_0002_ast_inst|source|data_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(21));

-- Location: FF_X22_Y8_N23
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(5),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5));

-- Location: FF_X21_Y8_N13
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(22),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22));

-- Location: LCCOMB_X22_Y8_N18
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~17_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & 
-- ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~16\ & VCC)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~16\)))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~16\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & 
-- ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~16\) # (GND)))))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~18\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~16\)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & ((!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~16\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~16\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~17_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~18\);

-- Location: FF_X22_Y8_N19
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~17_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22));

-- Location: LCCOMB_X22_Y4_N20
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~68_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22) $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~67\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~69\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22) & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22)) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~67\))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22) & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22) & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22),
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22),
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~67\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~68_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~69\);

-- Location: FF_X22_Y4_N21
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~68_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22));

-- Location: FF_X21_Y4_N5
\fir_inst|fir_0002_ast_inst|source|data_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(22));

-- Location: LCCOMB_X21_Y8_N14
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(6),
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]~feeder_combout\);

-- Location: FF_X21_Y8_N15
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6));

-- Location: FF_X21_Y8_N9
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(23),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23));

-- Location: LCCOMB_X22_Y8_N20
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~19_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6) $ 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~18\ $ (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23),
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~18\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~19_combout\);

-- Location: FF_X22_Y8_N21
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~19_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23));

-- Location: LCCOMB_X22_Y4_N22
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~70_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23) $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~69\ $ 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23),
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23),
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~69\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~70_combout\);

-- Location: FF_X22_Y4_N23
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~70_combout\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23));

-- Location: LCCOMB_X21_Y4_N14
\fir_inst|fir_0002_ast_inst|source|data_out[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|data_out[23]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23),
	combout => \fir_inst|fir_0002_ast_inst|source|data_out[23]~feeder_combout\);

-- Location: FF_X21_Y4_N15
\fir_inst|fir_0002_ast_inst|source|data_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|data_out[23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_out\(23));

-- Location: LCCOMB_X23_Y3_N20
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\ $ (((\fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\ & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\);

-- Location: FF_X23_Y3_N21
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\);

-- Location: LCCOMB_X23_Y3_N30
\fir_inst|fir_0002_ast_inst|hpfircore|Add15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Add15~0_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\ & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Add15~0_combout\);

-- Location: LCCOMB_X23_Y3_N0
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~2_cout\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|Add15~0_combout\ & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|Add15~0_combout\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\,
	datad => VCC,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~2_cout\);

-- Location: LCCOMB_X23_Y3_N2
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~3_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~2_cout\ $ 
-- (GND))) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~2_cout\ & VCC))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~4\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~2_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\,
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~2_cout\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~3_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~4\);

-- Location: FF_X23_Y3_N3
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\);

-- Location: LCCOMB_X23_Y3_N4
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~1_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\ $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\ $ 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~4\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\ & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\ & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~4\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\ & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\,
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~4\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~1_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\);

-- Location: FF_X23_Y3_N5
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\);

-- Location: LCCOMB_X23_Y3_N6
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\ $ (GND))) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\ & VCC))
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ & !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\,
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~2\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\);

-- Location: FF_X23_Y3_N7
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\);

-- Location: LCCOMB_X23_Y3_N8
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1_combout\ = ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\ $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ $ 
-- (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\)))) # (GND)
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\ = CARRY((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\ & (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & 
-- !\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\)) # (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\ & ((\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\) # 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\,
	datad => VCC,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1_combout\,
	cout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\);

-- Location: FF_X23_Y3_N9
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\);

-- Location: LCCOMB_X23_Y3_N16
\fir_inst|fir_0002_ast_inst|hpfircore|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Equal2~0_combout\ = (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\ & 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\,
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y3_N26
\fir_inst|fir_0002_ast_inst|hpfircore|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|Equal2~1_combout\ = (\fir_inst|fir_0002_ast_inst|hpfircore|Equal2~0_combout\ & (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\ & 
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fir_inst|fir_0002_ast_inst|hpfircore|Equal2~0_combout\,
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|Equal2~1_combout\);

-- Location: FF_X23_Y3_N27
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|Equal2~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\);

-- Location: LCCOMB_X23_Y3_N10
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1_combout\ = \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ $ (\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\ $ 
-- (!\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\,
	cin => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1_combout\);

-- Location: FF_X23_Y3_N11
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_15|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\);

-- Location: LCCOMB_X23_Y3_N22
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q\(0) = (\fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\ & \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fir_inst|fir_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	datad => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\,
	combout => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q\(0));

-- Location: FF_X23_Y3_N23
\fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q\(0),
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q\(0));

-- Location: FF_X23_Y3_N29
\fir_inst|fir_0002_ast_inst|source|data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \fir_inst|fir_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q\(0),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|data_valid~q\);

-- Location: IOIBUF_X26_Y29_N29
\ast_sink_error[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_error(0),
	o => \ast_sink_error[0]~input_o\);

-- Location: LCCOMB_X23_Y19_N10
\fir_inst|fir_0002_ast_inst|sink|at_sink_error_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|sink|at_sink_error_int~0_combout\ = (\ast_sink_valid~input_o\ & \ast_sink_error[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ast_sink_valid~input_o\,
	datad => \ast_sink_error[0]~input_o\,
	combout => \fir_inst|fir_0002_ast_inst|sink|at_sink_error_int~0_combout\);

-- Location: FF_X23_Y19_N11
\fir_inst|fir_0002_ast_inst|sink|packet_error_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|sink|at_sink_error_int~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|sink|packet_error_s\(0));

-- Location: LCCOMB_X23_Y19_N24
\fir_inst|fir_0002_ast_inst|source|at_source_error_s[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fir_inst|fir_0002_ast_inst|source|at_source_error_s[0]~feeder_combout\ = \fir_inst|fir_0002_ast_inst|sink|packet_error_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fir_inst|fir_0002_ast_inst|sink|packet_error_s\(0),
	combout => \fir_inst|fir_0002_ast_inst|source|at_source_error_s[0]~feeder_combout\);

-- Location: FF_X23_Y19_N25
\fir_inst|fir_0002_ast_inst|source|at_source_error_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fir_inst|fir_0002_ast_inst|source|at_source_error_s[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fir_inst|fir_0002_ast_inst|source|at_source_error_s\(0));

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


