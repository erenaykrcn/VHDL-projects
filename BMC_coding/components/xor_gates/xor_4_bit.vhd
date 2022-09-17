library ieee;
use ieee.std_logic_1164.all;


entity xor_4_bit is
	port(
		input1: in std_logic_vector(3 downto 0);
		input2: in std_logic_vector(3 downto 0);
		output: out std_logic_vector(3 downto 0)
	);
end xor_4_bit;


architecture rtl of xor_4_bit is
begin
	output(0) <= input1(0) xor input2(0);
	output(1) <= input1(1) xor input2(1);
	output(2) <= input1(2) xor input2(2);
	output(3) <= input1(3) xor input2(3);
end rtl;