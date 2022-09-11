library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity CLA_16_bit_tb is
end CLA_16_bit_tb;


architecture behave of CLA_16_bit_tb is
	-- helper function to print out the bit vector
	function vec2str(vec: std_logic_vector) return string is
		variable result: string(vec'left+1 downto 1);
	begin
	  for i in vec'range loop
		 if (vec(i) = '1') then
			result(i+1) := '1';
		 elsif (vec(i) = '0') then
			result(i+1) := '0';
		 else
			result(i+1) := 'X';
		 end if;
	  end loop;
	return result;
	end function;
	
	-- helper signals
	signal x,y,s: std_logic_vector(15 downto 0);
	signal c_in,inv,g,p: std_logic;
	
	-- lookup table for the test values
	type test_vector is record
        x,y,s : std_logic_vector(15 downto 0);
		  c_in,inv,g,p: std_logic;
   end record; 
	type test_vector_array is array(natural range<>) of test_vector;
	constant test_vectors : test_vector_array := (
	--  |  x   |    y   |   s    |c_in|inv| g | p | --
		(x"8FE0", x"2DEF", x"BDCF",'0', '0','0','0'),
		(x"FFFF", x"0001", x"0000",'0', '0','1','0')
	);
begin
	CLA_16_bit_ins : entity work.CLA_16_bit port map(
		x => x, y => y, c_in => c_in, inv => inv, s => s, g => g, p => p
	);

	tb1 : process
	begin
		for i in test_vectors'range loop
		x<= test_vectors(i).x;
		y<= test_vectors(i).y;
		c_in<= test_vectors(i).c_in;
		inv<= test_vectors(i).inv;
		wait for 20ns;
		
		-- test if the outcome is correct
		assert((s=test_vectors(i).s) and (p=test_vectors(i).p) and (g=test_vectors(i).g))
		report "test_vector failed for input x="&vec2str(x)&
				 ", y="&vec2str(y)&"and c_in="&std_logic'image(c_in) severity error;
		-- end the test.
		
		end loop;
		wait;
   end process tb1;
	
end behave;