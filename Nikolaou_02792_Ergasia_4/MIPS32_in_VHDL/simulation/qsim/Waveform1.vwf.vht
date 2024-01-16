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
-- Generated on "01/16/2024 02:37:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU_block_diagram
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_block_diagram_vhd_vec_tst IS
END ALU_block_diagram_vhd_vec_tst;
ARCHITECTURE ALU_block_diagram_arch OF ALU_block_diagram_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Add_Result : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ALU_Result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ALUOp : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ALUSrc : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL Function_opcodes : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL PC_plus_4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Read_data_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Read_data_2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL Sign_extend : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Zero : STD_LOGIC;
COMPONENT ALU_block_diagram
	PORT (
	Add_Result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ALU_Result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ALUOp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	ALUSrc : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	Function_opcodes : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	PC_plus_4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Read_data_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Read_data_2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	reset : IN STD_LOGIC;
	Sign_extend : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALU_block_diagram
	PORT MAP (
-- list connections between master ports and signals
	Add_Result => Add_Result,
	ALU_Result => ALU_Result,
	ALUOp => ALUOp,
	ALUSrc => ALUSrc,
	clock => clock,
	Function_opcodes => Function_opcodes,
	PC_plus_4 => PC_plus_4,
	Read_data_1 => Read_data_1,
	Read_data_2 => Read_data_2,
	reset => reset,
	Sign_extend => Sign_extend,
	Zero => Zero
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- PC_plus_4[7]
t_prcs_PC_plus_4_7: PROCESS
BEGIN
	PC_plus_4(7) <= '0';
WAIT;
END PROCESS t_prcs_PC_plus_4_7;
-- PC_plus_4[6]
t_prcs_PC_plus_4_6: PROCESS
BEGIN
	PC_plus_4(6) <= '0';
WAIT;
END PROCESS t_prcs_PC_plus_4_6;
-- PC_plus_4[5]
t_prcs_PC_plus_4_5: PROCESS
BEGIN
	PC_plus_4(5) <= '0';
WAIT;
END PROCESS t_prcs_PC_plus_4_5;
-- PC_plus_4[4]
t_prcs_PC_plus_4_4: PROCESS
BEGIN
	PC_plus_4(4) <= '0';
WAIT;
END PROCESS t_prcs_PC_plus_4_4;
-- PC_plus_4[3]
t_prcs_PC_plus_4_3: PROCESS
BEGIN
	PC_plus_4(3) <= '0';
WAIT;
END PROCESS t_prcs_PC_plus_4_3;
-- PC_plus_4[2]
t_prcs_PC_plus_4_2: PROCESS
BEGIN
	PC_plus_4(2) <= '0';
WAIT;
END PROCESS t_prcs_PC_plus_4_2;
-- PC_plus_4[1]
t_prcs_PC_plus_4_1: PROCESS
BEGIN
	PC_plus_4(1) <= '0';
WAIT;
END PROCESS t_prcs_PC_plus_4_1;
-- PC_plus_4[0]
t_prcs_PC_plus_4_0: PROCESS
BEGIN
	PC_plus_4(0) <= '0';
WAIT;
END PROCESS t_prcs_PC_plus_4_0;

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
-- Sign_extend[31]
t_prcs_Sign_extend_31: PROCESS
BEGIN
	Sign_extend(31) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_31;
-- Sign_extend[30]
t_prcs_Sign_extend_30: PROCESS
BEGIN
	Sign_extend(30) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_30;
-- Sign_extend[29]
t_prcs_Sign_extend_29: PROCESS
BEGIN
	Sign_extend(29) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_29;
-- Sign_extend[28]
t_prcs_Sign_extend_28: PROCESS
BEGIN
	Sign_extend(28) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_28;
-- Sign_extend[27]
t_prcs_Sign_extend_27: PROCESS
BEGIN
	Sign_extend(27) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_27;
-- Sign_extend[26]
t_prcs_Sign_extend_26: PROCESS
BEGIN
	Sign_extend(26) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_26;
-- Sign_extend[25]
t_prcs_Sign_extend_25: PROCESS
BEGIN
	Sign_extend(25) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_25;
-- Sign_extend[24]
t_prcs_Sign_extend_24: PROCESS
BEGIN
	Sign_extend(24) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_24;
-- Sign_extend[23]
t_prcs_Sign_extend_23: PROCESS
BEGIN
	Sign_extend(23) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_23;
-- Sign_extend[22]
t_prcs_Sign_extend_22: PROCESS
BEGIN
	Sign_extend(22) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_22;
-- Sign_extend[21]
t_prcs_Sign_extend_21: PROCESS
BEGIN
	Sign_extend(21) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_21;
-- Sign_extend[20]
t_prcs_Sign_extend_20: PROCESS
BEGIN
	Sign_extend(20) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_20;
-- Sign_extend[19]
t_prcs_Sign_extend_19: PROCESS
BEGIN
	Sign_extend(19) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_19;
-- Sign_extend[18]
t_prcs_Sign_extend_18: PROCESS
BEGIN
	Sign_extend(18) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_18;
-- Sign_extend[17]
t_prcs_Sign_extend_17: PROCESS
BEGIN
	Sign_extend(17) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_17;
-- Sign_extend[16]
t_prcs_Sign_extend_16: PROCESS
BEGIN
	Sign_extend(16) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_16;
-- Sign_extend[15]
t_prcs_Sign_extend_15: PROCESS
BEGIN
	Sign_extend(15) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_15;
-- Sign_extend[14]
t_prcs_Sign_extend_14: PROCESS
BEGIN
	Sign_extend(14) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_14;
-- Sign_extend[13]
t_prcs_Sign_extend_13: PROCESS
BEGIN
	Sign_extend(13) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_13;
-- Sign_extend[12]
t_prcs_Sign_extend_12: PROCESS
BEGIN
	Sign_extend(12) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_12;
-- Sign_extend[11]
t_prcs_Sign_extend_11: PROCESS
BEGIN
	Sign_extend(11) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_11;
-- Sign_extend[10]
t_prcs_Sign_extend_10: PROCESS
BEGIN
	Sign_extend(10) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_10;
-- Sign_extend[9]
t_prcs_Sign_extend_9: PROCESS
BEGIN
	Sign_extend(9) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_9;
-- Sign_extend[8]
t_prcs_Sign_extend_8: PROCESS
BEGIN
	Sign_extend(8) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_8;
-- Sign_extend[7]
t_prcs_Sign_extend_7: PROCESS
BEGIN
	Sign_extend(7) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_7;
-- Sign_extend[6]
t_prcs_Sign_extend_6: PROCESS
BEGIN
	Sign_extend(6) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_6;
-- Sign_extend[5]
t_prcs_Sign_extend_5: PROCESS
BEGIN
	Sign_extend(5) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_5;
-- Sign_extend[4]
t_prcs_Sign_extend_4: PROCESS
BEGIN
	Sign_extend(4) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_4;
-- Sign_extend[3]
t_prcs_Sign_extend_3: PROCESS
BEGIN
	Sign_extend(3) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_3;
-- Sign_extend[2]
t_prcs_Sign_extend_2: PROCESS
BEGIN
	Sign_extend(2) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_2;
-- Sign_extend[1]
t_prcs_Sign_extend_1: PROCESS
BEGIN
	Sign_extend(1) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_1;
-- Sign_extend[0]
t_prcs_Sign_extend_0: PROCESS
BEGIN
	Sign_extend(0) <= '0';
WAIT;
END PROCESS t_prcs_Sign_extend_0;

-- ALUSrc
t_prcs_ALUSrc: PROCESS
BEGIN
	ALUSrc <= '0';
WAIT;
END PROCESS t_prcs_ALUSrc;
-- ALUOp[1]
t_prcs_ALUOp_1: PROCESS
BEGIN
	ALUOp(1) <= '1';
	WAIT FOR 130000 ps;
	ALUOp(1) <= '0';
WAIT;
END PROCESS t_prcs_ALUOp_1;
-- ALUOp[0]
t_prcs_ALUOp_0: PROCESS
BEGIN
	ALUOp(0) <= '1';
	WAIT FOR 130000 ps;
	ALUOp(0) <= '0';
WAIT;
END PROCESS t_prcs_ALUOp_0;
-- Function_opcodes[5]
t_prcs_Function_opcodes_5: PROCESS
BEGIN
	Function_opcodes(5) <= '0';
WAIT;
END PROCESS t_prcs_Function_opcodes_5;
-- Function_opcodes[4]
t_prcs_Function_opcodes_4: PROCESS
BEGIN
	Function_opcodes(4) <= '0';
WAIT;
END PROCESS t_prcs_Function_opcodes_4;
-- Function_opcodes[3]
t_prcs_Function_opcodes_3: PROCESS
BEGIN
	Function_opcodes(3) <= '1';
	WAIT FOR 130000 ps;
	Function_opcodes(3) <= '0';
WAIT;
END PROCESS t_prcs_Function_opcodes_3;
-- Function_opcodes[2]
t_prcs_Function_opcodes_2: PROCESS
BEGIN
	Function_opcodes(2) <= '0';
WAIT;
END PROCESS t_prcs_Function_opcodes_2;
-- Function_opcodes[1]
t_prcs_Function_opcodes_1: PROCESS
BEGIN
	Function_opcodes(1) <= '1';
	WAIT FOR 130000 ps;
	Function_opcodes(1) <= '0';
WAIT;
END PROCESS t_prcs_Function_opcodes_1;
-- Function_opcodes[0]
t_prcs_Function_opcodes_0: PROCESS
BEGIN
	Function_opcodes(0) <= '0';
WAIT;
END PROCESS t_prcs_Function_opcodes_0;
-- Read_data_1[31]
t_prcs_Read_data_1_31: PROCESS
BEGIN
	Read_data_1(31) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_31;
-- Read_data_1[30]
t_prcs_Read_data_1_30: PROCESS
BEGIN
	Read_data_1(30) <= '1';
	WAIT FOR 130000 ps;
	Read_data_1(30) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_30;
-- Read_data_1[29]
t_prcs_Read_data_1_29: PROCESS
BEGIN
	Read_data_1(29) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_29;
-- Read_data_1[28]
t_prcs_Read_data_1_28: PROCESS
BEGIN
	Read_data_1(28) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_28;
-- Read_data_1[27]
t_prcs_Read_data_1_27: PROCESS
BEGIN
	Read_data_1(27) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_27;
-- Read_data_1[26]
t_prcs_Read_data_1_26: PROCESS
BEGIN
	Read_data_1(26) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_26;
-- Read_data_1[25]
t_prcs_Read_data_1_25: PROCESS
BEGIN
	Read_data_1(25) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_25;
-- Read_data_1[24]
t_prcs_Read_data_1_24: PROCESS
BEGIN
	Read_data_1(24) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_24;
-- Read_data_1[23]
t_prcs_Read_data_1_23: PROCESS
BEGIN
	Read_data_1(23) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_23;
-- Read_data_1[22]
t_prcs_Read_data_1_22: PROCESS
BEGIN
	Read_data_1(22) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_22;
-- Read_data_1[21]
t_prcs_Read_data_1_21: PROCESS
BEGIN
	Read_data_1(21) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_21;
-- Read_data_1[20]
t_prcs_Read_data_1_20: PROCESS
BEGIN
	Read_data_1(20) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_20;
-- Read_data_1[19]
t_prcs_Read_data_1_19: PROCESS
BEGIN
	Read_data_1(19) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_19;
-- Read_data_1[18]
t_prcs_Read_data_1_18: PROCESS
BEGIN
	Read_data_1(18) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_18;
-- Read_data_1[17]
t_prcs_Read_data_1_17: PROCESS
BEGIN
	Read_data_1(17) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_17;
-- Read_data_1[16]
t_prcs_Read_data_1_16: PROCESS
BEGIN
	Read_data_1(16) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_16;
-- Read_data_1[15]
t_prcs_Read_data_1_15: PROCESS
BEGIN
	Read_data_1(15) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_15;
-- Read_data_1[14]
t_prcs_Read_data_1_14: PROCESS
BEGIN
	Read_data_1(14) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_14;
-- Read_data_1[13]
t_prcs_Read_data_1_13: PROCESS
BEGIN
	Read_data_1(13) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_13;
-- Read_data_1[12]
t_prcs_Read_data_1_12: PROCESS
BEGIN
	Read_data_1(12) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_12;
-- Read_data_1[11]
t_prcs_Read_data_1_11: PROCESS
BEGIN
	Read_data_1(11) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_11;
-- Read_data_1[10]
t_prcs_Read_data_1_10: PROCESS
BEGIN
	Read_data_1(10) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_10;
-- Read_data_1[9]
t_prcs_Read_data_1_9: PROCESS
BEGIN
	Read_data_1(9) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_9;
-- Read_data_1[8]
t_prcs_Read_data_1_8: PROCESS
BEGIN
	Read_data_1(8) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_8;
-- Read_data_1[7]
t_prcs_Read_data_1_7: PROCESS
BEGIN
	Read_data_1(7) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_7;
-- Read_data_1[6]
t_prcs_Read_data_1_6: PROCESS
BEGIN
	Read_data_1(6) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_6;
-- Read_data_1[5]
t_prcs_Read_data_1_5: PROCESS
BEGIN
	Read_data_1(5) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_5;
-- Read_data_1[4]
t_prcs_Read_data_1_4: PROCESS
BEGIN
	Read_data_1(4) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_4;
-- Read_data_1[3]
t_prcs_Read_data_1_3: PROCESS
BEGIN
	Read_data_1(3) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_3;
-- Read_data_1[2]
t_prcs_Read_data_1_2: PROCESS
BEGIN
	Read_data_1(2) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_2;
-- Read_data_1[1]
t_prcs_Read_data_1_1: PROCESS
BEGIN
	Read_data_1(1) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_1;
-- Read_data_1[0]
t_prcs_Read_data_1_0: PROCESS
BEGIN
	Read_data_1(0) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_1_0;
-- Read_data_2[31]
t_prcs_Read_data_2_31: PROCESS
BEGIN
	Read_data_2(31) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_31;
-- Read_data_2[30]
t_prcs_Read_data_2_30: PROCESS
BEGIN
	Read_data_2(30) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_30;
-- Read_data_2[29]
t_prcs_Read_data_2_29: PROCESS
BEGIN
	Read_data_2(29) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_29;
-- Read_data_2[28]
t_prcs_Read_data_2_28: PROCESS
BEGIN
	Read_data_2(28) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_28;
-- Read_data_2[27]
t_prcs_Read_data_2_27: PROCESS
BEGIN
	Read_data_2(27) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_27;
-- Read_data_2[26]
t_prcs_Read_data_2_26: PROCESS
BEGIN
	Read_data_2(26) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_26;
-- Read_data_2[25]
t_prcs_Read_data_2_25: PROCESS
BEGIN
	Read_data_2(25) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_25;
-- Read_data_2[24]
t_prcs_Read_data_2_24: PROCESS
BEGIN
	Read_data_2(24) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_24;
-- Read_data_2[23]
t_prcs_Read_data_2_23: PROCESS
BEGIN
	Read_data_2(23) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_23;
-- Read_data_2[22]
t_prcs_Read_data_2_22: PROCESS
BEGIN
	Read_data_2(22) <= '1';
	WAIT FOR 130000 ps;
	Read_data_2(22) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_22;
-- Read_data_2[21]
t_prcs_Read_data_2_21: PROCESS
BEGIN
	Read_data_2(21) <= '1';
	WAIT FOR 130000 ps;
	Read_data_2(21) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_21;
-- Read_data_2[20]
t_prcs_Read_data_2_20: PROCESS
BEGIN
	Read_data_2(20) <= '1';
	WAIT FOR 130000 ps;
	Read_data_2(20) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_20;
-- Read_data_2[19]
t_prcs_Read_data_2_19: PROCESS
BEGIN
	Read_data_2(19) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_19;
-- Read_data_2[18]
t_prcs_Read_data_2_18: PROCESS
BEGIN
	Read_data_2(18) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_18;
-- Read_data_2[17]
t_prcs_Read_data_2_17: PROCESS
BEGIN
	Read_data_2(17) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_17;
-- Read_data_2[16]
t_prcs_Read_data_2_16: PROCESS
BEGIN
	Read_data_2(16) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_16;
-- Read_data_2[15]
t_prcs_Read_data_2_15: PROCESS
BEGIN
	Read_data_2(15) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_15;
-- Read_data_2[14]
t_prcs_Read_data_2_14: PROCESS
BEGIN
	Read_data_2(14) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_14;
-- Read_data_2[13]
t_prcs_Read_data_2_13: PROCESS
BEGIN
	Read_data_2(13) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_13;
-- Read_data_2[12]
t_prcs_Read_data_2_12: PROCESS
BEGIN
	Read_data_2(12) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_12;
-- Read_data_2[11]
t_prcs_Read_data_2_11: PROCESS
BEGIN
	Read_data_2(11) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_11;
-- Read_data_2[10]
t_prcs_Read_data_2_10: PROCESS
BEGIN
	Read_data_2(10) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_10;
-- Read_data_2[9]
t_prcs_Read_data_2_9: PROCESS
BEGIN
	Read_data_2(9) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_9;
-- Read_data_2[8]
t_prcs_Read_data_2_8: PROCESS
BEGIN
	Read_data_2(8) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_8;
-- Read_data_2[7]
t_prcs_Read_data_2_7: PROCESS
BEGIN
	Read_data_2(7) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_7;
-- Read_data_2[6]
t_prcs_Read_data_2_6: PROCESS
BEGIN
	Read_data_2(6) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_6;
-- Read_data_2[5]
t_prcs_Read_data_2_5: PROCESS
BEGIN
	Read_data_2(5) <= '1';
	WAIT FOR 130000 ps;
	Read_data_2(5) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_5;
-- Read_data_2[4]
t_prcs_Read_data_2_4: PROCESS
BEGIN
	Read_data_2(4) <= '1';
	WAIT FOR 130000 ps;
	Read_data_2(4) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_4;
-- Read_data_2[3]
t_prcs_Read_data_2_3: PROCESS
BEGIN
	Read_data_2(3) <= '1';
	WAIT FOR 130000 ps;
	Read_data_2(3) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_3;
-- Read_data_2[2]
t_prcs_Read_data_2_2: PROCESS
BEGIN
	Read_data_2(2) <= '1';
	WAIT FOR 130000 ps;
	Read_data_2(2) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_2;
-- Read_data_2[1]
t_prcs_Read_data_2_1: PROCESS
BEGIN
	Read_data_2(1) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_1;
-- Read_data_2[0]
t_prcs_Read_data_2_0: PROCESS
BEGIN
	Read_data_2(0) <= '0';
WAIT;
END PROCESS t_prcs_Read_data_2_0;
END ALU_block_diagram_arch;
