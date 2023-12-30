library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity ALU is
port ( Read_data_1 : in std_logic_vector (31 downto 0);
		 Read_data_2 : in std_logic_vector (31 downto 0);
		 Sign_extend : in std_logic_vector (31 downto 0);
		 Function_opcode : in std_logic_vector (5 downto 0);
		 ALUOp : in std_logic_vector (1 downto 0);
		 ALUSrc : in std_logic;
		 Zero : out std_logic;
		 ALU_Result: out std_logic_vector (31 downto 0);
		 Add_Result : out std_logic_vector(7 downto 0);
		 PC_plus_4 : in std_logic_vector (7 downto 0);
		 clock, reset : in std_logic );
end ALU;
architecture behavior of ALU is
signal Ainput, Binput : std_logic_vector (31 downto 0);
signal ALU_output_mux : std_logic_vector (31 downto 0);
signal Branch_Add : std_logic_vector (7 downto 0);
signal ALU_ctl : std_logic_vector (2 downto 0);
begin
Ainput <= Read_data_1;
			-- AKY input max // δεν καταλαβα αυτο το σχολιο
Binput <= Read_data_2 when (ALUSrc = '0') else Sign_extend (31 downto 0);

-- generate ALU control bits
ALU_ctl(0) <= (Function_opcode(0) or Function_opcode(3)) and ALUOp(1);
ALU_ctl(1) <= (not Function_opcode(2)) or (not ALUOp(1));
ALU_ctl(2) <= (Function_opcode(1) and ALUOp(1)) or ALUOp(0);

-- generate zero flag
Zero <= '1' when ((ALU_output_mux) = X"00000000") else '0';
--select ALU output for SLT
ALU_result <= X"0000000" & B"000" & ALU_output_mux(31) when ALU_ctl = "111" else ALU_output_mux(31 downto 0);
--adder to compute branch adress
Branch_Add <= PC_plus_4(7 downto 2) + Sign_extend(7 downto 0);
Add_result <= Branch_Add (7 downto 0);
process (ALU_ctl, Ainput, Binput)
begin
case ALU_ctl is
when "000" => -- x and y
	ALU_output_mux <= Ainput and Binput;
when "001" => -- x or y
	ALU_output_mux <= Ainput or Binput;
when "010" =>  --add desired alu action
		ALU_output_mux <= Ainput + Binput;
when "011" => 
	ALU_output_mux <= Ainput xor Binput;
when "100" => -- undef
		ALU_output_mux <= X"00000000";
when "101" => -- undef
		ALU_output_mux <= X"00000000";
when "110" => --sub desired alu action
		ALU_output_mux <= Ainput - Binput;
when "111" => -- set on less than
		ALU_output_mux <= Ainput - Binput;
end case;
end process;
end behavior;