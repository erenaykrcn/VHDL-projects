library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ROM is
	port(
		address: in std_logic_vector(5 downto 0);
		data: out std_logic_vector(8 downto 0)
	);
end ROM;


architecture rtl of ROM is
	-- lookup table for the Finite State Machine
	type round_and_state is record
		  output_signals: std_logic_vector(3 downto 0);
        next_round : std_logic_vector(1 downto 0);
		  next_state: std_logic_vector(2 downto 0);
   end record; 
	
	type FSM_lookup_table is array(natural range<>) of round_and_state;
	constant lookup_table : FSM_lookup_table := (
	--  |  output signals   |  next_round  |  next_state      pr_0 | current_round | current_state
			("0000",						"00",				"001"),  --   0			 00				000			
			("0000",						"00",				"010"),  --	  0			 00				001
			("1100",						"00",				"101"),  --   0			 00				010			
			("XXXX",						"XX",				"XXX"),  --	  0			 00				011
			("XXXX",						"XX",				"XXX"),  --   0			 00				100		
			("00X1",						"01",				"110"),  --	  0			 00				101
			("01X1",						"00",				"111"),  --   0			 00				110	+	
			("00XX",						"00",				"111"),  --	  0			 00				111
			("0000",						"00",				"000"),  --   0			 01				000			
			("XXXX",						"XX",				"XXX"),  --	  0			 01				001
			("XXXX",						"XX",				"XXX"),  --   0			 01				010			
			("XXXX",						"XX",				"XXX"),  --	  0			 01				011
			("XXXX",						"XX",				"XXX"),  --   0			 01				100		
			("00X1",						"10",				"110"),  --	  0			 01				101
			("01X1",						"01",				"101"),  --   0			 01				110	+	
			("XXXX",						"XX",				"XXX"),  --	  0			 01				111
			("0000",						"00",				"000"),  --   0			 10				000			
			("XXXX",						"XX",				"XXX"),  --	  0			 10				001
			("XXXX",						"XX",				"XXX"),  --   0			 10				010			
			("XXXX",						"XX",				"XXX"),  --	  0			 10				011
			("XXXX",						"XX",				"XXX"),  --   0			 10				100			
			("00X1",						"11",				"110"),  --	  0			 10				101
			("01X1",						"10",				"101"),  --   0			 10				110 	+		
			("XXXX",						"XX",				"XXX"),  --	  0			 10				111
			("0000",						"00",				"000"),  --   0			 11				000			
			("XXXX",						"XX",				"XXX"),  --	  0			 11				001
			("XXXX",						"XX",				"XXX"),  --   0			 11				010			
			("XXXX",						"XX",				"XXX"),  --	  0			 11				011
			("XXXX",						"XX",				"XXX"),  --   0			 11				100		
			("00X1",						"00",				"110"),  --	  0			 11				101
			("01X1",						"11",				"101"),  --   0			 11				110 	+		
			("XXXX",						"XX",				"XXX"),  --	  0			 11				111
			("0000",						"00",				"000"),  --   1			 00				000			
			("0000",						"00",				"010"),  --	  1			 00				001
			("1100",						"00",				"011"),  --   1			 00				010			
			("0010",						"00",				"100"),  --	  1			 00				011
			("0110",						"00",				"101"),  --   1			 00				100	
			("00X1",						"01",				"110"),  --	  1			 00				101
			("01X1",						"00",				"111"),  --   1			 00				110 	+		
			("00XX",						"00",				"111"),  --	  1			 00				111
			("0000",						"00",				"000"),  --   1			 01				000			
			("XXXX",						"XX",				"XXX"),  --	  1			 01				001
			("XXXX",						"XX",				"XXX"),  --   1			 01				010			
			("0010",						"01",				"100"),  --	  1			 01				011
			("0110",						"01",				"101"),  --   1			 01				100			
			("00X1",						"10",				"110"),  --	  1			 01				101
			("01X1",						"01",				"011"),  --   1			 01				110 	+		
			("XXXX",						"XX",				"XXX"),  --	  1			 01				111
			("0000",						"00",				"000"),  --   1			 10				000			
			("XXXX",						"XX",				"XXX"),  --	  1			 10				001
			("XXXX",						"XX",				"XXX"),  --   1			 10				010			
			("0010",						"10",				"100"),  --	  1			 10				011
			("0110",						"10",				"101"),  --   1			 10				100			
			("00X1",						"11",				"110"),  --	  1			 10				101
			("01X1",						"10",				"011"),  --   1			 10				110+			
			("XXXX",						"XX",				"XXX"),  --	  1			 10				111
			("0000",						"00",				"000"),  --   1			 11				000			
			("XXXX",						"XX",				"XXX"),  --	  1			 11				001
			("XXXX",						"XX",				"XXX"),  --   1			 11				010			
			("0010",						"11",				"100"),  --	  1			 11				011
			("0110",						"11",				"101"),  --   1			 11				100			
			("00X1",						"00",				"110"),  --	  1			 11				101
			("01X1",						"11",				"011"),  --   1			 11				110+			
			("XXXX",						"XX",				"XXX")   --	  1			 11				111
	);

begin
	read_the_memory: process(address) is
		variable index: integer;
	begin
		index := to_integer(unsigned(address));
		data(8 downto 5) <= lookup_table(index).output_signals; 
		data(4 downto 3) <= lookup_table(index).next_round; 
		data(2 downto 0) <= lookup_table(index).next_state;
	end process;
end rtl;