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

-- VHDL created from LP100_rtl
-- VHDL created on Tue May 14 10:47:24 2019


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

entity LP100_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);
        xIn_c : in std_logic_vector(7 downto 0);
        xIn_0 : in std_logic_vector(23 downto 0);
        xOut_v : out std_logic_vector(0 downto 0);
        xOut_c : out std_logic_vector(7 downto 0);
        xOut_0 : out std_logic_vector(38 downto 0);
        clk : in std_logic;
        areset : in std_logic
    );
end LP100_rtl;

architecture normal of LP100_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";

    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_q : STD_LOGIC_VECTOR (23 downto 0);
    signal d_in0_m0_wi0_wo0_assign_sel_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_count : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_run_pre_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_out : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_ctrl : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_memread_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_ra0_count0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_ra0_count0_i : UNSIGNED (6 downto 0);
    signal u0_m0_wo0_wi0_ra0_count0_sc : SIGNED (7 downto 0);
    signal u0_m0_wo0_wi0_ra0_count1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_ra0_count1_i : UNSIGNED (6 downto 0);
    signal u0_m0_wo0_wi0_ra0_add_0_0_a : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_ra0_add_0_0_b : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_ra0_add_0_0_o : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_ra0_add_0_0_q : STD_LOGIC_VECTOR (8 downto 0);
    signal u0_m0_wo0_wi0_wa0_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_wa0_i : UNSIGNED (6 downto 0);
    signal u0_m0_wo0_wi0_delayr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_delayr0_ia : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr0_aa : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_delayr0_ab : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_delayr0_iq : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_wi0_delayr0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_ca0_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_ca0_i : UNSIGNED (6 downto 0);
    signal u0_m0_wo0_ca0_eq : std_logic;
    signal u0_m0_wo0_cm0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_accum_a : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_accum_b : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_accum_i : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_accum_o : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_accum_q : STD_LOGIC_VECTOR (38 downto 0);
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multhi_a0 : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multhi_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multhi_s1 : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multhi_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_replace_multhi_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multlo_a0 : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multlo_b0 : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multlo_s1 : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_multlo_reset : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_replace_multlo_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_add_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_add_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_add_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_add_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_oseq_gated_a : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_b : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_ra0_resize_in : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_ra0_resize_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_split_high_in : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_split_high_b : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_split_low_in : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_split_low_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_shiftup_q_int : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_replace_shiftup_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- xIn(PORTIN,2)@10

    -- u0_m0_wo0_run(ENABLEGENERATOR,5)@10
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & xIn_v & u0_m0_wo0_run_enable_q;
    u0_m0_wo0_run: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : SIGNED(7 downto 0);
        variable u0_m0_wo0_run_inc : SIGNED(1 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(99, 8);
            u0_m0_wo0_run_enable_q <= "0";
            u0_m0_wo0_run_count <= "00";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(7) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-100);
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + (-1);
                END IF;
                u0_m0_wo0_run_enable_q <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(7 downto 7));
            ELSE
                u0_m0_wo0_run_enable_q <= "0";
            END IF;
            CASE (u0_m0_wo0_run_ctrl) IS
                WHEN "000" | "001" => u0_m0_wo0_run_inc := "00";
                WHEN "010" | "011" => u0_m0_wo0_run_inc := "11";
                WHEN "100" => u0_m0_wo0_run_inc := "00";
                WHEN "101" => u0_m0_wo0_run_inc := "01";
                WHEN "110" => u0_m0_wo0_run_inc := "11";
                WHEN "111" => u0_m0_wo0_run_inc := "00";
                WHEN OTHERS => 
            END CASE;
            u0_m0_wo0_run_count <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_run_count) + SIGNED(u0_m0_wo0_run_inc));
            u0_m0_wo0_run_q <= u0_m0_wo0_run_out;
        END IF;
    END PROCESS;
    u0_m0_wo0_run_pre_ena_q <= u0_m0_wo0_run_count(1 downto 1);
    u0_m0_wo0_run_out <= u0_m0_wo0_run_pre_ena_q and VCC_q;

    -- u0_m0_wo0_memread(DELAY,6)@12
    u0_m0_wo0_memread : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => u0_m0_wo0_run_q, xout => u0_m0_wo0_memread_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,7)@12
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2 )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_15(DELAY,34)@12
    d_u0_m0_wo0_compute_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3 )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_aseq(SEQUENCE,18)@15
    u0_m0_wo0_aseq: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : SIGNED(8 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "000000000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_15_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "000000000") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 100;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_aseq_c(8 downto 8));
            END IF;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_compute_q_16(DELAY,35)@15
    d_u0_m0_wo0_compute_q_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_15_q, xout => d_u0_m0_wo0_compute_q_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_ca0(COUNTER,15)@12
    -- every=1, low=0, high=100, step=1, init=0
    u0_m0_wo0_ca0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca0_i <= TO_UNSIGNED(0, 7);
            u0_m0_wo0_ca0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_ca0_i = TO_UNSIGNED(99, 7)) THEN
                    u0_m0_wo0_ca0_eq <= '1';
                ELSE
                    u0_m0_wo0_ca0_eq <= '0';
                END IF;
                IF (u0_m0_wo0_ca0_eq = '1') THEN
                    u0_m0_wo0_ca0_i <= u0_m0_wo0_ca0_i - 100;
                ELSE
                    u0_m0_wo0_ca0_i <= u0_m0_wo0_ca0_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca0_i, 7)));

    -- u0_m0_wo0_cm0(LOOKUP,16)@12
    u0_m0_wo0_cm0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm0_q <= "00011101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca0_q) IS
                WHEN "0000000" => u0_m0_wo0_cm0_q <= "00011101";
                WHEN "0000001" => u0_m0_wo0_cm0_q <= "00011101";
                WHEN "0000010" => u0_m0_wo0_cm0_q <= "00011101";
                WHEN "0000011" => u0_m0_wo0_cm0_q <= "00011110";
                WHEN "0000100" => u0_m0_wo0_cm0_q <= "00011111";
                WHEN "0000101" => u0_m0_wo0_cm0_q <= "00100000";
                WHEN "0000110" => u0_m0_wo0_cm0_q <= "00100010";
                WHEN "0000111" => u0_m0_wo0_cm0_q <= "00100011";
                WHEN "0001000" => u0_m0_wo0_cm0_q <= "00100101";
                WHEN "0001001" => u0_m0_wo0_cm0_q <= "00100111";
                WHEN "0001010" => u0_m0_wo0_cm0_q <= "00101001";
                WHEN "0001011" => u0_m0_wo0_cm0_q <= "00101011";
                WHEN "0001100" => u0_m0_wo0_cm0_q <= "00101110";
                WHEN "0001101" => u0_m0_wo0_cm0_q <= "00110000";
                WHEN "0001110" => u0_m0_wo0_cm0_q <= "00110011";
                WHEN "0001111" => u0_m0_wo0_cm0_q <= "00110101";
                WHEN "0010000" => u0_m0_wo0_cm0_q <= "00111000";
                WHEN "0010001" => u0_m0_wo0_cm0_q <= "00111011";
                WHEN "0010010" => u0_m0_wo0_cm0_q <= "00111110";
                WHEN "0010011" => u0_m0_wo0_cm0_q <= "01000001";
                WHEN "0010100" => u0_m0_wo0_cm0_q <= "01000100";
                WHEN "0010101" => u0_m0_wo0_cm0_q <= "01000111";
                WHEN "0010110" => u0_m0_wo0_cm0_q <= "01001010";
                WHEN "0010111" => u0_m0_wo0_cm0_q <= "01001101";
                WHEN "0011000" => u0_m0_wo0_cm0_q <= "01010000";
                WHEN "0011001" => u0_m0_wo0_cm0_q <= "01010011";
                WHEN "0011010" => u0_m0_wo0_cm0_q <= "01010110";
                WHEN "0011011" => u0_m0_wo0_cm0_q <= "01011001";
                WHEN "0011100" => u0_m0_wo0_cm0_q <= "01011100";
                WHEN "0011101" => u0_m0_wo0_cm0_q <= "01011110";
                WHEN "0011110" => u0_m0_wo0_cm0_q <= "01100001";
                WHEN "0011111" => u0_m0_wo0_cm0_q <= "01100100";
                WHEN "0100000" => u0_m0_wo0_cm0_q <= "01100110";
                WHEN "0100001" => u0_m0_wo0_cm0_q <= "01101001";
                WHEN "0100010" => u0_m0_wo0_cm0_q <= "01101011";
                WHEN "0100011" => u0_m0_wo0_cm0_q <= "01101101";
                WHEN "0100100" => u0_m0_wo0_cm0_q <= "01101111";
                WHEN "0100101" => u0_m0_wo0_cm0_q <= "01110001";
                WHEN "0100110" => u0_m0_wo0_cm0_q <= "01110011";
                WHEN "0100111" => u0_m0_wo0_cm0_q <= "01110101";
                WHEN "0101000" => u0_m0_wo0_cm0_q <= "01110111";
                WHEN "0101001" => u0_m0_wo0_cm0_q <= "01111000";
                WHEN "0101010" => u0_m0_wo0_cm0_q <= "01111001";
                WHEN "0101011" => u0_m0_wo0_cm0_q <= "01111011";
                WHEN "0101100" => u0_m0_wo0_cm0_q <= "01111100";
                WHEN "0101101" => u0_m0_wo0_cm0_q <= "01111100";
                WHEN "0101110" => u0_m0_wo0_cm0_q <= "01111101";
                WHEN "0101111" => u0_m0_wo0_cm0_q <= "01111110";
                WHEN "0110000" => u0_m0_wo0_cm0_q <= "01111110";
                WHEN "0110001" => u0_m0_wo0_cm0_q <= "01111110";
                WHEN "0110010" => u0_m0_wo0_cm0_q <= "01111111";
                WHEN "0110011" => u0_m0_wo0_cm0_q <= "01111110";
                WHEN "0110100" => u0_m0_wo0_cm0_q <= "01111110";
                WHEN "0110101" => u0_m0_wo0_cm0_q <= "01111110";
                WHEN "0110110" => u0_m0_wo0_cm0_q <= "01111101";
                WHEN "0110111" => u0_m0_wo0_cm0_q <= "01111100";
                WHEN "0111000" => u0_m0_wo0_cm0_q <= "01111100";
                WHEN "0111001" => u0_m0_wo0_cm0_q <= "01111011";
                WHEN "0111010" => u0_m0_wo0_cm0_q <= "01111001";
                WHEN "0111011" => u0_m0_wo0_cm0_q <= "01111000";
                WHEN "0111100" => u0_m0_wo0_cm0_q <= "01110111";
                WHEN "0111101" => u0_m0_wo0_cm0_q <= "01110101";
                WHEN "0111110" => u0_m0_wo0_cm0_q <= "01110011";
                WHEN "0111111" => u0_m0_wo0_cm0_q <= "01110001";
                WHEN "1000000" => u0_m0_wo0_cm0_q <= "01101111";
                WHEN "1000001" => u0_m0_wo0_cm0_q <= "01101101";
                WHEN "1000010" => u0_m0_wo0_cm0_q <= "01101011";
                WHEN "1000011" => u0_m0_wo0_cm0_q <= "01101001";
                WHEN "1000100" => u0_m0_wo0_cm0_q <= "01100110";
                WHEN "1000101" => u0_m0_wo0_cm0_q <= "01100100";
                WHEN "1000110" => u0_m0_wo0_cm0_q <= "01100001";
                WHEN "1000111" => u0_m0_wo0_cm0_q <= "01011110";
                WHEN "1001000" => u0_m0_wo0_cm0_q <= "01011100";
                WHEN "1001001" => u0_m0_wo0_cm0_q <= "01011001";
                WHEN "1001010" => u0_m0_wo0_cm0_q <= "01010110";
                WHEN "1001011" => u0_m0_wo0_cm0_q <= "01010011";
                WHEN "1001100" => u0_m0_wo0_cm0_q <= "01010000";
                WHEN "1001101" => u0_m0_wo0_cm0_q <= "01001101";
                WHEN "1001110" => u0_m0_wo0_cm0_q <= "01001010";
                WHEN "1001111" => u0_m0_wo0_cm0_q <= "01000111";
                WHEN "1010000" => u0_m0_wo0_cm0_q <= "01000100";
                WHEN "1010001" => u0_m0_wo0_cm0_q <= "01000001";
                WHEN "1010010" => u0_m0_wo0_cm0_q <= "00111110";
                WHEN "1010011" => u0_m0_wo0_cm0_q <= "00111011";
                WHEN "1010100" => u0_m0_wo0_cm0_q <= "00111000";
                WHEN "1010101" => u0_m0_wo0_cm0_q <= "00110101";
                WHEN "1010110" => u0_m0_wo0_cm0_q <= "00110011";
                WHEN "1010111" => u0_m0_wo0_cm0_q <= "00110000";
                WHEN "1011000" => u0_m0_wo0_cm0_q <= "00101110";
                WHEN "1011001" => u0_m0_wo0_cm0_q <= "00101011";
                WHEN "1011010" => u0_m0_wo0_cm0_q <= "00101001";
                WHEN "1011011" => u0_m0_wo0_cm0_q <= "00100111";
                WHEN "1011100" => u0_m0_wo0_cm0_q <= "00100101";
                WHEN "1011101" => u0_m0_wo0_cm0_q <= "00100011";
                WHEN "1011110" => u0_m0_wo0_cm0_q <= "00100010";
                WHEN "1011111" => u0_m0_wo0_cm0_q <= "00100000";
                WHEN "1100000" => u0_m0_wo0_cm0_q <= "00011111";
                WHEN "1100001" => u0_m0_wo0_cm0_q <= "00011110";
                WHEN "1100010" => u0_m0_wo0_cm0_q <= "00011101";
                WHEN "1100011" => u0_m0_wo0_cm0_q <= "00011101";
                WHEN "1100100" => u0_m0_wo0_cm0_q <= "00011101";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm0_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- d_xIn_0_13(DELAY,32)@10
    d_xIn_0_13 : dspba_delay
    GENERIC MAP ( width => 24, depth => 3 )
    PORT MAP ( xin => xIn_0, xout => d_xIn_0_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_wa0(COUNTER,12)@13
    -- every=1, low=0, high=127, step=1, init=73
    u0_m0_wo0_wi0_wa0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_wa0_i <= TO_UNSIGNED(73, 7);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_sel_q_13_q = "1") THEN
                u0_m0_wo0_wi0_wa0_i <= u0_m0_wo0_wi0_wa0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_wa0_i, 7)));

    -- d_in0_m0_wi0_wo0_assign_sel_q_13(DELAY,33)@10
    d_in0_m0_wi0_wo0_assign_sel_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3 )
    PORT MAP ( xin => xIn_v, xout => d_in0_m0_wi0_wo0_assign_sel_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_ra0_count1(COUNTER,9)@12
    -- every=1, low=0, high=127, step=1, init=0
    u0_m0_wo0_wi0_ra0_count1: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_ra0_count1_i <= TO_UNSIGNED(0, 7);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                u0_m0_wo0_wi0_ra0_count1_i <= u0_m0_wo0_wi0_ra0_count1_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_ra0_count1_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_ra0_count1_i, 8)));

    -- u0_m0_wo0_wi0_ra0_count0(COUNTER,8)@12
    -- every=101, low=0, high=127, step=28, init=101
    u0_m0_wo0_wi0_ra0_count0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_ra0_count0_i <= TO_UNSIGNED(101, 7);
            u0_m0_wo0_wi0_ra0_count0_sc <= TO_SIGNED(99, 8);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                IF (u0_m0_wo0_wi0_ra0_count0_sc(7) = '1') THEN
                    u0_m0_wo0_wi0_ra0_count0_sc <= u0_m0_wo0_wi0_ra0_count0_sc - (-100);
                ELSE
                    u0_m0_wo0_wi0_ra0_count0_sc <= u0_m0_wo0_wi0_ra0_count0_sc + (-1);
                END IF;
                IF (u0_m0_wo0_wi0_ra0_count0_sc(7) = '1') THEN
                    u0_m0_wo0_wi0_ra0_count0_i <= u0_m0_wo0_wi0_ra0_count0_i + 28;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_ra0_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_ra0_count0_i, 8)));

    -- u0_m0_wo0_wi0_ra0_add_0_0(ADD,10)@12
    u0_m0_wo0_wi0_ra0_add_0_0_a <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_ra0_count0_q);
    u0_m0_wo0_wi0_ra0_add_0_0_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_ra0_count1_q);
    u0_m0_wo0_wi0_ra0_add_0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_ra0_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_ra0_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_ra0_add_0_0_a) + UNSIGNED(u0_m0_wo0_wi0_ra0_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_ra0_add_0_0_q <= u0_m0_wo0_wi0_ra0_add_0_0_o(8 downto 0);

    -- u0_m0_wo0_wi0_ra0_resize(BITSELECT,11)@13
    u0_m0_wo0_wi0_ra0_resize_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_ra0_add_0_0_q(6 downto 0));
    u0_m0_wo0_wi0_ra0_resize_b <= u0_m0_wo0_wi0_ra0_resize_in(6 downto 0);

    -- u0_m0_wo0_wi0_delayr0(DUALMEM,13)@13
    u0_m0_wo0_wi0_delayr0_ia <= STD_LOGIC_VECTOR(d_xIn_0_13_q);
    u0_m0_wo0_wi0_delayr0_aa <= u0_m0_wo0_wi0_wa0_q;
    u0_m0_wo0_wi0_delayr0_ab <= u0_m0_wo0_wi0_ra0_resize_b;
    u0_m0_wo0_wi0_delayr0_reset0 <= areset;
    u0_m0_wo0_wi0_delayr0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "M9K",
        operation_mode => "DUAL_PORT",
        width_a => 24,
        widthad_a => 7,
        numwords_a => 128,
        width_b => 24,
        widthad_b => 7,
        numwords_b => 128,
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
        wren_a => d_in0_m0_wi0_wo0_assign_sel_q_13_q(0),
        aclr0 => u0_m0_wo0_wi0_delayr0_reset0,
        clock0 => clk,
        address_b => u0_m0_wo0_wi0_delayr0_ab,
        q_b => u0_m0_wo0_wi0_delayr0_iq,
        address_a => u0_m0_wo0_wi0_delayr0_aa,
        data_a => u0_m0_wo0_wi0_delayr0_ia
    );
    u0_m0_wo0_wi0_delayr0_q <= u0_m0_wo0_wi0_delayr0_iq(23 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_replace_split_low(BITSELECT,27)@13
    u0_m0_wo0_mtree_mult1_0_replace_split_low_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr0_q(16 downto 0));
    u0_m0_wo0_mtree_mult1_0_replace_split_low_b <= u0_m0_wo0_mtree_mult1_0_replace_split_low_in(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_replace_multlo(MULT,29)@13
    u0_m0_wo0_mtree_mult1_0_replace_multlo_a0 <= '0' & u0_m0_wo0_mtree_mult1_0_replace_split_low_b;
    u0_m0_wo0_mtree_mult1_0_replace_multlo_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm0_q);
    u0_m0_wo0_mtree_mult1_0_replace_multlo_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_replace_multlo_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 18,
        lpm_widthb => 8,
        lpm_widthp => 26,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 1
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_0_replace_multlo_a0,
        datab => u0_m0_wo0_mtree_mult1_0_replace_multlo_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_0_replace_multlo_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_0_replace_multlo_s1
    );
    u0_m0_wo0_mtree_mult1_0_replace_multlo: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_replace_multlo_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_replace_multlo_q <= u0_m0_wo0_mtree_mult1_0_replace_multlo_s1(24 downto 0);
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_0_replace_split_high(BITSELECT,26)@13
    u0_m0_wo0_mtree_mult1_0_replace_split_high_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_delayr0_q);
    u0_m0_wo0_mtree_mult1_0_replace_split_high_b <= u0_m0_wo0_mtree_mult1_0_replace_split_high_in(23 downto 17);

    -- u0_m0_wo0_mtree_mult1_0_replace_multhi(MULT,28)@13
    u0_m0_wo0_mtree_mult1_0_replace_multhi_a0 <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_replace_split_high_b);
    u0_m0_wo0_mtree_mult1_0_replace_multhi_b0 <= STD_LOGIC_VECTOR(u0_m0_wo0_cm0_q);
    u0_m0_wo0_mtree_mult1_0_replace_multhi_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_replace_multhi_component : lpm_mult
    GENERIC MAP (
        lpm_widtha => 7,
        lpm_widthb => 8,
        lpm_widthp => 15,
        lpm_widths => 1,
        lpm_type => "LPM_MULT",
        lpm_representation => "SIGNED",
        lpm_hint => "DEDICATED_MULTIPLIER_CIRCUITRY=YES, MAXIMIZE_SPEED=5",
        lpm_pipeline => 1
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_mult1_0_replace_multhi_a0,
        datab => u0_m0_wo0_mtree_mult1_0_replace_multhi_b0,
        clken => VCC_q(0),
        aclr => u0_m0_wo0_mtree_mult1_0_replace_multhi_reset,
        clock => clk,
        result => u0_m0_wo0_mtree_mult1_0_replace_multhi_s1
    );
    u0_m0_wo0_mtree_mult1_0_replace_multhi: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_replace_multhi_q <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_replace_multhi_q <= u0_m0_wo0_mtree_mult1_0_replace_multhi_s1;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_mtree_mult1_0_replace_shiftup(BITSHIFT,30)@15
    u0_m0_wo0_mtree_mult1_0_replace_shiftup_q_int <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_replace_multhi_q & "00000000000000000");
    u0_m0_wo0_mtree_mult1_0_replace_shiftup_q <= u0_m0_wo0_mtree_mult1_0_replace_shiftup_q_int(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_replace_add(ADD,31)@15
    u0_m0_wo0_mtree_mult1_0_replace_add_a <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_replace_shiftup_q);
    u0_m0_wo0_mtree_mult1_0_replace_add_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 25 => u0_m0_wo0_mtree_mult1_0_replace_multlo_q(24)) & u0_m0_wo0_mtree_mult1_0_replace_multlo_q));
    u0_m0_wo0_mtree_mult1_0_replace_add: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_replace_add_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_replace_add_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_replace_add_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_replace_add_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_replace_add_q <= u0_m0_wo0_mtree_mult1_0_replace_add_o(31 downto 0);

    -- u0_m0_wo0_accum(ADD,19)@16
    u0_m0_wo0_accum_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((38 downto 32 => u0_m0_wo0_mtree_mult1_0_replace_add_q(31)) & u0_m0_wo0_mtree_mult1_0_replace_add_q));
    u0_m0_wo0_accum_b <= STD_LOGIC_VECTOR(u0_m0_wo0_accum_q);
    u0_m0_wo0_accum_i <= u0_m0_wo0_accum_a;
    u0_m0_wo0_accum: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_accum_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_16_q = "1") THEN
                IF (u0_m0_wo0_aseq_q = "1") THEN
                    u0_m0_wo0_accum_o <= u0_m0_wo0_accum_i;
                ELSE
                    u0_m0_wo0_accum_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_accum_a) + SIGNED(u0_m0_wo0_accum_b));
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_accum_q <= u0_m0_wo0_accum_o(38 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_oseq(SEQUENCE,20)@15
    u0_m0_wo0_oseq: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(8 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "001100100";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_15_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "000000000") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 100;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_c(8 downto 8));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_oseq_gated(LOGICAL,21)@16
    u0_m0_wo0_oseq_gated_a <= u0_m0_wo0_oseq_q;
    u0_m0_wo0_oseq_gated_b <= d_u0_m0_wo0_compute_q_16_q;
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_gated_a and u0_m0_wo0_oseq_gated_b;

    -- u0_m0_wo0_oseq_gated_reg(REG,22)@16
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,25)@17
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_accum_q;

END normal;
