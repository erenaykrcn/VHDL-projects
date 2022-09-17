library ieee;
use ieee.std_logic_1164.all;

entity register_4_bit is
	port(
    d   : in std_logic_vector(3 DOWNTO 0);
    clr : in std_logic; -- async. clear.
    clk : in std_logic; -- clock.
    q   : out std_logic_vector(3 DOWNTO 0) -- output
	);
end register_4_bit;

architecture rtl of register_4_bit is
begin
	register_1_bit_ins1: entity work.register_1_bit port map(d=>d(0),clr=>clr,clk=>clk,q=>q(0));
	register_1_bit_ins2: entity work.register_1_bit port map(d=>d(1),clr=>clr,clk=>clk,q=>q(1));
	register_1_bit_ins3: entity work.register_1_bit port map(d=>d(2),clr=>clr,clk=>clk,q=>q(2));
	register_1_bit_ins4: entity work.register_1_bit port map(d=>d(3),clr=>clr,clk=>clk,q=>q(3));
end rtl;
