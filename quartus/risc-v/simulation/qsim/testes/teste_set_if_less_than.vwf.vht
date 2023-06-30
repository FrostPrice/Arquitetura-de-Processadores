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
-- Generated on "06/18/2023 22:00:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          set_if_less_than
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY set_if_less_than_vhd_vec_tst IS
END set_if_less_than_vhd_vec_tst;
ARCHITECTURE set_if_less_than_arch OF set_if_less_than_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i_RS1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL i_RS2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL o_SLT : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT set_if_less_than
	PORT (
	i_RS1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	i_RS2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	o_SLT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : set_if_less_than
	PORT MAP (
-- list connections between master ports and signals
	i_RS1 => i_RS1,
	i_RS2 => i_RS2,
	o_SLT => o_SLT
	);
-- i_RS1[31]
t_prcs_i_RS1_31: PROCESS
BEGIN
	i_RS1(31) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_31;
-- i_RS1[30]
t_prcs_i_RS1_30: PROCESS
BEGIN
	i_RS1(30) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_30;
-- i_RS1[29]
t_prcs_i_RS1_29: PROCESS
BEGIN
	i_RS1(29) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_29;
-- i_RS1[28]
t_prcs_i_RS1_28: PROCESS
BEGIN
	i_RS1(28) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_28;
-- i_RS1[27]
t_prcs_i_RS1_27: PROCESS
BEGIN
	i_RS1(27) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_27;
-- i_RS1[26]
t_prcs_i_RS1_26: PROCESS
BEGIN
	i_RS1(26) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_26;
-- i_RS1[25]
t_prcs_i_RS1_25: PROCESS
BEGIN
	i_RS1(25) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_25;
-- i_RS1[24]
t_prcs_i_RS1_24: PROCESS
BEGIN
	i_RS1(24) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_24;
-- i_RS1[23]
t_prcs_i_RS1_23: PROCESS
BEGIN
	i_RS1(23) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_23;
-- i_RS1[22]
t_prcs_i_RS1_22: PROCESS
BEGIN
	i_RS1(22) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_22;
-- i_RS1[21]
t_prcs_i_RS1_21: PROCESS
BEGIN
	i_RS1(21) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_21;
-- i_RS1[20]
t_prcs_i_RS1_20: PROCESS
BEGIN
	i_RS1(20) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_20;
-- i_RS1[19]
t_prcs_i_RS1_19: PROCESS
BEGIN
	i_RS1(19) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_19;
-- i_RS1[18]
t_prcs_i_RS1_18: PROCESS
BEGIN
	i_RS1(18) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_18;
-- i_RS1[17]
t_prcs_i_RS1_17: PROCESS
BEGIN
	i_RS1(17) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_17;
-- i_RS1[16]
t_prcs_i_RS1_16: PROCESS
BEGIN
	i_RS1(16) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_16;
-- i_RS1[15]
t_prcs_i_RS1_15: PROCESS
BEGIN
	i_RS1(15) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_15;
-- i_RS1[14]
t_prcs_i_RS1_14: PROCESS
BEGIN
	i_RS1(14) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_14;
-- i_RS1[13]
t_prcs_i_RS1_13: PROCESS
BEGIN
	i_RS1(13) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_13;
-- i_RS1[12]
t_prcs_i_RS1_12: PROCESS
BEGIN
	i_RS1(12) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_12;
-- i_RS1[11]
t_prcs_i_RS1_11: PROCESS
BEGIN
	i_RS1(11) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_11;
-- i_RS1[10]
t_prcs_i_RS1_10: PROCESS
BEGIN
	i_RS1(10) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_10;
-- i_RS1[9]
t_prcs_i_RS1_9: PROCESS
BEGIN
	i_RS1(9) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_9;
-- i_RS1[8]
t_prcs_i_RS1_8: PROCESS
BEGIN
	i_RS1(8) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_8;
-- i_RS1[7]
t_prcs_i_RS1_7: PROCESS
BEGIN
	i_RS1(7) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_7;
-- i_RS1[6]
t_prcs_i_RS1_6: PROCESS
BEGIN
	i_RS1(6) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_6;
-- i_RS1[5]
t_prcs_i_RS1_5: PROCESS
BEGIN
	i_RS1(5) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_5;
-- i_RS1[4]
t_prcs_i_RS1_4: PROCESS
BEGIN
	i_RS1(4) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_4;
-- i_RS1[3]
t_prcs_i_RS1_3: PROCESS
BEGIN
	i_RS1(3) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_3;
-- i_RS1[2]
t_prcs_i_RS1_2: PROCESS
BEGIN
	i_RS1(2) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_2;
-- i_RS1[1]
t_prcs_i_RS1_1: PROCESS
BEGIN
	i_RS1(1) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_1;
-- i_RS1[0]
t_prcs_i_RS1_0: PROCESS
BEGIN
	i_RS1(0) <= '0';
WAIT;
END PROCESS t_prcs_i_RS1_0;
-- i_RS2[31]
t_prcs_i_RS2_31: PROCESS
BEGIN
	i_RS2(31) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_31;
-- i_RS2[30]
t_prcs_i_RS2_30: PROCESS
BEGIN
	i_RS2(30) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_30;
-- i_RS2[29]
t_prcs_i_RS2_29: PROCESS
BEGIN
	i_RS2(29) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_29;
-- i_RS2[28]
t_prcs_i_RS2_28: PROCESS
BEGIN
	i_RS2(28) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_28;
-- i_RS2[27]
t_prcs_i_RS2_27: PROCESS
BEGIN
	i_RS2(27) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_27;
-- i_RS2[26]
t_prcs_i_RS2_26: PROCESS
BEGIN
	i_RS2(26) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_26;
-- i_RS2[25]
t_prcs_i_RS2_25: PROCESS
BEGIN
	i_RS2(25) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_25;
-- i_RS2[24]
t_prcs_i_RS2_24: PROCESS
BEGIN
	i_RS2(24) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_24;
-- i_RS2[23]
t_prcs_i_RS2_23: PROCESS
BEGIN
	i_RS2(23) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_23;
-- i_RS2[22]
t_prcs_i_RS2_22: PROCESS
BEGIN
	i_RS2(22) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_22;
-- i_RS2[21]
t_prcs_i_RS2_21: PROCESS
BEGIN
	i_RS2(21) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_21;
-- i_RS2[20]
t_prcs_i_RS2_20: PROCESS
BEGIN
	i_RS2(20) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_20;
-- i_RS2[19]
t_prcs_i_RS2_19: PROCESS
BEGIN
	i_RS2(19) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_19;
-- i_RS2[18]
t_prcs_i_RS2_18: PROCESS
BEGIN
	i_RS2(18) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_18;
-- i_RS2[17]
t_prcs_i_RS2_17: PROCESS
BEGIN
	i_RS2(17) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_17;
-- i_RS2[16]
t_prcs_i_RS2_16: PROCESS
BEGIN
	i_RS2(16) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_16;
-- i_RS2[15]
t_prcs_i_RS2_15: PROCESS
BEGIN
	i_RS2(15) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_15;
-- i_RS2[14]
t_prcs_i_RS2_14: PROCESS
BEGIN
	i_RS2(14) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_14;
-- i_RS2[13]
t_prcs_i_RS2_13: PROCESS
BEGIN
	i_RS2(13) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_13;
-- i_RS2[12]
t_prcs_i_RS2_12: PROCESS
BEGIN
	i_RS2(12) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_12;
-- i_RS2[11]
t_prcs_i_RS2_11: PROCESS
BEGIN
	i_RS2(11) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_11;
-- i_RS2[10]
t_prcs_i_RS2_10: PROCESS
BEGIN
	i_RS2(10) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_10;
-- i_RS2[9]
t_prcs_i_RS2_9: PROCESS
BEGIN
	i_RS2(9) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_9;
-- i_RS2[8]
t_prcs_i_RS2_8: PROCESS
BEGIN
	i_RS2(8) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_8;
-- i_RS2[7]
t_prcs_i_RS2_7: PROCESS
BEGIN
	i_RS2(7) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_7;
-- i_RS2[6]
t_prcs_i_RS2_6: PROCESS
BEGIN
	i_RS2(6) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_6;
-- i_RS2[5]
t_prcs_i_RS2_5: PROCESS
BEGIN
	i_RS2(5) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_5;
-- i_RS2[4]
t_prcs_i_RS2_4: PROCESS
BEGIN
	i_RS2(4) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_4;
-- i_RS2[3]
t_prcs_i_RS2_3: PROCESS
BEGIN
	i_RS2(3) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_3;
-- i_RS2[2]
t_prcs_i_RS2_2: PROCESS
BEGIN
	i_RS2(2) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_2;
-- i_RS2[1]
t_prcs_i_RS2_1: PROCESS
BEGIN
	i_RS2(1) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_1;
-- i_RS2[0]
t_prcs_i_RS2_0: PROCESS
BEGIN
	i_RS2(0) <= '0';
WAIT;
END PROCESS t_prcs_i_RS2_0;
END set_if_less_than_arch;
