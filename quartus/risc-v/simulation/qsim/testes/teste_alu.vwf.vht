-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/29/2023 14:33:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          alu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY alu_vhd_vec_tst IS
END alu_vhd_vec_tst;
ARCHITECTURE alu_arch OF alu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i_A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL i_B : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL i_CIN : STD_LOGIC;
SIGNAL i_SEL : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL o_ALU : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL o_Z : STD_LOGIC;
COMPONENT alu
	PORT (
	i_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	i_B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	i_CIN : IN STD_LOGIC;
	i_SEL : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	o_ALU : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	o_Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : alu
	PORT MAP (
-- list connections between master ports and signals
	i_A => i_A,
	i_B => i_B,
	i_CIN => i_CIN,
	i_SEL => i_SEL,
	o_ALU => o_ALU,
	o_Z => o_Z
	);
-- i_SEL[2]
t_prcs_i_SEL_2: PROCESS
BEGIN
	i_SEL(2) <= '1';
WAIT;
END PROCESS t_prcs_i_SEL_2;
-- i_SEL[1]
t_prcs_i_SEL_1: PROCESS
BEGIN
	i_SEL(1) <= '0';
WAIT;
END PROCESS t_prcs_i_SEL_1;
-- i_SEL[0]
t_prcs_i_SEL_0: PROCESS
BEGIN
	i_SEL(0) <= '1';
WAIT;
END PROCESS t_prcs_i_SEL_0;
-- i_A[31]
t_prcs_i_A_31: PROCESS
BEGIN
	i_A(31) <= '0';
WAIT;
END PROCESS t_prcs_i_A_31;
-- i_A[30]
t_prcs_i_A_30: PROCESS
BEGIN
	i_A(30) <= '0';
WAIT;
END PROCESS t_prcs_i_A_30;
-- i_A[29]
t_prcs_i_A_29: PROCESS
BEGIN
	i_A(29) <= '0';
WAIT;
END PROCESS t_prcs_i_A_29;
-- i_A[28]
t_prcs_i_A_28: PROCESS
BEGIN
	i_A(28) <= '0';
WAIT;
END PROCESS t_prcs_i_A_28;
-- i_A[27]
t_prcs_i_A_27: PROCESS
BEGIN
	i_A(27) <= '0';
WAIT;
END PROCESS t_prcs_i_A_27;
-- i_A[26]
t_prcs_i_A_26: PROCESS
BEGIN
	i_A(26) <= '0';
WAIT;
END PROCESS t_prcs_i_A_26;
-- i_A[25]
t_prcs_i_A_25: PROCESS
BEGIN
	i_A(25) <= '0';
WAIT;
END PROCESS t_prcs_i_A_25;
-- i_A[24]
t_prcs_i_A_24: PROCESS
BEGIN
	i_A(24) <= '0';
WAIT;
END PROCESS t_prcs_i_A_24;
-- i_A[23]
t_prcs_i_A_23: PROCESS
BEGIN
	i_A(23) <= '0';
WAIT;
END PROCESS t_prcs_i_A_23;
-- i_A[22]
t_prcs_i_A_22: PROCESS
BEGIN
	i_A(22) <= '0';
WAIT;
END PROCESS t_prcs_i_A_22;
-- i_A[21]
t_prcs_i_A_21: PROCESS
BEGIN
	i_A(21) <= '0';
WAIT;
END PROCESS t_prcs_i_A_21;
-- i_A[20]
t_prcs_i_A_20: PROCESS
BEGIN
	i_A(20) <= '0';
WAIT;
END PROCESS t_prcs_i_A_20;
-- i_A[19]
t_prcs_i_A_19: PROCESS
BEGIN
	i_A(19) <= '0';
WAIT;
END PROCESS t_prcs_i_A_19;
-- i_A[18]
t_prcs_i_A_18: PROCESS
BEGIN
	i_A(18) <= '0';
WAIT;
END PROCESS t_prcs_i_A_18;
-- i_A[17]
t_prcs_i_A_17: PROCESS
BEGIN
	i_A(17) <= '0';
WAIT;
END PROCESS t_prcs_i_A_17;
-- i_A[16]
t_prcs_i_A_16: PROCESS
BEGIN
	i_A(16) <= '0';
WAIT;
END PROCESS t_prcs_i_A_16;
-- i_A[15]
t_prcs_i_A_15: PROCESS
BEGIN
	i_A(15) <= '0';
WAIT;
END PROCESS t_prcs_i_A_15;
-- i_A[14]
t_prcs_i_A_14: PROCESS
BEGIN
	i_A(14) <= '0';
WAIT;
END PROCESS t_prcs_i_A_14;
-- i_A[13]
t_prcs_i_A_13: PROCESS
BEGIN
	i_A(13) <= '0';
WAIT;
END PROCESS t_prcs_i_A_13;
-- i_A[12]
t_prcs_i_A_12: PROCESS
BEGIN
	i_A(12) <= '0';
WAIT;
END PROCESS t_prcs_i_A_12;
-- i_A[11]
t_prcs_i_A_11: PROCESS
BEGIN
	i_A(11) <= '0';
WAIT;
END PROCESS t_prcs_i_A_11;
-- i_A[10]
t_prcs_i_A_10: PROCESS
BEGIN
	i_A(10) <= '0';
WAIT;
END PROCESS t_prcs_i_A_10;
-- i_A[9]
t_prcs_i_A_9: PROCESS
BEGIN
	i_A(9) <= '0';
WAIT;
END PROCESS t_prcs_i_A_9;
-- i_A[8]
t_prcs_i_A_8: PROCESS
BEGIN
	i_A(8) <= '0';
WAIT;
END PROCESS t_prcs_i_A_8;
-- i_A[7]
t_prcs_i_A_7: PROCESS
BEGIN
	i_A(7) <= '0';
WAIT;
END PROCESS t_prcs_i_A_7;
-- i_A[6]
t_prcs_i_A_6: PROCESS
BEGIN
	i_A(6) <= '0';
WAIT;
END PROCESS t_prcs_i_A_6;
-- i_A[5]
t_prcs_i_A_5: PROCESS
BEGIN
	i_A(5) <= '0';
WAIT;
END PROCESS t_prcs_i_A_5;
-- i_A[4]
t_prcs_i_A_4: PROCESS
BEGIN
	i_A(4) <= '0';
WAIT;
END PROCESS t_prcs_i_A_4;
-- i_A[3]
t_prcs_i_A_3: PROCESS
BEGIN
	i_A(3) <= '0';
WAIT;
END PROCESS t_prcs_i_A_3;
-- i_A[2]
t_prcs_i_A_2: PROCESS
BEGIN
	i_A(2) <= '0';
WAIT;
END PROCESS t_prcs_i_A_2;
-- i_A[1]
t_prcs_i_A_1: PROCESS
BEGIN
	i_A(1) <= '0';
WAIT;
END PROCESS t_prcs_i_A_1;
-- i_A[0]
t_prcs_i_A_0: PROCESS
BEGIN
	i_A(0) <= '0';
WAIT;
END PROCESS t_prcs_i_A_0;
-- i_B[31]
t_prcs_i_B_31: PROCESS
BEGIN
	i_B(31) <= '0';
WAIT;
END PROCESS t_prcs_i_B_31;
-- i_B[30]
t_prcs_i_B_30: PROCESS
BEGIN
	i_B(30) <= '0';
WAIT;
END PROCESS t_prcs_i_B_30;
-- i_B[29]
t_prcs_i_B_29: PROCESS
BEGIN
	i_B(29) <= '0';
WAIT;
END PROCESS t_prcs_i_B_29;
-- i_B[28]
t_prcs_i_B_28: PROCESS
BEGIN
	i_B(28) <= '0';
WAIT;
END PROCESS t_prcs_i_B_28;
-- i_B[27]
t_prcs_i_B_27: PROCESS
BEGIN
	i_B(27) <= '0';
WAIT;
END PROCESS t_prcs_i_B_27;
-- i_B[26]
t_prcs_i_B_26: PROCESS
BEGIN
	i_B(26) <= '0';
WAIT;
END PROCESS t_prcs_i_B_26;
-- i_B[25]
t_prcs_i_B_25: PROCESS
BEGIN
	i_B(25) <= '0';
WAIT;
END PROCESS t_prcs_i_B_25;
-- i_B[24]
t_prcs_i_B_24: PROCESS
BEGIN
	i_B(24) <= '0';
WAIT;
END PROCESS t_prcs_i_B_24;
-- i_B[23]
t_prcs_i_B_23: PROCESS
BEGIN
	i_B(23) <= '0';
WAIT;
END PROCESS t_prcs_i_B_23;
-- i_B[22]
t_prcs_i_B_22: PROCESS
BEGIN
	i_B(22) <= '0';
WAIT;
END PROCESS t_prcs_i_B_22;
-- i_B[21]
t_prcs_i_B_21: PROCESS
BEGIN
	i_B(21) <= '0';
WAIT;
END PROCESS t_prcs_i_B_21;
-- i_B[20]
t_prcs_i_B_20: PROCESS
BEGIN
	i_B(20) <= '0';
WAIT;
END PROCESS t_prcs_i_B_20;
-- i_B[19]
t_prcs_i_B_19: PROCESS
BEGIN
	i_B(19) <= '0';
WAIT;
END PROCESS t_prcs_i_B_19;
-- i_B[18]
t_prcs_i_B_18: PROCESS
BEGIN
	i_B(18) <= '0';
WAIT;
END PROCESS t_prcs_i_B_18;
-- i_B[17]
t_prcs_i_B_17: PROCESS
BEGIN
	i_B(17) <= '0';
WAIT;
END PROCESS t_prcs_i_B_17;
-- i_B[16]
t_prcs_i_B_16: PROCESS
BEGIN
	i_B(16) <= '0';
WAIT;
END PROCESS t_prcs_i_B_16;
-- i_B[15]
t_prcs_i_B_15: PROCESS
BEGIN
	i_B(15) <= '0';
WAIT;
END PROCESS t_prcs_i_B_15;
-- i_B[14]
t_prcs_i_B_14: PROCESS
BEGIN
	i_B(14) <= '0';
WAIT;
END PROCESS t_prcs_i_B_14;
-- i_B[13]
t_prcs_i_B_13: PROCESS
BEGIN
	i_B(13) <= '0';
WAIT;
END PROCESS t_prcs_i_B_13;
-- i_B[12]
t_prcs_i_B_12: PROCESS
BEGIN
	i_B(12) <= '0';
WAIT;
END PROCESS t_prcs_i_B_12;
-- i_B[11]
t_prcs_i_B_11: PROCESS
BEGIN
	i_B(11) <= '0';
WAIT;
END PROCESS t_prcs_i_B_11;
-- i_B[10]
t_prcs_i_B_10: PROCESS
BEGIN
	i_B(10) <= '0';
WAIT;
END PROCESS t_prcs_i_B_10;
-- i_B[9]
t_prcs_i_B_9: PROCESS
BEGIN
	i_B(9) <= '0';
WAIT;
END PROCESS t_prcs_i_B_9;
-- i_B[8]
t_prcs_i_B_8: PROCESS
BEGIN
	i_B(8) <= '0';
WAIT;
END PROCESS t_prcs_i_B_8;
-- i_B[7]
t_prcs_i_B_7: PROCESS
BEGIN
	i_B(7) <= '0';
WAIT;
END PROCESS t_prcs_i_B_7;
-- i_B[6]
t_prcs_i_B_6: PROCESS
BEGIN
	i_B(6) <= '0';
WAIT;
END PROCESS t_prcs_i_B_6;
-- i_B[5]
t_prcs_i_B_5: PROCESS
BEGIN
	i_B(5) <= '0';
WAIT;
END PROCESS t_prcs_i_B_5;
-- i_B[4]
t_prcs_i_B_4: PROCESS
BEGIN
	i_B(4) <= '0';
WAIT;
END PROCESS t_prcs_i_B_4;
-- i_B[3]
t_prcs_i_B_3: PROCESS
BEGIN
	i_B(3) <= '0';
WAIT;
END PROCESS t_prcs_i_B_3;
-- i_B[2]
t_prcs_i_B_2: PROCESS
BEGIN
	i_B(2) <= '0';
WAIT;
END PROCESS t_prcs_i_B_2;
-- i_B[1]
t_prcs_i_B_1: PROCESS
BEGIN
	i_B(1) <= '0';
WAIT;
END PROCESS t_prcs_i_B_1;
-- i_B[0]
t_prcs_i_B_0: PROCESS
BEGIN
	i_B(0) <= '1';
WAIT;
END PROCESS t_prcs_i_B_0;
END alu_arch;
