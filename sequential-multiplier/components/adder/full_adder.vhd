library ieee;
use ieee.std_logic_1164.all;


entity full_adder is
	port(
		a: in std_logic;
		b: in std_logic;
		c_in: in std_logic;
		s: out std_logic;
		c_out: out std_logic;
		prop: out std_logic;
		gen: out std_logic
	);
end full_adder;


architecture rtl of full_adder is
	signal prop_signal: std_logic;
	signal gen_signal: std_logic;
begin
	prop_signal <= a xor b;
	gen_signal <= a and b;
	s <= prop_signal xor c_in;
	c_out <= gen_signal or (prop_signal and c_in);
	prop <= prop_signal;
	gen <= gen_signal;
end rtl;