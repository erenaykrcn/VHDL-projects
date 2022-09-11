library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity sequential_multiplier_tb is
end sequential_multiplier_tb;


architecture behave of sequential_multiplier_tb is
	signal multiplicator, multiplicand: std_logic_vector(3 downto 0);
	signal product: std_logic_vector(7 downto 0);
	signal overflow: std_logic;
begin
	sequential_multiplier_ins : entity work.sequential_multiplier port map(
		multiplicator => multiplicator, multiplicand => multiplicand, 
		product => product, overflow => overflow
	);
	tb: process is
	begin
		multiplicator <= "0010";
		multiplicand <= "0010";
		wait for 200ns;
		
		assert(to_integer(unsigned(product)) = 4) report "Test failed for operation: " severity error;
		
		multiplicator <= "0101";
		multiplicand <= "0010";
		wait for 200ns;
		assert(to_integer(unsigned(product)) = 10) report "Test failed for operation: " severity error;
		
		multiplicator <= "0101";
		multiplicand <= "0011";
		wait for 200ns;
		assert(to_integer(unsigned(product)) = 15) report "Test failed for operation: " severity error;
		
		multiplicator <= "0111";
		multiplicand <= "0011";
		wait for 200ns;
		assert(to_integer(unsigned(product)) = 21) report "Test failed for operation: " severity error;
		
		multiplicator <= "1001";
		multiplicand <= "1010";
		wait for 200ns;
		assert(to_integer(unsigned(product)) = 90) report "Test failed for operation: " severity error;
	end process;
end behave;