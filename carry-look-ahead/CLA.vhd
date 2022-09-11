library ieee;
use ieee.std_logic_1164.all;


-- This project implements a 64 bit Carry-Look-Ahead Adder.
-- It was made up cascading full-adders, 4-bit and 16-bit CLAs.

entity CLA is
	port(
		x: in std_logic_vector(63 downto 0);
		y: in std_logic_vector(63 downto 0);
		inv: in std_logic;
		s: out std_logic_vector(63 downto 0)
	);
end CLA;


architecture rtl of CLA is
	signal x0, x1, x2, x3, y0, y1, y2, y3 : std_logic_vector(15 downto 0);
	signal c0,c1,c2,c3: std_logic;
	signal s0,s1,s2,s3: std_logic_vector(15 downto 0);
	signal g0,g1,g2,g3: std_logic;
	signal p0,p1,p2,p3: std_logic;
begin
	x0 <= x(15 downto 0); x1 <= x(31 downto 16); x2 <= x(47 downto 32); x3 <= x(63 downto 48);
	y0 <= y(15 downto 0); y1 <= y(31 downto 16); y2 <= y(47 downto 32); y3 <= y(63 downto 48);
	
	c0 <= inv;
	c1 <= g0 or (c0 and p0);
	c2 <= g1 or (c1 and p1);
	c3 <= g2 or (c2 and p2);
	
	CLA_16_bit_ins_1 : entity work.CLA_16_bit port map(x=> x0, y=> y0, c_in=>c0, inv => inv, s=>s0, g=>g0, p=>p0);
	CLA_16_bit_ins_2 : entity work.CLA_16_bit port map(x=> x1, y=> y1, c_in=>c1, inv => inv, s=>s1, g=>g1, p=>p1);
	CLA_16_bit_ins_3 : entity work.CLA_16_bit port map(x=> x2, y=> y2, c_in=>c2, inv => inv, s=>s2, g=>g2, p=>p2);
	CLA_16_bit_ins_4 : entity work.CLA_16_bit port map(x=> x3, y=> y3, c_in=>c3, inv => inv, s=>s3, g=>g3, p=>p3);
end rtl;