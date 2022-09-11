library ieee;
use ieee.std_logic_1164.all;


entity s_adder is
	port(
		a: in std_logic;
		b: in std_logic;
		c_in: in std_logic;
		s: out std_logic
	);
end s_adder;


architecture rtl of s_adder is
	signal prop_signal: std_logic;
begin
	prop_signal <= a xor b;
	s <= prop_signal xor c_in;
end rtl;