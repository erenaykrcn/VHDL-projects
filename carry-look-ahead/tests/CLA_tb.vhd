library ieee;
use ieee.std_logic_1164.all;


entity CLA_tb is
end CLA_tb;


architecture behave of CLA_tb is
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
	signal x,y,s: std_logic_vector(63 downto 0);
	signal inv: std_logic;
	
	-- lookup table for the test values
	type test_vector is record
        x,y,s : std_logic_vector(63 downto 0);
		  inv: std_logic;
   end record; 
	type test_vector_array is array(natural range<>) of test_vector;
	constant test_vectors : test_vector_array := (
	--  |  x   |    y   |   s    |inv| overflow  --
		(x"0000000000000256", x"0000C00000000002", x"0000C00000000258",'0'),
		(x"0021000000008FE0", x"0000C00000000FE0", x"0021C00000009FC0",'0'),
		(x"0021000000008FE0", x"0000C00000000FE0", x"0020400000008000",'1'),
		(x"FFFFFFFFFFFFFFFE", x"0000000000000001", x"FFFFFFFFFFFFFFFF",'0')
	);
begin
	CLA_ins : entity work.CLA port map(
		x => x, y => y, inv => inv, s => s
	);

	tb1 : process
	begin
		for i in test_vectors'range loop
		x<= test_vectors(i).x;
		y<= test_vectors(i).y;
		inv<= test_vectors(i).inv;
		wait for 20ns;
		
		-- test if the outcome is correct
		assert(s=test_vectors(i).s)
		report "Test"&integer'image(i+1)&": test_vector failed for input x="&vec2str(x)&
				 ", y="&vec2str(y) severity error;
		-- end the test.
		
		end loop;
		wait;
   end process tb1;
end behave;