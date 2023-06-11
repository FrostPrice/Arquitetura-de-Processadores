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

-- DATE "06/01/2023 21:17:56"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux21_1b IS
    PORT (
	o_S : OUT std_logic;
	i_SEL : IN std_logic;
	i_B : IN std_logic;
	i_A : IN std_logic
	);
END mux21_1b;

-- Design Ports Information
-- o_S	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SEL	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux21_1b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_o_S : std_logic;
SIGNAL ww_i_SEL : std_logic;
SIGNAL ww_i_B : std_logic;
SIGNAL ww_i_A : std_logic;
SIGNAL \o_S~output_o\ : std_logic;
SIGNAL \i_SEL~input_o\ : std_logic;
SIGNAL \i_B~input_o\ : std_logic;
SIGNAL \i_A~input_o\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;

BEGIN

o_S <= ww_o_S;
ww_i_SEL <= i_SEL;
ww_i_B <= i_B;
ww_i_A <= i_A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X1_Y24_N9
\o_S~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~0_combout\,
	devoe => ww_devoe,
	o => \o_S~output_o\);

-- Location: IOIBUF_X0_Y4_N15
\i_SEL~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SEL,
	o => \i_SEL~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\i_B~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B,
	o => \i_B~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\i_A~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A,
	o => \i_A~input_o\);

-- Location: LCCOMB_X1_Y4_N24
\inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\i_SEL~input_o\ & (\i_B~input_o\)) # (!\i_SEL~input_o\ & ((\i_A~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SEL~input_o\,
	datac => \i_B~input_o\,
	datad => \i_A~input_o\,
	combout => \inst2~0_combout\);

ww_o_S <= \o_S~output_o\;
END structure;


