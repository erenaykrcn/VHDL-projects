library ieee;
use ieee.std_logic_1164.all;

entity encoder is
	port(
		data: in std_logic_vector(31 downto 0);
		clk: in std_logic;
		clr: in std_logic := '0';
		encoded_data: out std_logic_vector(31 downto 0)
	);
end encoder;


architecture rtl of encoder is
	signal xor_out, parity_out, clk_extended,
		BMC_0, BMC_1, BMC_0_register_out: std_logic_vector(31 downto 0);
begin
	-- Implementation of 32 Bit inverted T-FF
	xor_parity: entity work.xor_32_bit port map(
		input1 => not data, input2 => parity_out, output => xor_out
	);
	register_parity: entity work.register_32_bit port map(
		d=>xor_out, q => parity_out, clk => clk, clr => clr
	);
	
	-- Generate the BMC_1 Signal
	extend_signal: process is
	begin
		for i in (0 to 31) loop
			clk_extended(i) <=  clk;
		end loop;
	end process extend_signal;
	BMC_1_ins: entity work.xor_32_bit port map(
		input1 => parity_out, input2 => clk_extended, output => BMC_1
	);
	
	-- Implement BMC_0 Signal
	register_BMC_0: entity work.register_32_bit port map(
		d=> BMC_0, q=> BMC_0_register_out, clr => clr, clk => clk
	);
	mux_32_bit_ins1: entity work.mux_32_bit port map(
		control => data, input1 => not BMC_0_register_out, input2 => BMC_0_register_out, output => BMC_0
	);
	
	-- Implement the final BMC encoded signal
	mux_32_bit_ins2: entity work.mux_32_bit port map(
		control => data, input1 => BMC_0, input2 => BMC_1, output => encoded_data
	);
end rtl;