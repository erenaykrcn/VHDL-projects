library ieee;
use ieee.std_logic_1164.all;


entity full_adder_tb is
end full_adder_tb;


architecture behave of full_adder_tb is
	signal a: std_logic := '0';
	signal b: std_logic := '0';
	signal c_in: std_logic := '0';
	signal s: std_logic;
	signal c_out: std_logic;
	signal gen: std_logic;
	signal prop: std_logic;
begin
	full_adder_ins : entity work.full_adder port map(
		a => a, b => b, c_in => c_in, s => s, c_out => c_out, gen => gen, prop => prop
	);
	
	tb1 : process
		begin
      wait for 20ns;
		a <= '1';
      b <= '0';
		c_in <= '0';
      wait for 20ns;
		a <= '1';
      b <= '1';
		c_in <= '0';
      wait for 20ns;
		a <= '1';
      b <= '1';
		c_in <= '1';
      wait for 20ns;
		a <= '0';
      b <= '0';
		c_in <= '1';
      wait; -- indefinitely suspend process
   end process tb1;
	
end behave;