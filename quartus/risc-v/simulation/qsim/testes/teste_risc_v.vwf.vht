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
-- Generated on "07/01/2023 15:28:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          risc_v32i
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY risc_v32i_vhd_vec_tst IS
END risc_v32i_vhd_vec_tst;
ARCHITECTURE risc_v32i_arch OF risc_v32i_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALU_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL DvC : STD_LOGIC;
SIGNAL i_CLK : STD_LOGIC;
SIGNAL i_RST : STD_LOGIC;
SIGNAL INSTRUCTION1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RD : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL REG_WR : STD_LOGIC;
SIGNAL RS1_VALUE : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RS2_VALUE : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SIG_EXT12_32 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL UAL_FONTE : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT risc_v32i
	PORT (
	ALU_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	DvC : OUT STD_LOGIC;
	i_CLK : IN STD_LOGIC;
	i_RST : IN STD_LOGIC;
	INSTRUCTION1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	PC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	RD : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	REG_WR : OUT STD_LOGIC;
	RS1_VALUE : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	RS2_VALUE : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIG_EXT12_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	UAL_FONTE : OUT STD_LOGIC;
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : risc_v32i
	PORT MAP (
-- list connections between master ports and signals
	ALU_OUT => ALU_OUT,
	DvC => DvC,
	i_CLK => i_CLK,
	i_RST => i_RST,
	INSTRUCTION1 => INSTRUCTION1,
	PC => PC,
	RD => RD,
	REG_WR => REG_WR,
	RS1_VALUE => RS1_VALUE,
	RS2_VALUE => RS2_VALUE,
	SIG_EXT12_32 => SIG_EXT12_32,
	UAL_FONTE => UAL_FONTE,
	Z => Z
	);

-- i_CLK
t_prcs_i_CLK: PROCESS
BEGIN
	i_CLK <= '1';
	WAIT FOR 25000 ps;
	i_CLK <= '0';
	WAIT FOR 25000 ps;
	FOR i IN 1 TO 18
	LOOP
		i_CLK <= '1';
		WAIT FOR 25000 ps;
		i_CLK <= '0';
		WAIT FOR 25000 ps;
	END LOOP;
	i_CLK <= '1';
	WAIT FOR 25000 ps;
	i_CLK <= '0';
WAIT;
END PROCESS t_prcs_i_CLK;

-- i_RST
t_prcs_i_RST: PROCESS
BEGIN
	i_RST <= '1';
WAIT;
END PROCESS t_prcs_i_RST;
END risc_v32i_arch;
