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

-- DATE "02/23/2024 13:34:41"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Convertidor IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Cin : IN std_logic;
	UN : BUFFER std_logic_vector(6 DOWNTO 0);
	DC : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Convertidor;

-- Design Ports Information
-- UN[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- UN[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DC[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Convertidor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_UN : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DC : std_logic_vector(6 DOWNTO 0);
SIGNAL \UN[0]~output_o\ : std_logic;
SIGNAL \UN[1]~output_o\ : std_logic;
SIGNAL \UN[2]~output_o\ : std_logic;
SIGNAL \UN[3]~output_o\ : std_logic;
SIGNAL \UN[4]~output_o\ : std_logic;
SIGNAL \UN[5]~output_o\ : std_logic;
SIGNAL \UN[6]~output_o\ : std_logic;
SIGNAL \DC[0]~output_o\ : std_logic;
SIGNAL \DC[1]~output_o\ : std_logic;
SIGNAL \DC[2]~output_o\ : std_logic;
SIGNAL \DC[3]~output_o\ : std_logic;
SIGNAL \DC[4]~output_o\ : std_logic;
SIGNAL \DC[5]~output_o\ : std_logic;
SIGNAL \DC[6]~output_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A4|cA0|Cout~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A4|A1|Cout~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A4|A2|HA2|Sum~combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A4|A2|Cout~0_combout\ : std_logic;
SIGNAL \A4|A3|Cout~0_combout\ : std_logic;
SIGNAL \A4|A3|Cout~1_combout\ : std_logic;
SIGNAL \A4|A3|HA2|Sum~combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~18_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~19_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|StageOut[18]~22_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ : std_logic;
SIGNAL \A4|A1|HA2|Sum~combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ : std_logic;
SIGNAL \A4|cA0|HA2|Sum~0_combout\ : std_logic;
SIGNAL \BCDUN|Mux6~0_combout\ : std_logic;
SIGNAL \BCDUN|Mux5~0_combout\ : std_logic;
SIGNAL \BCDUN|Mux4~0_combout\ : std_logic;
SIGNAL \BCDUN|Mux3~0_combout\ : std_logic;
SIGNAL \BCDUN|Mux2~0_combout\ : std_logic;
SIGNAL \BCDUN|Mux1~0_combout\ : std_logic;
SIGNAL \BCDUN|Mux0~0_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|StageOut[18]~19_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|StageOut[18]~12_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|StageOut[17]~15_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|StageOut[15]~18_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|StageOut[15]~17_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \BCDDC|Mux5~0_combout\ : std_logic;
SIGNAL \BCDDC|Mux3~0_combout\ : std_logic;
SIGNAL \BCDDC|Mux2~0_combout\ : std_logic;
SIGNAL \BCDUN|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Sum4|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Cin <= Cin;
UN <= ww_UN;
DC <= ww_DC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\BCDUN|ALT_INV_Mux6~0_combout\ <= NOT \BCDUN|Mux6~0_combout\;
\Sum4|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;

-- Location: IOOBUF_X26_Y29_N16
\UN[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDUN|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \UN[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\UN[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDUN|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \UN[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\UN[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDUN|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \UN[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\UN[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDUN|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \UN[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\UN[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDUN|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \UN[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\UN[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDUN|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \UN[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\UN[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDUN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \UN[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\DC[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \DC[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\DC[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDDC|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DC[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\DC[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sum4|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \DC[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\DC[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDDC|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DC[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\DC[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDDC|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DC[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\DC[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DC[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\DC[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BCDDC|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DC[6]~output_o\);

-- Location: IOIBUF_X0_Y22_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\Cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X24_Y28_N18
\A4|cA0|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|cA0|Cout~0_combout\ = (\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \A4|cA0|Cout~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X9_Y27_N26
\A4|A1|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A1|Cout~0_combout\ = (\B[1]~input_o\ & ((\A4|cA0|Cout~0_combout\) # (\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A4|cA0|Cout~0_combout\ & \A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A4|cA0|Cout~0_combout\,
	datad => \A[1]~input_o\,
	combout => \A4|A1|Cout~0_combout\);

-- Location: IOIBUF_X0_Y25_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X6_Y24_N26
\A4|A2|HA2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A2|HA2|Sum~combout\ = \A4|A1|Cout~0_combout\ $ (\A[2]~input_o\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A1|Cout~0_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \A4|A2|HA2|Sum~combout\);

-- Location: LCCOMB_X6_Y24_N0
\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \A4|A2|HA2|Sum~combout\ $ (VCC)
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\A4|A2|HA2|Sum~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A2|HA2|Sum~combout\,
	datad => VCC,
	combout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: IOIBUF_X0_Y23_N8
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X12_Y27_N0
\A4|A2|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A2|Cout~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\A4|A1|Cout~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \A4|A1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A4|A1|Cout~0_combout\,
	combout => \A4|A2|Cout~0_combout\);

-- Location: LCCOMB_X12_Y27_N10
\A4|A3|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A3|Cout~0_combout\ = (\A4|A2|Cout~0_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A4|A2|Cout~0_combout\,
	combout => \A4|A3|Cout~0_combout\);

-- Location: LCCOMB_X6_Y24_N16
\A4|A3|Cout~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A3|Cout~1_combout\ = (\A[3]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \A4|A3|Cout~1_combout\);

-- Location: LCCOMB_X12_Y27_N12
\A4|A3|HA2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A3|HA2|Sum~combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (\A4|A2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A4|A2|Cout~0_combout\,
	combout => \A4|A3|HA2|Sum~combout\);

-- Location: LCCOMB_X6_Y24_N2
\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\A4|A3|HA2|Sum~combout\ & (\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\A4|A3|HA2|Sum~combout\ & 
-- (!\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\A4|A3|HA2|Sum~combout\ & !\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A4|A3|HA2|Sum~combout\,
	datad => VCC,
	cin => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X6_Y24_N4
\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\A4|A3|Cout~0_combout\) # (\A4|A3|Cout~1_combout\)))) # 
-- (!\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\A4|A3|Cout~0_combout\) # (\A4|A3|Cout~1_combout\)))))
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\A4|A3|Cout~0_combout\) # (\A4|A3|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A3|Cout~0_combout\,
	datab => \A4|A3|Cout~1_combout\,
	datad => VCC,
	cin => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X6_Y24_N6
\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X6_Y24_N30
\Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\);

-- Location: LCCOMB_X9_Y27_N2
\Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\B[2]~input_o\ $ (\A4|A1|Cout~0_combout\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \B[2]~input_o\,
	datac => \A4|A1|Cout~0_combout\,
	datad => \A[2]~input_o\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X9_Y27_N30
\Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~18_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\B[1]~input_o\ $ (\A4|cA0|Cout~0_combout\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \B[1]~input_o\,
	datac => \A4|cA0|Cout~0_combout\,
	datad => \A[1]~input_o\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~18_combout\);

-- Location: LCCOMB_X9_Y27_N16
\Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~19_combout\ = (!\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\B[1]~input_o\ $ (\A4|cA0|Cout~0_combout\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \B[1]~input_o\,
	datac => \A4|cA0|Cout~0_combout\,
	datad => \A[1]~input_o\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~19_combout\);

-- Location: LCCOMB_X9_Y27_N6
\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~18_combout\) # (\Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~19_combout\)))
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~18_combout\) # (\Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~18_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|StageOut[15]~19_combout\,
	datad => VCC,
	combout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X9_Y27_N8
\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\) # 
-- (\Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\ & 
-- (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\)))
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\ & (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- !\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datad => VCC,
	cin => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X6_Y24_N20
\Sum4|Mod0|auto_generated|divider|divider|StageOut[18]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\);

-- Location: LCCOMB_X12_Y27_N4
\Sum4|Mod0|auto_generated|divider|divider|StageOut[18]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|StageOut[18]~22_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (\A4|A2|Cout~0_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & 
-- \A4|A2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \B[3]~input_o\,
	datad => \A4|A2|Cout~0_combout\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|StageOut[18]~22_combout\);

-- Location: LCCOMB_X9_Y27_N20
\Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\ = (!\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\);

-- Location: LCCOMB_X12_Y27_N28
\Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\ $ (\A4|A2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \B[3]~input_o\,
	datad => \A4|A2|Cout~0_combout\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\);

-- Location: LCCOMB_X9_Y27_N10
\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\) # 
-- (\Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\)))) # (!\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\) # 
-- (\Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\)))))
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\) # 
-- (\Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\,
	datad => VCC,
	cin => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X9_Y27_N12
\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Sum4|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\ & (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[18]~22_combout\ & 
-- !\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|StageOut[18]~12_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|StageOut[18]~22_combout\,
	datad => VCC,
	cin => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X9_Y27_N14
\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X9_Y27_N18
\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\) # 
-- ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~14_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Sum4|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\);

-- Location: LCCOMB_X9_Y27_N4
\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\) # 
-- (\Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\)))) # (!\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~13_combout\,
	datac => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Sum4|Mod0|auto_generated|divider|divider|StageOut[17]~20_combout\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\);

-- Location: LCCOMB_X9_Y27_N24
\A4|A1|HA2|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|A1|HA2|Sum~combout\ = \B[1]~input_o\ $ (\A4|cA0|Cout~0_combout\ $ (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A4|cA0|Cout~0_combout\,
	datad => \A[1]~input_o\,
	combout => \A4|A1|HA2|Sum~combout\);

-- Location: LCCOMB_X9_Y27_N0
\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\A4|A1|HA2|Sum~combout\)) # 
-- (!\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A4|A1|HA2|Sum~combout\,
	datac => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Sum4|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\);

-- Location: LCCOMB_X24_Y28_N24
\A4|cA0|HA2|Sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A4|cA0|HA2|Sum~0_combout\ = \Cin~input_o\ $ (\A[0]~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \A4|cA0|HA2|Sum~0_combout\);

-- Location: LCCOMB_X24_Y28_N20
\BCDUN|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDUN|Mux6~0_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ & ((!\A4|cA0|HA2|Sum~0_combout\) # 
-- (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\)))) # (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & (\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ $ 
-- ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datac => \Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datad => \A4|cA0|HA2|Sum~0_combout\,
	combout => \BCDUN|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y28_N6
\BCDUN|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDUN|Mux5~0_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\) # ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & 
-- \A4|cA0|HA2|Sum~0_combout\)))) # (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\) # ((!\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ & 
-- \A4|cA0|HA2|Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datac => \Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datad => \A4|cA0|HA2|Sum~0_combout\,
	combout => \BCDUN|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y28_N8
\BCDUN|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDUN|Mux4~0_combout\ = (\A4|cA0|HA2|Sum~0_combout\) # ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\))) # 
-- (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & (\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datac => \Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datad => \A4|cA0|HA2|Sum~0_combout\,
	combout => \BCDUN|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y28_N10
\BCDUN|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDUN|Mux3~0_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\) # (\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ $ 
-- (!\A4|cA0|HA2|Sum~0_combout\)))) # (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & (\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\)) # 
-- (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & ((\A4|cA0|HA2|Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datac => \Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datad => \A4|cA0|HA2|Sum~0_combout\,
	combout => \BCDUN|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y28_N12
\BCDUN|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDUN|Mux2~0_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & (\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\)) # (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & 
-- (\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\) # (!\A4|cA0|HA2|Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datac => \Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datad => \A4|cA0|HA2|Sum~0_combout\,
	combout => \BCDUN|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y28_N30
\BCDUN|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDUN|Mux1~0_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\) # (\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ $ 
-- (\A4|cA0|HA2|Sum~0_combout\)))) # (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & (\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ & (\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datac => \Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datad => \A4|cA0|HA2|Sum~0_combout\,
	combout => \BCDUN|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y28_N0
\BCDUN|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDUN|Mux0~0_combout\ = (\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\) # ((!\A4|cA0|HA2|Sum~0_combout\)))) # 
-- (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\ & ((\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ & (\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\)) # 
-- (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\ & (!\Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\ & \A4|cA0|HA2|Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Mod0|auto_generated|divider|divider|StageOut[22]~16_combout\,
	datab => \Sum4|Mod0|auto_generated|divider|divider|StageOut[23]~17_combout\,
	datac => \Sum4|Mod0|auto_generated|divider|divider|StageOut[21]~15_combout\,
	datad => \A4|cA0|HA2|Sum~0_combout\,
	combout => \BCDUN|Mux0~0_combout\);

-- Location: LCCOMB_X6_Y24_N8
\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \A4|A2|HA2|Sum~combout\ $ (VCC)
-- \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\A4|A2|HA2|Sum~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A2|HA2|Sum~combout\,
	datad => VCC,
	combout => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X6_Y24_N10
\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\A4|A3|HA2|Sum~combout\ & (\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\A4|A3|HA2|Sum~combout\ & 
-- (!\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\A4|A3|HA2|Sum~combout\ & !\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A4|A3|HA2|Sum~combout\,
	datad => VCC,
	cin => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X6_Y24_N12
\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\A4|A3|Cout~0_combout\) # (\A4|A3|Cout~1_combout\)))) # 
-- (!\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\A4|A3|Cout~0_combout\) # (\A4|A3|Cout~1_combout\)))))
-- \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\A4|A3|Cout~0_combout\) # (\A4|A3|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A4|A3|Cout~0_combout\,
	datab => \A4|A3|Cout~1_combout\,
	datad => VCC,
	cin => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X6_Y24_N14
\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X12_Y27_N6
\Sum4|Div0|auto_generated|divider|divider|StageOut[18]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|StageOut[18]~19_combout\ = (\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (\A4|A2|Cout~0_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & 
-- \A4|A2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \B[3]~input_o\,
	datad => \A4|A2|Cout~0_combout\,
	combout => \Sum4|Div0|auto_generated|divider|divider|StageOut[18]~19_combout\);

-- Location: LCCOMB_X12_Y27_N14
\Sum4|Div0|auto_generated|divider|divider|StageOut[18]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|StageOut[18]~12_combout\ = (!\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Sum4|Div0|auto_generated|divider|divider|StageOut[18]~12_combout\);

-- Location: LCCOMB_X12_Y27_N30
\Sum4|Div0|auto_generated|divider|divider|StageOut[17]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|StageOut[17]~15_combout\ = (\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\ $ (\A4|A2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \B[3]~input_o\,
	datad => \A4|A2|Cout~0_combout\,
	combout => \Sum4|Div0|auto_generated|divider|divider|StageOut[17]~15_combout\);

-- Location: LCCOMB_X12_Y27_N8
\Sum4|Div0|auto_generated|divider|divider|StageOut[17]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\ = (!\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Sum4|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\);

-- Location: LCCOMB_X12_Y27_N26
\Sum4|Div0|auto_generated|divider|divider|StageOut[16]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\ = (\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A[2]~input_o\ $ (\A4|A1|Cout~0_combout\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \A4|A1|Cout~0_combout\,
	datad => \B[2]~input_o\,
	combout => \Sum4|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\);

-- Location: LCCOMB_X12_Y27_N2
\Sum4|Div0|auto_generated|divider|divider|StageOut[16]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ = (!\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Sum4|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\);

-- Location: LCCOMB_X9_Y27_N22
\Sum4|Div0|auto_generated|divider|divider|StageOut[15]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|StageOut[15]~18_combout\ = (!\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A[1]~input_o\ $ (\B[1]~input_o\ $ (\A4|cA0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A4|cA0|Cout~0_combout\,
	datad => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Sum4|Div0|auto_generated|divider|divider|StageOut[15]~18_combout\);

-- Location: LCCOMB_X9_Y27_N28
\Sum4|Div0|auto_generated|divider|divider|StageOut[15]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|StageOut[15]~17_combout\ = (\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\A[1]~input_o\ $ (\B[1]~input_o\ $ (\A4|cA0|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A4|cA0|Cout~0_combout\,
	datad => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Sum4|Div0|auto_generated|divider|divider|StageOut[15]~17_combout\);

-- Location: LCCOMB_X12_Y27_N16
\Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\Sum4|Div0|auto_generated|divider|divider|StageOut[15]~18_combout\) # (\Sum4|Div0|auto_generated|divider|divider|StageOut[15]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Div0|auto_generated|divider|divider|StageOut[15]~18_combout\,
	datab => \Sum4|Div0|auto_generated|divider|divider|StageOut[15]~17_combout\,
	datad => VCC,
	cout => \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X12_Y27_N18
\Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\Sum4|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\ & (!\Sum4|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\ & 
-- !\Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Div0|auto_generated|divider|divider|StageOut[16]~16_combout\,
	datab => \Sum4|Div0|auto_generated|divider|divider|StageOut[16]~14_combout\,
	datad => VCC,
	cin => \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X12_Y27_N20
\Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & ((\Sum4|Div0|auto_generated|divider|divider|StageOut[17]~15_combout\) # 
-- (\Sum4|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Div0|auto_generated|divider|divider|StageOut[17]~15_combout\,
	datab => \Sum4|Div0|auto_generated|divider|divider|StageOut[17]~13_combout\,
	datad => VCC,
	cin => \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X12_Y27_N22
\Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Sum4|Div0|auto_generated|divider|divider|StageOut[18]~19_combout\ & (!\Sum4|Div0|auto_generated|divider|divider|StageOut[18]~12_combout\ & 
-- !\Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Sum4|Div0|auto_generated|divider|divider|StageOut[18]~19_combout\,
	datab => \Sum4|Div0|auto_generated|divider|divider|StageOut[18]~12_combout\,
	datad => VCC,
	cin => \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y27_N24
\Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X6_Y24_N24
\BCDDC|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDDC|Mux5~0_combout\ = (!\Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # (!\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BCDDC|Mux5~0_combout\);

-- Location: LCCOMB_X6_Y24_N18
\BCDDC|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDDC|Mux3~0_combout\ = (\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BCDDC|Mux3~0_combout\);

-- Location: LCCOMB_X6_Y24_N28
\BCDDC|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BCDDC|Mux2~0_combout\ = (!\Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Sum4|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Sum4|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \BCDDC|Mux2~0_combout\);

ww_UN(0) <= \UN[0]~output_o\;

ww_UN(1) <= \UN[1]~output_o\;

ww_UN(2) <= \UN[2]~output_o\;

ww_UN(3) <= \UN[3]~output_o\;

ww_UN(4) <= \UN[4]~output_o\;

ww_UN(5) <= \UN[5]~output_o\;

ww_UN(6) <= \UN[6]~output_o\;

ww_DC(0) <= \DC[0]~output_o\;

ww_DC(1) <= \DC[1]~output_o\;

ww_DC(2) <= \DC[2]~output_o\;

ww_DC(3) <= \DC[3]~output_o\;

ww_DC(4) <= \DC[4]~output_o\;

ww_DC(5) <= \DC[5]~output_o\;

ww_DC(6) <= \DC[6]~output_o\;
END structure;


