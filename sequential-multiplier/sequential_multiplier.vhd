library ieee;
use ieee.std_logic_1164.all;


-- This projects implements a sequential circuit 
-- to multiply two 4-bit numbers.
-- Its execution time is 20 clk periods in the worst case.
-- Clk period to be chosen depending on the prop. delay
-- of the gates and the longest signal path within the
-- circuit. Here, clk period is set to 10ns as an example.
-- Therefore the execution time is 200ns for the worst case.


entity sequential_multiplier is
	port(
		multiplicator: in std_logic_vector(3 downto 0);
		multiplicand: in std_logic_vector(3 downto 0);
		product: out std_logic_vector(7 downto 0);
		overflow: out std_logic
	);
end sequential_multiplier;


architecture rtl of sequential_multiplier is
	signal init: std_logic := '0';
	signal clk_controller: std_logic := '1';
	signal multiplicand_signal, multiplicator_signal: std_logic_vector(3 downto 0);
	signal pr_3_to_0_in: std_logic_vector(3 downto 0);
	signal pr_7_to_4_in: std_logic_vector(3 downto 0);
	signal pr_3_to_0_out: std_logic_vector(3 downto 0) := "0000";
	signal pr_7_to_4_out: std_logic_vector(3 downto 0);
	signal shifted_pr_3_to_0, shifted_pr_7_to_4: std_logic_vector(3 downto 0);
	signal pr_8_in: std_logic; -- stores the overflow bit of the adder
	signal pr_8_out: std_logic; 
	signal clk_mcand, clk_prod, mux, shift, pr_0: std_logic; -- controller signals
	signal s: std_logic_vector(3 downto 0);
	signal overflow_adder: std_logic;
	signal extended_shift, extended_mux: std_logic_vector(3 downto 0);
	signal count_initiation_time: integer := 0;
	
	constant half_period: time := 5ns; -- Min operating clk period. Worst case runtime of the
												  -- is 20 clk_periods
begin
	clk_controller <= not clk_controller after half_period;
	
	start_calculation: process(clk_controller) is
	begin
		if rising_edge(clk_controller) then
			if (multiplicand_signal /= multiplicand or multiplicator_signal /= multiplicator) and count_initiation_time < 1 then
				init <= '1';
			elsif multiplicand_signal = multiplicand then
				init <= '0';
				count_initiation_time <= 0;
			else
				init <= '0';
			end if;
		elsif falling_edge(clk_controller) then
			if init = '1' then
				init <= '0';
				count_initiation_time <= 1;
			end if;
		end if;
	end process start_calculation;

	pr_0 <= pr_3_to_0_out(0);
	
	controller: entity work.controller port map(
		pr_0 => pr_0, clk_mcand => clk_mcand, clk_prod => clk_prod, 
		mux => mux, shift => shift, init => init, clk => clk_controller
	);
	
	multiplicator_register: entity work.register_4_bit port map(
		d=>multiplicator,clk=>clk_controller,clr=>'0',q=>multiplicator_signal
	);
	multiplicand_register: entity work.register_4_bit port map(
		d=>multiplicand,clk=>clk_mcand,clr=>init,q=>multiplicand_signal
	);
	product_register_3_to_0 : entity work.register_4_bit port map(
		d=>pr_3_to_0_in, clk=>clk_prod, clr=>init, q=>pr_3_to_0_out
	);
	product_register_7_to_4 : entity work.register_4_bit port map(
		d=>pr_7_to_4_in, clk=>clk_prod, clr=>init, q=>pr_7_to_4_out
	);
	product_register_8 : entity work.register_1_bit port map(
		d=>pr_8_in, clk=>clk_prod, clr=>init, q=>pr_8_out
	);
	adder: entity work.CLA_4_bit port map(
		x=>multiplicand_signal, y=>pr_7_to_4_out, c_in=>'0', inv=>'0', s=>s, g=>overflow_adder
	);
	
	shifted_pr_3_to_0(2 downto 0) <= pr_3_to_0_out(3 downto 1); shifted_pr_3_to_0(3) <= pr_7_to_4_out(0);
	shifted_pr_7_to_4(2 downto 0) <= pr_7_to_4_out(3 downto 1); shifted_pr_7_to_4(3) <= pr_8_out;
	
	extended_shift(0) <= shift; extended_shift(1) <= shift; extended_shift(2) <= shift; extended_shift(3) <= shift;
	extended_mux(0) <= mux; extended_mux(1) <= mux; extended_mux(2) <= mux; extended_mux(3) <= mux;
	pr_3_to_0_in <= ((not extended_shift) and (((not extended_mux) and multiplicator) or (extended_mux and pr_3_to_0_out))) or (extended_shift and shifted_pr_3_to_0);
	pr_7_to_4_in <= ((not extended_shift) and (((not extended_mux) and x"0") or (extended_mux and s))) or (extended_shift and shifted_pr_7_to_4);
	pr_8_in <= overflow_adder and (not shift);
	
	product(3 downto 0) <= pr_3_to_0_out;
	product(7 downto 4) <= pr_7_to_4_out;
	overflow <= pr_8_out;
end rtl;
