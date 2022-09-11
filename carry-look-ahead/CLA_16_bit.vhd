library ieee;
use ieee.std_logic_1164.all;


entity CLA_16_bit is
	port(
		x: in std_logic_vector(15 downto 0);
		y: in std_logic_vector(15 downto 0);
		c_in: in std_logic;
		inv: in std_logic;
		g: out std_logic;
		p: out std_logic;
		s: out std_logic_vector(15 downto 0)
	);
end CLA_16_bit;


architecture rtl of CLA_16_bit is
	signal x0, x1, x2, x3, y0, y1, y2, y3 : std_logic_vector(3 downto 0);
	
	signal c0,c1,c2,c3: std_logic;
	signal s0,s1,s2,s3: std_logic_vector(3 downto 0);
	signal g0,g1,g2,g3: std_logic;
	signal p0,p1,p2,p3: std_logic;
begin
	x0 <= x(3 downto 0); x1 <= x(7 downto 4); x2 <= x(11 downto 8); x3 <= x(15 downto 12);
	y0 <= y(3 downto 0); y1 <= y(7 downto 4); y2 <= y(11 downto 8); y3 <= y(15 downto 12);
	
	c0 <= c_in;
	c1 <= g0 or (c0 and p0);
	c2 <= g1 or (c1 and p1);
	c3 <= g2 or (c2 and p2);
	
	CLA_4_bit_ins_1 : entity work.CLA_4_bit port map(x=> x0, y=> y0, c_in=>c0, inv => inv, s=>s0, g=>g0, p=>p0);
	CLA_4_bit_ins_2 : entity work.CLA_4_bit port map(x=> x1, y=> y1, c_in=>c1, inv => inv, s=>s1, g=>g1, p=>p1);
	CLA_4_bit_ins_3 : entity work.CLA_4_bit port map(x=> x2, y=> y2, c_in=>c2, inv => inv, s=>s2, g=>g2, p=>p2);
	CLA_4_bit_ins_4 : entity work.CLA_4_bit port map(x=> x3, y=> y3, c_in=>c3, inv => inv, s=>s3, g=>g3, p=>p3);
	
	g <= g3 or (g2 and p3) or (g1 and p2 and p3) or (g0 and p1 and p2 and p3);
	p <= p0 and p1 and p2 and p3;
	s(3 downto 0) <= s0; s(7 downto 4) <= s1; s(11 downto 8) <= s2; s(15 downto 12) <= s3;
end rtl;