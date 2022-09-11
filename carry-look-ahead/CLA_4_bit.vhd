library ieee;
use ieee.std_logic_1164.all;


entity CLA_4_bit is
	port(
		x: in std_logic_vector(3 downto 0);
		y: in std_logic_vector(3 downto 0);
		c_in: in std_logic;
		inv: in std_logic;
		g: out std_logic;
		p: out std_logic;
		s: out std_logic_vector(3 downto 0)
	);
end CLA_4_bit;


architecture rtl of CLA_4_bit is
	signal x_signal: std_logic_vector(3 downto 0);
	signal y_signal: std_logic_vector(3 downto 0);
	signal inv_signal: std_logic_vector(3 downto 0);
	
	signal c0: std_logic;signal c1: std_logic;signal c2: std_logic;signal c3: std_logic;
	signal s0: std_logic;signal s1: std_logic;signal s2: std_logic;signal s3: std_logic;
	signal g0: std_logic;signal g1: std_logic;signal g2: std_logic;signal g3: std_logic;
	signal p0: std_logic;signal p1: std_logic;signal p2: std_logic;signal p3: std_logic;
	
begin
	x_signal <= x;
	inv_signal(0) <= inv; inv_signal(1) <= inv; inv_signal(2) <= inv; inv_signal(3) <= inv;
	y_signal <= y xor inv_signal;
	
	c0 <= c_in;
	c1 <= g0 or (c0 and p0);
	c2 <= g1 or (c1 and p1);
	c3 <= g2 or (c2 and p2);
	
	full_adder_ins_1 : entity work.full_adder port map(a=> x_signal(0), b=> y_signal(0), c_in=>c0, s=>s0, gen=>g0, prop=>p0);
	full_adder_ins_2 : entity work.full_adder port map(a=> x_signal(1), b=> y_signal(1), c_in=>c1, s=>s1, gen=>g1, prop=>p1);
	full_adder_ins_3 : entity work.full_adder port map(a=> x_signal(2), b=> y_signal(2), c_in=>c2, s=>s2, gen=>g2, prop=>p2);
	full_adder_ins_4 : entity work.full_adder port map(a=> x_signal(3), b=> y_signal(3), c_in=>c3, s=>s3, gen=>g3, prop=>p3);
	
	g <= g3 or (g2 and p3) or (g1 and p2 and p3) or (g0 and p1 and p2 and p3);
	p <= p0 and p1 and p2 and p3;
	s(0) <= s0; s(1) <= s1; s(2) <= s2; s(3) <= s3;
end rtl;