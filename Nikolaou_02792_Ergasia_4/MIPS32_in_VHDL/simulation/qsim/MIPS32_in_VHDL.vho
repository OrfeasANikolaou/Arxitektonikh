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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "12/30/2023 11:40:02"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control_unit_block_diagram IS
    PORT (
	RegDst : OUT std_logic;
	clock : IN std_logic;
	reset : IN std_logic;
	Opcode : IN std_logic_vector(5 DOWNTO 0);
	ALUSrc : OUT std_logic;
	MemtoReg : OUT std_logic;
	RegWrite : OUT std_logic;
	MemRead : OUT std_logic;
	MemWrite : OUT std_logic;
	Branch : OUT std_logic;
	ALUop : OUT std_logic_vector(1 DOWNTO 0)
	);
END control_unit_block_diagram;

-- Design Ports Information
-- RegDst	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemtoReg	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemRead	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Branch	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUop[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUop[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[4]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_unit_block_diagram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_MemtoReg : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_MemRead : std_logic;
SIGNAL ww_MemWrite : std_logic;
SIGNAL ww_Branch : std_logic;
SIGNAL ww_ALUop : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Opcode[1]~input_o\ : std_logic;
SIGNAL \Opcode[0]~input_o\ : std_logic;
SIGNAL \Opcode[2]~input_o\ : std_logic;
SIGNAL \Opcode[5]~input_o\ : std_logic;
SIGNAL \Opcode[3]~input_o\ : std_logic;
SIGNAL \Opcode[4]~input_o\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|RegWrite~combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Opcode[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Opcode[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Opcode[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Opcode[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Opcode[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Opcode[2]~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

RegDst <= ww_RegDst;
ww_clock <= clock;
ww_reset <= reset;
ww_Opcode <= Opcode;
ALUSrc <= ww_ALUSrc;
MemtoReg <= ww_MemtoReg;
RegWrite <= ww_RegWrite;
MemRead <= ww_MemRead;
MemWrite <= ww_MemWrite;
Branch <= ww_Branch;
ALUop <= ww_ALUop;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Opcode[0]~input_o\ <= NOT \Opcode[0]~input_o\;
\ALT_INV_Opcode[1]~input_o\ <= NOT \Opcode[1]~input_o\;
\ALT_INV_Opcode[3]~input_o\ <= NOT \Opcode[3]~input_o\;
\ALT_INV_Opcode[4]~input_o\ <= NOT \Opcode[4]~input_o\;
\ALT_INV_Opcode[5]~input_o\ <= NOT \Opcode[5]~input_o\;
\ALT_INV_Opcode[2]~input_o\ <= NOT \Opcode[2]~input_o\;
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;

-- Location: IOOBUF_X89_Y38_N22
\RegDst~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_RegDst);

-- Location: IOOBUF_X89_Y38_N39
\ALUSrc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_ALUSrc);

-- Location: IOOBUF_X89_Y35_N79
\MemtoReg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_MemtoReg);

-- Location: IOOBUF_X89_Y35_N45
\RegWrite~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RegWrite~combout\,
	devoe => ww_devoe,
	o => ww_RegWrite);

-- Location: IOOBUF_X89_Y37_N39
\MemRead~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal1~0_combout\,
	devoe => ww_devoe,
	o => ww_MemRead);

-- Location: IOOBUF_X89_Y35_N96
\MemWrite~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal2~0_combout\,
	devoe => ww_devoe,
	o => ww_MemWrite);

-- Location: IOOBUF_X89_Y37_N56
\Branch~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_Branch);

-- Location: IOOBUF_X89_Y38_N56
\ALUop[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_ALUop(1));

-- Location: IOOBUF_X89_Y37_N5
\ALUop[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_ALUop(0));

-- Location: IOIBUF_X89_Y36_N21
\Opcode[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Opcode(1),
	o => \Opcode[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\Opcode[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Opcode(0),
	o => \Opcode[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\Opcode[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Opcode(2),
	o => \Opcode[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\Opcode[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Opcode(5),
	o => \Opcode[5]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\Opcode[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Opcode(3),
	o => \Opcode[3]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\Opcode[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Opcode(4),
	o => \Opcode[4]~input_o\);

-- Location: LABCELL_X88_Y36_N30
\inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = ( !\Opcode[3]~input_o\ & ( !\Opcode[4]~input_o\ & ( (!\Opcode[1]~input_o\ & (!\Opcode[0]~input_o\ & (!\Opcode[2]~input_o\ & !\Opcode[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Opcode[1]~input_o\,
	datab => \ALT_INV_Opcode[0]~input_o\,
	datac => \ALT_INV_Opcode[2]~input_o\,
	datad => \ALT_INV_Opcode[5]~input_o\,
	datae => \ALT_INV_Opcode[3]~input_o\,
	dataf => \ALT_INV_Opcode[4]~input_o\,
	combout => \inst|Equal0~0_combout\);

-- Location: LABCELL_X88_Y36_N36
\inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = ( !\Opcode[3]~input_o\ & ( !\Opcode[4]~input_o\ & ( (\Opcode[1]~input_o\ & (\Opcode[0]~input_o\ & (!\Opcode[2]~input_o\ & \Opcode[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Opcode[1]~input_o\,
	datab => \ALT_INV_Opcode[0]~input_o\,
	datac => \ALT_INV_Opcode[2]~input_o\,
	datad => \ALT_INV_Opcode[5]~input_o\,
	datae => \ALT_INV_Opcode[3]~input_o\,
	dataf => \ALT_INV_Opcode[4]~input_o\,
	combout => \inst|Equal1~0_combout\);

-- Location: LABCELL_X88_Y36_N42
\inst|RegWrite\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|RegWrite~combout\ = ( !\Opcode[3]~input_o\ & ( !\Opcode[4]~input_o\ & ( (!\Opcode[2]~input_o\ & ((!\Opcode[1]~input_o\ & (!\Opcode[0]~input_o\ & !\Opcode[5]~input_o\)) # (\Opcode[1]~input_o\ & (\Opcode[0]~input_o\ & \Opcode[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Opcode[1]~input_o\,
	datab => \ALT_INV_Opcode[0]~input_o\,
	datac => \ALT_INV_Opcode[2]~input_o\,
	datad => \ALT_INV_Opcode[5]~input_o\,
	datae => \ALT_INV_Opcode[3]~input_o\,
	dataf => \ALT_INV_Opcode[4]~input_o\,
	combout => \inst|RegWrite~combout\);

-- Location: LABCELL_X88_Y36_N48
\inst|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = ( \Opcode[3]~input_o\ & ( !\Opcode[4]~input_o\ & ( (\Opcode[1]~input_o\ & (\Opcode[0]~input_o\ & (!\Opcode[2]~input_o\ & \Opcode[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Opcode[1]~input_o\,
	datab => \ALT_INV_Opcode[0]~input_o\,
	datac => \ALT_INV_Opcode[2]~input_o\,
	datad => \ALT_INV_Opcode[5]~input_o\,
	datae => \ALT_INV_Opcode[3]~input_o\,
	dataf => \ALT_INV_Opcode[4]~input_o\,
	combout => \inst|Equal2~0_combout\);

-- Location: LABCELL_X88_Y36_N54
\inst|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = ( !\Opcode[3]~input_o\ & ( !\Opcode[4]~input_o\ & ( (!\Opcode[1]~input_o\ & (!\Opcode[0]~input_o\ & (\Opcode[2]~input_o\ & !\Opcode[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Opcode[1]~input_o\,
	datab => \ALT_INV_Opcode[0]~input_o\,
	datac => \ALT_INV_Opcode[2]~input_o\,
	datad => \ALT_INV_Opcode[5]~input_o\,
	datae => \ALT_INV_Opcode[3]~input_o\,
	dataf => \ALT_INV_Opcode[4]~input_o\,
	combout => \inst|Equal3~0_combout\);

-- Location: IOIBUF_X26_Y81_N41
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X29_Y1_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


