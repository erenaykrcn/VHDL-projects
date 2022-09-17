library ieee;
use ieee.std_logic_1164.all;

entity register_32_bit is
	port(
    d   : in std_logic_vector(31 DOWNTO 0);
    clr : in std_logic; -- async. clear.
    clk : in std_logic; -- clock.
    q   : out std_logic_vector(31 DOWNTO 0) -- output
	);
end register_32_bit;

architecture rtl of register_32_bit is
begin
	register_16_bit_ins1: entity work.register_16_bit port map(d=>d(15 downto 0),clr=>clr,clk=>clk,q=>q(15 downto 0));
	register_16_bit_ins2: entity work.register_16_bit port map(d=>d(31 downto 16),clr=>clr,clk=>clk,q=>q(31 downto 16));
end rtl;
