library ieee;
use ieee.std_logic_1164.all;

-- Controller of the sequential multiplier.
-- It uses a lookup table stored in a ROM.
-- Find the used FSM in the project folder.

entity controller is
	port(
		pr_0: in std_logic;
		init: in std_logic;
		clk_mcand: out std_logic;
		clk_prod: out std_logic;
		mux: out std_logic;
		shift: out std_logic; -- shifts the product register to the right
								    -- on the falling edge of the clk_prod.
		clk: in std_logic
	);
end controller;


architecture rtl of controller is		
	signal state_register_input, state_register_output: std_logic_vector(4 downto 0);				
	signal ROM_input: std_logic_vector(5 downto 0);			
	signal ROM_output: std_logic_vector(8 downto 0);
begin
	state_register_ins: entity work.state_register port map(
		d=>state_register_input,clr=>init,clk=>clk,q=>state_register_output
	);

	ROM_ins: entity work.ROM port map(
		address=>ROM_input,data=>ROM_output
	);
	
	ROM_input(5) <= pr_0;
	ROM_input(4 downto 0) <= state_register_output;
	
	state_register_input <= ROM_output(4 downto 0);
	clk_mcand <= ROM_output(8);
	clk_prod <= ROM_output(7);
	mux <= ROM_output(6);
	shift <= ROM_output(5);
end rtl;
