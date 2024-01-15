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
-- Generated on "01/15/2024 11:15:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          control_unit_block_diagram
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY control_unit_block_diagram_vhd_vec_tst IS
END control_unit_block_diagram_vhd_vec_tst;
ARCHITECTURE control_unit_block_diagram_arch OF control_unit_block_diagram_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUop : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ALUSrc : STD_LOGIC;
SIGNAL Branch : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL MemRead : STD_LOGIC;
SIGNAL MemtoReg : STD_LOGIC;
SIGNAL MemWrite : STD_LOGIC;
SIGNAL Opcode : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL RegDst : STD_LOGIC;
SIGNAL RegWrite : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT control_unit_block_diagram
	PORT (
	ALUop : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	ALUSrc : OUT STD_LOGIC;
	Branch : OUT STD_LOGIC;
	clock : IN STD_LOGIC;
	MemRead : OUT STD_LOGIC;
	MemtoReg : OUT STD_LOGIC;
	MemWrite : OUT STD_LOGIC;
	Opcode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	RegDst : OUT STD_LOGIC;
	RegWrite : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : control_unit_block_diagram
	PORT MAP (
-- list connections between master ports and signals
	ALUop => ALUop,
	ALUSrc => ALUSrc,
	Branch => Branch,
	clock => clock,
	MemRead => MemRead,
	MemtoReg => MemtoReg,
	MemWrite => MemWrite,
	Opcode => Opcode,
	RegDst => RegDst,
	RegWrite => RegWrite,
	reset => reset
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
-- Opcode[5]
t_prcs_Opcode_5: PROCESS
BEGIN
	Opcode(5) <= '0';
	WAIT FOR 70000 ps;
	Opcode(5) <= '1';
	WAIT FOR 90000 ps;
	Opcode(5) <= '0';
	WAIT FOR 300000 ps;
	Opcode(5) <= '1';
	WAIT FOR 60000 ps;
	Opcode(5) <= '0';
	WAIT FOR 50000 ps;
	Opcode(5) <= '1';
	WAIT FOR 120000 ps;
	Opcode(5) <= '0';
WAIT;
END PROCESS t_prcs_Opcode_5;
-- Opcode[4]
t_prcs_Opcode_4: PROCESS
BEGIN
	Opcode(4) <= '0';
	WAIT FOR 570000 ps;
	Opcode(4) <= '1';
	WAIT FOR 120000 ps;
	Opcode(4) <= '0';
WAIT;
END PROCESS t_prcs_Opcode_4;
-- Opcode[3]
t_prcs_Opcode_3: PROCESS
BEGIN
	Opcode(3) <= '0';
	WAIT FOR 120000 ps;
	Opcode(3) <= '1';
	WAIT FOR 40000 ps;
	Opcode(3) <= '0';
	WAIT FOR 410000 ps;
	Opcode(3) <= '1';
	WAIT FOR 120000 ps;
	Opcode(3) <= '0';
WAIT;
END PROCESS t_prcs_Opcode_3;
-- Opcode[2]
t_prcs_Opcode_2: PROCESS
BEGIN
	Opcode(2) <= '0';
	WAIT FOR 210000 ps;
	Opcode(2) <= '1';
	WAIT FOR 80000 ps;
	Opcode(2) <= '0';
	WAIT FOR 280000 ps;
	Opcode(2) <= '1';
	WAIT FOR 120000 ps;
	Opcode(2) <= '0';
WAIT;
END PROCESS t_prcs_Opcode_2;
-- Opcode[1]
t_prcs_Opcode_1: PROCESS
BEGIN
	Opcode(1) <= '0';
	WAIT FOR 70000 ps;
	Opcode(1) <= '1';
	WAIT FOR 90000 ps;
	Opcode(1) <= '0';
	WAIT FOR 170000 ps;
	Opcode(1) <= '1';
	WAIT FOR 80000 ps;
	Opcode(1) <= '0';
	WAIT FOR 160000 ps;
	Opcode(1) <= '1';
	WAIT FOR 120000 ps;
	Opcode(1) <= '0';
WAIT;
END PROCESS t_prcs_Opcode_1;
-- Opcode[0]
t_prcs_Opcode_0: PROCESS
BEGIN
	Opcode(0) <= '0';
	WAIT FOR 70000 ps;
	Opcode(0) <= '1';
	WAIT FOR 90000 ps;
	Opcode(0) <= '0';
	WAIT FOR 410000 ps;
	Opcode(0) <= '1';
	WAIT FOR 120000 ps;
	Opcode(0) <= '0';
WAIT;
END PROCESS t_prcs_Opcode_0;
END control_unit_block_diagram_arch;
