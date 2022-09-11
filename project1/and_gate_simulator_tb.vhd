library ieee;
use ieee.std_logic_1164.all;


entity and_gate_simulator_tb is
end and_gate_simulator_tb;


architecture tb of and_gate_simulator_tb is
	signal a, b : std_logic := '0';
	signal x : std_logic;
begin
	gate : entity work.and_gate_simulator port map(input1 => a, input2 => b, output => x);
	
	tb1 : process
         constant period: time := 20 ns;
			begin
            a <= '0';
            b <= '0';
            wait for period;
            a <= '1';
            b <= '1';
            wait; -- indefinitely suspend process
        end process;
end tb;