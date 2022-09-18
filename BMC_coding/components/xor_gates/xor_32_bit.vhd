library ieee;
use ieee.std_logic_1164.all;


entity xor_32_bit is
	port(
		input1: in std_logic_vector(31 downto 0);
		input2: in std_logic_vector(31 downto 0);
		output: out std_logic_vector(31 downto 0)
	);
end xor_32_bit;


architecture rtl of xor_32_bit is
begin
	xor_16_bit_ins1: entity work.xor_16_bit port map(
		input1 => input1(15 downto 0), input2 => input2(15 downto 0), output => output(15 downto 0)
	); 
	xor_16_bit_ins2: entity work.xor_16_bit port map(
		input1 => input1(31 downto 16), input2 => input2(31 downto 16), output => output(31 downto 16)
	);
end rtl;