library ieee;
use ieee.std_logic_1164.all;


entity BMC_coding is
	port(
		clk : in std_logic; -- Frequency of the clk, expected to be equal to the bit rate.
		input: in std_logic_vector(31 downto 0);
		output: out std_logic_vector(31 downto 0);
		mode: in std_logic  -- 0: Encoder
								  -- 1: Decoder
	);
end BMC_coding;


architecture rtl of BMC_coding is
	signal data, encoded_data: std_logic_vector(31 downto 0);
begin
	encoder: entity work.encoder port map(
		data => data, clk => clk, encoded_data => encoded_data
	);

	main: process(clk, mode) is
	begin
	if mode = '0' then
		data <= input;
		output <= encoded_data;
	
		elsif mode = '1' then
	end if;
	end process main;
	

end rtl;