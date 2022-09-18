library ieee;
use ieee.std_logic_1164.all;


entity mux_4_bit is
	port(
		control: in std_logic_vector(3 downto 0);
		input1: in std_logic_vector(3 downto 0);
		input2: in std_logic_vector(3 downto 0);
		output: out std_logic_vector(3 downto 0)
	);
end mux_4_bit;


architecture rtl of mux_4_bit is
begin
	main: process(control) is
	begin
		if control(0) = '0' then
			output(0) <= input1(0);
		elsif control(0) = '1' then
			output(0) <= input2(0);
		end if;
		
		
		if control(1) = '0' then
			output(1) <= input1(1);
		elsif control(1) = '1' then
			output(1) <= input2(1);
		end if;
		
		
		if control(2) = '0' then
			output(2) <= input1(0);
		elsif control(2) = '1' then
			output(2) <= input2(2);
		end if;
		
		
		if control(3) = '0' then
			output(3) <= input1(0);
		elsif control(3) = '1' then
			output(3) <= input2(3);
		end if;
	
	end process main;
end rtl;