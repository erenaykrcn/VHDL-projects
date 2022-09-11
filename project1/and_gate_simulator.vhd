library ieee;
use ieee.std_logic_1164.all;


entity and_gate_simulator is
	port(
		input1: in std_logic;
		input2: in std_logic;
		output: out std_logic
	);
end and_gate_simulator;


architecture rtl of and_gate_simulator is
begin
	output <= input1 and input2;
end rtl;