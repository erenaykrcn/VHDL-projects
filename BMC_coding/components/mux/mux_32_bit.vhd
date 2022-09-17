library ieee;
use ieee.std_logic_1164.all;


entity mux_32_bit is
	port(
		control: in std_logic_vector(31 downto 0);
		input1: in std_logic_vector(31 downto 0);
		input2: in std_logic_vector(31 downto 0);
		output: out std_logic_vector(31 downto 0)
	);
end mux_32_bit;


architecture rtl of mux_32_bit is
begin
	mux_16_bit_ins1: entity work.mux_16_bit port map(
		control => control(15 downto 0), input1 => input1(15 downto 0), input2 => input2(15 downto 0), output => output(15 downto 0)
	); 
	mux_16_bit_ins2: entity work.mux_16_bit port map(
		control => control(31 downto 16), input1 => input1(31 downto 16), input2 => input2(31 downto 16), output => output(31 downto 16)
	); 
end rtl;