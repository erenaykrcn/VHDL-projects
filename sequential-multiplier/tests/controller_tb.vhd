library ieee;
use ieee.std_logic_1164.all;


entity controller_tb is
end controller_tb;


architecture behave of controller_tb is
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
	
	-- lookup table for the test values
	type test_vector is record
		  clk_mcand, clk_prod, mux, shift: std_logic;
   end record;
	
	type test_vector_array is array(natural range<>) of test_vector;
	constant test_vectors : test_vector_array := (
		('0', '0','0','0'),
		('0', '0','0','0'),
		('1', '1','0','0'),
		('0', '0','X','1'), -- round = 1
		('0', '1','X','1'),
		('0', '0','X','1'), -- round = 2, update pr_0 to 1.
		('0', '1','X','1'),
		('0', '0','1','0'),
		('0', '1','1','0'),
		('0', '0','X','1'), -- round = 3, update pr_0 to 0.
		('0', '1','X','1'),
		('0', '0','X','1'), -- round = 4
		('0', '1','X','1'),
		('0', '0','X','X')
	);

	signal pr_0, init, clk_mcand, clk_prod, mux, shift: std_logic;
	signal clk: std_logic := '1';
	signal count:integer := 0;
	
begin
	controller_ins : entity work.controller port map(
		pr_0 => pr_0, init => init, clk_mcand => clk_mcand, 
		clk_prod => clk_prod, mux => mux, shift => shift, clk => clk
	);
	
	clk <= not clk after 5ns;
	init <= '0';
	
	tb: process(clk, count) is
	begin
		if rising_edge(clk) then
			assert(clk_mcand = test_vectors(count).clk_mcand 
					 and clk_prod = test_vectors(count).clk_prod
					 and mux = test_vectors(count).mux
					 and shift = test_vectors(count).shift
			) report "test_vector failed for the expected output: " & std_logic'image(test_vectors(count).clk_mcand) &
			std_logic'image(test_vectors(count).clk_prod) & std_logic'image(test_vectors(count).mux) & std_logic'image(test_vectors(count).shift) &
			" and for count: " & integer'image(count)  & "Received output: pr_0= " & std_logic'image(pr_0) &
			" " & std_logic'image(clk_mcand) & std_logic'image(clk_prod) & std_logic'image(mux) & std_logic'image(shift)
			severity error;
			
			if count < 13 then
				count <= count + 1;
			end if;
		end if;
	
		-- update pr_0 for test purposes.
		if (count = 5 or count = 6 or count = 7 or count = 8)  then
			pr_0 <= '1';
		else
			pr_0 <= '0';
		end if;
	end process;
end behave;