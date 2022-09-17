library ieee;
use ieee.std_logic_1164.all;

entity register_16_bit is
	port(
    d   : in std_logic_vector(15 DOWNTO 0);
    clr : in std_logic; -- async. clear.
    clk : in std_logic; -- clock.
    q   : out std_logic_vector(15 DOWNTO 0) -- output
	);
end register_16_bit;

architecture rtl of register_16_bit is
begin
	register_4_bit_ins1: entity work.register_4_bit port map(d=>d(3 downto 0),clr=>clr,clk=>clk,q=>q(3 downto 0));
	register_4_bit_ins2: entity work.register_4_bit port map(d=>d(7 downto 4),clr=>clr,clk=>clk,q=>q(7 downto 4));
	register_4_bit_ins3: entity work.register_4_bit port map(d=>d(11 downto 8),clr=>clr,clk=>clk,q=>q(11 downto 8));
	register_4_bit_ins4: entity work.register_4_bit port map(d=>d(15 downto 12),clr=>clr,clk=>clk,q=>q(15 downto 12));
end rtl;
