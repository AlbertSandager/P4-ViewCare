-- ------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 13.1
-- Quartus II development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2013 Altera Corporation.  All rights reserved.
-- Your use of  Altera  Corporation's design tools,  logic functions and other
-- software and tools,  and its AMPP  partner logic functions, and  any output
-- files  any of the  foregoing  device programming or simulation files),  and
-- any associated  documentation or information are expressly subject  to  the
-- terms and conditions  of the Altera Program License Subscription Agreement,
-- Altera  MegaCore  Function  License  Agreement, or other applicable license
-- agreement,  including,  without limitation,  that your use  is for the sole
-- purpose of  programming  logic  devices  manufactured by Altera and sold by
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable
-- agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from LP1000_rtl
-- VHDL created on Sat Jun 22 15:15:02 2019


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity LP1000_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);
        xIn_c : in std_logic_vector(7 downto 0);
        xIn_0 : in std_logic_vector(23 downto 0);
        xOut_v : out std_logic_vector(0 downto 0);
        xOut_c : out std_logic_vector(7 downto 0);
        xOut_0 : out std_logic_vector(31 downto 0);
        clk : in std_logic;
        areset : in std_logic
    );
end LP1000_rtl;

architecture normal of LP1000_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";

    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_in0_m0_wi0_wo0_assign_sel_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_memread_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_delayr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_delayr0_ia : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr0_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_delayr0_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_delayr0_iq : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_add_a : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_add_b : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_add_o : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_add_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_split_high_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_split_high_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_split_low_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_split_low_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_shiftup_q_int : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_shiftup_q : STD_LOGIC_VECTOR (24 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- xIn(PORTIN,2)@10

    -- u0_m0_wo0_wi0_delayr0(DUALMEM,8)@10
    u0_m0_wo0_wi0_delayr0_ia <= STD_LOGIC_VECTOR(xIn_0);
    u0_m0_wo0_wi0_delayr0_aa <= GND_q;
    u0_m0_wo0_wi0_delayr0_ab <= GND_q;
    u0_m0_wo0_wi0_delayr0_reset0 <= areset;
    u0_m0_wo0_wi0_delayr0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 24,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 24,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "CLEAR0",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "OLD_DATA",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone III"
    )
    PORT MAP (
        clocken0 => '1',
        wren_a => xIn_v(0),
        aclr0 => u0_m0_wo0_wi0_delayr0_reset0,
        clock0 => clk,
        address_b => u0_m0_wo0_wi0_delayr0_ab,
        q_b => u0_m0_wo0_wi0_delayr0_iq,
        address_a => u0_m0_wo0_wi0_delayr0_aa,
        data_a => u0_m0_wo0_wi0_delayr0_ia
    );
    u0_m0_wo0_wi0_delayr0_q <= u0_m0_wo0_wi0_delayr0_iq(23 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_replace_split_low(BITSELECT,19)@10
    u0_m0_wo0_mtree_mult1_0_replace_split_low_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr0_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_0_replace_split_low_b <= u0_m0_wo0_mtree_mult1_0_replace_split_low_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0(SUB,25)@10
    u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_a <= STD_LOGIC_VECTOR("00000000000000000" & GND_q);
    u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_mtree_mult1_0_replace_split_low_b);
    u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_o <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_a) - UNSIGNED(u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_q <= u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_o(17 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_replace_split_high(BITSELECT,18)@10
    u0_m0_wo0_mtree_mult1_0_replace_split_high_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr0_q);
    u0_m0_wo0_mtree_mult1_0_replace_split_high_b <= u0_m0_wo0_mtree_mult1_0_replace_split_high_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0(SUB,24)@10
    u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 7 => u0_m0_wo0_mtree_mult1_0_replace_split_high_b(6)) & u0_m0_wo0_mtree_mult1_0_replace_split_high_b));
    u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_a) - SIGNED(u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_q <= u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_o(7 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_replace_shiftup(BITSHIFT,22)@11
    u0_m0_wo0_mtree_mult1_0_replace_shiftup_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_replace_multhi_sub_0_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_0_replace_shiftup_q <= u0_m0_wo0_mtree_mult1_0_replace_shiftup_q_int(24 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_replace_add(ADD,23)@11
    u0_m0_wo0_mtree_mult1_0_replace_add_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 25 => u0_m0_wo0_mtree_mult1_0_replace_shiftup_q(24)) & u0_m0_wo0_mtree_mult1_0_replace_shiftup_q));
    u0_m0_wo0_mtree_mult1_0_replace_add_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((25 downto 18 => u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_q(17)) & u0_m0_wo0_mtree_mult1_0_replace_multlo_sub_0_q));
    u0_m0_wo0_mtree_mult1_0_replace_add: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_replace_add_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_replace_add_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_replace_add_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_replace_add_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_replace_add_q <= u0_m0_wo0_mtree_mult1_0_replace_add_o(25 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- d_in0_m0_wi0_wo0_assign_sel_q_11(DELAY,26)@10
    d_in0_m0_wi0_wo0_assign_sel_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_sel_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_memread(DELAY,5)@11
    u0_m0_wo0_memread : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => d_in0_m0_wi0_wo0_assign_sel_q_11_q, xout => u0_m0_wo0_memread_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,6)@11
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_oseq_gated_reg(REG,13)@11
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_compute_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,16)@12
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= STD_LOGIC_VECTOR((31 downto 26 => u0_m0_wo0_mtree_mult1_0_replace_add_q(25)) & u0_m0_wo0_mtree_mult1_0_replace_add_q);

END normal;
