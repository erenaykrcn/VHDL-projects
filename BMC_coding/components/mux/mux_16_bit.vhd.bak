library ieee;
use ieee.std_logic_1164.all;


entity xor_16_bit is
	port(
		input1: in std_logic_vector(15 downto 0);
		input2: in std_logic_vector(15 downto 0);
		output: out std_logic_vector(15 downto 0)
	);
end xor_16_bit;


architecture rtl of xor_16_bit is
begin
	xor_4_bit_ins1: entity work.xor_4_bit port map(
		input1 => input1(3 downto 0), input2 => input2(3 downto 0), output => output(3 downto 0)
	); 
	xor_4_bit_ins2: entity work.xor_4_bit port map(
		input1 => input1(7 downto 4), input2 => input2(7 downto 4), output => output(7 downto 4)
	); 
	xor_4_bit_ins3: entity work.xor_4_bit port map(
		input1 => input1(11 downto 8), input2 => input2(11 downto 8), output => output(11 downto 8)
	); 
	xor_4_bit_ins4: entity work.xor_4_bit port map(
		input1 => input1(15 downto 12), input2 => input2(15 downto 12), output => output(15 downto 12)
	);
end rtl;