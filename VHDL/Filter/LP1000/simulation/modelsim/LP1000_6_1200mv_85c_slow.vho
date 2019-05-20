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

-- DATE "05/20/2019 13:06:50"

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

ENTITY 	LP1000 IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	ast_sink_data : IN std_logic_vector(23 DOWNTO 0);
	ast_sink_valid : IN std_logic;
	ast_sink_error : IN std_logic_vector(1 DOWNTO 0);
	ast_source_data : BUFFER std_logic_vector(23 DOWNTO 0);
	ast_source_valid : BUFFER std_logic;
	ast_source_error : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END LP1000;

-- Design Ports Information
-- ast_sink_error[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[6]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[7]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[8]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[10]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[11]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[12]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[14]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[15]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[16]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[17]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[18]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[19]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[20]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[21]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[22]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[23]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_valid	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_error[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_error[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_valid	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_error[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[17]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[18]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[19]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[20]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[21]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[22]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[23]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[0]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[4]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[5]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[7]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[8]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[9]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[10]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[11]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[12]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[13]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[14]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[15]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[16]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LP1000 IS
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
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~9\ : std_logic;
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
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~22_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~1\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~2_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~1_cout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~2_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~3\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~4_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~5\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~6_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~23_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~7\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~8_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~1\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~2_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~22_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~3\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~4_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~9\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~10_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~21_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~11\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~12_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~5\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~6_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~20_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~7\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~8_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~14_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~19_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~15\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~16_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~9\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~10_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~18_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[8]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~17\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~18_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~11\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~12_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~17_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[9]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~19\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~20_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~16_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~14_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0_combout\ : std_logic;
SIGNAL \ast_sink_valid~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add2~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~8_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~3\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~4_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~10_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~5\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~6_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~12_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~7\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~8_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~14_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~9\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~10_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~15\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]~16_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~11\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~12_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]~17\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[8]~18_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~14_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[8]~19\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[9]~20_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~15\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~16_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~2_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~3_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~7_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[3][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[2][0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[2][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[1][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\ : std_logic;
SIGNAL \ast_sink_data[0]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~9_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~10_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~11\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~12_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~14_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~15\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~16_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~17\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~18_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~19\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~20_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~21\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~22_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~23\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~24_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~25\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]~26_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]~_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~9_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~27_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~10_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~9_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~11\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~12_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~10\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~11_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~8_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~27_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~24_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~1_cout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~2_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~26_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~3\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~4_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~25_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~5\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~6_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~10_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~7\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~8_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~12_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~9\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~10_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~10_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~14_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~11\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~12_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~12_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~15\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~16_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~14_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~14_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~17\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]~18_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~15\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~16_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~16_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]~19\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[9]~20_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~17\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~18_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~18_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[9]~21\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[10]~22_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~19\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~20_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~14_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~12\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~13_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~15\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~16_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~8_cout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~9_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~11_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~14\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~15_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~10\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~12_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~17\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~18_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~16\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~17_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~19\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~20_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~14_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~18\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~19_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~15\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]~16_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~21\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]~22_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~20\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~21_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]~23\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[8]~24_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]~17\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[8]~18_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~22\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[8]~23_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[8]~19\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[9]~20_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[8]~25\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[9]~26_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[8]~24\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[9]~25_combout\ : std_logic;
SIGNAL \ast_sink_data[1]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][1]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][1]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][1]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][1]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][1]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][1]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][1]~q\ : std_logic;
SIGNAL \ast_sink_data[17]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][17]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][17]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][17]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][17]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][17]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][17]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][17]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][17]~q\ : std_logic;
SIGNAL \ast_sink_data[18]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][18]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][18]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][18]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][18]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][18]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][18]~q\ : std_logic;
SIGNAL \ast_sink_data[19]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][19]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][19]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][19]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][19]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][19]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][19]~q\ : std_logic;
SIGNAL \ast_sink_data[20]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][20]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][20]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][20]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][20]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][20]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][20]~q\ : std_logic;
SIGNAL \ast_sink_data[21]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][21]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][21]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][21]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][21]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][21]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][21]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][21]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][21]~q\ : std_logic;
SIGNAL \ast_sink_data[22]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][22]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][22]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][22]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][22]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][22]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][22]~q\ : std_logic;
SIGNAL \ast_sink_data[23]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][23]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][23]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][23]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][23]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][23]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][23]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]~feeder_combout\ : std_logic;
SIGNAL \ast_sink_data[2]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][2]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][2]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][2]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][2]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][2]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][2]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][2]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][2]~q\ : std_logic;
SIGNAL \ast_sink_data[3]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][3]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][3]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][3]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][3]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][3]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][3]~q\ : std_logic;
SIGNAL \ast_sink_data[4]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][4]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][4]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][4]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][4]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][4]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][4]~q\ : std_logic;
SIGNAL \ast_sink_data[5]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][5]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][5]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][5]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][5]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][5]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][5]~q\ : std_logic;
SIGNAL \ast_sink_data[6]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][6]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][6]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][6]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][6]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][6]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][6]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][6]~q\ : std_logic;
SIGNAL \ast_sink_data[7]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][7]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][7]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][7]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][7]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][7]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][7]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][7]~q\ : std_logic;
SIGNAL \ast_sink_data[8]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][8]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][8]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][8]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][8]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][8]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][8]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][8]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][8]~q\ : std_logic;
SIGNAL \ast_sink_data[9]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][9]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][9]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][9]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][9]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][9]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][9]~q\ : std_logic;
SIGNAL \ast_sink_data[10]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][10]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][10]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][10]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][10]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][10]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][10]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][10]~q\ : std_logic;
SIGNAL \ast_sink_data[11]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][11]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][11]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][11]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][11]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][11]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][11]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][11]~q\ : std_logic;
SIGNAL \ast_sink_data[12]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][12]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][12]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][12]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][12]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][12]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][12]~q\ : std_logic;
SIGNAL \ast_sink_data[13]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][13]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][13]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][13]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][13]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][13]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][13]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][13]~q\ : std_logic;
SIGNAL \ast_sink_data[14]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][14]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][14]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][14]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][14]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][14]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][14]~q\ : std_logic;
SIGNAL \ast_sink_data[15]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][15]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][15]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][15]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][15]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][15]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][15]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][15]~q\ : std_logic;
SIGNAL \ast_sink_data[16]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][16]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][16]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][16]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][16]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][16]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][16]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[18]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~17_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~15_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[11]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~42_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~2_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~3_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[3][0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[3][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[2][0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[2][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[1][0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[1][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~1_cout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~2_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~3\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~4_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~5\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~6_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~7\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~8_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~9\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~10_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~11\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~12_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~14_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~15\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~16_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~17\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~18_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~19\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~20_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~21\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~22_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~43\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~44_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~45\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~46_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~47\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~48_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~49\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~50_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~51\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~52_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~53\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~54_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~55\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~56_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~57\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~58_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~59\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~60_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~61\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~62_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~63\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~64_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~65\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~66_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~67\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~68_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~69\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~70_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~71\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~72_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~73\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~74_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~75\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~76_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~77\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~78_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~19_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~79\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~80_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~21_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~81\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~82_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[4]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~23_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~83\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~84_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[22]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~25_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~85\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~86_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[4]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~27_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~87\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~88_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[7]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[24]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~29_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~89\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~90_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~31_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~91\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~92_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[7]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[9]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~33_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~93\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~94_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[8]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[10]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~35_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~95\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~96_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[9]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~37_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~97\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~98_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[12]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~39_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~99\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~100_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[13]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~41_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~101\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~102_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[12]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[14]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~42\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[31]~43_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~103\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~104_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[13]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~105\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~106_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[14]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~107\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~108_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~109\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~110_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[16]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~111\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~112_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[17]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~113\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~114_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~115\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~116_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[19]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~117\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~118_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[20]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~119\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]~120_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]~121\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[40]~122_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[22]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[40]~123\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[41]~124_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out[23]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~2_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~3_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~1_cout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~2_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~3\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~4_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~5\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~6_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~6_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~7\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~8_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~9\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~10_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~10_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~11\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~12_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~12_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~13\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~14_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~14_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~15\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~16_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~16_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~17\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~18_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~18_wirecell_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~19\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~20_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~2\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~1_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~21\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~22_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_valid~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_valid~q\ : std_logic;
SIGNAL \ast_sink_error[0]~input_o\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|sink|at_sink_error_int~0_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|at_source_error_s[0]~feeder_combout\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|sink|packet_error_s\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|data_out\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|source|at_source_error_s\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\ : std_logic_vector(41 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\ : std_logic;
SIGNAL \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\ : std_logic_vector(10 DOWNTO 10);

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

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAA_bus\ <= (
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT14\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT13\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT12\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT11\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT10\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT9\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT8\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT7\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT6\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT5\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT4\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT3\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT2\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT1\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~dataout\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~2\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~1\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~0\);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~0\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~1\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2~2\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(0) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(1) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(2) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(3) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(4) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(5) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(6) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(7) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(8) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(9) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(10) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(11) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(12) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(13) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(14) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\(17);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAA_bus\ <= (
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT25\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT24\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT23\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT22\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT21\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT20\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT19\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT18\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT17\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT16\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT15\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT14\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT13\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT12\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT11\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT10\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT9\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT8\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT7\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT6\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT5\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT4\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT3\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT2\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT1\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~dataout\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~9\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~8\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~7\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~6\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~5\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~4\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~3\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~2\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~1\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~0\);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~0\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(0);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~1\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(1);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~2\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(2);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~3\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(3);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~4\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(4);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~5\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(5);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~6\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(6);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~7\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(7);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~8\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(8);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2~9\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(9);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(0) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(10);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(1) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(11);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(2) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(12);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(3) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(13);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(4) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(14);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(5) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(15);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(6) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(16);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(7) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(17);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(8) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(18);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(9) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(19);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(10) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(20);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(11) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(21);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(12) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(22);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(13) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(23);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(14) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(24);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(15) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(25);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(16) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(26);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(17) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(27);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(18) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(28);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(19) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(29);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(20) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(30);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(21) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(31);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(22) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(32);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(23) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(33);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(24) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(34);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(25) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\(35);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAA_bus\ <= (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(7) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(6) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(5) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(4) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(3) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(2) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(1) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(0) & gnd);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAB_bus\ <= (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(23) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(22) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(21) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(20) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(19) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(18) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(17) & gnd & gnd);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~0\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~1\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~2\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~dataout\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT1\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT2\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT3\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT4\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT5\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT6\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT7\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT8\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT9\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT10\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT11\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT12\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT13\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1~DATAOUT14\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\(17);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAA_bus\ <= (gnd & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(16) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(15) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(14) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(13) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(12) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(11) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(10) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(9) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(8) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(7) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(6) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(5) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(4) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(3) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(2) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(1) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(0));

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAB_bus\ <= (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(7) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(6) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(5) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(4) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(3) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(2) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(1) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(0) & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~0\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(0);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~1\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(1);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~2\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(2);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~3\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(3);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~4\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(4);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~5\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(5);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~6\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(6);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~7\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(7);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~8\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(8);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~9\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(9);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~dataout\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(10);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT1\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(11);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT2\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(12);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT3\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(13);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT4\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(14);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT5\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(15);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT6\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(16);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT7\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(17);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT8\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(18);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT9\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(19);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT10\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(20);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT11\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(21);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT12\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(22);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT13\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(23);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT14\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(24);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT15\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(25);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT16\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(26);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT17\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(27);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT18\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(28);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT19\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(29);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT20\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(30);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT21\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(31);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT22\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(32);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT23\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(33);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT24\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(34);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1~DATAOUT25\ <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\(35);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(9) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(8) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(7) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0));

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(0) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(1) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(2) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(3) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(4) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(5) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(6) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|q_b\(7) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][23]~q\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][22]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][21]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][20]~q\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][19]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][18]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][17]~q\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][1]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][0]~q\);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]~_wirecell_combout\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~_wirecell_combout\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~_wirecell_combout\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~_wirecell_combout\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~_wirecell_combout\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(9) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(8) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(7) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(6) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(5) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(4) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(3) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(2) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(1) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(0));

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(0) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(1) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(17) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(18) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(19) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(20) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(21) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(22) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(23) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][10]~q\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][9]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][8]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][7]~q\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][6]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][5]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][4]~q\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][3]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][2]~q\);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]~_wirecell_combout\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~_wirecell_combout\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~_wirecell_combout\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~_wirecell_combout\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~_wirecell_combout\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(9) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(8) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(7) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(6) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(5) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(4) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(3) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(2) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(1) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(0));

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(2) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(3) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(1);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(4) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(2);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(5) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(3);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(6) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(4);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(7) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(5);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(8) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(6);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(9) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(7);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(10) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(8);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTADATAIN_bus\ <= (gnd & gnd & gnd & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][16]~q\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][15]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][14]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][13]~q\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][12]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][11]~q\);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]~_wirecell_combout\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~_wirecell_combout\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~_wirecell_combout\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~_wirecell_combout\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~_wirecell_combout\ & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\);

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(9) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(8) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(7) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(6) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(5) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(4) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(3) & 
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(2) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(1) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(0));

\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(11) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(12) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(1);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(13) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(2);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(14) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(3);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(15) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(4);
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|q_b\(16) <= \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(5);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);
\ALT_INV_reset_n~inputclkctrl_outclk\ <= NOT \reset_n~inputclkctrl_outclk\;
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\ <= NOT \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\;
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\ <= NOT \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\;
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\ <= NOT \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\;
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(10) <= NOT \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(10);

-- Location: IOOBUF_X0_Y22_N9
\ast_source_data[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(0),
	devoe => ww_devoe,
	o => \ast_source_data[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\ast_source_data[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(1),
	devoe => ww_devoe,
	o => \ast_source_data[1]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\ast_source_data[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(2),
	devoe => ww_devoe,
	o => \ast_source_data[2]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\ast_source_data[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(3),
	devoe => ww_devoe,
	o => \ast_source_data[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\ast_source_data[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(4),
	devoe => ww_devoe,
	o => \ast_source_data[4]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\ast_source_data[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(5),
	devoe => ww_devoe,
	o => \ast_source_data[5]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\ast_source_data[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(6),
	devoe => ww_devoe,
	o => \ast_source_data[6]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\ast_source_data[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(7),
	devoe => ww_devoe,
	o => \ast_source_data[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\ast_source_data[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(8),
	devoe => ww_devoe,
	o => \ast_source_data[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\ast_source_data[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(9),
	devoe => ww_devoe,
	o => \ast_source_data[9]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\ast_source_data[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(10),
	devoe => ww_devoe,
	o => \ast_source_data[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\ast_source_data[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(11),
	devoe => ww_devoe,
	o => \ast_source_data[11]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\ast_source_data[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(12),
	devoe => ww_devoe,
	o => \ast_source_data[12]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\ast_source_data[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(13),
	devoe => ww_devoe,
	o => \ast_source_data[13]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\ast_source_data[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(14),
	devoe => ww_devoe,
	o => \ast_source_data[14]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\ast_source_data[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(15),
	devoe => ww_devoe,
	o => \ast_source_data[15]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\ast_source_data[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(16),
	devoe => ww_devoe,
	o => \ast_source_data[16]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\ast_source_data[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(17),
	devoe => ww_devoe,
	o => \ast_source_data[17]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\ast_source_data[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(18),
	devoe => ww_devoe,
	o => \ast_source_data[18]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\ast_source_data[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(19),
	devoe => ww_devoe,
	o => \ast_source_data[19]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\ast_source_data[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(20),
	devoe => ww_devoe,
	o => \ast_source_data[20]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\ast_source_data[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(21),
	devoe => ww_devoe,
	o => \ast_source_data[21]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\ast_source_data[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(22),
	devoe => ww_devoe,
	o => \ast_source_data[22]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\ast_source_data[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(23),
	devoe => ww_devoe,
	o => \ast_source_data[23]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\ast_source_valid~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|data_valid~q\,
	devoe => ww_devoe,
	o => \ast_source_valid~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\ast_source_error[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lp1000_inst|LP1000_0002_ast_inst|source|at_source_error_s\(0),
	devoe => ww_devoe,
	o => \ast_source_error[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
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

-- Location: LCCOMB_X24_Y24_N24
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X27_Y24_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~22_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~22_combout\);

-- Location: LCCOMB_X26_Y24_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~0_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) $ (VCC))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~1\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datad => VCC,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~0_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~1\);

-- Location: FF_X26_Y24_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1));

-- Location: LCCOMB_X26_Y24_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~2_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~1\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~1\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~3\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~1\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~1\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~2_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~3\);

-- Location: FF_X26_Y24_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2));

-- Location: LCCOMB_X19_Y28_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0_combout\);

-- Location: LCCOMB_X19_Y28_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~0_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~0_combout\);

-- Location: FF_X19_Y28_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\);

-- Location: LCCOMB_X19_Y28_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~1_cout\ = CARRY(!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[0]~q\,
	datad => VCC,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~1_cout\);

-- Location: LCCOMB_X19_Y28_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~2_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~1_cout\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~1_cout\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~3\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~1_cout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~2_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~3\);

-- Location: LCCOMB_X19_Y28_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~0_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~2_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~0_combout\);

-- Location: FF_X19_Y28_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[1]~q\);

-- Location: LCCOMB_X19_Y28_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~4_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~3\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~3\)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~5\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~3\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~3\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~4_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~5\);

-- Location: LCCOMB_X19_Y28_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~1_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~4_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~1_combout\);

-- Location: FF_X19_Y28_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[2]~q\);

-- Location: LCCOMB_X19_Y28_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~6_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~5\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~5\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~7\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~5\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~6_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~7\);

-- Location: LCCOMB_X20_Y28_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~0_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\ $ (VCC)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~1\ = CARRY(\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\,
	datad => VCC,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~0_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~1\);

-- Location: LCCOMB_X20_Y28_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~23_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~0_combout\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~6_combout\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~0_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~23_combout\);

-- Location: FF_X20_Y28_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~23_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[3]~q\);

-- Location: LCCOMB_X19_Y28_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~8_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~7\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~7\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~9\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~7\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~8_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~9\);

-- Location: LCCOMB_X20_Y28_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~2_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~1\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\ & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~1\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~3\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~1\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~1\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~2_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~3\);

-- Location: LCCOMB_X20_Y28_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~22_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~2_combout\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~8_combout\,
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~2_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~22_combout\);

-- Location: FF_X20_Y28_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[4]~q\);

-- Location: LCCOMB_X20_Y28_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~4_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~3\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~3\)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~5\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~3\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~3\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~4_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~5\);

-- Location: LCCOMB_X19_Y28_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~10_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~9\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~9\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~11\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~9\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~10_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~11\);

-- Location: LCCOMB_X20_Y28_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~21_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~4_combout\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~4_combout\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~10_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~21_combout\);

-- Location: FF_X20_Y28_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~21_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[5]~q\);

-- Location: LCCOMB_X19_Y28_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~12_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~11\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~11\)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~13\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~11\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~11\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~12_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~13\);

-- Location: LCCOMB_X20_Y28_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~6_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~5\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~5\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~7\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~5\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~6_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~7\);

-- Location: LCCOMB_X20_Y28_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~20_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~6_combout\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~12_combout\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~6_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~20_combout\);

-- Location: FF_X20_Y28_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[6]~q\);

-- Location: LCCOMB_X20_Y28_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~8_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~7\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~7\)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~9\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~7\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~7\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~8_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~9\);

-- Location: LCCOMB_X19_Y28_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~14_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~13\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~13\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~15\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~13\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~14_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~15\);

-- Location: LCCOMB_X20_Y28_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~19_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~8_combout\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~8_combout\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~14_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~19_combout\);

-- Location: FF_X20_Y28_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~19_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[7]~q\);

-- Location: LCCOMB_X19_Y28_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~16_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[8]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~15\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[8]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~15\)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~17\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~15\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[8]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~15\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~16_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~17\);

-- Location: LCCOMB_X20_Y28_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~10_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[8]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~9\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[8]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~9\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~11\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[8]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[8]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~9\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~10_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~11\);

-- Location: LCCOMB_X20_Y28_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~18_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~10_combout\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~16_combout\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~10_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~18_combout\);

-- Location: FF_X20_Y28_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[8]~q\);

-- Location: LCCOMB_X19_Y28_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~18_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[9]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~17\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[9]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~17\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~19\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[9]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[9]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~17\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~18_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~19\);

-- Location: LCCOMB_X20_Y28_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~12_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[9]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~11\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[9]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~11\)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~13\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~11\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[9]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~11\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~12_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~13\);

-- Location: LCCOMB_X20_Y28_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~17_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~12_combout\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~18_combout\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~12_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~17_combout\);

-- Location: FF_X20_Y28_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~17_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[9]~q\);

-- Location: LCCOMB_X19_Y28_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~20_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~19\ $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~19\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~20_combout\);

-- Location: LCCOMB_X22_Y28_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~16_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~14_combout\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~20_combout\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~14_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~16_combout\);

-- Location: FF_X22_Y28_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\);

-- Location: LCCOMB_X20_Y28_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~14_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~13\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~14_combout\);

-- Location: LCCOMB_X22_Y28_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~14_combout\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\ & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add0~14_combout\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add1~20_combout\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run:u0_m0_wo0_run_enable_c[10]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0_combout\);

-- Location: FF_X22_Y28_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0));

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

-- Location: LCCOMB_X22_Y28_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0_combout\ = \ast_sink_valid~input_o\ $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0) $ (((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & 
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	datab => \ast_sink_valid~input_o\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0),
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0_combout\);

-- Location: FF_X22_Y28_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0));

-- Location: LCCOMB_X22_Y28_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add2~0_combout\ = (\ast_sink_valid~input_o\ & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0)) # 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0)))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0)))))) # (!\ast_sink_valid~input_o\ & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_enable_q\(0),
	datab => \ast_sink_valid~input_o\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add2~0_combout\);

-- Location: FF_X22_Y28_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add2~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1));

-- Location: LCCOMB_X16_Y21_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_count\(1),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder_combout\);

-- Location: FF_X16_Y21_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_q[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_q\(0));

-- Location: LCCOMB_X16_Y21_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_run_q\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X16_Y21_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\);

-- Location: FF_X16_Y21_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_memread|delay_signals[0][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\);

-- Location: FF_X27_Y24_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\);

-- Location: LCCOMB_X27_Y24_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(1),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(2),
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\);

-- Location: LCCOMB_X26_Y24_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~8_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) $ (VCC)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\ = CARRY(\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => VCC,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~8_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\);

-- Location: LCCOMB_X26_Y24_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~4_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~3\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~3\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~5\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~3\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~4_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~5\);

-- Location: FF_X26_Y24_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~8_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3));

-- Location: LCCOMB_X26_Y24_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~10_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[3]~9\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~10_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\);

-- Location: LCCOMB_X26_Y24_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~6_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~5\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~5\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~7\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~5\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~5\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~6_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~7\);

-- Location: FF_X26_Y24_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~10_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4));

-- Location: LCCOMB_X26_Y24_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~12_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~13\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[4]~11\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~12_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~13\);

-- Location: LCCOMB_X26_Y24_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~8_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~7\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~7\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~9\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~7\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~8_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~9\);

-- Location: FF_X26_Y24_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~12_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5));

-- Location: LCCOMB_X26_Y24_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~14_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~13\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~13\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~15\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~13\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[5]~13\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~14_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~15\);

-- Location: LCCOMB_X26_Y24_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~10_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~9\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~9\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~11\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~9\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~9\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~10_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~11\);

-- Location: FF_X26_Y24_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~14_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6));

-- Location: LCCOMB_X26_Y24_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]~16_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(7) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~15\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(7) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~15\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]~17\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(7) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(7),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[6]~15\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]~16_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]~17\);

-- Location: LCCOMB_X26_Y24_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~12_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(7) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~11\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(7) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~11\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~13\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(7) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(7),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~11\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~12_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~13\);

-- Location: FF_X26_Y24_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]~16_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(7));

-- Location: LCCOMB_X26_Y24_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[8]~18_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(8) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]~17\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(8) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]~17\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[8]~19\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]~17\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(8),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[7]~17\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[8]~18_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[8]~19\);

-- Location: LCCOMB_X26_Y24_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~14_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(8) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~13\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(8) 
-- & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~13\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~15\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~13\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(8),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~13\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~14_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~15\);

-- Location: FF_X26_Y24_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[8]~18_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(8));

-- Location: LCCOMB_X26_Y24_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[9]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[9]~20_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[8]~19\ $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(9),
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[8]~19\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[9]~20_combout\);

-- Location: LCCOMB_X26_Y24_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~16_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~15\ $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(9),
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~15\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~16_combout\);

-- Location: FF_X26_Y24_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[9]~20_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add6~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_ca0_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(9));

-- Location: LCCOMB_X27_Y24_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1_combout\ = (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(3),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(6),
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(5),
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(4),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1_combout\);

-- Location: LCCOMB_X27_Y24_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~2_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(9) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(7) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1_combout\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(9),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(7),
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~1_combout\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(8),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~2_combout\);

-- Location: LCCOMB_X27_Y24_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~3_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\ & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~2_combout\) # 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\)))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\ & 
-- (((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~0_combout\,
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~2_combout\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~3_combout\);

-- Location: FF_X27_Y24_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\);

-- Location: LCCOMB_X27_Y24_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~7_combout\ = (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_eq~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~7_combout\);

-- Location: FF_X27_Y24_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_ca0_i\(0));

-- Location: M9K_X25_Y24_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000FE7F3F9FCFE7F3F9FCFE7F3F9FCFE7F3F9FCFD7EBF5FAFD7EBF5FAFD7EBF5FAFD7EBF5FAFC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3EDF6FB7DBEDF6FB7DBEDF6FB7DBEDF6FA7D3E9F4FA7D3E9F4FA7D3E9F4FA7CBE5F2F97CBE5F2F97CBE5F2F97CBE5F0F87C3E",
	mem_init3 => X"1F0F87C3E1F0F87C3E1F0F87BBDDEEF77BBDDEEF77BBDDEEF77BBDDEEF77B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67ABD5EAF57ABD5EAF57ABD5EAF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9EEF77BBDDEEF77BBDDEEF77C3E1F0F87C3E1F0F87CBE5F2F97CBE5F2FA7D3E9F4FA7DBEDF6FB7DBF1F8FC7E3F1FAFD7EBF5FCFE7F3F9FEFF7F8000000000000000008040202010080603018100804028140A060301C0E0704020120904828140B05830180C068341C0E0783C20100884424120984C28140A8542C160B85C30180C868341B0D870381D0F0783E1F1008042221108C4624128944C26138",
	mem_init2 => X"A05029150A8562C160B45A2E178BC6031188C866331A0D46A361B8DC70391C8E8763B1E0F47A3E1F8FC8041209088643221148A462391C904924928964B261349A4E2793CA05028948A4532A150AA562B15CAE582C964B45B2D970B85D2F178BE5F30184C2623118CC66432194CC663399CD068349A4D46A359ACD86C369B4DC6E379BCDE70381C4E272391C8E6733A1D0E8753A9D4EC763B1DCEE773C1E0F0793C9E4F27A3D1E8F47B3D9ECF67C3E1F0F87C3E9F4FA7D3E9F4FA7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7F3F1F8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7E3E9F4FA7D3E9F4FA7C3E1F0F87C3D9ECF67B3D1E8F47A3C9E4F2793C1E0F0773B",
	mem_init1 => X"9DCEC763B1D4EA753A1D0E873399C8E472389C4E070379BCDE6E371B4DA6C361ACD66A351A4D2683419CCE6633194C8643198CC46230984C05F2F978BC5D2E170B65B2D164B2582B95CAC562A950A85329148A2502813C9E4E26934984B2592892492411C8E46229148843219088241200FC7E3E1E8F4783B1D8E872391C0DC6E361A8D46833198C86231180BC5E2E168B4582C158A85429140A04E26130944A241188C442210880401F0F8783C1D0E070361B0D06832180C05C2E160B0542A140A04C26120904422100803C1E0E070341A0C06030160B0502812090482010070381C0C06028140A0402010060301808040200804020000000000000001FEFF7",
	mem_init0 => X"FBF9FCFE7F3F5FAFD7EBF1F8FC7E3F1F6FB7DBEDF6FA7D3E9F4FA7CBE5F2F97CBE5F2F87C3E1F0F87C3E1F0F77BBDDEEF77BBDDEEF77BBD9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67ABD5EAF57ABD5EAF57ABD5EAF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF67B3D9ECF77BBDDEEF77BBDDEEF77BBDDEEF77BBDDEEF87C3E1F0F87C3E1F0F87C3E1F0F87C3E5F2F97CBE5F2F97CBE5F2F97CBE5F2FA7D3E9F4FA7D3E9F4FA7D3E9F4FA7DBEDF6FB7DBEDF6FB7DBEDF6FB7DBEDF8FC7E3F1F8FC7E3F1F8FC7E3F1F8FC7EBF5FAFD7EBF5FAFD7EBF5FAFD7EBF5FAFD7F3F9FCFE7F3F9FCFE7F3F9FCFE7F3F9FCFE",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "LP1000_0002_rtl_u0_m0_wo0_cm0_lutmem.hex",
	init_file_layout => "port_a",
	logical_ram_name => "LP1000_0002:lp1000_inst|LP1000_0002_ast:LP1000_0002_ast_inst|LP1000_0002_rtl:hpfircore|altsyncram:u0_m0_wo0_cm0_lutmem_dmem|altsyncram_q8s3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1001,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1001,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => GND,
	clr0 => \ALT_INV_reset_n~inputclkctrl_outclk\,
	portadatain => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_cm0_lutmem_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X22_Y28_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[3][0]\ : dffeas
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
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[3][0]~q\);

-- Location: LCCOMB_X22_Y28_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[2][0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[3][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[2][0]~feeder_combout\);

-- Location: FF_X22_Y28_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[2][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[2][0]~q\);

-- Location: FF_X22_Y28_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[2][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[1][0]~q\);

-- Location: LCCOMB_X22_Y28_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[1][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X22_Y28_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\);

-- Location: IOIBUF_X11_Y29_N8
\ast_sink_data[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(0),
	o => \ast_sink_data[0]~input_o\);

-- Location: FF_X12_Y26_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[0]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][0]~q\);

-- Location: FF_X12_Y26_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][0]~q\);

-- Location: FF_X12_Y26_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][0]~q\);

-- Location: LCCOMB_X12_Y26_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X12_Y26_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][0]~q\);

-- Location: LCCOMB_X14_Y20_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~9_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0),
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~9_combout\);

-- Location: FF_X14_Y20_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~9_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0));

-- Location: LCCOMB_X14_Y20_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[0]~_wirecell_combout\);

-- Location: LCCOMB_X14_Y20_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~10_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0) $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0) & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~11\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(0),
	datad => VCC,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~10_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~11\);

-- Location: FF_X14_Y20_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(1));

-- Location: LCCOMB_X14_Y20_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~12_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~11\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~11\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~13\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~11\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[1]~11\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~12_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~13\);

-- Location: FF_X14_Y20_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(2));

-- Location: LCCOMB_X14_Y20_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~14_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~13\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~13\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~15\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[2]~13\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~14_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~15\);

-- Location: FF_X14_Y20_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(3));

-- Location: LCCOMB_X14_Y20_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~16_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4) & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~15\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~15\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~17\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[3]~15\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~16_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~17\);

-- Location: FF_X14_Y20_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4));

-- Location: LCCOMB_X14_Y20_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(4),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~_wirecell_combout\);

-- Location: LCCOMB_X14_Y20_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~18_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~17\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~17\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~19\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[4]~17\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~18_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~19\);

-- Location: FF_X14_Y20_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(5));

-- Location: LCCOMB_X14_Y20_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~20_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(6) & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~19\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(6) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~19\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~21\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(6)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(6),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[5]~19\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~20_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~21\);

-- Location: FF_X14_Y20_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(6));

-- Location: LCCOMB_X14_Y20_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(6),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~_wirecell_combout\);

-- Location: LCCOMB_X14_Y20_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~22_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(7) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~21\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(7) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~21\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~23\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(7) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(7),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[6]~21\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~22_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~23\);

-- Location: FF_X14_Y20_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(7));

-- Location: LCCOMB_X14_Y20_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(7),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~_wirecell_combout\);

-- Location: LCCOMB_X14_Y20_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~24_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(8) & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~23\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(8) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~23\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~25\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(8)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(8),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[7]~23\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~24_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~25\);

-- Location: FF_X14_Y20_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~24_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(8));

-- Location: LCCOMB_X14_Y20_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(8),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~_wirecell_combout\);

-- Location: LCCOMB_X14_Y20_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]~26_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(9) $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(9),
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[8]~25\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]~26_combout\);

-- Location: FF_X14_Y20_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]~26_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(9));

-- Location: LCCOMB_X14_Y20_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]~_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i\(9),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_wa0_i[9]~_wirecell_combout\);

-- Location: LCCOMB_X16_Y21_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~9_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~9_combout\);

-- Location: FF_X16_Y21_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[0]~9_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0));

-- Location: LCCOMB_X16_Y21_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~27_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~27_combout\);

-- Location: FF_X16_Y21_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[0]~27_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(0));

-- Location: LCCOMB_X16_Y21_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~10_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) $ (VCC))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~11\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1),
	datad => VCC,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~10_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~11\);

-- Location: FF_X16_Y21_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1));

-- Location: LCCOMB_X15_Y21_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~9_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) $ (VCC))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1) & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~10\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(0),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(1),
	datad => VCC,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~9_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~10\);

-- Location: FF_X15_Y21_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~9_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(1));

-- Location: LCCOMB_X16_Y21_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~12_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~11\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~11\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~13\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~11\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[1]~11\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~12_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~13\);

-- Location: FF_X16_Y21_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2));

-- Location: LCCOMB_X15_Y21_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~11_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~10\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~10\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~12\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~10\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(2),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[1]~10\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~11_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~12\);

-- Location: FF_X15_Y21_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~11_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(2));

-- Location: LCCOMB_X17_Y28_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~8_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) $ (VCC)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\ = CARRY(\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3),
	datad => VCC,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~8_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\);

-- Location: LCCOMB_X16_Y28_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~27_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~27_combout\);

-- Location: LCCOMB_X16_Y21_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~24_combout\ = (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(10) & 
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(10),
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~24_combout\);

-- Location: FF_X16_Y28_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[0]~27_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0));

-- Location: LCCOMB_X16_Y28_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~1_cout\ = CARRY(!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(0),
	datad => VCC,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~1_cout\);

-- Location: LCCOMB_X16_Y28_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~2_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~1_cout\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~1_cout\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~3\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~1_cout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~2_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~3\);

-- Location: LCCOMB_X16_Y28_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~26_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~2_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~26_combout\);

-- Location: FF_X16_Y28_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[1]~26_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(1));

-- Location: LCCOMB_X16_Y28_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~4_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~3\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2) & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~3\)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~5\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~3\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~3\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~4_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~5\);

-- Location: LCCOMB_X16_Y28_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~25_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~4_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~25_combout\);

-- Location: FF_X16_Y28_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~25_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(2));

-- Location: LCCOMB_X16_Y28_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~6_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~5\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~5\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~7\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~5\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~6_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~7\);

-- Location: FF_X17_Y28_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~8_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(10),
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(3));

-- Location: LCCOMB_X17_Y28_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~10_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[3]~9\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~10_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\);

-- Location: LCCOMB_X16_Y28_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~8_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4) & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~7\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~7\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~9\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~7\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~8_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~9\);

-- Location: FF_X17_Y28_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~10_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(10),
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(4));

-- Location: LCCOMB_X17_Y28_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~12_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[4]~11\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~12_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\);

-- Location: LCCOMB_X16_Y28_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~10_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~9\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~9\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~11\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~9\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~10_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~11\);

-- Location: LCCOMB_X17_Y28_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~10_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~10_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~10_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~10_wirecell_combout\);

-- Location: FF_X17_Y28_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~12_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~10_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(10),
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(5));

-- Location: LCCOMB_X17_Y28_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~14_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\ $ 
-- (GND))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~15\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[5]~13\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~14_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~15\);

-- Location: LCCOMB_X16_Y28_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~12_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~11\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6) & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~11\)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~13\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~11\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~11\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~12_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~13\);

-- Location: LCCOMB_X17_Y28_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~12_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~12_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~12_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~12_wirecell_combout\);

-- Location: FF_X17_Y28_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~14_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~12_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(10),
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(6));

-- Location: LCCOMB_X17_Y28_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~16_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~15\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~15\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~17\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~15\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[6]~15\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~16_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~17\);

-- Location: LCCOMB_X16_Y28_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~14_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~13\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~13\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~15\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~13\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~14_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~15\);

-- Location: LCCOMB_X16_Y28_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~14_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~14_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~14_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~14_wirecell_combout\);

-- Location: FF_X17_Y28_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~16_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~14_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(10),
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(7));

-- Location: LCCOMB_X17_Y28_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]~18_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(8) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~17\ $ 
-- (GND))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(8) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~17\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]~19\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(8) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(8),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[7]~17\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]~18_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]~19\);

-- Location: LCCOMB_X16_Y28_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~16_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(8) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~15\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(8) & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~15\)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~17\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~15\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(8),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~15\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~16_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~17\);

-- Location: LCCOMB_X17_Y28_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~16_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~16_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~16_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~16_wirecell_combout\);

-- Location: FF_X17_Y28_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]~18_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~16_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(10),
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(8));

-- Location: LCCOMB_X17_Y28_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[9]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[9]~20_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(9) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]~19\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(9) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]~19\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[9]~21\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]~19\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(9),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[8]~19\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[9]~20_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[9]~21\);

-- Location: LCCOMB_X16_Y28_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~18_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(9) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~17\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(9) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~17\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~19\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(9) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(9),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~17\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~18_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~19\);

-- Location: LCCOMB_X17_Y28_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~18_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~18_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~18_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~18_wirecell_combout\);

-- Location: FF_X17_Y28_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[9]~20_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~18_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(10),
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(9));

-- Location: LCCOMB_X17_Y28_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[10]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[10]~22_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(10) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[9]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(10),
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[9]~21\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[10]~22_combout\);

-- Location: LCCOMB_X16_Y28_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~20_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(10) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(10),
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~19\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~20_combout\);

-- Location: FF_X17_Y28_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc[10]~22_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add10~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_wi0_ra0_count0_sc\(10),
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(10));

-- Location: LCCOMB_X16_Y21_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3) $ (((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(10) & 
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(10),
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3),
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6_combout\);

-- Location: FF_X16_Y21_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3));

-- Location: LCCOMB_X16_Y21_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~14_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~13\ $ (GND))) 
-- # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~13\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~15\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[2]~13\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~14_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~15\);

-- Location: FF_X16_Y21_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3));

-- Location: LCCOMB_X15_Y21_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~13_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~12\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~14\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~12\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(3),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[2]~12\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~13_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~14\);

-- Location: FF_X15_Y21_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~13_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(3));

-- Location: LCCOMB_X16_Y21_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~16_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~15\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~15\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~17\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~15\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[3]~15\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~16_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~17\);

-- Location: FF_X16_Y21_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4));

-- Location: LCCOMB_X15_Y21_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~8_cout\ = CARRY(!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(3),
	datad => VCC,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~8_cout\);

-- Location: LCCOMB_X15_Y21_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~9_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~8_cout\ & VCC)) 
-- # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~8_cout\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~10\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~8_cout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~9_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~10\);

-- Location: LCCOMB_X16_Y21_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~11_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(10) & 
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_sc\(10),
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~11_combout\);

-- Location: FF_X15_Y21_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~9_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4));

-- Location: LCCOMB_X15_Y21_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~15_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~14\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~14\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~14\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~14\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~16\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~14\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~14\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(4),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(4),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[3]~14\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~15_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~16\);

-- Location: FF_X15_Y21_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~15_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(4));

-- Location: LCCOMB_X15_Y21_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~12_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~10\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~10\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~13\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[4]~10\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~12_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~13\);

-- Location: FF_X15_Y21_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5));

-- Location: LCCOMB_X16_Y21_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~18_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~17\ $ (GND))) 
-- # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~17\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~19\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[4]~17\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~18_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~19\);

-- Location: FF_X16_Y21_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5));

-- Location: LCCOMB_X15_Y21_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~17_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5) $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~16\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~18\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~16\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(5),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(5),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[4]~16\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~17_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~18\);

-- Location: FF_X15_Y21_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~17_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(5));

-- Location: LCCOMB_X16_Y21_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~20_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~19\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~19\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~21\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~19\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[5]~19\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~20_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~21\);

-- Location: FF_X16_Y21_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6));

-- Location: LCCOMB_X15_Y21_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~14_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6) & ((GND) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~13\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~13\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~15\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[5]~13\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~14_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~15\);

-- Location: FF_X15_Y21_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6));

-- Location: LCCOMB_X15_Y21_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~19_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~18\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~18\ & VCC)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~18\) # (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~18\))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~20\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~18\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(6),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(6),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[5]~18\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~19_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~20\);

-- Location: FF_X15_Y21_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~19_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(6));

-- Location: LCCOMB_X15_Y21_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]~16_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(7) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~15\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(7) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~15\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]~17\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(7) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(7),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[6]~15\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]~16_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]~17\);

-- Location: FF_X15_Y21_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(7));

-- Location: LCCOMB_X16_Y21_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]~22_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(7) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~21\ $ (GND))) 
-- # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(7) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~21\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]~23\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(7) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(7),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[6]~21\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]~22_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]~23\);

-- Location: FF_X16_Y21_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(7));

-- Location: LCCOMB_X15_Y21_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~21_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(7) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(7) $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~20\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~22\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(7) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(7) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~20\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(7) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(7)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(7),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(7),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[6]~20\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~21_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~22\);

-- Location: FF_X15_Y21_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~21_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(7));

-- Location: LCCOMB_X16_Y21_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[8]~24_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(8) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]~23\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(8) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]~23\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[8]~25\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]~23\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(8),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[7]~23\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[8]~24_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[8]~25\);

-- Location: FF_X16_Y21_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[8]~24_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(8));

-- Location: LCCOMB_X15_Y21_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[8]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[8]~18_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(8) & ((GND) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]~17\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(8) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]~17\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[8]~19\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(8)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(8),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[7]~17\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[8]~18_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[8]~19\);

-- Location: FF_X15_Y21_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[8]~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(8));

-- Location: LCCOMB_X15_Y21_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[8]~23_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(8) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(8) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~22\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(8) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~22\ & VCC)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(8) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(8) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~22\) # (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(8) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~22\))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[8]~24\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(8) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(8) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~22\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(8) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(8)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(8),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(8),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[7]~22\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[8]~23_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[8]~24\);

-- Location: FF_X15_Y21_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[8]~23_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(8));

-- Location: LCCOMB_X15_Y21_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[9]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[9]~20_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(9) $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[8]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(9),
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[8]~19\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[9]~20_combout\);

-- Location: FF_X15_Y21_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[9]~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(9));

-- Location: LCCOMB_X16_Y21_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[9]~26_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[8]~25\ $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(9),
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[8]~25\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[9]~26_combout\);

-- Location: FF_X16_Y21_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i[9]~26_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_memread_q_13|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(9));

-- Location: LCCOMB_X15_Y21_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[9]~25_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(9) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[8]~24\ $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count0_i\(9),
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_count1_i\(9),
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[8]~24\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[9]~25_combout\);

-- Location: FF_X15_Y21_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o[9]~25_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_ra0_add_0_0_o\(9));

-- Location: IOIBUF_X21_Y29_N22
\ast_sink_data[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(1),
	o => \ast_sink_data[1]~input_o\);

-- Location: FF_X20_Y19_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][1]\ : dffeas
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
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][1]~q\);

-- Location: LCCOMB_X20_Y19_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][1]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][1]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][1]~feeder_combout\);

-- Location: FF_X20_Y19_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][1]~q\);

-- Location: LCCOMB_X20_Y19_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][1]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][1]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][1]~feeder_combout\);

-- Location: FF_X20_Y19_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][1]~q\);

-- Location: LCCOMB_X20_Y19_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][1]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][1]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][1]~feeder_combout\);

-- Location: FF_X20_Y19_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][1]~q\);

-- Location: IOIBUF_X9_Y29_N29
\ast_sink_data[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(17),
	o => \ast_sink_data[17]~input_o\);

-- Location: LCCOMB_X14_Y19_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][17]~feeder_combout\ = \ast_sink_data[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[17]~input_o\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][17]~feeder_combout\);

-- Location: FF_X14_Y19_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][17]~q\);

-- Location: LCCOMB_X14_Y19_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][17]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][17]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][17]~feeder_combout\);

-- Location: FF_X14_Y19_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][17]~q\);

-- Location: LCCOMB_X14_Y19_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][17]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][17]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][17]~feeder_combout\);

-- Location: FF_X14_Y19_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][17]~q\);

-- Location: LCCOMB_X14_Y19_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][17]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][17]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][17]~feeder_combout\);

-- Location: FF_X14_Y19_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][17]~q\);

-- Location: IOIBUF_X14_Y0_N15
\ast_sink_data[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(18),
	o => \ast_sink_data[18]~input_o\);

-- Location: FF_X14_Y19_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][18]\ : dffeas
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
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][18]~q\);

-- Location: LCCOMB_X14_Y19_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][18]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][18]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][18]~feeder_combout\);

-- Location: FF_X14_Y19_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][18]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][18]~q\);

-- Location: FF_X14_Y19_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][18]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][18]~q\);

-- Location: LCCOMB_X14_Y19_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][18]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][18]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][18]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][18]~feeder_combout\);

-- Location: FF_X14_Y19_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][18]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][18]~q\);

-- Location: IOIBUF_X0_Y21_N15
\ast_sink_data[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(19),
	o => \ast_sink_data[19]~input_o\);

-- Location: FF_X14_Y19_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[19]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][19]~q\);

-- Location: LCCOMB_X14_Y19_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][19]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][19]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][19]~feeder_combout\);

-- Location: FF_X14_Y19_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][19]~q\);

-- Location: LCCOMB_X14_Y19_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][19]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][19]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][19]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][19]~feeder_combout\);

-- Location: FF_X14_Y19_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][19]~q\);

-- Location: FF_X14_Y19_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][19]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][19]~q\);

-- Location: IOIBUF_X0_Y22_N1
\ast_sink_data[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(20),
	o => \ast_sink_data[20]~input_o\);

-- Location: LCCOMB_X14_Y19_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][20]~feeder_combout\ = \ast_sink_data[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[20]~input_o\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][20]~feeder_combout\);

-- Location: FF_X14_Y19_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][20]~q\);

-- Location: LCCOMB_X14_Y19_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][20]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][20]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][20]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][20]~feeder_combout\);

-- Location: FF_X14_Y19_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][20]~q\);

-- Location: FF_X14_Y19_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][20]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][20]~q\);

-- Location: FF_X14_Y19_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][20]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][20]~q\);

-- Location: IOIBUF_X9_Y29_N1
\ast_sink_data[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(21),
	o => \ast_sink_data[21]~input_o\);

-- Location: LCCOMB_X12_Y26_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][21]~feeder_combout\ = \ast_sink_data[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[21]~input_o\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][21]~feeder_combout\);

-- Location: FF_X12_Y26_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][21]~q\);

-- Location: LCCOMB_X12_Y26_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][21]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][21]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][21]~feeder_combout\);

-- Location: FF_X12_Y26_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][21]~q\);

-- Location: LCCOMB_X12_Y26_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][21]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][21]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][21]~feeder_combout\);

-- Location: FF_X12_Y26_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][21]~q\);

-- Location: LCCOMB_X12_Y26_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][21]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][21]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][21]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][21]~feeder_combout\);

-- Location: FF_X12_Y26_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][21]~q\);

-- Location: IOIBUF_X16_Y29_N1
\ast_sink_data[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(22),
	o => \ast_sink_data[22]~input_o\);

-- Location: FF_X12_Y26_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][22]\ : dffeas
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
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][22]~q\);

-- Location: FF_X12_Y26_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][22]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][22]~q\);

-- Location: LCCOMB_X12_Y26_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][22]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][22]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][22]~feeder_combout\);

-- Location: FF_X12_Y26_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][22]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][22]~q\);

-- Location: LCCOMB_X12_Y26_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][22]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][22]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][22]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][22]~feeder_combout\);

-- Location: FF_X12_Y26_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][22]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][22]~q\);

-- Location: IOIBUF_X9_Y29_N8
\ast_sink_data[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(23),
	o => \ast_sink_data[23]~input_o\);

-- Location: FF_X12_Y26_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[23]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][23]~q\);

-- Location: LCCOMB_X12_Y26_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][23]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][23]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][23]~feeder_combout\);

-- Location: FF_X12_Y26_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][23]~q\);

-- Location: FF_X12_Y26_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][23]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][23]~q\);

-- Location: LCCOMB_X12_Y26_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][23]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][23]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][23]~feeder_combout\);

-- Location: FF_X12_Y26_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][23]~q\);

-- Location: M9K_X13_Y19_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "LP1000_0002:lp1000_inst|LP1000_0002_ast:LP1000_0002_ast_inst|LP1000_0002_rtl:hpfircore|altsyncram:u0_m0_wo0_wi0_delayr0_dmem|altsyncram_7do3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 24,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_reset_n~inputclkctrl_outclk\,
	portadatain => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: DSPMULT_X18_Y19_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y19_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X17_Y19_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(1),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]~feeder_combout\);

-- Location: FF_X17_Y19_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1));

-- Location: IOIBUF_X11_Y29_N15
\ast_sink_data[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(2),
	o => \ast_sink_data[2]~input_o\);

-- Location: LCCOMB_X12_Y21_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][2]~feeder_combout\ = \ast_sink_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[2]~input_o\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][2]~feeder_combout\);

-- Location: FF_X12_Y21_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][2]~q\);

-- Location: LCCOMB_X12_Y21_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][2]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][2]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][2]~feeder_combout\);

-- Location: FF_X12_Y21_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][2]~q\);

-- Location: LCCOMB_X12_Y21_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][2]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][2]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][2]~feeder_combout\);

-- Location: FF_X12_Y21_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][2]~q\);

-- Location: LCCOMB_X12_Y21_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][2]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][2]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][2]~feeder_combout\);

-- Location: FF_X12_Y21_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][2]~q\);

-- Location: IOIBUF_X11_Y29_N1
\ast_sink_data[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(3),
	o => \ast_sink_data[3]~input_o\);

-- Location: FF_X12_Y21_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][3]\ : dffeas
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
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][3]~q\);

-- Location: FF_X12_Y21_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][3]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][3]~q\);

-- Location: LCCOMB_X12_Y21_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][3]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][3]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][3]~feeder_combout\);

-- Location: FF_X12_Y21_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][3]~q\);

-- Location: LCCOMB_X12_Y21_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][3]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][3]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][3]~feeder_combout\);

-- Location: FF_X12_Y21_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][3]~q\);

-- Location: IOIBUF_X5_Y29_N29
\ast_sink_data[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(4),
	o => \ast_sink_data[4]~input_o\);

-- Location: FF_X12_Y21_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][4]\ : dffeas
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
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][4]~q\);

-- Location: FF_X12_Y21_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][4]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][4]~q\);

-- Location: LCCOMB_X12_Y21_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][4]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][4]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][4]~feeder_combout\);

-- Location: FF_X12_Y21_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][4]~q\);

-- Location: LCCOMB_X12_Y21_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][4]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][4]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][4]~feeder_combout\);

-- Location: FF_X12_Y21_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][4]~q\);

-- Location: IOIBUF_X0_Y21_N8
\ast_sink_data[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(5),
	o => \ast_sink_data[5]~input_o\);

-- Location: LCCOMB_X12_Y21_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][5]~feeder_combout\ = \ast_sink_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[5]~input_o\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][5]~feeder_combout\);

-- Location: FF_X12_Y21_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][5]~q\);

-- Location: FF_X12_Y21_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][5]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][5]~q\);

-- Location: FF_X12_Y21_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][5]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][5]~q\);

-- Location: LCCOMB_X12_Y21_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][5]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][5]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][5]~feeder_combout\);

-- Location: FF_X12_Y21_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][5]~q\);

-- Location: IOIBUF_X14_Y29_N29
\ast_sink_data[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(6),
	o => \ast_sink_data[6]~input_o\);

-- Location: FF_X14_Y21_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[6]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][6]~q\);

-- Location: LCCOMB_X14_Y21_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][6]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][6]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][6]~feeder_combout\);

-- Location: FF_X14_Y21_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][6]~q\);

-- Location: LCCOMB_X14_Y21_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][6]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][6]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][6]~feeder_combout\);

-- Location: FF_X14_Y21_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][6]~q\);

-- Location: LCCOMB_X14_Y21_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][6]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][6]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][6]~feeder_combout\);

-- Location: FF_X14_Y21_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][6]~q\);

-- Location: IOIBUF_X0_Y21_N1
\ast_sink_data[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(7),
	o => \ast_sink_data[7]~input_o\);

-- Location: LCCOMB_X14_Y21_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][7]~feeder_combout\ = \ast_sink_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[7]~input_o\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][7]~feeder_combout\);

-- Location: FF_X14_Y21_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][7]~q\);

-- Location: FF_X14_Y21_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][7]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][7]~q\);

-- Location: LCCOMB_X14_Y21_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][7]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][7]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][7]~feeder_combout\);

-- Location: FF_X14_Y21_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][7]~q\);

-- Location: LCCOMB_X14_Y21_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][7]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][7]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][7]~feeder_combout\);

-- Location: FF_X14_Y21_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][7]~q\);

-- Location: IOIBUF_X9_Y29_N22
\ast_sink_data[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(8),
	o => \ast_sink_data[8]~input_o\);

-- Location: LCCOMB_X14_Y21_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][8]~feeder_combout\ = \ast_sink_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[8]~input_o\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][8]~feeder_combout\);

-- Location: FF_X14_Y21_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][8]~q\);

-- Location: LCCOMB_X14_Y21_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][8]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][8]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][8]~feeder_combout\);

-- Location: FF_X14_Y21_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][8]~q\);

-- Location: LCCOMB_X14_Y21_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][8]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][8]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][8]~feeder_combout\);

-- Location: FF_X14_Y21_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][8]~q\);

-- Location: LCCOMB_X14_Y21_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][8]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][8]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][8]~feeder_combout\);

-- Location: FF_X14_Y21_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][8]~q\);

-- Location: IOIBUF_X7_Y29_N29
\ast_sink_data[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(9),
	o => \ast_sink_data[9]~input_o\);

-- Location: LCCOMB_X14_Y21_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][9]~feeder_combout\ = \ast_sink_data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[9]~input_o\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][9]~feeder_combout\);

-- Location: FF_X14_Y21_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][9]~q\);

-- Location: FF_X14_Y21_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][9]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][9]~q\);

-- Location: FF_X14_Y21_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][9]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][9]~q\);

-- Location: LCCOMB_X14_Y21_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][9]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][9]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][9]~feeder_combout\);

-- Location: FF_X14_Y21_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][9]~q\);

-- Location: IOIBUF_X16_Y29_N8
\ast_sink_data[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(10),
	o => \ast_sink_data[10]~input_o\);

-- Location: FF_X17_Y21_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][10]\ : dffeas
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
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][10]~q\);

-- Location: LCCOMB_X17_Y21_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][10]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][10]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][10]~feeder_combout\);

-- Location: FF_X17_Y21_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][10]~q\);

-- Location: LCCOMB_X17_Y21_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][10]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][10]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][10]~feeder_combout\);

-- Location: FF_X17_Y21_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][10]~q\);

-- Location: LCCOMB_X17_Y21_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][10]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][10]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][10]~feeder_combout\);

-- Location: FF_X17_Y21_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][10]~q\);

-- Location: M9K_X13_Y21_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "LP1000_0002:lp1000_inst|LP1000_0002_ast:LP1000_0002_ast_inst|LP1000_0002_rtl:hpfircore|altsyncram:u0_m0_wo0_wi0_delayr0_dmem|altsyncram_7do3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 24,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_reset_n~inputclkctrl_outclk\,
	portadatain => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X0_Y21_N22
\ast_sink_data[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(11),
	o => \ast_sink_data[11]~input_o\);

-- Location: FF_X6_Y20_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][11]\ : dffeas
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
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][11]~q\);

-- Location: LCCOMB_X6_Y20_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][11]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][11]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][11]~feeder_combout\);

-- Location: FF_X6_Y20_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][11]~q\);

-- Location: LCCOMB_X6_Y20_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][11]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][11]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][11]~feeder_combout\);

-- Location: FF_X6_Y20_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][11]~q\);

-- Location: LCCOMB_X6_Y20_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][11]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][11]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][11]~feeder_combout\);

-- Location: FF_X6_Y20_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][11]~q\);

-- Location: IOIBUF_X0_Y20_N1
\ast_sink_data[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(12),
	o => \ast_sink_data[12]~input_o\);

-- Location: FF_X6_Y20_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][12]\ : dffeas
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
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][12]~q\);

-- Location: FF_X6_Y20_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][12]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][12]~q\);

-- Location: LCCOMB_X6_Y20_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][12]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][12]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][12]~feeder_combout\);

-- Location: FF_X6_Y20_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][12]~q\);

-- Location: LCCOMB_X6_Y20_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][12]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][12]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][12]~feeder_combout\);

-- Location: FF_X6_Y20_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][12]~q\);

-- Location: IOIBUF_X0_Y20_N8
\ast_sink_data[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(13),
	o => \ast_sink_data[13]~input_o\);

-- Location: LCCOMB_X6_Y20_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][13]~feeder_combout\ = \ast_sink_data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[13]~input_o\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][13]~feeder_combout\);

-- Location: FF_X6_Y20_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][13]~q\);

-- Location: LCCOMB_X6_Y20_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][13]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][13]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][13]~feeder_combout\);

-- Location: FF_X6_Y20_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][13]~q\);

-- Location: LCCOMB_X6_Y20_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][13]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][13]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][13]~feeder_combout\);

-- Location: FF_X6_Y20_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][13]~q\);

-- Location: FF_X6_Y20_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][13]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][13]~q\);

-- Location: IOIBUF_X0_Y23_N1
\ast_sink_data[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(14),
	o => \ast_sink_data[14]~input_o\);

-- Location: LCCOMB_X6_Y20_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][14]~feeder_combout\ = \ast_sink_data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ast_sink_data[14]~input_o\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][14]~feeder_combout\);

-- Location: FF_X6_Y20_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][14]~q\);

-- Location: FF_X6_Y20_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][14]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][14]~q\);

-- Location: FF_X6_Y20_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][14]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][14]~q\);

-- Location: LCCOMB_X6_Y20_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][14]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][14]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][14]~feeder_combout\);

-- Location: FF_X6_Y20_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][14]~q\);

-- Location: IOIBUF_X11_Y29_N29
\ast_sink_data[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(15),
	o => \ast_sink_data[15]~input_o\);

-- Location: FF_X12_Y20_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][15]\ : dffeas
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
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][15]~q\);

-- Location: LCCOMB_X12_Y20_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][15]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][15]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][15]~feeder_combout\);

-- Location: FF_X12_Y20_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][15]~q\);

-- Location: LCCOMB_X12_Y20_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][15]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][15]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][15]~feeder_combout\);

-- Location: FF_X12_Y20_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][15]~q\);

-- Location: LCCOMB_X12_Y20_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][15]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][15]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][15]~feeder_combout\);

-- Location: FF_X12_Y20_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][15]~q\);

-- Location: IOIBUF_X11_Y29_N22
\ast_sink_data[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_data(16),
	o => \ast_sink_data[16]~input_o\);

-- Location: FF_X12_Y20_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ast_sink_data[16]~input_o\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][16]~q\);

-- Location: LCCOMB_X12_Y20_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][16]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[3][16]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][16]~feeder_combout\);

-- Location: FF_X12_Y20_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][16]~q\);

-- Location: LCCOMB_X12_Y20_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][16]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[2][16]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][16]~feeder_combout\);

-- Location: FF_X12_Y20_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][16]~q\);

-- Location: FF_X12_Y20_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[1][16]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_xIn_0_14|delay_signals[0][16]~q\);

-- Location: M9K_X13_Y20_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "LP1000_0002:lp1000_inst|LP1000_0002_ast:LP1000_0002_ast_inst|LP1000_0002_rtl:hpfircore|altsyncram:u0_m0_wo0_wi0_delayr0_dmem|altsyncram_7do3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 10,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 24,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_in0_m0_wi0_wo0_assign_sel_q_14|delay_signals[0][0]~q\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_reset_n~inputclkctrl_outclk\,
	portadatain => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_wi0_delayr0_dmem|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

-- Location: DSPMULT_X18_Y20_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1\ : cycloneiii_mac_mult
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
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAA_bus\,
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y20_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "0")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	aclr => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => VCC,
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X17_Y19_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[18]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(18),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[18]~feeder_combout\);

-- Location: FF_X17_Y19_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[18]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18));

-- Location: LCCOMB_X17_Y19_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]~feeder_combout\);

-- Location: FF_X17_Y19_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0));

-- Location: FF_X19_Y18_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(17),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17));

-- Location: LCCOMB_X17_Y18_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~15_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17) $ (VCC))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17) & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0) & 
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(0),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(17),
	datad => VCC,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~15_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\);

-- Location: LCCOMB_X17_Y18_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~17_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(1),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(18),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~16\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~17_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\);

-- Location: FF_X17_Y18_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~17_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18));

-- Location: FF_X17_Y18_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[17]~15_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17));

-- Location: LCCOMB_X19_Y19_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(16),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder_combout\);

-- Location: FF_X19_Y19_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(16));

-- Location: LCCOMB_X19_Y19_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(16),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]~feeder_combout\);

-- Location: FF_X19_Y19_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16));

-- Location: LCCOMB_X19_Y19_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(15),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder_combout\);

-- Location: FF_X19_Y19_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(15));

-- Location: LCCOMB_X19_Y19_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(15),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder_combout\);

-- Location: FF_X19_Y19_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[15]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15));

-- Location: FF_X19_Y19_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(14),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(14));

-- Location: LCCOMB_X19_Y19_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(14),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder_combout\);

-- Location: FF_X19_Y19_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14));

-- Location: FF_X19_Y19_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(13),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(13));

-- Location: FF_X19_Y19_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(13),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13));

-- Location: LCCOMB_X17_Y20_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(12),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]~feeder_combout\);

-- Location: FF_X17_Y20_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(12));

-- Location: LCCOMB_X17_Y20_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(12),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder_combout\);

-- Location: FF_X17_Y20_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12));

-- Location: LCCOMB_X17_Y20_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[11]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(11),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[11]~feeder_combout\);

-- Location: FF_X17_Y20_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(11));

-- Location: LCCOMB_X17_Y20_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(11),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder_combout\);

-- Location: FF_X17_Y20_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[11]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11));

-- Location: FF_X17_Y20_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(10),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(10));

-- Location: LCCOMB_X17_Y20_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(10),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder_combout\);

-- Location: FF_X17_Y20_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10));

-- Location: FF_X15_Y20_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(9),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(9));

-- Location: LCCOMB_X15_Y20_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(9),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]~feeder_combout\);

-- Location: FF_X15_Y20_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9));

-- Location: LCCOMB_X17_Y20_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(8),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]~feeder_combout\);

-- Location: FF_X17_Y20_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(8));

-- Location: LCCOMB_X16_Y20_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(8),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder_combout\);

-- Location: FF_X16_Y20_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8));

-- Location: LCCOMB_X17_Y20_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(7),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]~feeder_combout\);

-- Location: FF_X17_Y20_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(7));

-- Location: LCCOMB_X17_Y20_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(7),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]~feeder_combout\);

-- Location: FF_X17_Y20_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7));

-- Location: LCCOMB_X19_Y20_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(6),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]~feeder_combout\);

-- Location: FF_X19_Y20_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(6));

-- Location: LCCOMB_X19_Y20_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(6),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder_combout\);

-- Location: FF_X19_Y20_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6));

-- Location: LCCOMB_X19_Y20_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(5),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder_combout\);

-- Location: FF_X19_Y20_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(5));

-- Location: LCCOMB_X19_Y20_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(5),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder_combout\);

-- Location: FF_X19_Y20_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[5]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5));

-- Location: FF_X15_Y20_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(4),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(4));

-- Location: LCCOMB_X15_Y20_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(4),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder_combout\);

-- Location: FF_X15_Y20_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4));

-- Location: LCCOMB_X19_Y20_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(3),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder_combout\);

-- Location: FF_X19_Y20_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(3));

-- Location: LCCOMB_X19_Y20_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(3),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]~feeder_combout\);

-- Location: FF_X19_Y20_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3));

-- Location: LCCOMB_X15_Y20_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(2),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder_combout\);

-- Location: FF_X15_Y20_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(2));

-- Location: LCCOMB_X15_Y20_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(2),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder_combout\);

-- Location: FF_X15_Y20_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[2]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2));

-- Location: LCCOMB_X15_Y20_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(1),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder_combout\);

-- Location: FF_X15_Y20_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[1]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(1));

-- Location: FF_X15_Y20_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(1),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1));

-- Location: LCCOMB_X16_Y20_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder_combout\);

-- Location: FF_X16_Y20_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(0));

-- Location: LCCOMB_X16_Y20_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]~feeder_combout\);

-- Location: FF_X16_Y20_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0));

-- Location: LCCOMB_X16_Y20_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~42_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0) $ (VCC))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0) & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~43\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0) & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0),
	datad => VCC,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~42_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~43\);

-- Location: LCCOMB_X24_Y22_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ $ (VCC)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\ = CARRY(\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\,
	datad => VCC,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\);

-- Location: LCCOMB_X23_Y22_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~1_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~1_combout\);

-- Location: LCCOMB_X23_Y22_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~0_combout\ = (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\,
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y22_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~2_combout\ = (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y22_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~1_combout\ = (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\,
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~q\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y22_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~3_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~0_combout\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~2_combout\ & 
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~0_combout\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~2_combout\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~1_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y24_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[3][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[3][0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_compute|delay_signals[0][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[3][0]~feeder_combout\);

-- Location: FF_X27_Y24_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[3][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[3][0]~q\);

-- Location: LCCOMB_X27_Y24_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[2][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[2][0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[3][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[3][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[2][0]~feeder_combout\);

-- Location: FF_X27_Y24_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[2][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[2][0]~q\);

-- Location: LCCOMB_X27_Y24_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[1][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[1][0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[2][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[2][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[1][0]~feeder_combout\);

-- Location: FF_X27_Y24_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[1][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[1][0]~q\);

-- Location: FF_X35_Y26_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[1][0]~q\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\);

-- Location: FF_X24_Y22_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal0~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\);

-- Location: LCCOMB_X24_Y22_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\ = (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq_eq~q\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\);

-- Location: FF_X23_Y22_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\);

-- Location: LCCOMB_X23_Y22_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~1_cout\ = CARRY(\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~q\,
	datad => VCC,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~1_cout\);

-- Location: LCCOMB_X23_Y22_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~2_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~1_cout\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~1_cout\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~3\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~1_cout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~2_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~3\);

-- Location: FF_X23_Y22_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[1]~q\);

-- Location: LCCOMB_X23_Y22_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~4_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~3\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~3\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~5\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~3\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~4_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~5\);

-- Location: FF_X23_Y22_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[2]~q\);

-- Location: LCCOMB_X23_Y22_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~6_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~5\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~5\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~7\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~5\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~6_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~7\);

-- Location: FF_X24_Y22_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~q\);

-- Location: LCCOMB_X24_Y22_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[3]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\);

-- Location: LCCOMB_X23_Y22_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~8_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~7\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~7\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~9\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~7\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~8_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~9\);

-- Location: FF_X24_Y22_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~q\);

-- Location: LCCOMB_X24_Y22_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & ((GND) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[4]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\);

-- Location: LCCOMB_X23_Y22_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~10_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~9\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~9\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~11\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~9\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~10_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~11\);

-- Location: FF_X24_Y22_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~10_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~q\);

-- Location: LCCOMB_X24_Y22_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[5]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\);

-- Location: LCCOMB_X23_Y22_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~12_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~11\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~11\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~13\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~11\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~12_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~13\);

-- Location: FF_X24_Y22_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~12_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~q\);

-- Location: LCCOMB_X24_Y22_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ & ((GND) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~2\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[6]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~2\);

-- Location: LCCOMB_X23_Y22_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~14_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~13\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~13\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~15\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~13\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~14_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~15\);

-- Location: FF_X24_Y22_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~14_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~q\);

-- Location: LCCOMB_X24_Y22_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\ & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~2\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~2\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~2\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\ & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[7]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~2\);

-- Location: LCCOMB_X23_Y22_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~16_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~15\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~15\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~17\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~15\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~16_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~17\);

-- Location: FF_X24_Y22_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~16_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~q\);

-- Location: LCCOMB_X24_Y22_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~q\ & ((GND) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~2\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~q\ & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~2\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~2\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~q\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[8]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~2\);

-- Location: LCCOMB_X23_Y22_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~18_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~17\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~17\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~19\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~17\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~18_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~19\);

-- Location: FF_X24_Y22_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~q\);

-- Location: LCCOMB_X24_Y22_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~2\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~q\ & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~2\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~2\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~2\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[9]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~2\);

-- Location: LCCOMB_X23_Y22_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~20_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~19\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~19\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~21\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~q\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~19\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~20_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~21\);

-- Location: FF_X24_Y22_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~q\);

-- Location: LCCOMB_X24_Y22_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~1_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~2\ $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[10]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~1_combout\);

-- Location: LCCOMB_X23_Y22_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~22_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~21\ $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~21\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~22_combout\);

-- Location: FF_X24_Y22_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add4~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_aseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\);

-- Location: LCCOMB_X24_Y22_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~feeder_combout\);

-- Location: FF_X24_Y22_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\);

-- Location: FF_X16_Y20_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~42_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(0),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(0));

-- Location: LCCOMB_X16_Y20_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~44_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~43\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~43\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~43\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~43\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~45\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~43\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~43\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[0]~43\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~44_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~45\);

-- Location: FF_X16_Y20_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~44_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(1),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(1));

-- Location: LCCOMB_X16_Y20_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~46_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~45\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~47\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~45\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[1]~45\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~46_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~47\);

-- Location: FF_X16_Y20_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~46_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(2),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(2));

-- Location: LCCOMB_X16_Y20_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~48_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~47\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~47\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~47\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~47\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~49\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~47\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~47\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[2]~47\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~48_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~49\);

-- Location: FF_X16_Y20_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~48_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(3),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(3));

-- Location: LCCOMB_X16_Y20_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~50_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~49\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~51\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~49\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[3]~49\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~50_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~51\);

-- Location: FF_X16_Y20_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~50_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(4),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(4));

-- Location: LCCOMB_X16_Y20_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~52_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~51\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~51\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~51\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~51\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~53\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~51\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~51\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[4]~51\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~52_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~53\);

-- Location: FF_X16_Y20_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~52_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(5),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(5));

-- Location: LCCOMB_X16_Y20_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~54_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~53\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~55\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~53\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[5]~53\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~54_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~55\);

-- Location: FF_X16_Y20_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~54_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(6),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(6));

-- Location: LCCOMB_X16_Y20_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~56_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~55\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~55\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~55\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~55\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~57\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~55\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~55\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[6]~55\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~56_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~57\);

-- Location: FF_X16_Y20_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~56_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(7),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(7));

-- Location: LCCOMB_X16_Y20_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~58_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~57\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~59\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~57\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[7]~57\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~58_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~59\);

-- Location: FF_X16_Y20_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~58_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(8),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(8));

-- Location: LCCOMB_X16_Y20_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~60_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~59\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~59\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~59\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~59\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~61\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~59\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~59\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[8]~59\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~60_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~61\);

-- Location: FF_X16_Y20_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~60_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(9),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(9));

-- Location: LCCOMB_X16_Y20_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~62_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~61\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~63\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~61\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[9]~61\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~62_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~63\);

-- Location: FF_X16_Y20_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~62_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(10),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(10));

-- Location: LCCOMB_X16_Y20_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~64_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~63\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~63\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~63\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~63\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~65\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~63\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~63\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[10]~63\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~64_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~65\);

-- Location: FF_X16_Y20_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~64_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(11),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(11));

-- Location: LCCOMB_X16_Y20_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~66_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~65\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~67\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~65\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[11]~65\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~66_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~67\);

-- Location: FF_X16_Y20_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~66_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(12),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(12));

-- Location: LCCOMB_X16_Y19_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~68_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~67\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~67\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~67\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~67\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~69\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~67\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~67\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[12]~67\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~68_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~69\);

-- Location: FF_X16_Y19_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~68_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(13),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(13));

-- Location: LCCOMB_X16_Y19_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~70_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~69\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~71\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~69\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[13]~69\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~70_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~71\);

-- Location: FF_X16_Y19_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~70_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(14),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(14));

-- Location: LCCOMB_X16_Y19_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~72_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~71\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~71\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~71\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~71\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~73\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~71\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~71\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[14]~71\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~72_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~73\);

-- Location: FF_X16_Y19_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~72_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(15),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(15));

-- Location: LCCOMB_X16_Y19_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~74_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~73\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~75\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~73\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[15]~73\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~74_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~75\);

-- Location: FF_X16_Y19_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~74_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(16),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(16));

-- Location: LCCOMB_X16_Y19_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~76_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~75\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~75\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~75\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~75\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~77\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~75\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~75\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[16]~75\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~76_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~77\);

-- Location: FF_X16_Y19_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~76_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(17),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(17));

-- Location: LCCOMB_X16_Y19_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~78_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~77\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~79\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~77\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[17]~77\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~78_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~79\);

-- Location: FF_X16_Y19_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~78_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(18),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18));

-- Location: FF_X15_Y19_N1
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(18),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(0));

-- Location: FF_X17_Y19_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(2),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2));

-- Location: LCCOMB_X19_Y18_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(19),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder_combout\);

-- Location: FF_X19_Y18_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19));

-- Location: LCCOMB_X17_Y18_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~19_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2) $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19) $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(2),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(19),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[18]~18\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~19_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\);

-- Location: FF_X17_Y18_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~19_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19));

-- Location: LCCOMB_X16_Y19_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~80_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~79\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~79\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~79\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~79\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~81\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~79\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~79\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[18]~79\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~80_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~81\);

-- Location: FF_X16_Y19_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~80_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(19),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19));

-- Location: FF_X15_Y19_N11
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(19),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(1));

-- Location: LCCOMB_X19_Y18_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(20),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder_combout\);

-- Location: FF_X19_Y18_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20));

-- Location: FF_X17_Y19_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(3),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3));

-- Location: LCCOMB_X17_Y18_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~21_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(20),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(3),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[19]~20\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~21_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\);

-- Location: FF_X17_Y18_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~21_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20));

-- Location: LCCOMB_X16_Y19_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~82_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~81\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~83\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~81\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~81\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[19]~81\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~82_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~83\);

-- Location: FF_X16_Y19_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~82_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(20),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20));

-- Location: FF_X15_Y19_N5
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(20),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(2));

-- Location: LCCOMB_X19_Y18_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(21),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder_combout\);

-- Location: FF_X19_Y18_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[21]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21));

-- Location: LCCOMB_X17_Y19_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[4]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(4),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[4]~feeder_combout\);

-- Location: FF_X17_Y19_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4));

-- Location: LCCOMB_X17_Y18_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~23_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21) $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4) $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(21),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(4),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[20]~22\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~23_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\);

-- Location: FF_X17_Y18_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~23_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21));

-- Location: LCCOMB_X16_Y19_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~84_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~83\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~83\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~83\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~83\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~85\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~83\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~83\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[20]~83\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~84_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~85\);

-- Location: FF_X16_Y19_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~84_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(21),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21));

-- Location: LCCOMB_X15_Y19_N6
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[3]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(21),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[3]~feeder_combout\);

-- Location: FF_X15_Y19_N7
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[3]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(3));

-- Location: LCCOMB_X19_Y18_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[22]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(22),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[22]~feeder_combout\);

-- Location: FF_X19_Y18_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[22]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22));

-- Location: FF_X17_Y19_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(5),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5));

-- Location: LCCOMB_X17_Y18_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~25_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(22),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(5),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[21]~24\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~25_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\);

-- Location: FF_X17_Y18_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~25_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22));

-- Location: LCCOMB_X16_Y19_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~86_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~85\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~87\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~85\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[21]~85\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~86_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~87\);

-- Location: FF_X16_Y19_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~86_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(22),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22));

-- Location: LCCOMB_X15_Y19_N8
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[4]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(22),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[4]~feeder_combout\);

-- Location: FF_X15_Y19_N9
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[4]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(4));

-- Location: FF_X17_Y19_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(6),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6));

-- Location: LCCOMB_X19_Y18_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(23),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]~feeder_combout\);

-- Location: FF_X19_Y18_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23));

-- Location: LCCOMB_X17_Y18_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~27_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6) $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23) $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(6),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(23),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[22]~26\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~27_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\);

-- Location: FF_X17_Y18_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~27_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23));

-- Location: LCCOMB_X16_Y19_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~88_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~87\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~87\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~87\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~87\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~89\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~87\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~87\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[22]~87\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~88_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~89\);

-- Location: FF_X16_Y19_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~88_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(23),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23));

-- Location: FF_X15_Y19_N27
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(23),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(5));

-- Location: LCCOMB_X17_Y19_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[7]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(7),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[7]~feeder_combout\);

-- Location: FF_X17_Y19_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7));

-- Location: LCCOMB_X17_Y18_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[24]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[24]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_component|auto_generated|result\(24),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[24]~feeder_combout\);

-- Location: FF_X17_Y18_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q[24]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24));

-- Location: LCCOMB_X17_Y18_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~29_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(7),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[23]~28\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~29_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\);

-- Location: FF_X17_Y18_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~29_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(24));

-- Location: LCCOMB_X16_Y19_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~90_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(24) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~89\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~91\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(24) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~89\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(24) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~89\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(24),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[23]~89\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~90_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~91\);

-- Location: FF_X16_Y19_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~90_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(24),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24));

-- Location: LCCOMB_X15_Y19_N12
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[6]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(24),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[6]~feeder_combout\);

-- Location: FF_X15_Y19_N13
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[6]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(6));

-- Location: FF_X17_Y19_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(8),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(8));

-- Location: LCCOMB_X17_Y18_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~31_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(8) $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(8) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(8) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(8),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[24]~30\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~31_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\);

-- Location: FF_X17_Y18_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~31_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25));

-- Location: LCCOMB_X16_Y19_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~92_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~91\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~91\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~91\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~91\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~93\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~91\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~91\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[24]~91\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~92_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~93\);

-- Location: FF_X16_Y19_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~92_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(25),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25));

-- Location: LCCOMB_X15_Y19_N14
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[7]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(25),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[7]~feeder_combout\);

-- Location: FF_X15_Y19_N15
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[7]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(7));

-- Location: LCCOMB_X17_Y19_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[9]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(9),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[9]~feeder_combout\);

-- Location: FF_X17_Y19_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9));

-- Location: LCCOMB_X17_Y18_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~33_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(9),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[25]~32\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~33_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\);

-- Location: FF_X17_Y18_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~33_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(26));

-- Location: LCCOMB_X16_Y19_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~94_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(26) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~93\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~95\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(26)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~93\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(26) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~93\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(26),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[25]~93\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~94_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~95\);

-- Location: FF_X16_Y19_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~94_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(26),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26));

-- Location: LCCOMB_X15_Y19_N24
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[8]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(26),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[8]~feeder_combout\);

-- Location: FF_X15_Y19_N25
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[8]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(8));

-- Location: LCCOMB_X17_Y19_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[10]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(10),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[10]~feeder_combout\);

-- Location: FF_X17_Y19_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[10]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(10));

-- Location: LCCOMB_X17_Y18_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~35_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(10) $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(10) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(10) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(10),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[26]~34\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~35_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\);

-- Location: FF_X17_Y18_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~35_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27));

-- Location: LCCOMB_X16_Y19_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~96_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~95\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~95\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~95\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~95\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~97\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~95\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~95\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[26]~95\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~96_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~97\);

-- Location: FF_X16_Y19_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~96_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(27),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27));

-- Location: LCCOMB_X15_Y19_N18
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[9]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(27),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[9]~feeder_combout\);

-- Location: FF_X15_Y19_N19
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[9]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(9));

-- Location: FF_X17_Y19_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(11),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11));

-- Location: LCCOMB_X17_Y18_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~37_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(11),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[27]~36\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~37_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\);

-- Location: FF_X17_Y18_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~37_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(28));

-- Location: LCCOMB_X16_Y19_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~98_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(28) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~97\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~99\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(28) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~97\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(28) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~97\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(28),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[27]~97\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~98_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~99\);

-- Location: FF_X16_Y19_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~98_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(28),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28));

-- Location: FF_X15_Y19_N29
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(28),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(10));

-- Location: LCCOMB_X17_Y19_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[12]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(12),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[12]~feeder_combout\);

-- Location: FF_X17_Y19_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(12));

-- Location: LCCOMB_X17_Y18_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~39_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(12) $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(12) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(12) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(12),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[28]~38\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~39_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\);

-- Location: FF_X17_Y18_N27
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~39_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29));

-- Location: LCCOMB_X16_Y18_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~100_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~99\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~99\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~99\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~99\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~101\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~99\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~99\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[28]~99\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~100_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~101\);

-- Location: FF_X16_Y18_N1
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~100_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(29),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29));

-- Location: FF_X15_Y18_N1
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(29),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(11));

-- Location: LCCOMB_X17_Y19_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[13]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(13),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[13]~feeder_combout\);

-- Location: FF_X17_Y19_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13));

-- Location: LCCOMB_X17_Y18_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~41_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~42\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13) & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(13),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[29]~40\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~41_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~42\);

-- Location: FF_X17_Y18_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~41_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(30));

-- Location: LCCOMB_X16_Y18_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~102_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(30) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~101\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~103\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(30) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~101\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(30) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~101\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(30),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[29]~101\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~102_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~103\);

-- Location: FF_X16_Y18_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~102_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(30),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30));

-- Location: LCCOMB_X15_Y18_N2
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[12]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(30),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[12]~feeder_combout\);

-- Location: FF_X15_Y18_N3
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[12]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(12));

-- Location: LCCOMB_X17_Y19_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[14]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_component|auto_generated|result\(14),
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[14]~feeder_combout\);

-- Location: FF_X17_Y19_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q[14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(14));

-- Location: LCCOMB_X17_Y18_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[31]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[31]~43_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24) $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~42\ $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multlo_q\(24),
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_multhi_q\(14),
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[30]~42\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[31]~43_combout\);

-- Location: FF_X17_Y18_N31
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o[31]~43_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31));

-- Location: LCCOMB_X16_Y18_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~104_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~103\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~103\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~103\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~103\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~105\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~103\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~103\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[30]~103\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~104_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~105\);

-- Location: FF_X16_Y18_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~104_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31));

-- Location: LCCOMB_X15_Y18_N4
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[13]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(31),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[13]~feeder_combout\);

-- Location: FF_X15_Y18_N5
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[13]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(13));

-- Location: LCCOMB_X16_Y18_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~106_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~105\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~107\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~105\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~105\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[31]~105\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~106_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~107\);

-- Location: FF_X16_Y18_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~106_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32));

-- Location: LCCOMB_X16_Y18_N26
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[14]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(32),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[14]~feeder_combout\);

-- Location: FF_X16_Y18_N27
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[14]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(14));

-- Location: LCCOMB_X16_Y18_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~108_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~107\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~107\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~107\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~107\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~109\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~107\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~107\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[32]~107\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~108_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~109\);

-- Location: FF_X16_Y18_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~108_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33));

-- Location: FF_X15_Y18_N23
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(33),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(15));

-- Location: LCCOMB_X16_Y18_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~110_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~109\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~111\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~109\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~109\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[33]~109\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~110_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~111\);

-- Location: FF_X16_Y18_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~110_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34));

-- Location: LCCOMB_X16_Y18_N28
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[16]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(34),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[16]~feeder_combout\);

-- Location: FF_X16_Y18_N29
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[16]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(16));

-- Location: LCCOMB_X16_Y18_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~112_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~111\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~111\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~111\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~111\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~113\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~111\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~111\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[34]~111\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~112_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~113\);

-- Location: FF_X16_Y18_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~112_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35));

-- Location: LCCOMB_X16_Y18_N30
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[17]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(35),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[17]~feeder_combout\);

-- Location: FF_X16_Y18_N31
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[17]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(17));

-- Location: LCCOMB_X16_Y18_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~114_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~113\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~115\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~113\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~113\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[35]~113\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~114_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~115\);

-- Location: FF_X16_Y18_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~114_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36));

-- Location: FF_X15_Y18_N17
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(36),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(18));

-- Location: LCCOMB_X16_Y18_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~116_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~115\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~115\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~115\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~115\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~117\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~115\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~115\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[36]~115\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~116_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~117\);

-- Location: FF_X16_Y18_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~116_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37));

-- Location: LCCOMB_X15_Y18_N26
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[19]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[19]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(37),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[19]~feeder_combout\);

-- Location: FF_X15_Y18_N27
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[19]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(19));

-- Location: LCCOMB_X16_Y18_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~118_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(38) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~117\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~119\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(38)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~117\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(38) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~117\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(38),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[37]~117\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~118_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~119\);

-- Location: FF_X16_Y18_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~118_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(38));

-- Location: LCCOMB_X15_Y18_N12
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[20]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[20]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(38),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[20]~feeder_combout\);

-- Location: FF_X15_Y18_N13
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[20]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(20));

-- Location: LCCOMB_X16_Y18_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]~120_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(39) & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~119\ & VCC)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(39) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~119\)))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(39) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~119\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(39) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~119\) # (GND)))))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]~121\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(39) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~119\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~119\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(39),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[38]~119\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]~120_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]~121\);

-- Location: FF_X16_Y18_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]~120_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(39));

-- Location: FF_X15_Y18_N7
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(39),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(21));

-- Location: LCCOMB_X16_Y18_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[40]~122\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[40]~122_combout\ = ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(40) $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]~121\)))) # (GND)
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[40]~123\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(40)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]~121\))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(40) & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]~121\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(40),
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[39]~121\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[40]~122_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[40]~123\);

-- Location: FF_X16_Y18_N23
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[40]~122_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(40));

-- Location: LCCOMB_X15_Y18_N24
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[22]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[22]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(40),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[22]~feeder_combout\);

-- Location: FF_X15_Y18_N25
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[22]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(22));

-- Location: LCCOMB_X16_Y18_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[41]~124\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[41]~124_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31) $ (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[40]~123\ $ 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(41),
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[40]~123\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[41]~124_combout\);

-- Location: FF_X16_Y18_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o[41]~124_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_mtree_mult1_0_replace_add_o\(31),
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_aseq:u0_m0_wo0_aseq_c[11]~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(41));

-- Location: LCCOMB_X15_Y18_N10
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[23]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_out[23]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_accum_o\(41),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[23]~feeder_combout\);

-- Location: FF_X15_Y18_N11
\lp1000_inst|LP1000_0002_ast_inst|source|data_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_out[23]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_out\(23));

-- Location: LCCOMB_X36_Y26_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\ = CARRY(!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\);

-- Location: LCCOMB_X35_Y26_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~1_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~1_combout\);

-- Location: LCCOMB_X36_Y26_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~2_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~q\ & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\,
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~q\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~2_combout\);

-- Location: LCCOMB_X35_Y26_N4
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~0_combout\ = (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\,
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~0_combout\);

-- Location: LCCOMB_X36_Y26_N2
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~1_combout\ = (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~q\ & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\,
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~q\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~1_combout\);

-- Location: LCCOMB_X36_Y26_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~3_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~2_combout\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~0_combout\ & 
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~2_combout\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~0_combout\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~1_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~3_combout\);

-- Location: FF_X36_Y26_N25
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Equal2~3_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\);

-- Location: LCCOMB_X35_Y26_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_eq~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\);

-- Location: FF_X35_Y26_N3
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\);

-- Location: LCCOMB_X35_Y26_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~1_cout\ = CARRY(\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~q\,
	datad => VCC,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~1_cout\);

-- Location: LCCOMB_X35_Y26_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~2_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~1_cout\ & VCC)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~1_cout\))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~3\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~1_cout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~2_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~3\);

-- Location: FF_X35_Y26_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[1]~q\);

-- Location: LCCOMB_X35_Y26_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~4_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~3\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~3\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~5\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~3\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~4_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~5\);

-- Location: FF_X35_Y26_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~4_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[2]~q\);

-- Location: LCCOMB_X35_Y26_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~6_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~5\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~5\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~7\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~5\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~6_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~7\);

-- Location: LCCOMB_X36_Y26_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~6_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~6_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~6_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~6_wirecell_combout\);

-- Location: FF_X36_Y26_N5
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~6_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~q\);

-- Location: LCCOMB_X36_Y26_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[3]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\);

-- Location: LCCOMB_X35_Y26_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~8_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~7\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~7\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~9\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~7\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~8_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~9\);

-- Location: FF_X36_Y26_N7
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~8_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~q\);

-- Location: LCCOMB_X36_Y26_N8
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[4]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\);

-- Location: LCCOMB_X35_Y26_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~10_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~9\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~9\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~11\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~9\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~10_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~11\);

-- Location: LCCOMB_X33_Y26_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~10_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~10_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~10_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~10_wirecell_combout\);

-- Location: FF_X36_Y26_N9
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~10_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~q\);

-- Location: LCCOMB_X36_Y26_N10
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\ & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\ $ (GND))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\ & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[5]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\);

-- Location: LCCOMB_X35_Y26_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~12_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~11\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~11\)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~13\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~11\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~11\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~12_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~13\);

-- Location: LCCOMB_X36_Y26_N0
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~12_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~12_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~12_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~12_wirecell_combout\);

-- Location: FF_X36_Y26_N11
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~12_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~q\);

-- Location: LCCOMB_X36_Y26_N12
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~2\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[6]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~2\);

-- Location: LCCOMB_X35_Y26_N22
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~14_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~13\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~13\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~15\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~13\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~14_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~15\);

-- Location: LCCOMB_X36_Y26_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~14_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~14_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~14_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~14_wirecell_combout\);

-- Location: FF_X36_Y26_N13
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~14_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~q\);

-- Location: LCCOMB_X36_Y26_N14
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\ & 
-- (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~2\ $ (GND))) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~2\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~2\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\ & 
-- !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[7]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~2\);

-- Location: LCCOMB_X35_Y26_N24
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~16_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~15\ $ (GND))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~15\)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~17\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~15\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~15\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~16_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~17\);

-- Location: LCCOMB_X35_Y26_N6
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~16_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~16_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~16_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~16_wirecell_combout\);

-- Location: FF_X36_Y26_N15
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~16_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~q\);

-- Location: LCCOMB_X36_Y26_N16
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~2\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~q\ & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~2\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~2\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~2\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[8]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~2\);

-- Location: LCCOMB_X35_Y26_N26
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~18_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~q\ & (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~17\)) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~17\ & VCC))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~19\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~q\ & !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~17\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~18_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~19\);

-- Location: LCCOMB_X36_Y26_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~18_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~18_wirecell_combout\ = !\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~18_combout\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~18_wirecell_combout\);

-- Location: FF_X36_Y26_N17
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~18_wirecell_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~q\);

-- Location: LCCOMB_X36_Y26_N18
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~1_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~q\ & 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~2\)) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~q\ & 
-- ((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~2\) # (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~2\ = CARRY((!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~2\) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[9]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~1_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~2\);

-- Location: LCCOMB_X35_Y26_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~20_combout\ = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~q\ & ((GND) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~19\))) # 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~q\ & (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~19\ $ (GND)))
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~21\ = CARRY((\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~q\) # (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~q\,
	datad => VCC,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~19\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~20_combout\,
	cout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~21\);

-- Location: FF_X36_Y26_N19
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~q\);

-- Location: LCCOMB_X36_Y26_N20
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~1_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~2\ $ 
-- (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~q\,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[10]~2\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~1_combout\);

-- Location: LCCOMB_X35_Y26_N30
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~22_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~q\ $ (!\lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~q\,
	cin => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~21\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~22_combout\);

-- Location: FF_X36_Y26_N21
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~1_combout\,
	asdata => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|Add16~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sload => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|ALT_INV_u0_m0_wo0_oseq_eq~q\,
	ena => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_16|delay_signals[0][0]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~q\);

-- Location: LCCOMB_X24_Y22_N28
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q\(0) = (\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~q\ & \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq:u0_m0_wo0_oseq_c[11]~q\,
	datac => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|d_u0_m0_wo0_compute_q_17|delay_signals[0][0]~q\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q\(0));

-- Location: FF_X24_Y22_N29
\lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_q\(0),
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q\(0));

-- Location: LCCOMB_X24_Y22_N26
\lp1000_inst|LP1000_0002_ast_inst|source|data_valid~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|data_valid~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|hpfircore|u0_m0_wo0_oseq_gated_reg_q\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|data_valid~feeder_combout\);

-- Location: FF_X24_Y22_N27
\lp1000_inst|LP1000_0002_ast_inst|source|data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|data_valid~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|data_valid~q\);

-- Location: IOIBUF_X23_Y29_N15
\ast_sink_error[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_sink_error(0),
	o => \ast_sink_error[0]~input_o\);

-- Location: LCCOMB_X22_Y28_N24
\lp1000_inst|LP1000_0002_ast_inst|sink|at_sink_error_int~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|sink|at_sink_error_int~0_combout\ = (\ast_sink_error[0]~input_o\ & \ast_sink_valid~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ast_sink_error[0]~input_o\,
	datac => \ast_sink_valid~input_o\,
	combout => \lp1000_inst|LP1000_0002_ast_inst|sink|at_sink_error_int~0_combout\);

-- Location: FF_X22_Y28_N25
\lp1000_inst|LP1000_0002_ast_inst|sink|packet_error_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|sink|at_sink_error_int~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|sink|packet_error_s\(0));

-- Location: LCCOMB_X21_Y28_N0
\lp1000_inst|LP1000_0002_ast_inst|source|at_source_error_s[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lp1000_inst|LP1000_0002_ast_inst|source|at_source_error_s[0]~feeder_combout\ = \lp1000_inst|LP1000_0002_ast_inst|sink|packet_error_s\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lp1000_inst|LP1000_0002_ast_inst|sink|packet_error_s\(0),
	combout => \lp1000_inst|LP1000_0002_ast_inst|source|at_source_error_s[0]~feeder_combout\);

-- Location: FF_X21_Y28_N1
\lp1000_inst|LP1000_0002_ast_inst|source|at_source_error_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lp1000_inst|LP1000_0002_ast_inst|source|at_source_error_s[0]~feeder_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lp1000_inst|LP1000_0002_ast_inst|source|at_source_error_s\(0));

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


