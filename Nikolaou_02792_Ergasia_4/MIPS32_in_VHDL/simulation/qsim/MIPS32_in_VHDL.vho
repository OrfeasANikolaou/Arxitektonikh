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

-- DATE "01/16/2024 00:47:09"

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

ENTITY 	ALU_block_diagram IS
    PORT (
	Zero : OUT std_logic;
	ALUSrc : IN std_logic;
	clock : IN std_logic;
	reset : IN std_logic;
	ALUOp : IN std_logic_vector(1 DOWNTO 0);
	Function_opcodes : IN std_logic_vector(5 DOWNTO 0);
	PC_plus_4 : IN std_logic_vector(7 DOWNTO 0);
	Read_data_1 : IN std_logic_vector(31 DOWNTO 0);
	Read_data_2 : IN std_logic_vector(31 DOWNTO 0);
	Sign_extend : IN std_logic_vector(31 DOWNTO 0);
	Add_Result : OUT std_logic_vector(7 DOWNTO 0);
	ALU_Result : OUT std_logic_vector(31 DOWNTO 0)
	);
END ALU_block_diagram;

-- Design Ports Information
-- Zero	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Function_opcodes[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Function_opcodes[4]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_plus_4[1]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_plus_4[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Add_Result[7]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Add_Result[6]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Add_Result[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Add_Result[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Add_Result[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Add_Result[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Add_Result[1]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Add_Result[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[31]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[30]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[29]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[28]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[27]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[26]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[25]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[24]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[23]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[22]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[21]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[20]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[19]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[18]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[17]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[16]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[15]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[14]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[13]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[12]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[11]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[10]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[9]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[8]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[7]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[4]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[3]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_Result[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Function_opcodes[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Function_opcodes[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Function_opcodes[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOp[0]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Function_opcodes[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[23]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUSrc	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[23]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[23]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[22]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[22]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[22]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[13]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[13]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[13]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[12]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[12]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[12]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[3]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[3]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[2]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[25]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[25]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[25]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[24]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[24]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[24]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[15]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[15]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[15]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[14]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[14]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[14]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[5]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[4]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[27]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[27]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[27]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[26]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[26]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[26]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[17]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[17]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[17]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[16]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[16]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[16]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[7]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[6]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[6]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[29]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[29]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[29]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[28]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[28]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[28]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[19]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[19]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[19]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[18]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[18]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[18]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[9]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[9]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[8]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[8]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[8]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[31]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[31]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[31]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[30]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[30]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[30]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[21]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[21]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[21]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[20]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[20]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[20]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[11]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[11]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[11]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[10]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[10]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[10]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[1]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sign_extend[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_2[0]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_data_1[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_plus_4[7]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_plus_4[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_plus_4[5]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_plus_4[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_plus_4[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_plus_4[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU_block_diagram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ALUOp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Function_opcodes : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_PC_plus_4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Read_data_1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Read_data_2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Sign_extend : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Add_Result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ALU_Result : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Function_opcodes[5]~input_o\ : std_logic;
SIGNAL \Function_opcodes[4]~input_o\ : std_logic;
SIGNAL \PC_plus_4[1]~input_o\ : std_logic;
SIGNAL \PC_plus_4[0]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ALUOp[0]~input_o\ : std_logic;
SIGNAL \Function_opcodes[2]~input_o\ : std_logic;
SIGNAL \Function_opcodes[0]~input_o\ : std_logic;
SIGNAL \Function_opcodes[3]~input_o\ : std_logic;
SIGNAL \ALUOp[1]~input_o\ : std_logic;
SIGNAL \Function_opcodes[1]~input_o\ : std_logic;
SIGNAL \inst|Mux15~2_combout\ : std_logic;
SIGNAL \inst|Mux15~1_combout\ : std_logic;
SIGNAL \Read_data_1[22]~input_o\ : std_logic;
SIGNAL \ALUSrc~input_o\ : std_logic;
SIGNAL \Sign_extend[22]~input_o\ : std_logic;
SIGNAL \Read_data_2[22]~input_o\ : std_logic;
SIGNAL \inst|Binput[22]~1_combout\ : std_logic;
SIGNAL \inst|Mux15~3_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \Read_data_1[23]~input_o\ : std_logic;
SIGNAL \Sign_extend[23]~input_o\ : std_logic;
SIGNAL \Read_data_2[23]~input_o\ : std_logic;
SIGNAL \inst|Binput[23]~0_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \Read_data_1[21]~input_o\ : std_logic;
SIGNAL \Sign_extend[21]~input_o\ : std_logic;
SIGNAL \Read_data_2[21]~input_o\ : std_logic;
SIGNAL \inst|Binput[21]~26_combout\ : std_logic;
SIGNAL \Read_data_1[20]~input_o\ : std_logic;
SIGNAL \Read_data_2[20]~input_o\ : std_logic;
SIGNAL \Sign_extend[20]~input_o\ : std_logic;
SIGNAL \inst|Binput[20]~27_combout\ : std_logic;
SIGNAL \Sign_extend[19]~input_o\ : std_logic;
SIGNAL \Read_data_2[19]~input_o\ : std_logic;
SIGNAL \inst|Binput[19]~20_combout\ : std_logic;
SIGNAL \Read_data_1[19]~input_o\ : std_logic;
SIGNAL \Read_data_1[18]~input_o\ : std_logic;
SIGNAL \Sign_extend[18]~input_o\ : std_logic;
SIGNAL \Read_data_2[18]~input_o\ : std_logic;
SIGNAL \inst|Binput[18]~21_combout\ : std_logic;
SIGNAL \Read_data_2[17]~input_o\ : std_logic;
SIGNAL \Sign_extend[17]~input_o\ : std_logic;
SIGNAL \inst|Binput[17]~14_combout\ : std_logic;
SIGNAL \Read_data_1[17]~input_o\ : std_logic;
SIGNAL \Read_data_1[16]~input_o\ : std_logic;
SIGNAL \Read_data_2[16]~input_o\ : std_logic;
SIGNAL \Sign_extend[16]~input_o\ : std_logic;
SIGNAL \inst|Binput[16]~15_combout\ : std_logic;
SIGNAL \Read_data_2[15]~input_o\ : std_logic;
SIGNAL \Sign_extend[15]~input_o\ : std_logic;
SIGNAL \inst|Binput[15]~8_combout\ : std_logic;
SIGNAL \Read_data_1[15]~input_o\ : std_logic;
SIGNAL \Read_data_1[14]~input_o\ : std_logic;
SIGNAL \Sign_extend[14]~input_o\ : std_logic;
SIGNAL \Read_data_2[14]~input_o\ : std_logic;
SIGNAL \inst|Binput[14]~9_combout\ : std_logic;
SIGNAL \Read_data_2[13]~input_o\ : std_logic;
SIGNAL \Sign_extend[13]~input_o\ : std_logic;
SIGNAL \inst|Binput[13]~2_combout\ : std_logic;
SIGNAL \Read_data_1[13]~input_o\ : std_logic;
SIGNAL \Read_data_2[12]~input_o\ : std_logic;
SIGNAL \Sign_extend[12]~input_o\ : std_logic;
SIGNAL \inst|Binput[12]~3_combout\ : std_logic;
SIGNAL \Read_data_1[12]~input_o\ : std_logic;
SIGNAL \Sign_extend[11]~input_o\ : std_logic;
SIGNAL \Read_data_2[11]~input_o\ : std_logic;
SIGNAL \inst|Binput[11]~28_combout\ : std_logic;
SIGNAL \Read_data_1[11]~input_o\ : std_logic;
SIGNAL \Sign_extend[10]~input_o\ : std_logic;
SIGNAL \Read_data_2[10]~input_o\ : std_logic;
SIGNAL \inst|Binput[10]~29_combout\ : std_logic;
SIGNAL \Read_data_1[10]~input_o\ : std_logic;
SIGNAL \Read_data_1[9]~input_o\ : std_logic;
SIGNAL \Sign_extend[9]~input_o\ : std_logic;
SIGNAL \Read_data_2[9]~input_o\ : std_logic;
SIGNAL \inst|Binput[9]~22_combout\ : std_logic;
SIGNAL \Read_data_2[8]~input_o\ : std_logic;
SIGNAL \Sign_extend[8]~input_o\ : std_logic;
SIGNAL \inst|Binput[8]~23_combout\ : std_logic;
SIGNAL \Read_data_1[8]~input_o\ : std_logic;
SIGNAL \Read_data_1[7]~input_o\ : std_logic;
SIGNAL \Read_data_2[7]~input_o\ : std_logic;
SIGNAL \Sign_extend[7]~input_o\ : std_logic;
SIGNAL \inst|Binput[7]~16_combout\ : std_logic;
SIGNAL \Read_data_2[6]~input_o\ : std_logic;
SIGNAL \Sign_extend[6]~input_o\ : std_logic;
SIGNAL \inst|Binput[6]~17_combout\ : std_logic;
SIGNAL \Read_data_1[6]~input_o\ : std_logic;
SIGNAL \Read_data_2[5]~input_o\ : std_logic;
SIGNAL \Sign_extend[5]~input_o\ : std_logic;
SIGNAL \inst|Binput[5]~10_combout\ : std_logic;
SIGNAL \Read_data_1[5]~input_o\ : std_logic;
SIGNAL \Read_data_1[4]~input_o\ : std_logic;
SIGNAL \Read_data_2[4]~input_o\ : std_logic;
SIGNAL \Sign_extend[4]~input_o\ : std_logic;
SIGNAL \inst|Binput[4]~11_combout\ : std_logic;
SIGNAL \Read_data_1[3]~input_o\ : std_logic;
SIGNAL \Read_data_2[3]~input_o\ : std_logic;
SIGNAL \Sign_extend[3]~input_o\ : std_logic;
SIGNAL \inst|Binput[3]~4_combout\ : std_logic;
SIGNAL \Read_data_1[2]~input_o\ : std_logic;
SIGNAL \Sign_extend[2]~input_o\ : std_logic;
SIGNAL \Read_data_2[2]~input_o\ : std_logic;
SIGNAL \inst|Binput[2]~5_combout\ : std_logic;
SIGNAL \Read_data_2[1]~input_o\ : std_logic;
SIGNAL \Sign_extend[1]~input_o\ : std_logic;
SIGNAL \inst|Binput[1]~30_combout\ : std_logic;
SIGNAL \Read_data_1[1]~input_o\ : std_logic;
SIGNAL \Read_data_2[0]~input_o\ : std_logic;
SIGNAL \Sign_extend[0]~input_o\ : std_logic;
SIGNAL \inst|Binput[0]~31_combout\ : std_logic;
SIGNAL \Read_data_1[0]~input_o\ : std_logic;
SIGNAL \inst|Add1~130_cout\ : std_logic;
SIGNAL \inst|Add1~126\ : std_logic;
SIGNAL \inst|Add1~122\ : std_logic;
SIGNAL \inst|Add1~22\ : std_logic;
SIGNAL \inst|Add1~18\ : std_logic;
SIGNAL \inst|Add1~42\ : std_logic;
SIGNAL \inst|Add1~46\ : std_logic;
SIGNAL \inst|Add1~70\ : std_logic;
SIGNAL \inst|Add1~66\ : std_logic;
SIGNAL \inst|Add1~94\ : std_logic;
SIGNAL \inst|Add1~90\ : std_logic;
SIGNAL \inst|Add1~118\ : std_logic;
SIGNAL \inst|Add1~114\ : std_logic;
SIGNAL \inst|Add1~14\ : std_logic;
SIGNAL \inst|Add1~10\ : std_logic;
SIGNAL \inst|Add1~38\ : std_logic;
SIGNAL \inst|Add1~34\ : std_logic;
SIGNAL \inst|Add1~58\ : std_logic;
SIGNAL \inst|Add1~62\ : std_logic;
SIGNAL \inst|Add1~82\ : std_logic;
SIGNAL \inst|Add1~86\ : std_logic;
SIGNAL \inst|Add1~106\ : std_logic;
SIGNAL \inst|Add1~110\ : std_logic;
SIGNAL \inst|Add1~1_sumout\ : std_logic;
SIGNAL \inst|Add1~2\ : std_logic;
SIGNAL \inst|Add1~5_sumout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|Add1~13_sumout\ : std_logic;
SIGNAL \inst|Mux28~0_combout\ : std_logic;
SIGNAL \inst|Mux29~0_combout\ : std_logic;
SIGNAL \inst|Add1~21_sumout\ : std_logic;
SIGNAL \inst|Add1~17_sumout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|Add1~9_sumout\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \Read_data_1[28]~input_o\ : std_logic;
SIGNAL \Sign_extend[28]~input_o\ : std_logic;
SIGNAL \Read_data_2[28]~input_o\ : std_logic;
SIGNAL \inst|Binput[28]~19_combout\ : std_logic;
SIGNAL \Read_data_1[27]~input_o\ : std_logic;
SIGNAL \Read_data_2[27]~input_o\ : std_logic;
SIGNAL \Sign_extend[27]~input_o\ : std_logic;
SIGNAL \inst|Binput[27]~12_combout\ : std_logic;
SIGNAL \Read_data_1[26]~input_o\ : std_logic;
SIGNAL \Read_data_2[26]~input_o\ : std_logic;
SIGNAL \Sign_extend[26]~input_o\ : std_logic;
SIGNAL \inst|Binput[26]~13_combout\ : std_logic;
SIGNAL \Sign_extend[25]~input_o\ : std_logic;
SIGNAL \Read_data_2[25]~input_o\ : std_logic;
SIGNAL \inst|Binput[25]~6_combout\ : std_logic;
SIGNAL \Read_data_1[25]~input_o\ : std_logic;
SIGNAL \Sign_extend[24]~input_o\ : std_logic;
SIGNAL \Read_data_2[24]~input_o\ : std_logic;
SIGNAL \inst|Binput[24]~7_combout\ : std_logic;
SIGNAL \Read_data_1[24]~input_o\ : std_logic;
SIGNAL \inst|Add1~6\ : std_logic;
SIGNAL \inst|Add1~26\ : std_logic;
SIGNAL \inst|Add1~30\ : std_logic;
SIGNAL \inst|Add1~50\ : std_logic;
SIGNAL \inst|Add1~54\ : std_logic;
SIGNAL \inst|Add1~73_sumout\ : std_logic;
SIGNAL \Read_data_1[29]~input_o\ : std_logic;
SIGNAL \Sign_extend[29]~input_o\ : std_logic;
SIGNAL \Read_data_2[29]~input_o\ : std_logic;
SIGNAL \inst|Binput[29]~18_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Add1~74\ : std_logic;
SIGNAL \inst|Add1~77_sumout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Mux22~0_combout\ : std_logic;
SIGNAL \inst|Add1~93_sumout\ : std_logic;
SIGNAL \inst|Add1~89_sumout\ : std_logic;
SIGNAL \inst|Mux23~0_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|Add1~85_sumout\ : std_logic;
SIGNAL \inst|Add1~81_sumout\ : std_logic;
SIGNAL \inst|Equal0~10_combout\ : std_logic;
SIGNAL \inst|Equal0~11_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Add1~61_sumout\ : std_logic;
SIGNAL \inst|Mux24~0_combout\ : std_logic;
SIGNAL \inst|Add1~65_sumout\ : std_logic;
SIGNAL \inst|Add1~69_sumout\ : std_logic;
SIGNAL \inst|Mux25~0_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Mux15~4_combout\ : std_logic;
SIGNAL \inst|Add1~57_sumout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Add1~49_sumout\ : std_logic;
SIGNAL \inst|Add1~53_sumout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Add1~29_sumout\ : std_logic;
SIGNAL \inst|Add1~25_sumout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Add1~37_sumout\ : std_logic;
SIGNAL \inst|Mux26~0_combout\ : std_logic;
SIGNAL \inst|Add1~45_sumout\ : std_logic;
SIGNAL \inst|Add1~41_sumout\ : std_logic;
SIGNAL \inst|Mux27~0_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|Add1~33_sumout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \Read_data_1[31]~input_o\ : std_logic;
SIGNAL \Sign_extend[31]~input_o\ : std_logic;
SIGNAL \Read_data_2[31]~input_o\ : std_logic;
SIGNAL \inst|Binput[31]~24_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \Sign_extend[30]~input_o\ : std_logic;
SIGNAL \Read_data_2[30]~input_o\ : std_logic;
SIGNAL \inst|Binput[30]~25_combout\ : std_logic;
SIGNAL \Read_data_1[30]~input_o\ : std_logic;
SIGNAL \inst|Add1~78\ : std_logic;
SIGNAL \inst|Add1~97_sumout\ : std_logic;
SIGNAL \inst|Add1~109_sumout\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|Mux20~0_combout\ : std_logic;
SIGNAL \inst|Mux21~0_combout\ : std_logic;
SIGNAL \inst|Add1~117_sumout\ : std_logic;
SIGNAL \inst|Add1~113_sumout\ : std_logic;
SIGNAL \inst|Mux30~0_combout\ : std_logic;
SIGNAL \inst|Add1~125_sumout\ : std_logic;
SIGNAL \inst|Add1~121_sumout\ : std_logic;
SIGNAL \inst|Mux31~0_combout\ : std_logic;
SIGNAL \inst|Equal0~12_combout\ : std_logic;
SIGNAL \inst|Equal0~13_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|Add1~105_sumout\ : std_logic;
SIGNAL \inst|Equal0~14_combout\ : std_logic;
SIGNAL \inst|Add1~98\ : std_logic;
SIGNAL \inst|Add1~101_sumout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Equal0~15_combout\ : std_logic;
SIGNAL \inst|Equal0~16_combout\ : std_logic;
SIGNAL \PC_plus_4[7]~input_o\ : std_logic;
SIGNAL \PC_plus_4[6]~input_o\ : std_logic;
SIGNAL \PC_plus_4[5]~input_o\ : std_logic;
SIGNAL \PC_plus_4[4]~input_o\ : std_logic;
SIGNAL \PC_plus_4[3]~input_o\ : std_logic;
SIGNAL \PC_plus_4[2]~input_o\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|ALU_Result[31]~0_combout\ : std_logic;
SIGNAL \inst|ALU_Result[30]~1_combout\ : std_logic;
SIGNAL \inst|ALU_Result[29]~2_combout\ : std_logic;
SIGNAL \inst|ALU_Result[28]~3_combout\ : std_logic;
SIGNAL \inst|ALU_Result[27]~4_combout\ : std_logic;
SIGNAL \inst|ALU_Result[26]~5_combout\ : std_logic;
SIGNAL \inst|ALU_Result[25]~6_combout\ : std_logic;
SIGNAL \inst|ALU_Result[24]~7_combout\ : std_logic;
SIGNAL \inst|ALU_Result[23]~8_combout\ : std_logic;
SIGNAL \inst|ALU_Result[22]~9_combout\ : std_logic;
SIGNAL \inst|ALU_Result[21]~10_combout\ : std_logic;
SIGNAL \inst|ALU_Result[20]~11_combout\ : std_logic;
SIGNAL \inst|ALU_Result[19]~12_combout\ : std_logic;
SIGNAL \inst|ALU_Result[18]~13_combout\ : std_logic;
SIGNAL \inst|ALU_Result[17]~14_combout\ : std_logic;
SIGNAL \inst|ALU_Result[16]~15_combout\ : std_logic;
SIGNAL \inst|ALU_Result[15]~16_combout\ : std_logic;
SIGNAL \inst|ALU_Result[14]~17_combout\ : std_logic;
SIGNAL \inst|ALU_Result[13]~18_combout\ : std_logic;
SIGNAL \inst|ALU_Result[12]~19_combout\ : std_logic;
SIGNAL \inst|ALU_Result[11]~20_combout\ : std_logic;
SIGNAL \inst|ALU_Result[10]~21_combout\ : std_logic;
SIGNAL \inst|ALU_Result[9]~22_combout\ : std_logic;
SIGNAL \inst|ALU_Result[8]~23_combout\ : std_logic;
SIGNAL \inst|ALU_Result[7]~24_combout\ : std_logic;
SIGNAL \inst|ALU_Result[6]~25_combout\ : std_logic;
SIGNAL \inst|ALU_Result[5]~26_combout\ : std_logic;
SIGNAL \inst|ALU_Result[4]~27_combout\ : std_logic;
SIGNAL \inst|ALU_Result[3]~28_combout\ : std_logic;
SIGNAL \inst|ALU_Result[2]~29_combout\ : std_logic;
SIGNAL \inst|ALU_Result[1]~30_combout\ : std_logic;
SIGNAL \inst|ALU_Result[0]~31_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~15_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~14_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~13_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~12_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[0]~31_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[1]~30_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[10]~29_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[11]~28_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[20]~27_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[21]~26_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[30]~25_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[31]~24_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~11_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[8]~23_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[9]~22_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[18]~21_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[19]~20_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[28]~19_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[29]~18_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[6]~17_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[7]~16_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux15~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[16]~15_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[17]~14_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[26]~13_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[27]~12_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[4]~11_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[5]~10_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[14]~9_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[15]~8_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[24]~7_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[25]~6_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[2]~5_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[3]~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[12]~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[13]~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[22]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Binput[23]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux15~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux15~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux15~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUSrc~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_Function_opcodes[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUOp[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ALUOp[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Function_opcodes[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Function_opcodes[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Function_opcodes[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_plus_4[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_plus_4[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_plus_4[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_plus_4[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_plus_4[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_PC_plus_4[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_Sign_extend[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_1[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_Read_data_2[17]~input_o\ : std_logic;

BEGIN

Zero <= ww_Zero;
ww_ALUSrc <= ALUSrc;
ww_clock <= clock;
ww_reset <= reset;
ww_ALUOp <= ALUOp;
ww_Function_opcodes <= Function_opcodes;
ww_PC_plus_4 <= PC_plus_4;
ww_Read_data_1 <= Read_data_1;
ww_Read_data_2 <= Read_data_2;
ww_Sign_extend <= Sign_extend;
Add_Result <= ww_Add_Result;
ALU_Result <= ww_ALU_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_Add1~125_sumout\ <= NOT \inst|Add1~125_sumout\;
\inst|ALT_INV_Add1~121_sumout\ <= NOT \inst|Add1~121_sumout\;
\inst|ALT_INV_Add1~117_sumout\ <= NOT \inst|Add1~117_sumout\;
\inst|ALT_INV_Add1~113_sumout\ <= NOT \inst|Add1~113_sumout\;
\inst|ALT_INV_Add1~109_sumout\ <= NOT \inst|Add1~109_sumout\;
\inst|ALT_INV_Add1~105_sumout\ <= NOT \inst|Add1~105_sumout\;
\inst|ALT_INV_Add1~101_sumout\ <= NOT \inst|Add1~101_sumout\;
\inst|ALT_INV_Add1~97_sumout\ <= NOT \inst|Add1~97_sumout\;
\inst|ALT_INV_Add1~93_sumout\ <= NOT \inst|Add1~93_sumout\;
\inst|ALT_INV_Add1~89_sumout\ <= NOT \inst|Add1~89_sumout\;
\inst|ALT_INV_Add1~85_sumout\ <= NOT \inst|Add1~85_sumout\;
\inst|ALT_INV_Add1~81_sumout\ <= NOT \inst|Add1~81_sumout\;
\inst|ALT_INV_Add1~77_sumout\ <= NOT \inst|Add1~77_sumout\;
\inst|ALT_INV_Add1~73_sumout\ <= NOT \inst|Add1~73_sumout\;
\inst|ALT_INV_Add1~69_sumout\ <= NOT \inst|Add1~69_sumout\;
\inst|ALT_INV_Add1~65_sumout\ <= NOT \inst|Add1~65_sumout\;
\inst|ALT_INV_Add1~61_sumout\ <= NOT \inst|Add1~61_sumout\;
\inst|ALT_INV_Add1~57_sumout\ <= NOT \inst|Add1~57_sumout\;
\inst|ALT_INV_Add1~53_sumout\ <= NOT \inst|Add1~53_sumout\;
\inst|ALT_INV_Add1~49_sumout\ <= NOT \inst|Add1~49_sumout\;
\inst|ALT_INV_Add1~45_sumout\ <= NOT \inst|Add1~45_sumout\;
\inst|ALT_INV_Add1~41_sumout\ <= NOT \inst|Add1~41_sumout\;
\inst|ALT_INV_Add1~37_sumout\ <= NOT \inst|Add1~37_sumout\;
\inst|ALT_INV_Add1~33_sumout\ <= NOT \inst|Add1~33_sumout\;
\inst|ALT_INV_Add1~29_sumout\ <= NOT \inst|Add1~29_sumout\;
\inst|ALT_INV_Add1~25_sumout\ <= NOT \inst|Add1~25_sumout\;
\inst|ALT_INV_Add1~21_sumout\ <= NOT \inst|Add1~21_sumout\;
\inst|ALT_INV_Add1~17_sumout\ <= NOT \inst|Add1~17_sumout\;
\inst|ALT_INV_Add1~13_sumout\ <= NOT \inst|Add1~13_sumout\;
\inst|ALT_INV_Add1~9_sumout\ <= NOT \inst|Add1~9_sumout\;
\inst|ALT_INV_Add1~5_sumout\ <= NOT \inst|Add1~5_sumout\;
\inst|ALT_INV_Add1~1_sumout\ <= NOT \inst|Add1~1_sumout\;
\inst|ALT_INV_Equal1~0_combout\ <= NOT \inst|Equal1~0_combout\;
\inst|ALT_INV_Equal0~15_combout\ <= NOT \inst|Equal0~15_combout\;
\inst|ALT_INV_Equal0~14_combout\ <= NOT \inst|Equal0~14_combout\;
\inst|ALT_INV_Equal0~13_combout\ <= NOT \inst|Equal0~13_combout\;
\inst|ALT_INV_Equal0~12_combout\ <= NOT \inst|Equal0~12_combout\;
\inst|ALT_INV_Mux31~0_combout\ <= NOT \inst|Mux31~0_combout\;
\inst|ALT_INV_Binput[0]~31_combout\ <= NOT \inst|Binput[0]~31_combout\;
\inst|ALT_INV_Mux30~0_combout\ <= NOT \inst|Mux30~0_combout\;
\inst|ALT_INV_Binput[1]~30_combout\ <= NOT \inst|Binput[1]~30_combout\;
\inst|ALT_INV_Mux21~0_combout\ <= NOT \inst|Mux21~0_combout\;
\inst|ALT_INV_Binput[10]~29_combout\ <= NOT \inst|Binput[10]~29_combout\;
\inst|ALT_INV_Mux20~0_combout\ <= NOT \inst|Mux20~0_combout\;
\inst|ALT_INV_Binput[11]~28_combout\ <= NOT \inst|Binput[11]~28_combout\;
\inst|ALT_INV_Mux11~0_combout\ <= NOT \inst|Mux11~0_combout\;
\inst|ALT_INV_Binput[20]~27_combout\ <= NOT \inst|Binput[20]~27_combout\;
\inst|ALT_INV_Mux10~0_combout\ <= NOT \inst|Mux10~0_combout\;
\inst|ALT_INV_Binput[21]~26_combout\ <= NOT \inst|Binput[21]~26_combout\;
\inst|ALT_INV_Mux1~0_combout\ <= NOT \inst|Mux1~0_combout\;
\inst|ALT_INV_Binput[30]~25_combout\ <= NOT \inst|Binput[30]~25_combout\;
\inst|ALT_INV_Mux0~0_combout\ <= NOT \inst|Mux0~0_combout\;
\inst|ALT_INV_Binput[31]~24_combout\ <= NOT \inst|Binput[31]~24_combout\;
\inst|ALT_INV_Equal0~11_combout\ <= NOT \inst|Equal0~11_combout\;
\inst|ALT_INV_Equal0~10_combout\ <= NOT \inst|Equal0~10_combout\;
\inst|ALT_INV_Equal0~9_combout\ <= NOT \inst|Equal0~9_combout\;
\inst|ALT_INV_Mux23~0_combout\ <= NOT \inst|Mux23~0_combout\;
\inst|ALT_INV_Binput[8]~23_combout\ <= NOT \inst|Binput[8]~23_combout\;
\inst|ALT_INV_Mux22~0_combout\ <= NOT \inst|Mux22~0_combout\;
\inst|ALT_INV_Binput[9]~22_combout\ <= NOT \inst|Binput[9]~22_combout\;
\inst|ALT_INV_Mux13~0_combout\ <= NOT \inst|Mux13~0_combout\;
\inst|ALT_INV_Binput[18]~21_combout\ <= NOT \inst|Binput[18]~21_combout\;
\inst|ALT_INV_Mux12~0_combout\ <= NOT \inst|Mux12~0_combout\;
\inst|ALT_INV_Binput[19]~20_combout\ <= NOT \inst|Binput[19]~20_combout\;
\inst|ALT_INV_Mux3~0_combout\ <= NOT \inst|Mux3~0_combout\;
\inst|ALT_INV_Binput[28]~19_combout\ <= NOT \inst|Binput[28]~19_combout\;
\inst|ALT_INV_Mux2~0_combout\ <= NOT \inst|Mux2~0_combout\;
\inst|ALT_INV_Binput[29]~18_combout\ <= NOT \inst|Binput[29]~18_combout\;
\inst|ALT_INV_Equal0~8_combout\ <= NOT \inst|Equal0~8_combout\;
\inst|ALT_INV_Equal0~7_combout\ <= NOT \inst|Equal0~7_combout\;
\inst|ALT_INV_Equal0~6_combout\ <= NOT \inst|Equal0~6_combout\;
\inst|ALT_INV_Mux25~0_combout\ <= NOT \inst|Mux25~0_combout\;
\inst|ALT_INV_Binput[6]~17_combout\ <= NOT \inst|Binput[6]~17_combout\;
\inst|ALT_INV_Mux24~0_combout\ <= NOT \inst|Mux24~0_combout\;
\inst|ALT_INV_Binput[7]~16_combout\ <= NOT \inst|Binput[7]~16_combout\;
\inst|ALT_INV_Mux15~4_combout\ <= NOT \inst|Mux15~4_combout\;
\inst|ALT_INV_Binput[16]~15_combout\ <= NOT \inst|Binput[16]~15_combout\;
\inst|ALT_INV_Mux14~0_combout\ <= NOT \inst|Mux14~0_combout\;
\inst|ALT_INV_Binput[17]~14_combout\ <= NOT \inst|Binput[17]~14_combout\;
\inst|ALT_INV_Mux5~0_combout\ <= NOT \inst|Mux5~0_combout\;
\inst|ALT_INV_Binput[26]~13_combout\ <= NOT \inst|Binput[26]~13_combout\;
\inst|ALT_INV_Mux4~0_combout\ <= NOT \inst|Mux4~0_combout\;
\inst|ALT_INV_Binput[27]~12_combout\ <= NOT \inst|Binput[27]~12_combout\;
\inst|ALT_INV_Equal0~5_combout\ <= NOT \inst|Equal0~5_combout\;
\inst|ALT_INV_Equal0~4_combout\ <= NOT \inst|Equal0~4_combout\;
\inst|ALT_INV_Equal0~3_combout\ <= NOT \inst|Equal0~3_combout\;
\inst|ALT_INV_Mux27~0_combout\ <= NOT \inst|Mux27~0_combout\;
\inst|ALT_INV_Binput[4]~11_combout\ <= NOT \inst|Binput[4]~11_combout\;
\inst|ALT_INV_Mux26~0_combout\ <= NOT \inst|Mux26~0_combout\;
\inst|ALT_INV_Binput[5]~10_combout\ <= NOT \inst|Binput[5]~10_combout\;
\inst|ALT_INV_Mux17~0_combout\ <= NOT \inst|Mux17~0_combout\;
\inst|ALT_INV_Binput[14]~9_combout\ <= NOT \inst|Binput[14]~9_combout\;
\inst|ALT_INV_Mux16~0_combout\ <= NOT \inst|Mux16~0_combout\;
\inst|ALT_INV_Binput[15]~8_combout\ <= NOT \inst|Binput[15]~8_combout\;
\inst|ALT_INV_Mux7~0_combout\ <= NOT \inst|Mux7~0_combout\;
\inst|ALT_INV_Binput[24]~7_combout\ <= NOT \inst|Binput[24]~7_combout\;
\inst|ALT_INV_Mux6~0_combout\ <= NOT \inst|Mux6~0_combout\;
\inst|ALT_INV_Binput[25]~6_combout\ <= NOT \inst|Binput[25]~6_combout\;
\inst|ALT_INV_Equal0~2_combout\ <= NOT \inst|Equal0~2_combout\;
\inst|ALT_INV_Equal0~1_combout\ <= NOT \inst|Equal0~1_combout\;
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;
\inst|ALT_INV_Mux29~0_combout\ <= NOT \inst|Mux29~0_combout\;
\inst|ALT_INV_Binput[2]~5_combout\ <= NOT \inst|Binput[2]~5_combout\;
\inst|ALT_INV_Mux28~0_combout\ <= NOT \inst|Mux28~0_combout\;
\inst|ALT_INV_Binput[3]~4_combout\ <= NOT \inst|Binput[3]~4_combout\;
\inst|ALT_INV_Mux19~0_combout\ <= NOT \inst|Mux19~0_combout\;
\inst|ALT_INV_Binput[12]~3_combout\ <= NOT \inst|Binput[12]~3_combout\;
\inst|ALT_INV_Mux18~0_combout\ <= NOT \inst|Mux18~0_combout\;
\inst|ALT_INV_Binput[13]~2_combout\ <= NOT \inst|Binput[13]~2_combout\;
\inst|ALT_INV_Mux9~0_combout\ <= NOT \inst|Mux9~0_combout\;
\inst|ALT_INV_Binput[22]~1_combout\ <= NOT \inst|Binput[22]~1_combout\;
\inst|ALT_INV_Mux8~0_combout\ <= NOT \inst|Mux8~0_combout\;
\inst|ALT_INV_Binput[23]~0_combout\ <= NOT \inst|Binput[23]~0_combout\;
\inst|ALT_INV_Mux15~3_combout\ <= NOT \inst|Mux15~3_combout\;
\inst|ALT_INV_Mux15~2_combout\ <= NOT \inst|Mux15~2_combout\;
\inst|ALT_INV_Mux15~1_combout\ <= NOT \inst|Mux15~1_combout\;
\inst|ALT_INV_Mux15~0_combout\ <= NOT \inst|Mux15~0_combout\;
\ALT_INV_Sign_extend[17]~input_o\ <= NOT \Sign_extend[17]~input_o\;
\ALT_INV_Read_data_1[17]~input_o\ <= NOT \Read_data_1[17]~input_o\;
\ALT_INV_Read_data_2[26]~input_o\ <= NOT \Read_data_2[26]~input_o\;
\ALT_INV_Sign_extend[26]~input_o\ <= NOT \Sign_extend[26]~input_o\;
\ALT_INV_Read_data_1[26]~input_o\ <= NOT \Read_data_1[26]~input_o\;
\ALT_INV_Read_data_2[27]~input_o\ <= NOT \Read_data_2[27]~input_o\;
\ALT_INV_Sign_extend[27]~input_o\ <= NOT \Sign_extend[27]~input_o\;
\ALT_INV_Read_data_1[27]~input_o\ <= NOT \Read_data_1[27]~input_o\;
\ALT_INV_Read_data_1[4]~input_o\ <= NOT \Read_data_1[4]~input_o\;
\ALT_INV_Read_data_2[4]~input_o\ <= NOT \Read_data_2[4]~input_o\;
\ALT_INV_Sign_extend[4]~input_o\ <= NOT \Sign_extend[4]~input_o\;
\ALT_INV_Read_data_1[5]~input_o\ <= NOT \Read_data_1[5]~input_o\;
\ALT_INV_Read_data_2[5]~input_o\ <= NOT \Read_data_2[5]~input_o\;
\ALT_INV_Sign_extend[5]~input_o\ <= NOT \Sign_extend[5]~input_o\;
\ALT_INV_Read_data_1[14]~input_o\ <= NOT \Read_data_1[14]~input_o\;
\ALT_INV_Read_data_2[14]~input_o\ <= NOT \Read_data_2[14]~input_o\;
\ALT_INV_Sign_extend[14]~input_o\ <= NOT \Sign_extend[14]~input_o\;
\ALT_INV_Read_data_1[15]~input_o\ <= NOT \Read_data_1[15]~input_o\;
\ALT_INV_Read_data_2[15]~input_o\ <= NOT \Read_data_2[15]~input_o\;
\ALT_INV_Sign_extend[15]~input_o\ <= NOT \Sign_extend[15]~input_o\;
\ALT_INV_Read_data_2[24]~input_o\ <= NOT \Read_data_2[24]~input_o\;
\ALT_INV_Sign_extend[24]~input_o\ <= NOT \Sign_extend[24]~input_o\;
\ALT_INV_Read_data_1[24]~input_o\ <= NOT \Read_data_1[24]~input_o\;
\ALT_INV_Read_data_2[25]~input_o\ <= NOT \Read_data_2[25]~input_o\;
\ALT_INV_Sign_extend[25]~input_o\ <= NOT \Sign_extend[25]~input_o\;
\ALT_INV_Read_data_1[25]~input_o\ <= NOT \Read_data_1[25]~input_o\;
\ALT_INV_Read_data_1[2]~input_o\ <= NOT \Read_data_1[2]~input_o\;
\ALT_INV_Read_data_2[2]~input_o\ <= NOT \Read_data_2[2]~input_o\;
\ALT_INV_Sign_extend[2]~input_o\ <= NOT \Sign_extend[2]~input_o\;
\ALT_INV_Read_data_1[3]~input_o\ <= NOT \Read_data_1[3]~input_o\;
\ALT_INV_Read_data_2[3]~input_o\ <= NOT \Read_data_2[3]~input_o\;
\ALT_INV_Sign_extend[3]~input_o\ <= NOT \Sign_extend[3]~input_o\;
\ALT_INV_Read_data_1[12]~input_o\ <= NOT \Read_data_1[12]~input_o\;
\ALT_INV_Read_data_2[12]~input_o\ <= NOT \Read_data_2[12]~input_o\;
\ALT_INV_Sign_extend[12]~input_o\ <= NOT \Sign_extend[12]~input_o\;
\ALT_INV_Read_data_1[13]~input_o\ <= NOT \Read_data_1[13]~input_o\;
\ALT_INV_Read_data_2[13]~input_o\ <= NOT \Read_data_2[13]~input_o\;
\ALT_INV_Sign_extend[13]~input_o\ <= NOT \Sign_extend[13]~input_o\;
\ALT_INV_Read_data_2[22]~input_o\ <= NOT \Read_data_2[22]~input_o\;
\ALT_INV_Sign_extend[22]~input_o\ <= NOT \Sign_extend[22]~input_o\;
\ALT_INV_Read_data_1[22]~input_o\ <= NOT \Read_data_1[22]~input_o\;
\ALT_INV_Read_data_2[23]~input_o\ <= NOT \Read_data_2[23]~input_o\;
\ALT_INV_Sign_extend[23]~input_o\ <= NOT \Sign_extend[23]~input_o\;
\ALT_INV_ALUSrc~input_o\ <= NOT \ALUSrc~input_o\;
\ALT_INV_Read_data_1[23]~input_o\ <= NOT \Read_data_1[23]~input_o\;
\ALT_INV_Function_opcodes[1]~input_o\ <= NOT \Function_opcodes[1]~input_o\;
\ALT_INV_ALUOp[0]~input_o\ <= NOT \ALUOp[0]~input_o\;
\ALT_INV_ALUOp[1]~input_o\ <= NOT \ALUOp[1]~input_o\;
\ALT_INV_Function_opcodes[0]~input_o\ <= NOT \Function_opcodes[0]~input_o\;
\ALT_INV_Function_opcodes[3]~input_o\ <= NOT \Function_opcodes[3]~input_o\;
\ALT_INV_Function_opcodes[2]~input_o\ <= NOT \Function_opcodes[2]~input_o\;
\ALT_INV_PC_plus_4[2]~input_o\ <= NOT \PC_plus_4[2]~input_o\;
\ALT_INV_PC_plus_4[3]~input_o\ <= NOT \PC_plus_4[3]~input_o\;
\ALT_INV_PC_plus_4[4]~input_o\ <= NOT \PC_plus_4[4]~input_o\;
\ALT_INV_PC_plus_4[5]~input_o\ <= NOT \PC_plus_4[5]~input_o\;
\ALT_INV_PC_plus_4[6]~input_o\ <= NOT \PC_plus_4[6]~input_o\;
\ALT_INV_PC_plus_4[7]~input_o\ <= NOT \PC_plus_4[7]~input_o\;
\ALT_INV_Read_data_1[0]~input_o\ <= NOT \Read_data_1[0]~input_o\;
\ALT_INV_Read_data_2[0]~input_o\ <= NOT \Read_data_2[0]~input_o\;
\ALT_INV_Sign_extend[0]~input_o\ <= NOT \Sign_extend[0]~input_o\;
\ALT_INV_Read_data_1[1]~input_o\ <= NOT \Read_data_1[1]~input_o\;
\ALT_INV_Read_data_2[1]~input_o\ <= NOT \Read_data_2[1]~input_o\;
\ALT_INV_Sign_extend[1]~input_o\ <= NOT \Sign_extend[1]~input_o\;
\ALT_INV_Read_data_1[10]~input_o\ <= NOT \Read_data_1[10]~input_o\;
\ALT_INV_Read_data_2[10]~input_o\ <= NOT \Read_data_2[10]~input_o\;
\ALT_INV_Sign_extend[10]~input_o\ <= NOT \Sign_extend[10]~input_o\;
\ALT_INV_Read_data_1[11]~input_o\ <= NOT \Read_data_1[11]~input_o\;
\ALT_INV_Read_data_2[11]~input_o\ <= NOT \Read_data_2[11]~input_o\;
\ALT_INV_Sign_extend[11]~input_o\ <= NOT \Sign_extend[11]~input_o\;
\ALT_INV_Read_data_2[20]~input_o\ <= NOT \Read_data_2[20]~input_o\;
\ALT_INV_Sign_extend[20]~input_o\ <= NOT \Sign_extend[20]~input_o\;
\ALT_INV_Read_data_1[20]~input_o\ <= NOT \Read_data_1[20]~input_o\;
\ALT_INV_Read_data_2[21]~input_o\ <= NOT \Read_data_2[21]~input_o\;
\ALT_INV_Sign_extend[21]~input_o\ <= NOT \Sign_extend[21]~input_o\;
\ALT_INV_Read_data_1[21]~input_o\ <= NOT \Read_data_1[21]~input_o\;
\ALT_INV_Read_data_2[30]~input_o\ <= NOT \Read_data_2[30]~input_o\;
\ALT_INV_Sign_extend[30]~input_o\ <= NOT \Sign_extend[30]~input_o\;
\ALT_INV_Read_data_1[30]~input_o\ <= NOT \Read_data_1[30]~input_o\;
\ALT_INV_Read_data_2[31]~input_o\ <= NOT \Read_data_2[31]~input_o\;
\ALT_INV_Sign_extend[31]~input_o\ <= NOT \Sign_extend[31]~input_o\;
\ALT_INV_Read_data_1[31]~input_o\ <= NOT \Read_data_1[31]~input_o\;
\ALT_INV_Read_data_1[8]~input_o\ <= NOT \Read_data_1[8]~input_o\;
\ALT_INV_Read_data_2[8]~input_o\ <= NOT \Read_data_2[8]~input_o\;
\ALT_INV_Sign_extend[8]~input_o\ <= NOT \Sign_extend[8]~input_o\;
\ALT_INV_Read_data_1[9]~input_o\ <= NOT \Read_data_1[9]~input_o\;
\ALT_INV_Read_data_2[9]~input_o\ <= NOT \Read_data_2[9]~input_o\;
\ALT_INV_Sign_extend[9]~input_o\ <= NOT \Sign_extend[9]~input_o\;
\ALT_INV_Read_data_2[18]~input_o\ <= NOT \Read_data_2[18]~input_o\;
\ALT_INV_Sign_extend[18]~input_o\ <= NOT \Sign_extend[18]~input_o\;
\ALT_INV_Read_data_1[18]~input_o\ <= NOT \Read_data_1[18]~input_o\;
\ALT_INV_Read_data_2[19]~input_o\ <= NOT \Read_data_2[19]~input_o\;
\ALT_INV_Sign_extend[19]~input_o\ <= NOT \Sign_extend[19]~input_o\;
\ALT_INV_Read_data_1[19]~input_o\ <= NOT \Read_data_1[19]~input_o\;
\ALT_INV_Read_data_2[28]~input_o\ <= NOT \Read_data_2[28]~input_o\;
\ALT_INV_Sign_extend[28]~input_o\ <= NOT \Sign_extend[28]~input_o\;
\ALT_INV_Read_data_1[28]~input_o\ <= NOT \Read_data_1[28]~input_o\;
\ALT_INV_Read_data_2[29]~input_o\ <= NOT \Read_data_2[29]~input_o\;
\ALT_INV_Sign_extend[29]~input_o\ <= NOT \Sign_extend[29]~input_o\;
\ALT_INV_Read_data_1[29]~input_o\ <= NOT \Read_data_1[29]~input_o\;
\ALT_INV_Read_data_1[6]~input_o\ <= NOT \Read_data_1[6]~input_o\;
\ALT_INV_Read_data_2[6]~input_o\ <= NOT \Read_data_2[6]~input_o\;
\ALT_INV_Sign_extend[6]~input_o\ <= NOT \Sign_extend[6]~input_o\;
\ALT_INV_Read_data_1[7]~input_o\ <= NOT \Read_data_1[7]~input_o\;
\ALT_INV_Read_data_2[7]~input_o\ <= NOT \Read_data_2[7]~input_o\;
\ALT_INV_Sign_extend[7]~input_o\ <= NOT \Sign_extend[7]~input_o\;
\ALT_INV_Read_data_2[16]~input_o\ <= NOT \Read_data_2[16]~input_o\;
\ALT_INV_Sign_extend[16]~input_o\ <= NOT \Sign_extend[16]~input_o\;
\ALT_INV_Read_data_1[16]~input_o\ <= NOT \Read_data_1[16]~input_o\;
\ALT_INV_Read_data_2[17]~input_o\ <= NOT \Read_data_2[17]~input_o\;

-- Location: IOOBUF_X52_Y81_N2
\Zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Equal0~16_combout\,
	devoe => ww_devoe,
	o => ww_Zero);

-- Location: IOOBUF_X70_Y0_N36
\Add_Result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_Add_Result(7));

-- Location: IOOBUF_X89_Y8_N39
\Add_Result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_Add_Result(6));

-- Location: IOOBUF_X89_Y35_N79
\Add_Result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_Add_Result(5));

-- Location: IOOBUF_X89_Y38_N22
\Add_Result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_Add_Result(4));

-- Location: IOOBUF_X89_Y6_N5
\Add_Result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_Add_Result(3));

-- Location: IOOBUF_X89_Y6_N56
\Add_Result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_Add_Result(2));

-- Location: IOOBUF_X89_Y8_N22
\Add_Result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_Add_Result(1));

-- Location: IOOBUF_X89_Y4_N79
\Add_Result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_Add_Result(0));

-- Location: IOOBUF_X50_Y81_N93
\ALU_Result[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[31]~0_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(31));

-- Location: IOOBUF_X52_Y81_N36
\ALU_Result[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[30]~1_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(30));

-- Location: IOOBUF_X36_Y0_N2
\ALU_Result[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[29]~2_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(29));

-- Location: IOOBUF_X30_Y0_N19
\ALU_Result[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[28]~3_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(28));

-- Location: IOOBUF_X2_Y0_N59
\ALU_Result[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[27]~4_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(27));

-- Location: IOOBUF_X28_Y0_N36
\ALU_Result[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[26]~5_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(26));

-- Location: IOOBUF_X50_Y0_N93
\ALU_Result[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[25]~6_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(25));

-- Location: IOOBUF_X50_Y81_N42
\ALU_Result[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[24]~7_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(24));

-- Location: IOOBUF_X4_Y0_N2
\ALU_Result[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[23]~8_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(23));

-- Location: IOOBUF_X32_Y0_N19
\ALU_Result[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[22]~9_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(22));

-- Location: IOOBUF_X52_Y0_N19
\ALU_Result[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[21]~10_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(21));

-- Location: IOOBUF_X56_Y81_N2
\ALU_Result[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[20]~11_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(20));

-- Location: IOOBUF_X8_Y0_N19
\ALU_Result[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[19]~12_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(19));

-- Location: IOOBUF_X40_Y81_N53
\ALU_Result[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[18]~13_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(18));

-- Location: IOOBUF_X36_Y0_N36
\ALU_Result[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[17]~14_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(17));

-- Location: IOOBUF_X36_Y0_N19
\ALU_Result[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[16]~15_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(16));

-- Location: IOOBUF_X6_Y0_N53
\ALU_Result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[15]~16_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(15));

-- Location: IOOBUF_X6_Y0_N2
\ALU_Result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[14]~17_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(14));

-- Location: IOOBUF_X30_Y0_N53
\ALU_Result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[13]~18_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(13));

-- Location: IOOBUF_X2_Y0_N76
\ALU_Result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[12]~19_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(12));

-- Location: IOOBUF_X50_Y0_N76
\ALU_Result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[11]~20_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(11));

-- Location: IOOBUF_X52_Y81_N19
\ALU_Result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[10]~21_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(10));

-- Location: IOOBUF_X26_Y0_N76
\ALU_Result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[9]~22_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(9));

-- Location: IOOBUF_X2_Y0_N93
\ALU_Result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[8]~23_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(8));

-- Location: IOOBUF_X34_Y0_N42
\ALU_Result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[7]~24_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(7));

-- Location: IOOBUF_X28_Y0_N53
\ALU_Result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[6]~25_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(6));

-- Location: IOOBUF_X6_Y0_N19
\ALU_Result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[5]~26_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(5));

-- Location: IOOBUF_X34_Y0_N76
\ALU_Result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[4]~27_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(4));

-- Location: IOOBUF_X30_Y0_N2
\ALU_Result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[3]~28_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(3));

-- Location: IOOBUF_X40_Y81_N19
\ALU_Result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[2]~29_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(2));

-- Location: IOOBUF_X58_Y0_N42
\ALU_Result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[1]~30_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(1));

-- Location: IOOBUF_X64_Y81_N2
\ALU_Result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALU_Result[0]~31_combout\,
	devoe => ww_devoe,
	o => ww_ALU_Result(0));

-- Location: IOIBUF_X52_Y0_N35
\ALUOp[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(0),
	o => \ALUOp[0]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\Function_opcodes[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Function_opcodes(2),
	o => \Function_opcodes[2]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\Function_opcodes[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Function_opcodes(0),
	o => \Function_opcodes[0]~input_o\);

-- Location: IOIBUF_X50_Y81_N58
\Function_opcodes[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Function_opcodes(3),
	o => \Function_opcodes[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\ALUOp[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUOp(1),
	o => \ALUOp[1]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\Function_opcodes[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Function_opcodes(1),
	o => \Function_opcodes[1]~input_o\);

-- Location: LABCELL_X45_Y4_N42
\inst|Mux15~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~2_combout\ = ( \ALUOp[1]~input_o\ & ( !\Function_opcodes[1]~input_o\ & ( (!\ALUOp[0]~input_o\ & (\Function_opcodes[2]~input_o\ & (!\Function_opcodes[0]~input_o\ & !\Function_opcodes[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[2]~input_o\,
	datac => \ALT_INV_Function_opcodes[0]~input_o\,
	datad => \ALT_INV_Function_opcodes[3]~input_o\,
	datae => \ALT_INV_ALUOp[1]~input_o\,
	dataf => \ALT_INV_Function_opcodes[1]~input_o\,
	combout => \inst|Mux15~2_combout\);

-- Location: LABCELL_X45_Y4_N36
\inst|Mux15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~1_combout\ = ( \ALUOp[1]~input_o\ & ( \Function_opcodes[1]~input_o\ & ( \Function_opcodes[2]~input_o\ ) ) ) # ( \ALUOp[1]~input_o\ & ( !\Function_opcodes[1]~input_o\ & ( (!\ALUOp[0]~input_o\ & (!\Function_opcodes[2]~input_o\ & 
-- ((\Function_opcodes[3]~input_o\) # (\Function_opcodes[0]~input_o\)))) # (\ALUOp[0]~input_o\ & (\Function_opcodes[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110011001100100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[2]~input_o\,
	datac => \ALT_INV_Function_opcodes[0]~input_o\,
	datad => \ALT_INV_Function_opcodes[3]~input_o\,
	datae => \ALT_INV_ALUOp[1]~input_o\,
	dataf => \ALT_INV_Function_opcodes[1]~input_o\,
	combout => \inst|Mux15~1_combout\);

-- Location: IOIBUF_X6_Y0_N35
\Read_data_1[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(22),
	o => \Read_data_1[22]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\ALUSrc~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUSrc,
	o => \ALUSrc~input_o\);

-- Location: IOIBUF_X70_Y81_N35
\Sign_extend[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(22),
	o => \Sign_extend[22]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\Read_data_2[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(22),
	o => \Read_data_2[22]~input_o\);

-- Location: MLABCELL_X72_Y37_N33
\inst|Binput[22]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[22]~1_combout\ = ( \Read_data_2[22]~input_o\ & ( (!\ALUSrc~input_o\) # (\Sign_extend[22]~input_o\) ) ) # ( !\Read_data_2[22]~input_o\ & ( (\ALUSrc~input_o\ & \Sign_extend[22]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUSrc~input_o\,
	datac => \ALT_INV_Sign_extend[22]~input_o\,
	datae => \ALT_INV_Read_data_2[22]~input_o\,
	combout => \inst|Binput[22]~1_combout\);

-- Location: LABCELL_X45_Y4_N48
\inst|Mux15~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~3_combout\ = ( !\Function_opcodes[1]~input_o\ & ( (\ALUOp[1]~input_o\ & (!\ALUOp[0]~input_o\ & ((\Function_opcodes[3]~input_o\) # (\Function_opcodes[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000000001110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[3]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_ALUOp[0]~input_o\,
	dataf => \ALT_INV_Function_opcodes[1]~input_o\,
	combout => \inst|Mux15~3_combout\);

-- Location: LABCELL_X43_Y3_N45
\inst|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = ( \inst|Mux15~3_combout\ & ( (!\Read_data_1[22]~input_o\ & (((\inst|Binput[22]~1_combout\)))) # (\Read_data_1[22]~input_o\ & (((!\inst|Mux15~1_combout\) # (!\inst|Binput[22]~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Mux15~3_combout\ & ( (\inst|Mux15~2_combout\ & (\Read_data_1[22]~input_o\ & \inst|Binput[22]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111111111010000111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~2_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Read_data_1[22]~input_o\,
	datad => \inst|ALT_INV_Binput[22]~1_combout\,
	dataf => \inst|ALT_INV_Mux15~3_combout\,
	combout => \inst|Mux9~0_combout\);

-- Location: IOIBUF_X26_Y0_N92
\Read_data_1[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(23),
	o => \Read_data_1[23]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\Sign_extend[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(23),
	o => \Sign_extend[23]~input_o\);

-- Location: IOIBUF_X64_Y0_N35
\Read_data_2[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(23),
	o => \Read_data_2[23]~input_o\);

-- Location: LABCELL_X57_Y2_N33
\inst|Binput[23]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[23]~0_combout\ = ( \Read_data_2[23]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[23]~input_o\ ) ) ) # ( !\Read_data_2[23]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[23]~input_o\ ) ) ) # ( \Read_data_2[23]~input_o\ & ( !\ALUSrc~input_o\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sign_extend[23]~input_o\,
	datae => \ALT_INV_Read_data_2[23]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[23]~0_combout\);

-- Location: LABCELL_X43_Y3_N42
\inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = ( \inst|Binput[23]~0_combout\ & ( (!\Read_data_1[23]~input_o\ & (((\inst|Mux15~3_combout\)))) # (\Read_data_1[23]~input_o\ & (((!\inst|Mux15~1_combout\ & \inst|Mux15~3_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[23]~0_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[23]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111010111010000111101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~2_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \inst|ALT_INV_Mux15~3_combout\,
	datad => \ALT_INV_Read_data_1[23]~input_o\,
	dataf => \inst|ALT_INV_Binput[23]~0_combout\,
	combout => \inst|Mux8~0_combout\);

-- Location: IOIBUF_X40_Y0_N52
\Read_data_1[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(21),
	o => \Read_data_1[21]~input_o\);

-- Location: IOIBUF_X70_Y0_N18
\Sign_extend[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(21),
	o => \Sign_extend[21]~input_o\);

-- Location: IOIBUF_X66_Y0_N41
\Read_data_2[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(21),
	o => \Read_data_2[21]~input_o\);

-- Location: LABCELL_X68_Y2_N6
\inst|Binput[21]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[21]~26_combout\ = ( \Read_data_2[21]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[21]~input_o\ ) ) ) # ( !\Read_data_2[21]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[21]~input_o\ ) ) ) # ( \Read_data_2[21]~input_o\ & ( !\ALUSrc~input_o\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sign_extend[21]~input_o\,
	datae => \ALT_INV_Read_data_2[21]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[21]~26_combout\);

-- Location: IOIBUF_X4_Y0_N52
\Read_data_1[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(20),
	o => \Read_data_1[20]~input_o\);

-- Location: IOIBUF_X66_Y0_N75
\Read_data_2[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(20),
	o => \Read_data_2[20]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\Sign_extend[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(20),
	o => \Sign_extend[20]~input_o\);

-- Location: LABCELL_X68_Y2_N12
\inst|Binput[20]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[20]~27_combout\ = ( \ALUSrc~input_o\ & ( \Sign_extend[20]~input_o\ ) ) # ( !\ALUSrc~input_o\ & ( \Read_data_2[20]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Read_data_2[20]~input_o\,
	datac => \ALT_INV_Sign_extend[20]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[20]~27_combout\);

-- Location: IOIBUF_X89_Y37_N21
\Sign_extend[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(19),
	o => \Sign_extend[19]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\Read_data_2[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(19),
	o => \Read_data_2[19]~input_o\);

-- Location: MLABCELL_X72_Y37_N39
\inst|Binput[19]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[19]~20_combout\ = ( \ALUSrc~input_o\ & ( \Read_data_2[19]~input_o\ & ( \Sign_extend[19]~input_o\ ) ) ) # ( !\ALUSrc~input_o\ & ( \Read_data_2[19]~input_o\ ) ) # ( \ALUSrc~input_o\ & ( !\Read_data_2[19]~input_o\ & ( \Sign_extend[19]~input_o\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sign_extend[19]~input_o\,
	datae => \ALT_INV_ALUSrc~input_o\,
	dataf => \ALT_INV_Read_data_2[19]~input_o\,
	combout => \inst|Binput[19]~20_combout\);

-- Location: IOIBUF_X4_Y0_N18
\Read_data_1[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(19),
	o => \Read_data_1[19]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\Read_data_1[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(18),
	o => \Read_data_1[18]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\Sign_extend[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(18),
	o => \Sign_extend[18]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\Read_data_2[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(18),
	o => \Read_data_2[18]~input_o\);

-- Location: LABCELL_X77_Y4_N12
\inst|Binput[18]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[18]~21_combout\ = ( \ALUSrc~input_o\ & ( \Sign_extend[18]~input_o\ ) ) # ( !\ALUSrc~input_o\ & ( \Read_data_2[18]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sign_extend[18]~input_o\,
	datac => \ALT_INV_Read_data_2[18]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[18]~21_combout\);

-- Location: IOIBUF_X56_Y0_N35
\Read_data_2[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(17),
	o => \Read_data_2[17]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\Sign_extend[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(17),
	o => \Sign_extend[17]~input_o\);

-- Location: LABCELL_X51_Y4_N33
\inst|Binput[17]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[17]~14_combout\ = (!\ALUSrc~input_o\ & (\Read_data_2[17]~input_o\)) # (\ALUSrc~input_o\ & ((\Sign_extend[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUSrc~input_o\,
	datac => \ALT_INV_Read_data_2[17]~input_o\,
	datad => \ALT_INV_Sign_extend[17]~input_o\,
	combout => \inst|Binput[17]~14_combout\);

-- Location: IOIBUF_X4_Y0_N35
\Read_data_1[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(17),
	o => \Read_data_1[17]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\Read_data_1[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(16),
	o => \Read_data_1[16]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\Read_data_2[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(16),
	o => \Read_data_2[16]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\Sign_extend[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(16),
	o => \Sign_extend[16]~input_o\);

-- Location: LABCELL_X51_Y4_N36
\inst|Binput[16]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[16]~15_combout\ = ( \Sign_extend[16]~input_o\ & ( \ALUSrc~input_o\ ) ) # ( \Sign_extend[16]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[16]~input_o\ ) ) ) # ( !\Sign_extend[16]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[16]~input_o\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Read_data_2[16]~input_o\,
	datae => \ALT_INV_Sign_extend[16]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[16]~15_combout\);

-- Location: IOIBUF_X89_Y37_N4
\Read_data_2[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(15),
	o => \Read_data_2[15]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\Sign_extend[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(15),
	o => \Sign_extend[15]~input_o\);

-- Location: MLABCELL_X72_Y37_N12
\inst|Binput[15]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[15]~8_combout\ = ( \ALUSrc~input_o\ & ( \Sign_extend[15]~input_o\ ) ) # ( !\ALUSrc~input_o\ & ( \Sign_extend[15]~input_o\ & ( \Read_data_2[15]~input_o\ ) ) ) # ( !\ALUSrc~input_o\ & ( !\Sign_extend[15]~input_o\ & ( \Read_data_2[15]~input_o\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Read_data_2[15]~input_o\,
	datae => \ALT_INV_ALUSrc~input_o\,
	dataf => \ALT_INV_Sign_extend[15]~input_o\,
	combout => \inst|Binput[15]~8_combout\);

-- Location: IOIBUF_X26_Y0_N41
\Read_data_1[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(15),
	o => \Read_data_1[15]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\Read_data_1[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(14),
	o => \Read_data_1[14]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\Sign_extend[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(14),
	o => \Sign_extend[14]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\Read_data_2[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(14),
	o => \Read_data_2[14]~input_o\);

-- Location: LABCELL_X51_Y4_N24
\inst|Binput[14]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[14]~9_combout\ = ( \Read_data_2[14]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[14]~input_o\ ) ) ) # ( !\Read_data_2[14]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[14]~input_o\ ) ) ) # ( \Read_data_2[14]~input_o\ & ( !\ALUSrc~input_o\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sign_extend[14]~input_o\,
	datae => \ALT_INV_Read_data_2[14]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[14]~9_combout\);

-- Location: IOIBUF_X89_Y9_N38
\Read_data_2[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(13),
	o => \Read_data_2[13]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\Sign_extend[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(13),
	o => \Sign_extend[13]~input_o\);

-- Location: LABCELL_X51_Y4_N0
\inst|Binput[13]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[13]~2_combout\ = ( \ALUSrc~input_o\ & ( \Sign_extend[13]~input_o\ ) ) # ( !\ALUSrc~input_o\ & ( \Read_data_2[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Read_data_2[13]~input_o\,
	datac => \ALT_INV_Sign_extend[13]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[13]~2_combout\);

-- Location: IOIBUF_X26_Y0_N58
\Read_data_1[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(13),
	o => \Read_data_1[13]~input_o\);

-- Location: IOIBUF_X54_Y81_N52
\Read_data_2[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(12),
	o => \Read_data_2[12]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\Sign_extend[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(12),
	o => \Sign_extend[12]~input_o\);

-- Location: LABCELL_X51_Y4_N6
\inst|Binput[12]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[12]~3_combout\ = ( \Sign_extend[12]~input_o\ & ( \ALUSrc~input_o\ ) ) # ( \Sign_extend[12]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[12]~input_o\ ) ) ) # ( !\Sign_extend[12]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[12]~input_o\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Read_data_2[12]~input_o\,
	datae => \ALT_INV_Sign_extend[12]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[12]~3_combout\);

-- Location: IOIBUF_X36_Y0_N52
\Read_data_1[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(12),
	o => \Read_data_1[12]~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\Sign_extend[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(11),
	o => \Sign_extend[11]~input_o\);

-- Location: IOIBUF_X50_Y81_N75
\Read_data_2[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(11),
	o => \Read_data_2[11]~input_o\);

-- Location: LABCELL_X45_Y4_N51
\inst|Binput[11]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[11]~28_combout\ = ( \Read_data_2[11]~input_o\ & ( (!\ALUSrc~input_o\) # (\Sign_extend[11]~input_o\) ) ) # ( !\Read_data_2[11]~input_o\ & ( (\Sign_extend[11]~input_o\ & \ALUSrc~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sign_extend[11]~input_o\,
	datad => \ALT_INV_ALUSrc~input_o\,
	dataf => \ALT_INV_Read_data_2[11]~input_o\,
	combout => \inst|Binput[11]~28_combout\);

-- Location: IOIBUF_X40_Y0_N18
\Read_data_1[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(11),
	o => \Read_data_1[11]~input_o\);

-- Location: IOIBUF_X64_Y0_N18
\Sign_extend[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(10),
	o => \Sign_extend[10]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\Read_data_2[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(10),
	o => \Read_data_2[10]~input_o\);

-- Location: LABCELL_X57_Y2_N48
\inst|Binput[10]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[10]~29_combout\ = ( \Read_data_2[10]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[10]~input_o\ ) ) ) # ( !\Read_data_2[10]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[10]~input_o\ ) ) ) # ( \Read_data_2[10]~input_o\ & ( !\ALUSrc~input_o\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sign_extend[10]~input_o\,
	datae => \ALT_INV_Read_data_2[10]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[10]~29_combout\);

-- Location: IOIBUF_X54_Y0_N52
\Read_data_1[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(10),
	o => \Read_data_1[10]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\Read_data_1[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(9),
	o => \Read_data_1[9]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\Sign_extend[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(9),
	o => \Sign_extend[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\Read_data_2[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(9),
	o => \Read_data_2[9]~input_o\);

-- Location: LABCELL_X51_Y4_N21
\inst|Binput[9]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[9]~22_combout\ = ( \ALUSrc~input_o\ & ( \Sign_extend[9]~input_o\ ) ) # ( !\ALUSrc~input_o\ & ( \Read_data_2[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sign_extend[9]~input_o\,
	datac => \ALT_INV_Read_data_2[9]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[9]~22_combout\);

-- Location: IOIBUF_X89_Y9_N55
\Read_data_2[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(8),
	o => \Read_data_2[8]~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\Sign_extend[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(8),
	o => \Sign_extend[8]~input_o\);

-- Location: LABCELL_X51_Y4_N57
\inst|Binput[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[8]~23_combout\ = ( \ALUSrc~input_o\ & ( \Sign_extend[8]~input_o\ ) ) # ( !\ALUSrc~input_o\ & ( \Read_data_2[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Read_data_2[8]~input_o\,
	datac => \ALT_INV_Sign_extend[8]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[8]~23_combout\);

-- Location: IOIBUF_X30_Y0_N35
\Read_data_1[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(8),
	o => \Read_data_1[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\Read_data_1[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(7),
	o => \Read_data_1[7]~input_o\);

-- Location: IOIBUF_X52_Y81_N52
\Read_data_2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(7),
	o => \Read_data_2[7]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\Sign_extend[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(7),
	o => \Sign_extend[7]~input_o\);

-- Location: LABCELL_X51_Y4_N15
\inst|Binput[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[7]~16_combout\ = ( \Sign_extend[7]~input_o\ & ( \ALUSrc~input_o\ ) ) # ( \Sign_extend[7]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[7]~input_o\ ) ) ) # ( !\Sign_extend[7]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read_data_2[7]~input_o\,
	datae => \ALT_INV_Sign_extend[7]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[7]~16_combout\);

-- Location: IOIBUF_X89_Y8_N55
\Read_data_2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(6),
	o => \Read_data_2[6]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\Sign_extend[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(6),
	o => \Sign_extend[6]~input_o\);

-- Location: LABCELL_X77_Y4_N6
\inst|Binput[6]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[6]~17_combout\ = ( \Sign_extend[6]~input_o\ & ( \ALUSrc~input_o\ ) ) # ( \Sign_extend[6]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[6]~input_o\ ) ) ) # ( !\Sign_extend[6]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Read_data_2[6]~input_o\,
	datae => \ALT_INV_Sign_extend[6]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[6]~17_combout\);

-- Location: IOIBUF_X38_Y0_N18
\Read_data_1[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(6),
	o => \Read_data_1[6]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\Read_data_2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(5),
	o => \Read_data_2[5]~input_o\);

-- Location: IOIBUF_X72_Y0_N35
\Sign_extend[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(5),
	o => \Sign_extend[5]~input_o\);

-- Location: LABCELL_X77_Y4_N0
\inst|Binput[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[5]~10_combout\ = ( \Sign_extend[5]~input_o\ & ( \ALUSrc~input_o\ ) ) # ( \Sign_extend[5]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[5]~input_o\ ) ) ) # ( !\Sign_extend[5]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Read_data_2[5]~input_o\,
	datae => \ALT_INV_Sign_extend[5]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[5]~10_combout\);

-- Location: IOIBUF_X40_Y0_N35
\Read_data_1[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(5),
	o => \Read_data_1[5]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\Read_data_1[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(4),
	o => \Read_data_1[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\Read_data_2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(4),
	o => \Read_data_2[4]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\Sign_extend[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(4),
	o => \Sign_extend[4]~input_o\);

-- Location: LABCELL_X51_Y4_N30
\inst|Binput[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[4]~11_combout\ = (!\ALUSrc~input_o\ & (\Read_data_2[4]~input_o\)) # (\ALUSrc~input_o\ & ((\Sign_extend[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUSrc~input_o\,
	datac => \ALT_INV_Read_data_2[4]~input_o\,
	datad => \ALT_INV_Sign_extend[4]~input_o\,
	combout => \inst|Binput[4]~11_combout\);

-- Location: IOIBUF_X38_Y0_N52
\Read_data_1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(3),
	o => \Read_data_1[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\Read_data_2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(3),
	o => \Read_data_2[3]~input_o\);

-- Location: IOIBUF_X64_Y0_N1
\Sign_extend[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(3),
	o => \Sign_extend[3]~input_o\);

-- Location: LABCELL_X51_Y4_N45
\inst|Binput[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[3]~4_combout\ = ( \Sign_extend[3]~input_o\ & ( \ALUSrc~input_o\ ) ) # ( \Sign_extend[3]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[3]~input_o\ ) ) ) # ( !\Sign_extend[3]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Read_data_2[3]~input_o\,
	datae => \ALT_INV_Sign_extend[3]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[3]~4_combout\);

-- Location: IOIBUF_X89_Y9_N4
\Read_data_1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(2),
	o => \Read_data_1[2]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\Sign_extend[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(2),
	o => \Sign_extend[2]~input_o\);

-- Location: IOIBUF_X54_Y81_N18
\Read_data_2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(2),
	o => \Read_data_2[2]~input_o\);

-- Location: LABCELL_X51_Y4_N51
\inst|Binput[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[2]~5_combout\ = ( \Read_data_2[2]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[2]~input_o\ ) ) ) # ( !\Read_data_2[2]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[2]~input_o\ ) ) ) # ( \Read_data_2[2]~input_o\ & ( !\ALUSrc~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sign_extend[2]~input_o\,
	datae => \ALT_INV_Read_data_2[2]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[2]~5_combout\);

-- Location: IOIBUF_X89_Y6_N38
\Read_data_2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(1),
	o => \Read_data_2[1]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\Sign_extend[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(1),
	o => \Sign_extend[1]~input_o\);

-- Location: LABCELL_X77_Y4_N21
\inst|Binput[1]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[1]~30_combout\ = ( \Sign_extend[1]~input_o\ & ( \ALUSrc~input_o\ ) ) # ( \Sign_extend[1]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[1]~input_o\ ) ) ) # ( !\Sign_extend[1]~input_o\ & ( !\ALUSrc~input_o\ & ( \Read_data_2[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Read_data_2[1]~input_o\,
	datae => \ALT_INV_Sign_extend[1]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[1]~30_combout\);

-- Location: IOIBUF_X32_Y0_N35
\Read_data_1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(1),
	o => \Read_data_1[1]~input_o\);

-- Location: IOIBUF_X78_Y81_N1
\Read_data_2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(0),
	o => \Read_data_2[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\Sign_extend[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(0),
	o => \Sign_extend[0]~input_o\);

-- Location: LABCELL_X77_Y4_N27
\inst|Binput[0]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[0]~31_combout\ = ( \Read_data_2[0]~input_o\ & ( \Sign_extend[0]~input_o\ ) ) # ( !\Read_data_2[0]~input_o\ & ( \Sign_extend[0]~input_o\ & ( \ALUSrc~input_o\ ) ) ) # ( \Read_data_2[0]~input_o\ & ( !\Sign_extend[0]~input_o\ & ( 
-- !\ALUSrc~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ALUSrc~input_o\,
	datae => \ALT_INV_Read_data_2[0]~input_o\,
	dataf => \ALT_INV_Sign_extend[0]~input_o\,
	combout => \inst|Binput[0]~31_combout\);

-- Location: IOIBUF_X52_Y0_N52
\Read_data_1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(0),
	o => \Read_data_1[0]~input_o\);

-- Location: LABCELL_X43_Y4_N0
\inst|Add1~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~130_cout\ = CARRY(( ((\ALUOp[1]~input_o\ & \Function_opcodes[1]~input_o\)) # (\ALUOp[0]~input_o\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[1]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datad => \ALT_INV_ALUOp[0]~input_o\,
	cin => GND,
	cout => \inst|Add1~130_cout\);

-- Location: LABCELL_X43_Y4_N3
\inst|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~125_sumout\ = SUM(( !\inst|Binput[0]~31_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\ALUOp[1]~input_o\) # (!\Function_opcodes[1]~input_o\))))) ) + ( \Read_data_1[0]~input_o\ ) + ( \inst|Add1~130_cout\ ))
-- \inst|Add1~126\ = CARRY(( !\inst|Binput[0]~31_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\ALUOp[1]~input_o\) # (!\Function_opcodes[1]~input_o\))))) ) + ( \Read_data_1[0]~input_o\ ) + ( \inst|Add1~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[1]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \inst|ALT_INV_Binput[0]~31_combout\,
	datad => \ALT_INV_ALUOp[0]~input_o\,
	dataf => \ALT_INV_Read_data_1[0]~input_o\,
	cin => \inst|Add1~130_cout\,
	sumout => \inst|Add1~125_sumout\,
	cout => \inst|Add1~126\);

-- Location: LABCELL_X43_Y4_N6
\inst|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~121_sumout\ = SUM(( !\inst|Binput[1]~30_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[1]~input_o\ ) + ( \inst|Add1~126\ ))
-- \inst|Add1~122\ = CARRY(( !\inst|Binput[1]~30_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[1]~input_o\ ) + ( \inst|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[1]~30_combout\,
	dataf => \ALT_INV_Read_data_1[1]~input_o\,
	cin => \inst|Add1~126\,
	sumout => \inst|Add1~121_sumout\,
	cout => \inst|Add1~122\);

-- Location: LABCELL_X43_Y4_N9
\inst|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~21_sumout\ = SUM(( \Read_data_1[2]~input_o\ ) + ( !\inst|Binput[2]~5_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~122\ ))
-- \inst|Add1~22\ = CARRY(( \Read_data_1[2]~input_o\ ) + ( !\inst|Binput[2]~5_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[2]~input_o\,
	dataf => \inst|ALT_INV_Binput[2]~5_combout\,
	cin => \inst|Add1~122\,
	sumout => \inst|Add1~21_sumout\,
	cout => \inst|Add1~22\);

-- Location: LABCELL_X43_Y4_N12
\inst|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~17_sumout\ = SUM(( \Read_data_1[3]~input_o\ ) + ( !\inst|Binput[3]~4_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~22\ ))
-- \inst|Add1~18\ = CARRY(( \Read_data_1[3]~input_o\ ) + ( !\inst|Binput[3]~4_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[3]~input_o\,
	dataf => \inst|ALT_INV_Binput[3]~4_combout\,
	cin => \inst|Add1~22\,
	sumout => \inst|Add1~17_sumout\,
	cout => \inst|Add1~18\);

-- Location: LABCELL_X43_Y4_N15
\inst|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~41_sumout\ = SUM(( \Read_data_1[4]~input_o\ ) + ( !\inst|Binput[4]~11_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~18\ ))
-- \inst|Add1~42\ = CARRY(( \Read_data_1[4]~input_o\ ) + ( !\inst|Binput[4]~11_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[4]~input_o\,
	dataf => \inst|ALT_INV_Binput[4]~11_combout\,
	cin => \inst|Add1~18\,
	sumout => \inst|Add1~41_sumout\,
	cout => \inst|Add1~42\);

-- Location: LABCELL_X43_Y4_N18
\inst|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~45_sumout\ = SUM(( !\inst|Binput[5]~10_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[5]~input_o\ ) + ( \inst|Add1~42\ ))
-- \inst|Add1~46\ = CARRY(( !\inst|Binput[5]~10_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[5]~input_o\ ) + ( \inst|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[5]~10_combout\,
	dataf => \ALT_INV_Read_data_1[5]~input_o\,
	cin => \inst|Add1~42\,
	sumout => \inst|Add1~45_sumout\,
	cout => \inst|Add1~46\);

-- Location: LABCELL_X43_Y4_N21
\inst|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~69_sumout\ = SUM(( !\inst|Binput[6]~17_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[6]~input_o\ ) + ( \inst|Add1~46\ ))
-- \inst|Add1~70\ = CARRY(( !\inst|Binput[6]~17_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[6]~input_o\ ) + ( \inst|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[6]~17_combout\,
	dataf => \ALT_INV_Read_data_1[6]~input_o\,
	cin => \inst|Add1~46\,
	sumout => \inst|Add1~69_sumout\,
	cout => \inst|Add1~70\);

-- Location: LABCELL_X43_Y4_N24
\inst|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~65_sumout\ = SUM(( \Read_data_1[7]~input_o\ ) + ( !\inst|Binput[7]~16_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~70\ ))
-- \inst|Add1~66\ = CARRY(( \Read_data_1[7]~input_o\ ) + ( !\inst|Binput[7]~16_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[7]~input_o\,
	dataf => \inst|ALT_INV_Binput[7]~16_combout\,
	cin => \inst|Add1~70\,
	sumout => \inst|Add1~65_sumout\,
	cout => \inst|Add1~66\);

-- Location: LABCELL_X43_Y4_N27
\inst|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~93_sumout\ = SUM(( !\inst|Binput[8]~23_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[8]~input_o\ ) + ( \inst|Add1~66\ ))
-- \inst|Add1~94\ = CARRY(( !\inst|Binput[8]~23_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[8]~input_o\ ) + ( \inst|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[8]~23_combout\,
	dataf => \ALT_INV_Read_data_1[8]~input_o\,
	cin => \inst|Add1~66\,
	sumout => \inst|Add1~93_sumout\,
	cout => \inst|Add1~94\);

-- Location: LABCELL_X43_Y4_N30
\inst|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~89_sumout\ = SUM(( \Read_data_1[9]~input_o\ ) + ( !\inst|Binput[9]~22_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~94\ ))
-- \inst|Add1~90\ = CARRY(( \Read_data_1[9]~input_o\ ) + ( !\inst|Binput[9]~22_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[9]~input_o\,
	dataf => \inst|ALT_INV_Binput[9]~22_combout\,
	cin => \inst|Add1~94\,
	sumout => \inst|Add1~89_sumout\,
	cout => \inst|Add1~90\);

-- Location: LABCELL_X43_Y4_N33
\inst|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~117_sumout\ = SUM(( !\inst|Binput[10]~29_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[10]~input_o\ ) + ( \inst|Add1~90\ ))
-- \inst|Add1~118\ = CARRY(( !\inst|Binput[10]~29_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[10]~input_o\ ) + ( \inst|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[10]~29_combout\,
	dataf => \ALT_INV_Read_data_1[10]~input_o\,
	cin => \inst|Add1~90\,
	sumout => \inst|Add1~117_sumout\,
	cout => \inst|Add1~118\);

-- Location: LABCELL_X43_Y4_N36
\inst|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~113_sumout\ = SUM(( !\inst|Binput[11]~28_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[11]~input_o\ ) + ( \inst|Add1~118\ ))
-- \inst|Add1~114\ = CARRY(( !\inst|Binput[11]~28_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[11]~input_o\ ) + ( \inst|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[11]~28_combout\,
	dataf => \ALT_INV_Read_data_1[11]~input_o\,
	cin => \inst|Add1~118\,
	sumout => \inst|Add1~113_sumout\,
	cout => \inst|Add1~114\);

-- Location: LABCELL_X43_Y4_N39
\inst|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~13_sumout\ = SUM(( !\inst|Binput[12]~3_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[12]~input_o\ ) + ( \inst|Add1~114\ ))
-- \inst|Add1~14\ = CARRY(( !\inst|Binput[12]~3_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[12]~input_o\ ) + ( \inst|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[12]~3_combout\,
	dataf => \ALT_INV_Read_data_1[12]~input_o\,
	cin => \inst|Add1~114\,
	sumout => \inst|Add1~13_sumout\,
	cout => \inst|Add1~14\);

-- Location: LABCELL_X43_Y4_N42
\inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~9_sumout\ = SUM(( !\inst|Binput[13]~2_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[13]~input_o\ ) + ( \inst|Add1~14\ ))
-- \inst|Add1~10\ = CARRY(( !\inst|Binput[13]~2_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[13]~input_o\ ) + ( \inst|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[13]~2_combout\,
	dataf => \ALT_INV_Read_data_1[13]~input_o\,
	cin => \inst|Add1~14\,
	sumout => \inst|Add1~9_sumout\,
	cout => \inst|Add1~10\);

-- Location: LABCELL_X43_Y4_N45
\inst|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~37_sumout\ = SUM(( \Read_data_1[14]~input_o\ ) + ( !\inst|Binput[14]~9_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~10\ ))
-- \inst|Add1~38\ = CARRY(( \Read_data_1[14]~input_o\ ) + ( !\inst|Binput[14]~9_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[14]~input_o\,
	dataf => \inst|ALT_INV_Binput[14]~9_combout\,
	cin => \inst|Add1~10\,
	sumout => \inst|Add1~37_sumout\,
	cout => \inst|Add1~38\);

-- Location: LABCELL_X43_Y4_N48
\inst|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~33_sumout\ = SUM(( !\inst|Binput[15]~8_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[15]~input_o\ ) + ( \inst|Add1~38\ ))
-- \inst|Add1~34\ = CARRY(( !\inst|Binput[15]~8_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[15]~input_o\ ) + ( \inst|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[15]~8_combout\,
	dataf => \ALT_INV_Read_data_1[15]~input_o\,
	cin => \inst|Add1~38\,
	sumout => \inst|Add1~33_sumout\,
	cout => \inst|Add1~34\);

-- Location: LABCELL_X43_Y4_N51
\inst|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~57_sumout\ = SUM(( \Read_data_1[16]~input_o\ ) + ( !\inst|Binput[16]~15_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~34\ ))
-- \inst|Add1~58\ = CARRY(( \Read_data_1[16]~input_o\ ) + ( !\inst|Binput[16]~15_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[16]~input_o\,
	dataf => \inst|ALT_INV_Binput[16]~15_combout\,
	cin => \inst|Add1~34\,
	sumout => \inst|Add1~57_sumout\,
	cout => \inst|Add1~58\);

-- Location: LABCELL_X43_Y4_N54
\inst|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~61_sumout\ = SUM(( !\inst|Binput[17]~14_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[17]~input_o\ ) + ( \inst|Add1~58\ ))
-- \inst|Add1~62\ = CARRY(( !\inst|Binput[17]~14_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[17]~input_o\ ) + ( \inst|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101011110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[17]~14_combout\,
	dataf => \ALT_INV_Read_data_1[17]~input_o\,
	cin => \inst|Add1~58\,
	sumout => \inst|Add1~61_sumout\,
	cout => \inst|Add1~62\);

-- Location: LABCELL_X43_Y4_N57
\inst|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~81_sumout\ = SUM(( \Read_data_1[18]~input_o\ ) + ( !\inst|Binput[18]~21_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~62\ ))
-- \inst|Add1~82\ = CARRY(( \Read_data_1[18]~input_o\ ) + ( !\inst|Binput[18]~21_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010000101011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[1]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[18]~input_o\,
	dataf => \inst|ALT_INV_Binput[18]~21_combout\,
	cin => \inst|Add1~62\,
	sumout => \inst|Add1~81_sumout\,
	cout => \inst|Add1~82\);

-- Location: LABCELL_X43_Y3_N0
\inst|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~85_sumout\ = SUM(( !\inst|Binput[19]~20_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[19]~input_o\ ) + ( \inst|Add1~82\ ))
-- \inst|Add1~86\ = CARRY(( !\inst|Binput[19]~20_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[19]~input_o\ ) + ( \inst|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[19]~20_combout\,
	dataf => \ALT_INV_Read_data_1[19]~input_o\,
	cin => \inst|Add1~82\,
	sumout => \inst|Add1~85_sumout\,
	cout => \inst|Add1~86\);

-- Location: LABCELL_X43_Y3_N3
\inst|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~105_sumout\ = SUM(( \Read_data_1[20]~input_o\ ) + ( !\inst|Binput[20]~27_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~86\ ))
-- \inst|Add1~106\ = CARRY(( \Read_data_1[20]~input_o\ ) + ( !\inst|Binput[20]~27_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[20]~input_o\,
	dataf => \inst|ALT_INV_Binput[20]~27_combout\,
	cin => \inst|Add1~86\,
	sumout => \inst|Add1~105_sumout\,
	cout => \inst|Add1~106\);

-- Location: LABCELL_X43_Y3_N6
\inst|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~109_sumout\ = SUM(( \Read_data_1[21]~input_o\ ) + ( !\inst|Binput[21]~26_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~106\ ))
-- \inst|Add1~110\ = CARRY(( \Read_data_1[21]~input_o\ ) + ( !\inst|Binput[21]~26_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[21]~input_o\,
	dataf => \inst|ALT_INV_Binput[21]~26_combout\,
	cin => \inst|Add1~106\,
	sumout => \inst|Add1~109_sumout\,
	cout => \inst|Add1~110\);

-- Location: LABCELL_X43_Y3_N9
\inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~1_sumout\ = SUM(( \Read_data_1[22]~input_o\ ) + ( !\inst|Binput[22]~1_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~110\ ))
-- \inst|Add1~2\ = CARRY(( \Read_data_1[22]~input_o\ ) + ( !\inst|Binput[22]~1_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[22]~input_o\,
	dataf => \inst|ALT_INV_Binput[22]~1_combout\,
	cin => \inst|Add1~110\,
	sumout => \inst|Add1~1_sumout\,
	cout => \inst|Add1~2\);

-- Location: LABCELL_X43_Y3_N12
\inst|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~5_sumout\ = SUM(( \Read_data_1[23]~input_o\ ) + ( !\inst|Binput[23]~0_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~2\ ))
-- \inst|Add1~6\ = CARRY(( \Read_data_1[23]~input_o\ ) + ( !\inst|Binput[23]~0_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[23]~input_o\,
	dataf => \inst|ALT_INV_Binput[23]~0_combout\,
	cin => \inst|Add1~2\,
	sumout => \inst|Add1~5_sumout\,
	cout => \inst|Add1~6\);

-- Location: LABCELL_X45_Y4_N0
\inst|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = ( \ALUOp[1]~input_o\ & ( \Function_opcodes[1]~input_o\ & ( \Function_opcodes[2]~input_o\ ) ) ) # ( \ALUOp[1]~input_o\ & ( !\Function_opcodes[1]~input_o\ & ( ((!\ALUOp[0]~input_o\ & ((\Function_opcodes[3]~input_o\) # 
-- (\Function_opcodes[0]~input_o\)))) # (\Function_opcodes[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110111011101100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[2]~input_o\,
	datac => \ALT_INV_Function_opcodes[0]~input_o\,
	datad => \ALT_INV_Function_opcodes[3]~input_o\,
	datae => \ALT_INV_ALUOp[1]~input_o\,
	dataf => \ALT_INV_Function_opcodes[1]~input_o\,
	combout => \inst|Mux15~0_combout\);

-- Location: LABCELL_X42_Y4_N36
\inst|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux28~0_combout\ = ( \inst|Mux15~3_combout\ & ( (!\Read_data_1[3]~input_o\ & (((\inst|Binput[3]~4_combout\)))) # (\Read_data_1[3]~input_o\ & (((!\inst|Mux15~1_combout\) # (!\inst|Binput[3]~4_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Mux15~3_combout\ & ( (\inst|Mux15~2_combout\ & (\Read_data_1[3]~input_o\ & \inst|Binput[3]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111111111010000111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~2_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Read_data_1[3]~input_o\,
	datad => \inst|ALT_INV_Binput[3]~4_combout\,
	dataf => \inst|ALT_INV_Mux15~3_combout\,
	combout => \inst|Mux28~0_combout\);

-- Location: LABCELL_X42_Y4_N39
\inst|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux29~0_combout\ = ( \inst|Mux15~3_combout\ & ( (!\inst|Binput[2]~5_combout\ & (((\Read_data_1[2]~input_o\)))) # (\inst|Binput[2]~5_combout\ & (((!\inst|Mux15~1_combout\) # (!\Read_data_1[2]~input_o\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Mux15~3_combout\ & ( (\inst|Mux15~2_combout\ & (\inst|Binput[2]~5_combout\ & \Read_data_1[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111111111010000111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~2_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \inst|ALT_INV_Binput[2]~5_combout\,
	datad => \ALT_INV_Read_data_1[2]~input_o\,
	dataf => \inst|ALT_INV_Mux15~3_combout\,
	combout => \inst|Mux29~0_combout\);

-- Location: LABCELL_X42_Y4_N15
\inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = ( \inst|Add1~17_sumout\ & ( (!\inst|Mux28~0_combout\ & (\inst|Mux15~0_combout\ & !\inst|Mux29~0_combout\)) ) ) # ( !\inst|Add1~17_sumout\ & ( (!\inst|Mux28~0_combout\ & (!\inst|Mux29~0_combout\ & ((!\inst|Add1~21_sumout\) # 
-- (\inst|Mux15~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000100000101000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux28~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Mux29~0_combout\,
	datad => \inst|ALT_INV_Add1~21_sumout\,
	dataf => \inst|ALT_INV_Add1~17_sumout\,
	combout => \inst|Equal0~0_combout\);

-- Location: LABCELL_X42_Y4_N33
\inst|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = ( \inst|Mux15~3_combout\ & ( (!\Read_data_1[12]~input_o\ & (((\inst|Binput[12]~3_combout\)))) # (\Read_data_1[12]~input_o\ & (((!\inst|Mux15~1_combout\) # (!\inst|Binput[12]~3_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Mux15~3_combout\ & ( (\inst|Mux15~2_combout\ & (\Read_data_1[12]~input_o\ & \inst|Binput[12]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111111111010000111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~2_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Read_data_1[12]~input_o\,
	datad => \inst|ALT_INV_Binput[12]~3_combout\,
	dataf => \inst|ALT_INV_Mux15~3_combout\,
	combout => \inst|Mux19~0_combout\);

-- Location: LABCELL_X42_Y4_N30
\inst|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = ( \inst|Mux15~3_combout\ & ( (!\Read_data_1[13]~input_o\ & (((\inst|Binput[13]~2_combout\)))) # (\Read_data_1[13]~input_o\ & (((!\inst|Mux15~1_combout\) # (!\inst|Binput[13]~2_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Mux15~3_combout\ & ( (\inst|Mux15~2_combout\ & (\Read_data_1[13]~input_o\ & \inst|Binput[13]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111111111010000111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~2_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Read_data_1[13]~input_o\,
	datad => \inst|ALT_INV_Binput[13]~2_combout\,
	dataf => \inst|ALT_INV_Mux15~3_combout\,
	combout => \inst|Mux18~0_combout\);

-- Location: LABCELL_X42_Y4_N18
\inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = ( \inst|Mux15~0_combout\ & ( !\inst|Mux18~0_combout\ & ( (\inst|Equal0~0_combout\ & !\inst|Mux19~0_combout\) ) ) ) # ( !\inst|Mux15~0_combout\ & ( !\inst|Mux18~0_combout\ & ( (!\inst|Add1~13_sumout\ & (\inst|Equal0~0_combout\ & 
-- (!\inst|Mux19~0_combout\ & !\inst|Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~13_sumout\,
	datab => \inst|ALT_INV_Equal0~0_combout\,
	datac => \inst|ALT_INV_Mux19~0_combout\,
	datad => \inst|ALT_INV_Add1~9_sumout\,
	datae => \inst|ALT_INV_Mux15~0_combout\,
	dataf => \inst|ALT_INV_Mux18~0_combout\,
	combout => \inst|Equal0~1_combout\);

-- Location: LABCELL_X42_Y3_N30
\inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = ( \inst|Mux15~0_combout\ & ( \inst|Equal0~1_combout\ & ( (!\inst|Mux9~0_combout\ & !\inst|Mux8~0_combout\) ) ) ) # ( !\inst|Mux15~0_combout\ & ( \inst|Equal0~1_combout\ & ( (!\inst|Mux9~0_combout\ & (!\inst|Mux8~0_combout\ & 
-- (!\inst|Add1~1_sumout\ & !\inst|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux9~0_combout\,
	datab => \inst|ALT_INV_Mux8~0_combout\,
	datac => \inst|ALT_INV_Add1~1_sumout\,
	datad => \inst|ALT_INV_Add1~5_sumout\,
	datae => \inst|ALT_INV_Mux15~0_combout\,
	dataf => \inst|ALT_INV_Equal0~1_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: IOIBUF_X38_Y81_N52
\Read_data_1[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(28),
	o => \Read_data_1[28]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\Sign_extend[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(28),
	o => \Sign_extend[28]~input_o\);

-- Location: IOIBUF_X70_Y81_N1
\Read_data_2[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(28),
	o => \Read_data_2[28]~input_o\);

-- Location: MLABCELL_X72_Y37_N3
\inst|Binput[28]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[28]~19_combout\ = ( \Read_data_2[28]~input_o\ & ( (!\ALUSrc~input_o\) # (\Sign_extend[28]~input_o\) ) ) # ( !\Read_data_2[28]~input_o\ & ( (\ALUSrc~input_o\ & \Sign_extend[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUSrc~input_o\,
	datac => \ALT_INV_Sign_extend[28]~input_o\,
	datae => \ALT_INV_Read_data_2[28]~input_o\,
	combout => \inst|Binput[28]~19_combout\);

-- Location: IOIBUF_X38_Y81_N35
\Read_data_1[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(27),
	o => \Read_data_1[27]~input_o\);

-- Location: IOIBUF_X66_Y81_N58
\Read_data_2[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(27),
	o => \Read_data_2[27]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\Sign_extend[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(27),
	o => \Sign_extend[27]~input_o\);

-- Location: MLABCELL_X72_Y37_N48
\inst|Binput[27]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[27]~12_combout\ = ( \ALUSrc~input_o\ & ( \Sign_extend[27]~input_o\ ) ) # ( !\ALUSrc~input_o\ & ( \Read_data_2[27]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Read_data_2[27]~input_o\,
	datad => \ALT_INV_Sign_extend[27]~input_o\,
	datae => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[27]~12_combout\);

-- Location: IOIBUF_X38_Y81_N18
\Read_data_1[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(26),
	o => \Read_data_1[26]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\Read_data_2[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(26),
	o => \Read_data_2[26]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\Sign_extend[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(26),
	o => \Sign_extend[26]~input_o\);

-- Location: LABCELL_X57_Y2_N6
\inst|Binput[26]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[26]~13_combout\ = ( \ALUSrc~input_o\ & ( \Sign_extend[26]~input_o\ ) ) # ( !\ALUSrc~input_o\ & ( \Read_data_2[26]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Read_data_2[26]~input_o\,
	datac => \ALT_INV_Sign_extend[26]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[26]~13_combout\);

-- Location: IOIBUF_X66_Y0_N58
\Sign_extend[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(25),
	o => \Sign_extend[25]~input_o\);

-- Location: IOIBUF_X66_Y0_N92
\Read_data_2[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(25),
	o => \Read_data_2[25]~input_o\);

-- Location: LABCELL_X68_Y2_N3
\inst|Binput[25]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[25]~6_combout\ = ( \Read_data_2[25]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[25]~input_o\ ) ) ) # ( !\Read_data_2[25]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[25]~input_o\ ) ) ) # ( \Read_data_2[25]~input_o\ & ( !\ALUSrc~input_o\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sign_extend[25]~input_o\,
	datae => \ALT_INV_Read_data_2[25]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[25]~6_combout\);

-- Location: IOIBUF_X28_Y0_N1
\Read_data_1[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(25),
	o => \Read_data_1[25]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\Sign_extend[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(24),
	o => \Sign_extend[24]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\Read_data_2[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(24),
	o => \Read_data_2[24]~input_o\);

-- Location: MLABCELL_X72_Y37_N6
\inst|Binput[24]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[24]~7_combout\ = ( \ALUSrc~input_o\ & ( \Read_data_2[24]~input_o\ & ( \Sign_extend[24]~input_o\ ) ) ) # ( !\ALUSrc~input_o\ & ( \Read_data_2[24]~input_o\ ) ) # ( \ALUSrc~input_o\ & ( !\Read_data_2[24]~input_o\ & ( \Sign_extend[24]~input_o\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sign_extend[24]~input_o\,
	datae => \ALT_INV_ALUSrc~input_o\,
	dataf => \ALT_INV_Read_data_2[24]~input_o\,
	combout => \inst|Binput[24]~7_combout\);

-- Location: IOIBUF_X28_Y0_N18
\Read_data_1[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(24),
	o => \Read_data_1[24]~input_o\);

-- Location: LABCELL_X43_Y3_N15
\inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~25_sumout\ = SUM(( !\inst|Binput[24]~7_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[24]~input_o\ ) + ( \inst|Add1~6\ ))
-- \inst|Add1~26\ = CARRY(( !\inst|Binput[24]~7_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[24]~input_o\ ) + ( \inst|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[24]~7_combout\,
	dataf => \ALT_INV_Read_data_1[24]~input_o\,
	cin => \inst|Add1~6\,
	sumout => \inst|Add1~25_sumout\,
	cout => \inst|Add1~26\);

-- Location: LABCELL_X43_Y3_N18
\inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~29_sumout\ = SUM(( !\inst|Binput[25]~6_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[25]~input_o\ ) + ( \inst|Add1~26\ ))
-- \inst|Add1~30\ = CARRY(( !\inst|Binput[25]~6_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[25]~input_o\ ) + ( \inst|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[25]~6_combout\,
	dataf => \ALT_INV_Read_data_1[25]~input_o\,
	cin => \inst|Add1~26\,
	sumout => \inst|Add1~29_sumout\,
	cout => \inst|Add1~30\);

-- Location: LABCELL_X43_Y3_N21
\inst|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~49_sumout\ = SUM(( \Read_data_1[26]~input_o\ ) + ( !\inst|Binput[26]~13_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~30\ ))
-- \inst|Add1~50\ = CARRY(( \Read_data_1[26]~input_o\ ) + ( !\inst|Binput[26]~13_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[26]~input_o\,
	dataf => \inst|ALT_INV_Binput[26]~13_combout\,
	cin => \inst|Add1~30\,
	sumout => \inst|Add1~49_sumout\,
	cout => \inst|Add1~50\);

-- Location: LABCELL_X43_Y3_N24
\inst|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~53_sumout\ = SUM(( \Read_data_1[27]~input_o\ ) + ( !\inst|Binput[27]~12_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~50\ ))
-- \inst|Add1~54\ = CARRY(( \Read_data_1[27]~input_o\ ) + ( !\inst|Binput[27]~12_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[27]~input_o\,
	dataf => \inst|ALT_INV_Binput[27]~12_combout\,
	cin => \inst|Add1~50\,
	sumout => \inst|Add1~53_sumout\,
	cout => \inst|Add1~54\);

-- Location: LABCELL_X43_Y3_N27
\inst|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~73_sumout\ = SUM(( \Read_data_1[28]~input_o\ ) + ( !\inst|Binput[28]~19_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~54\ ))
-- \inst|Add1~74\ = CARRY(( \Read_data_1[28]~input_o\ ) + ( !\inst|Binput[28]~19_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \inst|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \ALT_INV_Read_data_1[28]~input_o\,
	dataf => \inst|ALT_INV_Binput[28]~19_combout\,
	cin => \inst|Add1~54\,
	sumout => \inst|Add1~73_sumout\,
	cout => \inst|Add1~74\);

-- Location: IOIBUF_X8_Y0_N1
\Read_data_1[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(29),
	o => \Read_data_1[29]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\Sign_extend[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(29),
	o => \Sign_extend[29]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\Read_data_2[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(29),
	o => \Read_data_2[29]~input_o\);

-- Location: MLABCELL_X72_Y37_N24
\inst|Binput[29]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[29]~18_combout\ = ( \ALUSrc~input_o\ & ( \Read_data_2[29]~input_o\ & ( \Sign_extend[29]~input_o\ ) ) ) # ( !\ALUSrc~input_o\ & ( \Read_data_2[29]~input_o\ ) ) # ( \ALUSrc~input_o\ & ( !\Read_data_2[29]~input_o\ & ( \Sign_extend[29]~input_o\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sign_extend[29]~input_o\,
	datae => \ALT_INV_ALUSrc~input_o\,
	dataf => \ALT_INV_Read_data_2[29]~input_o\,
	combout => \inst|Binput[29]~18_combout\);

-- Location: LABCELL_X43_Y3_N54
\inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = ( \inst|Binput[29]~18_combout\ & ( (!\Read_data_1[29]~input_o\ & (((\inst|Mux15~3_combout\)))) # (\Read_data_1[29]~input_o\ & (((!\inst|Mux15~1_combout\ & \inst|Mux15~3_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[29]~18_combout\ & ( (\Read_data_1[29]~input_o\ & \inst|Mux15~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101111111010000010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~2_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Read_data_1[29]~input_o\,
	datad => \inst|ALT_INV_Mux15~3_combout\,
	dataf => \inst|ALT_INV_Binput[29]~18_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LABCELL_X43_Y3_N30
\inst|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~77_sumout\ = SUM(( !\inst|Binput[29]~18_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[29]~input_o\ ) + ( \inst|Add1~74\ ))
-- \inst|Add1~78\ = CARRY(( !\inst|Binput[29]~18_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[29]~input_o\ ) + ( \inst|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[29]~18_combout\,
	dataf => \ALT_INV_Read_data_1[29]~input_o\,
	cin => \inst|Add1~74\,
	sumout => \inst|Add1~77_sumout\,
	cout => \inst|Add1~78\);

-- Location: LABCELL_X43_Y3_N57
\inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = ( \inst|Binput[28]~19_combout\ & ( (!\Read_data_1[28]~input_o\ & (((\inst|Mux15~3_combout\)))) # (\Read_data_1[28]~input_o\ & (((!\inst|Mux15~1_combout\ & \inst|Mux15~3_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[28]~19_combout\ & ( (\Read_data_1[28]~input_o\ & \inst|Mux15~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101111111010000010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~2_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Read_data_1[28]~input_o\,
	datad => \inst|ALT_INV_Mux15~3_combout\,
	dataf => \inst|ALT_INV_Binput[28]~19_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LABCELL_X42_Y4_N27
\inst|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = ( \inst|Binput[18]~21_combout\ & ( (!\Read_data_1[18]~input_o\ & (((\inst|Mux15~3_combout\)))) # (\Read_data_1[18]~input_o\ & (((!\inst|Mux15~1_combout\ & \inst|Mux15~3_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[18]~21_combout\ & ( (\Read_data_1[18]~input_o\ & \inst|Mux15~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101111111010000010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~2_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Read_data_1[18]~input_o\,
	datad => \inst|ALT_INV_Mux15~3_combout\,
	dataf => \inst|ALT_INV_Binput[18]~21_combout\,
	combout => \inst|Mux13~0_combout\);

-- Location: LABCELL_X42_Y4_N3
\inst|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux22~0_combout\ = ( \Read_data_1[9]~input_o\ & ( (!\inst|Binput[9]~22_combout\ & (\inst|Mux15~3_combout\)) # (\inst|Binput[9]~22_combout\ & (((\inst|Mux15~3_combout\ & !\inst|Mux15~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\Read_data_1[9]~input_o\ & ( (\inst|Mux15~3_combout\ & \inst|Binput[9]~22_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101010011110101010101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~3_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \inst|ALT_INV_Mux15~2_combout\,
	datad => \inst|ALT_INV_Binput[9]~22_combout\,
	dataf => \ALT_INV_Read_data_1[9]~input_o\,
	combout => \inst|Mux22~0_combout\);

-- Location: LABCELL_X42_Y4_N0
\inst|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux23~0_combout\ = ( \inst|Binput[8]~23_combout\ & ( (!\Read_data_1[8]~input_o\ & (\inst|Mux15~3_combout\)) # (\Read_data_1[8]~input_o\ & (((\inst|Mux15~3_combout\ & !\inst|Mux15~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[8]~23_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010100010111110101010001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~3_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Read_data_1[8]~input_o\,
	datad => \inst|ALT_INV_Mux15~2_combout\,
	dataf => \inst|ALT_INV_Binput[8]~23_combout\,
	combout => \inst|Mux23~0_combout\);

-- Location: LABCELL_X42_Y4_N6
\inst|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = ( !\inst|Mux23~0_combout\ & ( (!\inst|Mux22~0_combout\ & (((!\inst|Add1~93_sumout\ & !\inst|Add1~89_sumout\)) # (\inst|Mux15~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000100010101000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux22~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~93_sumout\,
	datad => \inst|ALT_INV_Add1~89_sumout\,
	dataf => \inst|ALT_INV_Mux23~0_combout\,
	combout => \inst|Equal0~9_combout\);

-- Location: LABCELL_X42_Y4_N24
\inst|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = ( \inst|Mux15~3_combout\ & ( (!\inst|Binput[19]~20_combout\ & (((\Read_data_1[19]~input_o\)))) # (\inst|Binput[19]~20_combout\ & (((!\inst|Mux15~1_combout\) # (!\Read_data_1[19]~input_o\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Mux15~3_combout\ & ( (\inst|Mux15~2_combout\ & (\inst|Binput[19]~20_combout\ & \Read_data_1[19]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111111111010000111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~2_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \inst|ALT_INV_Binput[19]~20_combout\,
	datad => \ALT_INV_Read_data_1[19]~input_o\,
	dataf => \inst|ALT_INV_Mux15~3_combout\,
	combout => \inst|Mux12~0_combout\);

-- Location: LABCELL_X42_Y4_N42
\inst|Equal0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~10_combout\ = ( \inst|Mux15~0_combout\ & ( \inst|Add1~81_sumout\ & ( (!\inst|Mux13~0_combout\ & (\inst|Equal0~9_combout\ & !\inst|Mux12~0_combout\)) ) ) ) # ( \inst|Mux15~0_combout\ & ( !\inst|Add1~81_sumout\ & ( (!\inst|Mux13~0_combout\ & 
-- (\inst|Equal0~9_combout\ & !\inst|Mux12~0_combout\)) ) ) ) # ( !\inst|Mux15~0_combout\ & ( !\inst|Add1~81_sumout\ & ( (!\inst|Mux13~0_combout\ & (\inst|Equal0~9_combout\ & (!\inst|Mux12~0_combout\ & !\inst|Add1~85_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000010000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux13~0_combout\,
	datab => \inst|ALT_INV_Equal0~9_combout\,
	datac => \inst|ALT_INV_Mux12~0_combout\,
	datad => \inst|ALT_INV_Add1~85_sumout\,
	datae => \inst|ALT_INV_Mux15~0_combout\,
	dataf => \inst|ALT_INV_Add1~81_sumout\,
	combout => \inst|Equal0~10_combout\);

-- Location: LABCELL_X42_Y3_N18
\inst|Equal0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~11_combout\ = ( \inst|Mux15~0_combout\ & ( \inst|Equal0~10_combout\ & ( (!\inst|Mux2~0_combout\ & !\inst|Mux3~0_combout\) ) ) ) # ( !\inst|Mux15~0_combout\ & ( \inst|Equal0~10_combout\ & ( (!\inst|Add1~73_sumout\ & (!\inst|Mux2~0_combout\ & 
-- (!\inst|Add1~77_sumout\ & !\inst|Mux3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~73_sumout\,
	datab => \inst|ALT_INV_Mux2~0_combout\,
	datac => \inst|ALT_INV_Add1~77_sumout\,
	datad => \inst|ALT_INV_Mux3~0_combout\,
	datae => \inst|ALT_INV_Mux15~0_combout\,
	dataf => \inst|ALT_INV_Equal0~10_combout\,
	combout => \inst|Equal0~11_combout\);

-- Location: LABCELL_X43_Y3_N51
\inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = ( \inst|Mux15~3_combout\ & ( (!\inst|Binput[26]~13_combout\ & (((\Read_data_1[26]~input_o\)))) # (\inst|Binput[26]~13_combout\ & (((!\inst|Mux15~1_combout\) # (!\Read_data_1[26]~input_o\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Mux15~3_combout\ & ( (\inst|Mux15~2_combout\ & (\inst|Binput[26]~13_combout\ & \Read_data_1[26]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111111111010000111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~2_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \inst|ALT_INV_Binput[26]~13_combout\,
	datad => \ALT_INV_Read_data_1[26]~input_o\,
	dataf => \inst|ALT_INV_Mux15~3_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LABCELL_X43_Y3_N48
\inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = ( \inst|Binput[27]~12_combout\ & ( (!\Read_data_1[27]~input_o\ & (((\inst|Mux15~3_combout\)))) # (\Read_data_1[27]~input_o\ & (((!\inst|Mux15~1_combout\ & \inst|Mux15~3_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[27]~12_combout\ & ( (\Read_data_1[27]~input_o\ & \inst|Mux15~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000101111111010000010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~2_combout\,
	datab => \inst|ALT_INV_Mux15~1_combout\,
	datac => \ALT_INV_Read_data_1[27]~input_o\,
	datad => \inst|ALT_INV_Mux15~3_combout\,
	dataf => \inst|ALT_INV_Binput[27]~12_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LABCELL_X40_Y4_N3
\inst|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux24~0_combout\ = ( \inst|Binput[7]~16_combout\ & ( (!\Read_data_1[7]~input_o\ & (\inst|Mux15~3_combout\)) # (\Read_data_1[7]~input_o\ & (((\inst|Mux15~3_combout\ & !\inst|Mux15~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[7]~16_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010111010100110101011101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~3_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Read_data_1[7]~input_o\,
	datad => \inst|ALT_INV_Mux15~1_combout\,
	dataf => \inst|ALT_INV_Binput[7]~16_combout\,
	combout => \inst|Mux24~0_combout\);

-- Location: LABCELL_X40_Y4_N0
\inst|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux25~0_combout\ = ( \inst|Binput[6]~17_combout\ & ( (!\Read_data_1[6]~input_o\ & (\inst|Mux15~3_combout\)) # (\Read_data_1[6]~input_o\ & (((\inst|Mux15~3_combout\ & !\inst|Mux15~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[6]~17_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010111010100110101011101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~3_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Read_data_1[6]~input_o\,
	datad => \inst|ALT_INV_Mux15~1_combout\,
	dataf => \inst|ALT_INV_Binput[6]~17_combout\,
	combout => \inst|Mux25~0_combout\);

-- Location: LABCELL_X40_Y4_N9
\inst|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = ( \inst|Mux15~0_combout\ & ( (!\inst|Mux24~0_combout\ & !\inst|Mux25~0_combout\) ) ) # ( !\inst|Mux15~0_combout\ & ( (!\inst|Mux24~0_combout\ & (!\inst|Add1~65_sumout\ & (!\inst|Add1~69_sumout\ & !\inst|Mux25~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux24~0_combout\,
	datab => \inst|ALT_INV_Add1~65_sumout\,
	datac => \inst|ALT_INV_Add1~69_sumout\,
	datad => \inst|ALT_INV_Mux25~0_combout\,
	dataf => \inst|ALT_INV_Mux15~0_combout\,
	combout => \inst|Equal0~6_combout\);

-- Location: LABCELL_X40_Y4_N54
\inst|Mux15~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux15~4_combout\ = ( \inst|Mux15~3_combout\ & ( (!\Read_data_1[16]~input_o\ & (((\inst|Binput[16]~15_combout\)))) # (\Read_data_1[16]~input_o\ & ((!\inst|Mux15~1_combout\) # ((!\inst|Binput[16]~15_combout\) # (\inst|Mux15~2_combout\)))) ) ) # ( 
-- !\inst|Mux15~3_combout\ & ( (\inst|Mux15~2_combout\ & (\Read_data_1[16]~input_o\ & \inst|Binput[16]~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111111110110000111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~1_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Read_data_1[16]~input_o\,
	datad => \inst|ALT_INV_Binput[16]~15_combout\,
	dataf => \inst|ALT_INV_Mux15~3_combout\,
	combout => \inst|Mux15~4_combout\);

-- Location: LABCELL_X40_Y4_N57
\inst|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = ( \inst|Binput[17]~14_combout\ & ( (!\Read_data_1[17]~input_o\ & (((\inst|Mux15~3_combout\)))) # (\Read_data_1[17]~input_o\ & (((!\inst|Mux15~1_combout\ & \inst|Mux15~3_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[17]~14_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111001110110000111100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~1_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \inst|ALT_INV_Mux15~3_combout\,
	datad => \ALT_INV_Read_data_1[17]~input_o\,
	dataf => \inst|ALT_INV_Binput[17]~14_combout\,
	combout => \inst|Mux14~0_combout\);

-- Location: LABCELL_X42_Y3_N36
\inst|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = ( \inst|Mux15~0_combout\ & ( !\inst|Mux14~0_combout\ & ( (\inst|Equal0~6_combout\ & !\inst|Mux15~4_combout\) ) ) ) # ( !\inst|Mux15~0_combout\ & ( !\inst|Mux14~0_combout\ & ( (!\inst|Add1~61_sumout\ & (\inst|Equal0~6_combout\ & 
-- (!\inst|Mux15~4_combout\ & !\inst|Add1~57_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~61_sumout\,
	datab => \inst|ALT_INV_Equal0~6_combout\,
	datac => \inst|ALT_INV_Mux15~4_combout\,
	datad => \inst|ALT_INV_Add1~57_sumout\,
	datae => \inst|ALT_INV_Mux15~0_combout\,
	dataf => \inst|ALT_INV_Mux14~0_combout\,
	combout => \inst|Equal0~7_combout\);

-- Location: LABCELL_X42_Y3_N42
\inst|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = ( \inst|Add1~49_sumout\ & ( \inst|Add1~53_sumout\ & ( (!\inst|Mux5~0_combout\ & (!\inst|Mux4~0_combout\ & (\inst|Equal0~7_combout\ & \inst|Mux15~0_combout\))) ) ) ) # ( !\inst|Add1~49_sumout\ & ( \inst|Add1~53_sumout\ & ( 
-- (!\inst|Mux5~0_combout\ & (!\inst|Mux4~0_combout\ & (\inst|Equal0~7_combout\ & \inst|Mux15~0_combout\))) ) ) ) # ( \inst|Add1~49_sumout\ & ( !\inst|Add1~53_sumout\ & ( (!\inst|Mux5~0_combout\ & (!\inst|Mux4~0_combout\ & (\inst|Equal0~7_combout\ & 
-- \inst|Mux15~0_combout\))) ) ) ) # ( !\inst|Add1~49_sumout\ & ( !\inst|Add1~53_sumout\ & ( (!\inst|Mux5~0_combout\ & (!\inst|Mux4~0_combout\ & \inst|Equal0~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux5~0_combout\,
	datab => \inst|ALT_INV_Mux4~0_combout\,
	datac => \inst|ALT_INV_Equal0~7_combout\,
	datad => \inst|ALT_INV_Mux15~0_combout\,
	datae => \inst|ALT_INV_Add1~49_sumout\,
	dataf => \inst|ALT_INV_Add1~53_sumout\,
	combout => \inst|Equal0~8_combout\);

-- Location: LABCELL_X45_Y4_N54
\inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = ( \inst|Binput[24]~7_combout\ & ( (!\Read_data_1[24]~input_o\ & (\inst|Mux15~3_combout\)) # (\Read_data_1[24]~input_o\ & (((\inst|Mux15~3_combout\ & !\inst|Mux15~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[24]~7_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010111010100110101011101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~3_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Read_data_1[24]~input_o\,
	datad => \inst|ALT_INV_Mux15~1_combout\,
	dataf => \inst|ALT_INV_Binput[24]~7_combout\,
	combout => \inst|Mux7~0_combout\);

-- Location: LABCELL_X45_Y4_N57
\inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = ( \inst|Binput[25]~6_combout\ & ( (!\Read_data_1[25]~input_o\ & (\inst|Mux15~3_combout\)) # (\Read_data_1[25]~input_o\ & (((\inst|Mux15~3_combout\ & !\inst|Mux15~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[25]~6_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010111010100110101011101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~3_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Read_data_1[25]~input_o\,
	datad => \inst|ALT_INV_Mux15~1_combout\,
	dataf => \inst|ALT_INV_Binput[25]~6_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: LABCELL_X40_Y4_N36
\inst|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux26~0_combout\ = ( \inst|Mux15~3_combout\ & ( (!\inst|Binput[5]~10_combout\ & (((\Read_data_1[5]~input_o\)))) # (\inst|Binput[5]~10_combout\ & ((!\inst|Mux15~1_combout\) # ((!\Read_data_1[5]~input_o\) # (\inst|Mux15~2_combout\)))) ) ) # ( 
-- !\inst|Mux15~3_combout\ & ( (\inst|Mux15~2_combout\ & (\inst|Binput[5]~10_combout\ & \Read_data_1[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111111110110000111111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~1_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \inst|ALT_INV_Binput[5]~10_combout\,
	datad => \ALT_INV_Read_data_1[5]~input_o\,
	dataf => \inst|ALT_INV_Mux15~3_combout\,
	combout => \inst|Mux26~0_combout\);

-- Location: LABCELL_X40_Y4_N39
\inst|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux27~0_combout\ = ( \inst|Binput[4]~11_combout\ & ( (!\Read_data_1[4]~input_o\ & (((\inst|Mux15~3_combout\)))) # (\Read_data_1[4]~input_o\ & (((!\inst|Mux15~1_combout\ & \inst|Mux15~3_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[4]~11_combout\ & ( (\Read_data_1[4]~input_o\ & \inst|Mux15~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000011111110110000001111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~1_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Read_data_1[4]~input_o\,
	datad => \inst|ALT_INV_Mux15~3_combout\,
	dataf => \inst|ALT_INV_Binput[4]~11_combout\,
	combout => \inst|Mux27~0_combout\);

-- Location: LABCELL_X40_Y4_N42
\inst|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = ( !\inst|Mux27~0_combout\ & ( (!\inst|Mux26~0_combout\ & (((!\inst|Add1~45_sumout\ & !\inst|Add1~41_sumout\)) # (\inst|Mux15~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010101010100000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux26~0_combout\,
	datab => \inst|ALT_INV_Add1~45_sumout\,
	datac => \inst|ALT_INV_Add1~41_sumout\,
	datad => \inst|ALT_INV_Mux15~0_combout\,
	dataf => \inst|ALT_INV_Mux27~0_combout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LABCELL_X40_Y4_N33
\inst|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = ( \inst|Binput[14]~9_combout\ & ( (!\Read_data_1[14]~input_o\ & (\inst|Mux15~3_combout\)) # (\Read_data_1[14]~input_o\ & (((\inst|Mux15~3_combout\ & !\inst|Mux15~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[14]~9_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010111010100110101011101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~3_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Read_data_1[14]~input_o\,
	datad => \inst|ALT_INV_Mux15~1_combout\,
	dataf => \inst|ALT_INV_Binput[14]~9_combout\,
	combout => \inst|Mux17~0_combout\);

-- Location: LABCELL_X40_Y4_N30
\inst|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = ( \inst|Binput[15]~8_combout\ & ( (!\Read_data_1[15]~input_o\ & (\inst|Mux15~3_combout\)) # (\Read_data_1[15]~input_o\ & (((\inst|Mux15~3_combout\ & !\inst|Mux15~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[15]~8_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010111010100110101011101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~3_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Read_data_1[15]~input_o\,
	datad => \inst|ALT_INV_Mux15~1_combout\,
	dataf => \inst|ALT_INV_Binput[15]~8_combout\,
	combout => \inst|Mux16~0_combout\);

-- Location: LABCELL_X40_Y4_N48
\inst|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = ( \inst|Mux15~0_combout\ & ( \inst|Add1~33_sumout\ & ( (\inst|Equal0~3_combout\ & (!\inst|Mux17~0_combout\ & !\inst|Mux16~0_combout\)) ) ) ) # ( \inst|Mux15~0_combout\ & ( !\inst|Add1~33_sumout\ & ( (\inst|Equal0~3_combout\ & 
-- (!\inst|Mux17~0_combout\ & !\inst|Mux16~0_combout\)) ) ) ) # ( !\inst|Mux15~0_combout\ & ( !\inst|Add1~33_sumout\ & ( (!\inst|Add1~37_sumout\ & (\inst|Equal0~3_combout\ & (!\inst|Mux17~0_combout\ & !\inst|Mux16~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001100000000000000000000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~37_sumout\,
	datab => \inst|ALT_INV_Equal0~3_combout\,
	datac => \inst|ALT_INV_Mux17~0_combout\,
	datad => \inst|ALT_INV_Mux16~0_combout\,
	datae => \inst|ALT_INV_Mux15~0_combout\,
	dataf => \inst|ALT_INV_Add1~33_sumout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LABCELL_X45_Y4_N30
\inst|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = ( \inst|Mux15~0_combout\ & ( \inst|Equal0~4_combout\ & ( (!\inst|Mux7~0_combout\ & !\inst|Mux6~0_combout\) ) ) ) # ( !\inst|Mux15~0_combout\ & ( \inst|Equal0~4_combout\ & ( (!\inst|Mux7~0_combout\ & (!\inst|Add1~29_sumout\ & 
-- (!\inst|Add1~25_sumout\ & !\inst|Mux6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux7~0_combout\,
	datab => \inst|ALT_INV_Add1~29_sumout\,
	datac => \inst|ALT_INV_Add1~25_sumout\,
	datad => \inst|ALT_INV_Mux6~0_combout\,
	datae => \inst|ALT_INV_Mux15~0_combout\,
	dataf => \inst|ALT_INV_Equal0~4_combout\,
	combout => \inst|Equal0~5_combout\);

-- Location: IOIBUF_X2_Y0_N41
\Read_data_1[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(31),
	o => \Read_data_1[31]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\Sign_extend[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(31),
	o => \Sign_extend[31]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\Read_data_2[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(31),
	o => \Read_data_2[31]~input_o\);

-- Location: LABCELL_X57_Y2_N42
\inst|Binput[31]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[31]~24_combout\ = ( \Read_data_2[31]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[31]~input_o\ ) ) ) # ( !\Read_data_2[31]~input_o\ & ( \ALUSrc~input_o\ & ( \Sign_extend[31]~input_o\ ) ) ) # ( \Read_data_2[31]~input_o\ & ( !\ALUSrc~input_o\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sign_extend[31]~input_o\,
	datae => \ALT_INV_Read_data_2[31]~input_o\,
	dataf => \ALT_INV_ALUSrc~input_o\,
	combout => \inst|Binput[31]~24_combout\);

-- Location: LABCELL_X46_Y4_N33
\inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = ( \inst|Mux15~2_combout\ & ( (!\inst|Mux15~3_combout\ & (\Read_data_1[31]~input_o\ & \inst|Binput[31]~24_combout\)) # (\inst|Mux15~3_combout\ & ((\inst|Binput[31]~24_combout\) # (\Read_data_1[31]~input_o\))) ) ) # ( 
-- !\inst|Mux15~2_combout\ & ( (\inst|Mux15~3_combout\ & ((!\Read_data_1[31]~input_o\ & ((\inst|Binput[31]~24_combout\))) # (\Read_data_1[31]~input_o\ & ((!\inst|Mux15~1_combout\) # (!\inst|Binput[31]~24_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110010000000110011001000000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~1_combout\,
	datab => \inst|ALT_INV_Mux15~3_combout\,
	datac => \ALT_INV_Read_data_1[31]~input_o\,
	datad => \inst|ALT_INV_Binput[31]~24_combout\,
	dataf => \inst|ALT_INV_Mux15~2_combout\,
	combout => \inst|Mux0~0_combout\);

-- Location: IOIBUF_X68_Y81_N1
\Sign_extend[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sign_extend(30),
	o => \Sign_extend[30]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\Read_data_2[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_2(30),
	o => \Read_data_2[30]~input_o\);

-- Location: MLABCELL_X72_Y37_N42
\inst|Binput[30]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Binput[30]~25_combout\ = ( \ALUSrc~input_o\ & ( \Read_data_2[30]~input_o\ & ( \Sign_extend[30]~input_o\ ) ) ) # ( !\ALUSrc~input_o\ & ( \Read_data_2[30]~input_o\ ) ) # ( \ALUSrc~input_o\ & ( !\Read_data_2[30]~input_o\ & ( \Sign_extend[30]~input_o\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sign_extend[30]~input_o\,
	datae => \ALT_INV_ALUSrc~input_o\,
	dataf => \ALT_INV_Read_data_2[30]~input_o\,
	combout => \inst|Binput[30]~25_combout\);

-- Location: IOIBUF_X32_Y0_N52
\Read_data_1[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read_data_1(30),
	o => \Read_data_1[30]~input_o\);

-- Location: LABCELL_X43_Y3_N33
\inst|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~97_sumout\ = SUM(( !\inst|Binput[30]~25_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[30]~input_o\ ) + ( \inst|Add1~78\ ))
-- \inst|Add1~98\ = CARRY(( !\inst|Binput[30]~25_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\Function_opcodes[1]~input_o\) # (!\ALUOp[1]~input_o\))))) ) + ( \Read_data_1[30]~input_o\ ) + ( \inst|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011011111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Function_opcodes[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_ALUOp[1]~input_o\,
	datad => \inst|ALT_INV_Binput[30]~25_combout\,
	dataf => \ALT_INV_Read_data_1[30]~input_o\,
	cin => \inst|Add1~78\,
	sumout => \inst|Add1~97_sumout\,
	cout => \inst|Add1~98\);

-- Location: LABCELL_X46_Y4_N9
\inst|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = ( \inst|Mux15~2_combout\ & ( (!\inst|Mux15~3_combout\ & (\Read_data_1[21]~input_o\ & \inst|Binput[21]~26_combout\)) # (\inst|Mux15~3_combout\ & ((\inst|Binput[21]~26_combout\) # (\Read_data_1[21]~input_o\))) ) ) # ( 
-- !\inst|Mux15~2_combout\ & ( (\inst|Mux15~3_combout\ & ((!\Read_data_1[21]~input_o\ & ((\inst|Binput[21]~26_combout\))) # (\Read_data_1[21]~input_o\ & ((!\inst|Mux15~1_combout\) # (!\inst|Binput[21]~26_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110010000000110011001000000011001111110000001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~1_combout\,
	datab => \inst|ALT_INV_Mux15~3_combout\,
	datac => \ALT_INV_Read_data_1[21]~input_o\,
	datad => \inst|ALT_INV_Binput[21]~26_combout\,
	dataf => \inst|ALT_INV_Mux15~2_combout\,
	combout => \inst|Mux10~0_combout\);

-- Location: LABCELL_X45_Y4_N6
\inst|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux20~0_combout\ = ( \Read_data_1[11]~input_o\ & ( (!\inst|Binput[11]~28_combout\ & (\inst|Mux15~3_combout\)) # (\inst|Binput[11]~28_combout\ & (((\inst|Mux15~3_combout\ & !\inst|Mux15~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\Read_data_1[11]~input_o\ & ( (\inst|Mux15~3_combout\ & \inst|Binput[11]~28_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010111010100110101011101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~3_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \inst|ALT_INV_Binput[11]~28_combout\,
	datad => \inst|ALT_INV_Mux15~1_combout\,
	dataf => \ALT_INV_Read_data_1[11]~input_o\,
	combout => \inst|Mux20~0_combout\);

-- Location: LABCELL_X45_Y4_N9
\inst|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux21~0_combout\ = ( \inst|Binput[10]~29_combout\ & ( (!\Read_data_1[10]~input_o\ & (\inst|Mux15~3_combout\)) # (\Read_data_1[10]~input_o\ & (((\inst|Mux15~3_combout\ & !\inst|Mux15~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[10]~29_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010111010100110101011101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~3_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Read_data_1[10]~input_o\,
	datad => \inst|ALT_INV_Mux15~1_combout\,
	dataf => \inst|ALT_INV_Binput[10]~29_combout\,
	combout => \inst|Mux21~0_combout\);

-- Location: LABCELL_X45_Y4_N12
\inst|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux30~0_combout\ = ( \inst|Binput[1]~30_combout\ & ( (!\Read_data_1[1]~input_o\ & (\inst|Mux15~3_combout\)) # (\Read_data_1[1]~input_o\ & (((\inst|Mux15~3_combout\ & !\inst|Mux15~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[1]~30_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010101010101011100110101010101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~3_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \inst|ALT_INV_Mux15~1_combout\,
	datad => \ALT_INV_Read_data_1[1]~input_o\,
	dataf => \inst|ALT_INV_Binput[1]~30_combout\,
	combout => \inst|Mux30~0_combout\);

-- Location: LABCELL_X45_Y4_N15
\inst|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux31~0_combout\ = ( \inst|Binput[0]~31_combout\ & ( (!\Read_data_1[0]~input_o\ & (\inst|Mux15~3_combout\)) # (\Read_data_1[0]~input_o\ & (((\inst|Mux15~3_combout\ & !\inst|Mux15~1_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[0]~31_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010111010100110101011101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~3_combout\,
	datab => \inst|ALT_INV_Mux15~2_combout\,
	datac => \ALT_INV_Read_data_1[0]~input_o\,
	datad => \inst|ALT_INV_Mux15~1_combout\,
	dataf => \inst|ALT_INV_Binput[0]~31_combout\,
	combout => \inst|Mux31~0_combout\);

-- Location: LABCELL_X46_Y4_N12
\inst|Equal0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~12_combout\ = ( !\inst|Mux31~0_combout\ & ( (!\inst|Mux30~0_combout\ & (((!\inst|Add1~125_sumout\ & !\inst|Add1~121_sumout\)) # (\inst|Mux15~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000100010101000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux30~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~125_sumout\,
	datad => \inst|ALT_INV_Add1~121_sumout\,
	dataf => \inst|ALT_INV_Mux31~0_combout\,
	combout => \inst|Equal0~12_combout\);

-- Location: LABCELL_X46_Y4_N48
\inst|Equal0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~13_combout\ = ( \inst|Add1~113_sumout\ & ( \inst|Equal0~12_combout\ & ( (!\inst|Mux20~0_combout\ & (!\inst|Mux21~0_combout\ & \inst|Mux15~0_combout\)) ) ) ) # ( !\inst|Add1~113_sumout\ & ( \inst|Equal0~12_combout\ & ( (!\inst|Mux20~0_combout\ 
-- & (!\inst|Mux21~0_combout\ & ((!\inst|Add1~117_sumout\) # (\inst|Mux15~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux20~0_combout\,
	datab => \inst|ALT_INV_Mux21~0_combout\,
	datac => \inst|ALT_INV_Add1~117_sumout\,
	datad => \inst|ALT_INV_Mux15~0_combout\,
	datae => \inst|ALT_INV_Add1~113_sumout\,
	dataf => \inst|ALT_INV_Equal0~12_combout\,
	combout => \inst|Equal0~13_combout\);

-- Location: LABCELL_X46_Y4_N6
\inst|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = ( \inst|Binput[20]~27_combout\ & ( (!\Read_data_1[20]~input_o\ & (((\inst|Mux15~3_combout\)))) # (\Read_data_1[20]~input_o\ & (((!\inst|Mux15~1_combout\ & \inst|Mux15~3_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[20]~27_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[20]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110010001111110011001000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~1_combout\,
	datab => \inst|ALT_INV_Mux15~3_combout\,
	datac => \ALT_INV_Read_data_1[20]~input_o\,
	datad => \inst|ALT_INV_Mux15~2_combout\,
	dataf => \inst|ALT_INV_Binput[20]~27_combout\,
	combout => \inst|Mux11~0_combout\);

-- Location: LABCELL_X46_Y4_N54
\inst|Equal0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~14_combout\ = ( \inst|Mux15~0_combout\ & ( \inst|Add1~105_sumout\ & ( (!\inst|Mux10~0_combout\ & (\inst|Equal0~13_combout\ & !\inst|Mux11~0_combout\)) ) ) ) # ( \inst|Mux15~0_combout\ & ( !\inst|Add1~105_sumout\ & ( (!\inst|Mux10~0_combout\ & 
-- (\inst|Equal0~13_combout\ & !\inst|Mux11~0_combout\)) ) ) ) # ( !\inst|Mux15~0_combout\ & ( !\inst|Add1~105_sumout\ & ( (!\inst|Add1~109_sumout\ & (!\inst|Mux10~0_combout\ & (\inst|Equal0~13_combout\ & !\inst|Mux11~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000011000000000000000000000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~109_sumout\,
	datab => \inst|ALT_INV_Mux10~0_combout\,
	datac => \inst|ALT_INV_Equal0~13_combout\,
	datad => \inst|ALT_INV_Mux11~0_combout\,
	datae => \inst|ALT_INV_Mux15~0_combout\,
	dataf => \inst|ALT_INV_Add1~105_sumout\,
	combout => \inst|Equal0~14_combout\);

-- Location: LABCELL_X43_Y3_N36
\inst|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~101_sumout\ = SUM(( \Read_data_1[31]~input_o\ ) + ( !\inst|Binput[31]~24_combout\ $ (((!\ALUOp[0]~input_o\ & ((!\ALUOp[1]~input_o\) # (!\Function_opcodes[1]~input_o\))))) ) + ( \inst|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110010000011011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[1]~input_o\,
	datab => \ALT_INV_ALUOp[0]~input_o\,
	datac => \ALT_INV_Function_opcodes[1]~input_o\,
	datad => \ALT_INV_Read_data_1[31]~input_o\,
	dataf => \inst|ALT_INV_Binput[31]~24_combout\,
	cin => \inst|Add1~98\,
	sumout => \inst|Add1~101_sumout\);

-- Location: LABCELL_X46_Y4_N30
\inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = ( \inst|Binput[30]~25_combout\ & ( (!\Read_data_1[30]~input_o\ & (((\inst|Mux15~3_combout\)))) # (\Read_data_1[30]~input_o\ & (((!\inst|Mux15~1_combout\ & \inst|Mux15~3_combout\)) # (\inst|Mux15~2_combout\))) ) ) # ( 
-- !\inst|Binput[30]~25_combout\ & ( (\inst|Mux15~3_combout\ & \Read_data_1[30]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110010001111110011001000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~1_combout\,
	datab => \inst|ALT_INV_Mux15~3_combout\,
	datac => \ALT_INV_Read_data_1[30]~input_o\,
	datad => \inst|ALT_INV_Mux15~2_combout\,
	dataf => \inst|ALT_INV_Binput[30]~25_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LABCELL_X46_Y4_N0
\inst|Equal0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~15_combout\ = ( \inst|Add1~101_sumout\ & ( !\inst|Mux1~0_combout\ & ( (!\inst|Mux0~0_combout\ & (\inst|Equal0~14_combout\ & \inst|Mux15~0_combout\)) ) ) ) # ( !\inst|Add1~101_sumout\ & ( !\inst|Mux1~0_combout\ & ( (!\inst|Mux0~0_combout\ & 
-- (\inst|Equal0~14_combout\ & ((!\inst|Add1~97_sumout\) # (\inst|Mux15~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010000000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux0~0_combout\,
	datab => \inst|ALT_INV_Add1~97_sumout\,
	datac => \inst|ALT_INV_Equal0~14_combout\,
	datad => \inst|ALT_INV_Mux15~0_combout\,
	datae => \inst|ALT_INV_Add1~101_sumout\,
	dataf => \inst|ALT_INV_Mux1~0_combout\,
	combout => \inst|Equal0~15_combout\);

-- Location: LABCELL_X42_Y3_N54
\inst|Equal0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~16_combout\ = ( \inst|Equal0~5_combout\ & ( \inst|Equal0~15_combout\ & ( (\inst|Equal0~2_combout\ & (\inst|Equal0~11_combout\ & \inst|Equal0~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Equal0~2_combout\,
	datac => \inst|ALT_INV_Equal0~11_combout\,
	datad => \inst|ALT_INV_Equal0~8_combout\,
	datae => \inst|ALT_INV_Equal0~5_combout\,
	dataf => \inst|ALT_INV_Equal0~15_combout\,
	combout => \inst|Equal0~16_combout\);

-- Location: IOIBUF_X89_Y6_N21
\PC_plus_4[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_plus_4(7),
	o => \PC_plus_4[7]~input_o\);

-- Location: IOIBUF_X72_Y0_N52
\PC_plus_4[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_plus_4(6),
	o => \PC_plus_4[6]~input_o\);

-- Location: IOIBUF_X68_Y0_N18
\PC_plus_4[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_plus_4(5),
	o => \PC_plus_4[5]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\PC_plus_4[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_plus_4(4),
	o => \PC_plus_4[4]~input_o\);

-- Location: IOIBUF_X68_Y0_N35
\PC_plus_4[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_plus_4(3),
	o => \PC_plus_4[3]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\PC_plus_4[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_plus_4(2),
	o => \PC_plus_4[2]~input_o\);

-- Location: LABCELL_X77_Y4_N30
\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( \Sign_extend[0]~input_o\ ) + ( \PC_plus_4[2]~input_o\ ) + ( !VCC ))
-- \inst|Add0~30\ = CARRY(( \Sign_extend[0]~input_o\ ) + ( \PC_plus_4[2]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_plus_4[2]~input_o\,
	datac => \ALT_INV_Sign_extend[0]~input_o\,
	cin => GND,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

-- Location: LABCELL_X77_Y4_N33
\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \Sign_extend[1]~input_o\ ) + ( \PC_plus_4[3]~input_o\ ) + ( \inst|Add0~30\ ))
-- \inst|Add0~26\ = CARRY(( \Sign_extend[1]~input_o\ ) + ( \PC_plus_4[3]~input_o\ ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sign_extend[1]~input_o\,
	datac => \ALT_INV_PC_plus_4[3]~input_o\,
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

-- Location: LABCELL_X77_Y4_N36
\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( \Sign_extend[2]~input_o\ ) + ( \PC_plus_4[4]~input_o\ ) + ( \inst|Add0~26\ ))
-- \inst|Add0~22\ = CARRY(( \Sign_extend[2]~input_o\ ) + ( \PC_plus_4[4]~input_o\ ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sign_extend[2]~input_o\,
	dataf => \ALT_INV_PC_plus_4[4]~input_o\,
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

-- Location: LABCELL_X77_Y4_N39
\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \PC_plus_4[5]~input_o\ ) + ( \Sign_extend[3]~input_o\ ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( \PC_plus_4[5]~input_o\ ) + ( \Sign_extend[3]~input_o\ ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Sign_extend[3]~input_o\,
	datad => \ALT_INV_PC_plus_4[5]~input_o\,
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

-- Location: LABCELL_X77_Y4_N42
\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \Sign_extend[4]~input_o\ ) + ( \PC_plus_4[6]~input_o\ ) + ( \inst|Add0~18\ ))
-- \inst|Add0~14\ = CARRY(( \Sign_extend[4]~input_o\ ) + ( \PC_plus_4[6]~input_o\ ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PC_plus_4[6]~input_o\,
	datac => \ALT_INV_Sign_extend[4]~input_o\,
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

-- Location: LABCELL_X77_Y4_N45
\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \Sign_extend[5]~input_o\ ) + ( \PC_plus_4[7]~input_o\ ) + ( \inst|Add0~14\ ))
-- \inst|Add0~10\ = CARRY(( \Sign_extend[5]~input_o\ ) + ( \PC_plus_4[7]~input_o\ ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PC_plus_4[7]~input_o\,
	datac => \ALT_INV_Sign_extend[5]~input_o\,
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

-- Location: LABCELL_X77_Y4_N48
\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( \PC_plus_4[7]~input_o\ ) + ( \Sign_extend[6]~input_o\ ) + ( \inst|Add0~10\ ))
-- \inst|Add0~6\ = CARRY(( \PC_plus_4[7]~input_o\ ) + ( \Sign_extend[6]~input_o\ ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Sign_extend[6]~input_o\,
	datad => \ALT_INV_PC_plus_4[7]~input_o\,
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

-- Location: LABCELL_X77_Y4_N51
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( \PC_plus_4[7]~input_o\ ) + ( \Sign_extend[7]~input_o\ ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Sign_extend[7]~input_o\,
	datad => \ALT_INV_PC_plus_4[7]~input_o\,
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~1_sumout\);

-- Location: LABCELL_X45_Y4_N18
\inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = ( \ALUOp[1]~input_o\ & ( \Function_opcodes[1]~input_o\ & ( (!\Function_opcodes[2]~input_o\ & ((\Function_opcodes[3]~input_o\) # (\Function_opcodes[0]~input_o\))) ) ) ) # ( \ALUOp[1]~input_o\ & ( !\Function_opcodes[1]~input_o\ & ( 
-- (\ALUOp[0]~input_o\ & (!\Function_opcodes[2]~input_o\ & ((\Function_opcodes[3]~input_o\) # (\Function_opcodes[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000100010000000000000000000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ALUOp[0]~input_o\,
	datab => \ALT_INV_Function_opcodes[2]~input_o\,
	datac => \ALT_INV_Function_opcodes[0]~input_o\,
	datad => \ALT_INV_Function_opcodes[3]~input_o\,
	datae => \ALT_INV_ALUOp[1]~input_o\,
	dataf => \ALT_INV_Function_opcodes[1]~input_o\,
	combout => \inst|Equal1~0_combout\);

-- Location: LABCELL_X46_Y4_N36
\inst|ALU_Result[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[31]~0_combout\ = ( \inst|Mux0~0_combout\ & ( !\inst|Equal1~0_combout\ ) ) # ( !\inst|Mux0~0_combout\ & ( (!\inst|Equal1~0_combout\ & (!\inst|Mux15~0_combout\ & \inst|Add1~101_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datad => \inst|ALT_INV_Add1~101_sumout\,
	dataf => \inst|ALT_INV_Mux0~0_combout\,
	combout => \inst|ALU_Result[31]~0_combout\);

-- Location: LABCELL_X46_Y4_N39
\inst|ALU_Result[30]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[30]~1_combout\ = ( \inst|Mux1~0_combout\ & ( !\inst|Equal1~0_combout\ ) ) # ( !\inst|Mux1~0_combout\ & ( (!\inst|Equal1~0_combout\ & (!\inst|Mux15~0_combout\ & \inst|Add1~97_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~97_sumout\,
	dataf => \inst|ALT_INV_Mux1~0_combout\,
	combout => \inst|ALU_Result[30]~1_combout\);

-- Location: LABCELL_X42_Y3_N0
\inst|ALU_Result[29]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[29]~2_combout\ = (!\inst|Equal1~0_combout\ & (((!\inst|Mux15~0_combout\ & \inst|Add1~77_sumout\)) # (\inst|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101010000010001010101000001000101010100000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~77_sumout\,
	datad => \inst|ALT_INV_Mux2~0_combout\,
	combout => \inst|ALU_Result[29]~2_combout\);

-- Location: LABCELL_X42_Y3_N9
\inst|ALU_Result[28]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[28]~3_combout\ = (!\inst|Equal1~0_combout\ & (((!\inst|Mux15~0_combout\ & \inst|Add1~73_sumout\)) # (\inst|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010001010000010101000101000001010100010100000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Mux3~0_combout\,
	datad => \inst|ALT_INV_Add1~73_sumout\,
	combout => \inst|ALU_Result[28]~3_combout\);

-- Location: LABCELL_X42_Y3_N12
\inst|ALU_Result[27]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[27]~4_combout\ = ( \inst|Add1~53_sumout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux15~0_combout\) # (\inst|Mux4~0_combout\))) ) ) # ( !\inst|Add1~53_sumout\ & ( (!\inst|Equal1~0_combout\ & \inst|Mux4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datad => \inst|ALT_INV_Mux4~0_combout\,
	dataf => \inst|ALT_INV_Add1~53_sumout\,
	combout => \inst|ALU_Result[27]~4_combout\);

-- Location: LABCELL_X42_Y3_N15
\inst|ALU_Result[26]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[26]~5_combout\ = ( \inst|Mux5~0_combout\ & ( !\inst|Equal1~0_combout\ ) ) # ( !\inst|Mux5~0_combout\ & ( (!\inst|Equal1~0_combout\ & (!\inst|Mux15~0_combout\ & \inst|Add1~49_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datad => \inst|ALT_INV_Add1~49_sumout\,
	dataf => \inst|ALT_INV_Mux5~0_combout\,
	combout => \inst|ALU_Result[26]~5_combout\);

-- Location: LABCELL_X45_Y4_N27
\inst|ALU_Result[25]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[25]~6_combout\ = ( !\inst|Equal1~0_combout\ & ( ((!\inst|Mux15~0_combout\ & \inst|Add1~29_sumout\)) # (\inst|Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111000010101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~29_sumout\,
	datad => \inst|ALT_INV_Mux6~0_combout\,
	dataf => \inst|ALT_INV_Equal1~0_combout\,
	combout => \inst|ALU_Result[25]~6_combout\);

-- Location: LABCELL_X45_Y4_N24
\inst|ALU_Result[24]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[24]~7_combout\ = ( !\inst|Equal1~0_combout\ & ( ((!\inst|Mux15~0_combout\ & \inst|Add1~25_sumout\)) # (\inst|Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111000010101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~25_sumout\,
	datad => \inst|ALT_INV_Mux7~0_combout\,
	dataf => \inst|ALT_INV_Equal1~0_combout\,
	combout => \inst|ALU_Result[24]~7_combout\);

-- Location: LABCELL_X42_Y3_N3
\inst|ALU_Result[23]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[23]~8_combout\ = (!\inst|Equal1~0_combout\ & (((!\inst|Mux15~0_combout\ & \inst|Add1~5_sumout\)) # (\inst|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101010000010001010101000001000101010100000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~5_sumout\,
	datad => \inst|ALT_INV_Mux8~0_combout\,
	combout => \inst|ALU_Result[23]~8_combout\);

-- Location: LABCELL_X42_Y3_N48
\inst|ALU_Result[22]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[22]~9_combout\ = ( \inst|Add1~1_sumout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux15~0_combout\) # (\inst|Mux9~0_combout\))) ) ) # ( !\inst|Add1~1_sumout\ & ( (!\inst|Equal1~0_combout\ & \inst|Mux9~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010100010101000101000001010000010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Mux9~0_combout\,
	datae => \inst|ALT_INV_Add1~1_sumout\,
	combout => \inst|ALU_Result[22]~9_combout\);

-- Location: LABCELL_X46_Y4_N42
\inst|ALU_Result[21]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[21]~10_combout\ = ( \inst|Mux10~0_combout\ & ( !\inst|Equal1~0_combout\ ) ) # ( !\inst|Mux10~0_combout\ & ( (!\inst|Equal1~0_combout\ & (!\inst|Mux15~0_combout\ & \inst|Add1~109_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~109_sumout\,
	dataf => \inst|ALT_INV_Mux10~0_combout\,
	combout => \inst|ALU_Result[21]~10_combout\);

-- Location: LABCELL_X46_Y4_N45
\inst|ALU_Result[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[20]~11_combout\ = ( \inst|Add1~105_sumout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux15~0_combout\) # (\inst|Mux11~0_combout\))) ) ) # ( !\inst|Add1~105_sumout\ & ( (!\inst|Equal1~0_combout\ & \inst|Mux11~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Mux11~0_combout\,
	dataf => \inst|ALT_INV_Add1~105_sumout\,
	combout => \inst|ALU_Result[20]~11_combout\);

-- Location: LABCELL_X42_Y4_N48
\inst|ALU_Result[19]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[19]~12_combout\ = (!\inst|Equal1~0_combout\ & (((!\inst|Mux15~0_combout\ & \inst|Add1~85_sumout\)) # (\inst|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010001010000010101000101000001010100010100000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Mux12~0_combout\,
	datad => \inst|ALT_INV_Add1~85_sumout\,
	combout => \inst|ALU_Result[19]~12_combout\);

-- Location: LABCELL_X42_Y4_N51
\inst|ALU_Result[18]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[18]~13_combout\ = ( \inst|Add1~81_sumout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux15~0_combout\) # (\inst|Mux13~0_combout\))) ) ) # ( !\inst|Add1~81_sumout\ & ( (!\inst|Equal1~0_combout\ & \inst|Mux13~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datad => \inst|ALT_INV_Mux13~0_combout\,
	dataf => \inst|ALT_INV_Add1~81_sumout\,
	combout => \inst|ALU_Result[18]~13_combout\);

-- Location: LABCELL_X42_Y3_N24
\inst|ALU_Result[17]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[17]~14_combout\ = ( \inst|Mux15~0_combout\ & ( (!\inst|Equal1~0_combout\ & \inst|Mux14~0_combout\) ) ) # ( !\inst|Mux15~0_combout\ & ( (!\inst|Equal1~0_combout\ & ((\inst|Add1~61_sumout\) # (\inst|Mux14~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux14~0_combout\,
	datac => \inst|ALT_INV_Add1~61_sumout\,
	dataf => \inst|ALT_INV_Mux15~0_combout\,
	combout => \inst|ALU_Result[17]~14_combout\);

-- Location: LABCELL_X42_Y3_N27
\inst|ALU_Result[16]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[16]~15_combout\ = ( \inst|Mux15~0_combout\ & ( (!\inst|Equal1~0_combout\ & \inst|Mux15~4_combout\) ) ) # ( !\inst|Mux15~0_combout\ & ( (!\inst|Equal1~0_combout\ & ((\inst|Mux15~4_combout\) # (\inst|Add1~57_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datac => \inst|ALT_INV_Add1~57_sumout\,
	datad => \inst|ALT_INV_Mux15~4_combout\,
	dataf => \inst|ALT_INV_Mux15~0_combout\,
	combout => \inst|ALU_Result[16]~15_combout\);

-- Location: LABCELL_X40_Y4_N12
\inst|ALU_Result[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[15]~16_combout\ = ( \inst|Mux16~0_combout\ & ( !\inst|Equal1~0_combout\ ) ) # ( !\inst|Mux16~0_combout\ & ( (!\inst|Mux15~0_combout\ & (\inst|Add1~33_sumout\ & !\inst|Equal1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~33_sumout\,
	datad => \inst|ALT_INV_Equal1~0_combout\,
	dataf => \inst|ALT_INV_Mux16~0_combout\,
	combout => \inst|ALU_Result[15]~16_combout\);

-- Location: LABCELL_X40_Y4_N15
\inst|ALU_Result[14]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[14]~17_combout\ = ( \inst|Add1~37_sumout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux15~0_combout\) # (\inst|Mux17~0_combout\))) ) ) # ( !\inst|Add1~37_sumout\ & ( (\inst|Mux17~0_combout\ & !\inst|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Mux17~0_combout\,
	datad => \inst|ALT_INV_Equal1~0_combout\,
	dataf => \inst|ALT_INV_Add1~37_sumout\,
	combout => \inst|ALU_Result[14]~17_combout\);

-- Location: LABCELL_X42_Y4_N12
\inst|ALU_Result[13]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[13]~18_combout\ = ( \inst|Mux18~0_combout\ & ( !\inst|Equal1~0_combout\ ) ) # ( !\inst|Mux18~0_combout\ & ( (!\inst|Mux15~0_combout\ & (!\inst|Equal1~0_combout\ & \inst|Add1~9_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Equal1~0_combout\,
	datad => \inst|ALT_INV_Add1~9_sumout\,
	dataf => \inst|ALT_INV_Mux18~0_combout\,
	combout => \inst|ALU_Result[13]~18_combout\);

-- Location: LABCELL_X40_Y4_N21
\inst|ALU_Result[12]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[12]~19_combout\ = ( \inst|Mux19~0_combout\ & ( !\inst|Equal1~0_combout\ ) ) # ( !\inst|Mux19~0_combout\ & ( (!\inst|Equal1~0_combout\ & (!\inst|Mux15~0_combout\ & \inst|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datad => \inst|ALT_INV_Add1~13_sumout\,
	dataf => \inst|ALT_INV_Mux19~0_combout\,
	combout => \inst|ALU_Result[12]~19_combout\);

-- Location: LABCELL_X46_Y4_N21
\inst|ALU_Result[11]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[11]~20_combout\ = (!\inst|Equal1~0_combout\ & (((!\inst|Mux15~0_combout\ & \inst|Add1~113_sumout\)) # (\inst|Mux20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101010000010001010101000001000101010100000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~113_sumout\,
	datad => \inst|ALT_INV_Mux20~0_combout\,
	combout => \inst|ALU_Result[11]~20_combout\);

-- Location: LABCELL_X46_Y4_N18
\inst|ALU_Result[10]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[10]~21_combout\ = ( \inst|Mux21~0_combout\ & ( !\inst|Equal1~0_combout\ ) ) # ( !\inst|Mux21~0_combout\ & ( (!\inst|Equal1~0_combout\ & (!\inst|Mux15~0_combout\ & \inst|Add1~117_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~117_sumout\,
	dataf => \inst|ALT_INV_Mux21~0_combout\,
	combout => \inst|ALU_Result[10]~21_combout\);

-- Location: LABCELL_X42_Y4_N9
\inst|ALU_Result[9]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[9]~22_combout\ = (!\inst|Equal1~0_combout\ & (((!\inst|Mux15~0_combout\ & \inst|Add1~89_sumout\)) # (\inst|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110100000000010111010000000001011101000000000101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux22~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~89_sumout\,
	datad => \inst|ALT_INV_Equal1~0_combout\,
	combout => \inst|ALU_Result[9]~22_combout\);

-- Location: LABCELL_X42_Y3_N6
\inst|ALU_Result[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[8]~23_combout\ = ( \inst|Add1~93_sumout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux15~0_combout\) # (\inst|Mux23~0_combout\))) ) ) # ( !\inst|Add1~93_sumout\ & ( (!\inst|Equal1~0_combout\ & \inst|Mux23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Mux23~0_combout\,
	dataf => \inst|ALT_INV_Add1~93_sumout\,
	combout => \inst|ALU_Result[8]~23_combout\);

-- Location: LABCELL_X40_Y4_N6
\inst|ALU_Result[7]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[7]~24_combout\ = (!\inst|Equal1~0_combout\ & (((\inst|Add1~65_sumout\ & !\inst|Mux15~0_combout\)) # (\inst|Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010100000000011101010000000001110101000000000111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux24~0_combout\,
	datab => \inst|ALT_INV_Add1~65_sumout\,
	datac => \inst|ALT_INV_Mux15~0_combout\,
	datad => \inst|ALT_INV_Equal1~0_combout\,
	combout => \inst|ALU_Result[7]~24_combout\);

-- Location: LABCELL_X40_Y4_N18
\inst|ALU_Result[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[6]~25_combout\ = (!\inst|Equal1~0_combout\ & (((!\inst|Mux15~0_combout\ & \inst|Add1~69_sumout\)) # (\inst|Mux25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010001010000010101000101000001010100010100000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Mux25~0_combout\,
	datad => \inst|ALT_INV_Add1~69_sumout\,
	combout => \inst|ALU_Result[6]~25_combout\);

-- Location: LABCELL_X40_Y4_N45
\inst|ALU_Result[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[5]~26_combout\ = ( \inst|Mux15~0_combout\ & ( (\inst|Mux26~0_combout\ & !\inst|Equal1~0_combout\) ) ) # ( !\inst|Mux15~0_combout\ & ( (!\inst|Equal1~0_combout\ & ((\inst|Add1~45_sumout\) # (\inst|Mux26~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011101110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux26~0_combout\,
	datab => \inst|ALT_INV_Add1~45_sumout\,
	datad => \inst|ALT_INV_Equal1~0_combout\,
	dataf => \inst|ALT_INV_Mux15~0_combout\,
	combout => \inst|ALU_Result[5]~26_combout\);

-- Location: LABCELL_X40_Y4_N27
\inst|ALU_Result[4]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[4]~27_combout\ = ( \inst|Add1~41_sumout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux15~0_combout\) # (\inst|Mux27~0_combout\))) ) ) # ( !\inst|Add1~41_sumout\ & ( (\inst|Mux27~0_combout\ & !\inst|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000101011110000000000001111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Mux27~0_combout\,
	datad => \inst|ALT_INV_Equal1~0_combout\,
	datae => \inst|ALT_INV_Add1~41_sumout\,
	combout => \inst|ALU_Result[4]~27_combout\);

-- Location: LABCELL_X42_Y4_N57
\inst|ALU_Result[3]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[3]~28_combout\ = (!\inst|Equal1~0_combout\ & (((!\inst|Mux15~0_combout\ & \inst|Add1~17_sumout\)) # (\inst|Mux28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101010000010001010101000001000101010100000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~17_sumout\,
	datad => \inst|ALT_INV_Mux28~0_combout\,
	combout => \inst|ALU_Result[3]~28_combout\);

-- Location: LABCELL_X42_Y4_N54
\inst|ALU_Result[2]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[2]~29_combout\ = ( \inst|Mux29~0_combout\ & ( !\inst|Equal1~0_combout\ ) ) # ( !\inst|Mux29~0_combout\ & ( (!\inst|Equal1~0_combout\ & (!\inst|Mux15~0_combout\ & \inst|Add1~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux15~0_combout\,
	datac => \inst|ALT_INV_Add1~21_sumout\,
	dataf => \inst|ALT_INV_Mux29~0_combout\,
	combout => \inst|ALU_Result[2]~29_combout\);

-- Location: LABCELL_X46_Y4_N15
\inst|ALU_Result[1]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[1]~30_combout\ = ( \inst|Add1~121_sumout\ & ( (!\inst|Equal1~0_combout\ & ((!\inst|Mux15~0_combout\) # (\inst|Mux30~0_combout\))) ) ) # ( !\inst|Add1~121_sumout\ & ( (\inst|Mux30~0_combout\ & !\inst|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Mux30~0_combout\,
	datac => \inst|ALT_INV_Mux15~0_combout\,
	datad => \inst|ALT_INV_Equal1~0_combout\,
	dataf => \inst|ALT_INV_Add1~121_sumout\,
	combout => \inst|ALU_Result[1]~30_combout\);

-- Location: LABCELL_X46_Y4_N24
\inst|ALU_Result[0]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|ALU_Result[0]~31_combout\ = ( \inst|Add1~101_sumout\ & ( \inst|Mux0~0_combout\ & ( (((\inst|Add1~125_sumout\ & !\inst|Mux15~0_combout\)) # (\inst|Mux31~0_combout\)) # (\inst|Equal1~0_combout\) ) ) ) # ( !\inst|Add1~101_sumout\ & ( 
-- \inst|Mux0~0_combout\ & ( (((\inst|Add1~125_sumout\ & !\inst|Mux15~0_combout\)) # (\inst|Mux31~0_combout\)) # (\inst|Equal1~0_combout\) ) ) ) # ( \inst|Add1~101_sumout\ & ( !\inst|Mux0~0_combout\ & ( (!\inst|Equal1~0_combout\ & (((\inst|Add1~125_sumout\ & 
-- !\inst|Mux15~0_combout\)) # (\inst|Mux31~0_combout\))) # (\inst|Equal1~0_combout\ & (((!\inst|Mux15~0_combout\)))) ) ) ) # ( !\inst|Add1~101_sumout\ & ( !\inst|Mux0~0_combout\ & ( (!\inst|Equal1~0_combout\ & (((\inst|Add1~125_sumout\ & 
-- !\inst|Mux15~0_combout\)) # (\inst|Mux31~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000100010011111110010001001111111011101110111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Mux31~0_combout\,
	datac => \inst|ALT_INV_Add1~125_sumout\,
	datad => \inst|ALT_INV_Mux15~0_combout\,
	datae => \inst|ALT_INV_Add1~101_sumout\,
	dataf => \inst|ALT_INV_Mux0~0_combout\,
	combout => \inst|ALU_Result[0]~31_combout\);

-- Location: IOIBUF_X88_Y81_N53
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X78_Y81_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X58_Y81_N41
\Function_opcodes[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Function_opcodes(5),
	o => \Function_opcodes[5]~input_o\);

-- Location: IOIBUF_X26_Y81_N58
\Function_opcodes[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Function_opcodes(4),
	o => \Function_opcodes[4]~input_o\);

-- Location: IOIBUF_X86_Y81_N52
\PC_plus_4[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_plus_4(1),
	o => \PC_plus_4[1]~input_o\);

-- Location: IOIBUF_X88_Y81_N19
\PC_plus_4[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC_plus_4(0),
	o => \PC_plus_4[0]~input_o\);

-- Location: LABCELL_X12_Y70_N0
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


