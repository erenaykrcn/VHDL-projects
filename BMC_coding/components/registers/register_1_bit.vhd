library ieee;
use ieee.std_logic_1164.all;

entity register_1_bit is
	port(
		d: in std_logic;
		clk: in std_logic;
		clr: in std_logic;
		q: out std_logic
	);
end register_1_bit;


architecture rtl of register_1_bit is
begin
	clk_process: process(clk, clr) is
	begin
		if clr = '1' then
			q <= '0';
		elsif rising_edge(clk) then
			q <= d;
		end if;
	end process;
end rtl;
