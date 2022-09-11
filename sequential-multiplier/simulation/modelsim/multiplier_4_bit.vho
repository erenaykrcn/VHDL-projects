-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "09/11/2022 16:17:06"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sequential_multiplier IS
    PORT (
	multiplicator : IN std_logic_vector(3 DOWNTO 0);
	multiplicand : IN std_logic_vector(3 DOWNTO 0);
	product : OUT std_logic_vector(7 DOWNTO 0);
	overflow : OUT std_logic
	);
END sequential_multiplier;

-- Design Ports Information
-- product[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[6]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[7]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicator[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicator[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicator[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicator[3]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[2]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- multiplicand[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sequential_multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_multiplicator : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_multiplicand : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_product : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \count_initiation_time[0]~1_combout\ : std_logic;
SIGNAL \controller|ROM_ins|Mux5~0_combout\ : std_logic;
SIGNAL \multiplicand[2]~input_o\ : std_logic;
SIGNAL \multiplicand[3]~input_o\ : std_logic;
SIGNAL \multiplicand[0]~input_o\ : std_logic;
SIGNAL \controller|ROM_ins|Mux0~combout\ : std_logic;
SIGNAL \multiplicand[1]~input_o\ : std_logic;
SIGNAL \multiplicand_register|register_1_bit_ins2|q~q\ : std_logic;
SIGNAL \multiplicand_register|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \multiplicand_register|register_1_bit_ins4|q~q\ : std_logic;
SIGNAL \multiplicand_register|register_1_bit_ins3|q~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \init~q\ : std_logic;
SIGNAL \controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ : std_logic;
SIGNAL \controller|ROM_ins|Mux4~0_combout\ : std_logic;
SIGNAL \controller|state_register_ins|register_1_bit|q~q\ : std_logic;
SIGNAL \controller|ROM_ins|Mux8~0_combout\ : std_logic;
SIGNAL \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \controller|ROM_ins|Mux7~1_combout\ : std_logic;
SIGNAL \controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ : std_logic;
SIGNAL \controller|ROM_ins|Mux6~0_combout\ : std_logic;
SIGNAL \controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ : std_logic;
SIGNAL \controller|ROM_ins|Mux7~0_combout\ : std_logic;
SIGNAL \controller|ROM_ins|Mux1~combout\ : std_logic;
SIGNAL \multiplicator[1]~input_o\ : std_logic;
SIGNAL \multiplicator[2]~input_o\ : std_logic;
SIGNAL \multiplicator[3]~input_o\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \adder|full_adder_ins_2|s~combout\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE_q\ : std_logic;
SIGNAL \adder|full_adder_ins_3|s~combout\ : std_logic;
SIGNAL \adder|c3~combout\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins4|q~q\ : std_logic;
SIGNAL \adder|full_adder_ins_4|prop~combout\ : std_logic;
SIGNAL \pr_8_in~0_combout\ : std_logic;
SIGNAL \product_register_8|q~q\ : std_logic;
SIGNAL \pr_7_to_4_in[3]~4_combout\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins4|q~DUPLICATE_q\ : std_logic;
SIGNAL \pr_7_to_4_in[2]~3_combout\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins3|q~q\ : std_logic;
SIGNAL \pr_7_to_4_in[1]~2_combout\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins2|q~q\ : std_logic;
SIGNAL \pr_7_to_4_in[0]~1_combout\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\ : std_logic;
SIGNAL \pr_3_to_0_in[3]~3_combout\ : std_logic;
SIGNAL \pr_7_to_4_in[3]~0_combout\ : std_logic;
SIGNAL \product_register_3_to_0|register_1_bit_ins4|q~q\ : std_logic;
SIGNAL \pr_3_to_0_in[2]~2_combout\ : std_logic;
SIGNAL \product_register_3_to_0|register_1_bit_ins3|q~q\ : std_logic;
SIGNAL \pr_3_to_0_in[1]~1_combout\ : std_logic;
SIGNAL \product_register_3_to_0|register_1_bit_ins2|q~q\ : std_logic;
SIGNAL \multiplicator[0]~input_o\ : std_logic;
SIGNAL \pr_3_to_0_in[0]~0_combout\ : std_logic;
SIGNAL \product_register_3_to_0|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins4|ALT_INV_q~DUPLICATE_q\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins2|ALT_INV_q~DUPLICATE_q\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins1|ALT_INV_q~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_multiplicand[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicand[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicator[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicator[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicator[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_multiplicator[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_count_initiation_time[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \controller|ROM_ins|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \controller|state_register_ins|register_1_bit|ALT_INV_q~q\ : std_logic;
SIGNAL \controller|state_register_ins|register_4_bit|register_1_bit_ins4|ALT_INV_q~q\ : std_logic;
SIGNAL \adder|full_adder_ins_4|ALT_INV_prop~combout\ : std_logic;
SIGNAL \multiplicand_register|register_1_bit_ins4|ALT_INV_q~q\ : std_logic;
SIGNAL \adder|ALT_INV_c3~combout\ : std_logic;
SIGNAL \adder|full_adder_ins_3|ALT_INV_s~combout\ : std_logic;
SIGNAL \multiplicand_register|register_1_bit_ins3|ALT_INV_q~q\ : std_logic;
SIGNAL \adder|full_adder_ins_2|ALT_INV_s~combout\ : std_logic;
SIGNAL \multiplicand_register|register_1_bit_ins2|ALT_INV_q~q\ : std_logic;
SIGNAL \multiplicand_register|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \ALT_INV_init~q\ : std_logic;
SIGNAL \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\ : std_logic;
SIGNAL \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\ : std_logic;
SIGNAL \product_register_8|ALT_INV_q~q\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins4|ALT_INV_q~q\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins3|ALT_INV_q~q\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins2|ALT_INV_q~q\ : std_logic;
SIGNAL \product_register_7_to_4|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \product_register_3_to_0|register_1_bit_ins4|ALT_INV_q~q\ : std_logic;
SIGNAL \product_register_3_to_0|register_1_bit_ins3|ALT_INV_q~q\ : std_logic;
SIGNAL \product_register_3_to_0|register_1_bit_ins2|ALT_INV_q~q\ : std_logic;
SIGNAL \product_register_3_to_0|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;

BEGIN

ww_multiplicator <= multiplicator;
ww_multiplicand <= multiplicand;
product <= ww_product;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\product_register_7_to_4|register_1_bit_ins4|ALT_INV_q~DUPLICATE_q\ <= NOT \product_register_7_to_4|register_1_bit_ins4|q~DUPLICATE_q\;
\product_register_7_to_4|register_1_bit_ins2|ALT_INV_q~DUPLICATE_q\ <= NOT \product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE_q\;
\product_register_7_to_4|register_1_bit_ins1|ALT_INV_q~DUPLICATE_q\ <= NOT \product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\;
\ALT_INV_multiplicand[1]~input_o\ <= NOT \multiplicand[1]~input_o\;
\ALT_INV_multiplicand[0]~input_o\ <= NOT \multiplicand[0]~input_o\;
\ALT_INV_multiplicand[3]~input_o\ <= NOT \multiplicand[3]~input_o\;
\ALT_INV_multiplicand[2]~input_o\ <= NOT \multiplicand[2]~input_o\;
\ALT_INV_multiplicator[3]~input_o\ <= NOT \multiplicator[3]~input_o\;
\ALT_INV_multiplicator[2]~input_o\ <= NOT \multiplicator[2]~input_o\;
\ALT_INV_multiplicator[1]~input_o\ <= NOT \multiplicator[1]~input_o\;
\ALT_INV_multiplicator[0]~input_o\ <= NOT \multiplicator[0]~input_o\;
\ALT_INV_count_initiation_time[0]~1_combout\ <= NOT \count_initiation_time[0]~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\controller|ROM_ins|ALT_INV_Mux7~0_combout\ <= NOT \controller|ROM_ins|Mux7~0_combout\;
\controller|state_register_ins|register_1_bit|ALT_INV_q~q\ <= NOT \controller|state_register_ins|register_1_bit|q~q\;
\controller|state_register_ins|register_4_bit|register_1_bit_ins4|ALT_INV_q~q\ <= NOT \controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\;
\adder|full_adder_ins_4|ALT_INV_prop~combout\ <= NOT \adder|full_adder_ins_4|prop~combout\;
\multiplicand_register|register_1_bit_ins4|ALT_INV_q~q\ <= NOT \multiplicand_register|register_1_bit_ins4|q~q\;
\adder|ALT_INV_c3~combout\ <= NOT \adder|c3~combout\;
\adder|full_adder_ins_3|ALT_INV_s~combout\ <= NOT \adder|full_adder_ins_3|s~combout\;
\multiplicand_register|register_1_bit_ins3|ALT_INV_q~q\ <= NOT \multiplicand_register|register_1_bit_ins3|q~q\;
\adder|full_adder_ins_2|ALT_INV_s~combout\ <= NOT \adder|full_adder_ins_2|s~combout\;
\multiplicand_register|register_1_bit_ins2|ALT_INV_q~q\ <= NOT \multiplicand_register|register_1_bit_ins2|q~q\;
\multiplicand_register|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \multiplicand_register|register_1_bit_ins1|q~q\;
\ALT_INV_init~q\ <= NOT \init~q\;
\controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\ <= NOT \controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\;
\controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\;
\controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\ <= NOT \controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\;
\product_register_8|ALT_INV_q~q\ <= NOT \product_register_8|q~q\;
\product_register_7_to_4|register_1_bit_ins4|ALT_INV_q~q\ <= NOT \product_register_7_to_4|register_1_bit_ins4|q~q\;
\product_register_7_to_4|register_1_bit_ins3|ALT_INV_q~q\ <= NOT \product_register_7_to_4|register_1_bit_ins3|q~q\;
\product_register_7_to_4|register_1_bit_ins2|ALT_INV_q~q\ <= NOT \product_register_7_to_4|register_1_bit_ins2|q~q\;
\product_register_7_to_4|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \product_register_7_to_4|register_1_bit_ins1|q~q\;
\product_register_3_to_0|register_1_bit_ins4|ALT_INV_q~q\ <= NOT \product_register_3_to_0|register_1_bit_ins4|q~q\;
\product_register_3_to_0|register_1_bit_ins3|ALT_INV_q~q\ <= NOT \product_register_3_to_0|register_1_bit_ins3|q~q\;
\product_register_3_to_0|register_1_bit_ins2|ALT_INV_q~q\ <= NOT \product_register_3_to_0|register_1_bit_ins2|q~q\;
\product_register_3_to_0|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \product_register_3_to_0|register_1_bit_ins1|q~q\;

-- Location: IOOBUF_X89_Y37_N56
\product[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product_register_3_to_0|register_1_bit_ins1|q~q\,
	devoe => ww_devoe,
	o => ww_product(0));

-- Location: IOOBUF_X89_Y37_N39
\product[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product_register_3_to_0|register_1_bit_ins2|q~q\,
	devoe => ww_devoe,
	o => ww_product(1));

-- Location: IOOBUF_X89_Y37_N5
\product[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product_register_3_to_0|register_1_bit_ins3|q~q\,
	devoe => ww_devoe,
	o => ww_product(2));

-- Location: IOOBUF_X89_Y37_N22
\product[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product_register_3_to_0|register_1_bit_ins4|q~q\,
	devoe => ww_devoe,
	o => ww_product(3));

-- Location: IOOBUF_X89_Y36_N56
\product[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_product(4));

-- Location: IOOBUF_X89_Y38_N5
\product[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_product(5));

-- Location: IOOBUF_X89_Y38_N39
\product[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product_register_7_to_4|register_1_bit_ins3|q~q\,
	devoe => ww_devoe,
	o => ww_product(6));

-- Location: IOOBUF_X89_Y38_N22
\product[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product_register_7_to_4|register_1_bit_ins4|q~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_product(7));

-- Location: IOOBUF_X89_Y38_N56
\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \product_register_8|q~q\,
	devoe => ww_devoe,
	o => ww_overflow);

-- Location: MLABCELL_X87_Y25_N39
\count_initiation_time[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_initiation_time[0]~1_combout\ = ( !\count_initiation_time[0]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_count_initiation_time[0]~1_combout\,
	combout => \count_initiation_time[0]~1_combout\);

-- Location: MLABCELL_X87_Y25_N48
\controller|ROM_ins|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controller|ROM_ins|Mux5~0_combout\ = ( \controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & ( (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & 
-- ((\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & 
-- !\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\)) ) ) # ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & ( (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & \controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000010001110011000001000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datab => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	datad => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => \controller|state_register_ins|register_4_bit|register_1_bit_ins4|ALT_INV_q~q\,
	combout => \controller|ROM_ins|Mux5~0_combout\);

-- Location: IOIBUF_X89_Y36_N38
\multiplicand[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(2),
	o => \multiplicand[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\multiplicand[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(3),
	o => \multiplicand[3]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\multiplicand[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(0),
	o => \multiplicand[0]~input_o\);

-- Location: LABCELL_X88_Y25_N39
\controller|ROM_ins|Mux0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controller|ROM_ins|Mux0~combout\ = LCELL(( !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & ( 
-- \controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datae => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	combout => \controller|ROM_ins|Mux0~combout\);

-- Location: IOIBUF_X89_Y36_N21
\multiplicand[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicand(1),
	o => \multiplicand[1]~input_o\);

-- Location: FF_X88_Y25_N35
\multiplicand_register|register_1_bit_ins2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux0~combout\,
	asdata => \multiplicand[1]~input_o\,
	clrn => \ALT_INV_init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand_register|register_1_bit_ins2|q~q\);

-- Location: FF_X88_Y25_N38
\multiplicand_register|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux0~combout\,
	asdata => \multiplicand[0]~input_o\,
	clrn => \ALT_INV_init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand_register|register_1_bit_ins1|q~q\);

-- Location: LABCELL_X88_Y25_N33
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \multiplicand_register|register_1_bit_ins1|q~q\ & ( (\multiplicand[0]~input_o\ & (!\multiplicand_register|register_1_bit_ins2|q~q\ $ (\multiplicand[1]~input_o\))) ) ) # ( !\multiplicand_register|register_1_bit_ins1|q~q\ & ( 
-- (!\multiplicand[0]~input_o\ & (!\multiplicand_register|register_1_bit_ins2|q~q\ $ (\multiplicand[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[0]~input_o\,
	datac => \multiplicand_register|register_1_bit_ins2|ALT_INV_q~q\,
	datad => \ALT_INV_multiplicand[1]~input_o\,
	dataf => \multiplicand_register|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \Equal0~0_combout\);

-- Location: FF_X88_Y25_N59
\multiplicand_register|register_1_bit_ins4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux0~combout\,
	asdata => \multiplicand[3]~input_o\,
	clrn => \ALT_INV_init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand_register|register_1_bit_ins4|q~q\);

-- Location: FF_X88_Y25_N14
\multiplicand_register|register_1_bit_ins3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux0~combout\,
	asdata => \multiplicand[2]~input_o\,
	clrn => \ALT_INV_init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplicand_register|register_1_bit_ins3|q~q\);

-- Location: MLABCELL_X87_Y25_N12
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \multiplicand_register|register_1_bit_ins4|q~q\ & ( \multiplicand_register|register_1_bit_ins3|q~q\ & ( (!\multiplicand[2]~input_o\) # ((!\multiplicand[3]~input_o\) # (!\Equal0~0_combout\)) ) ) ) # ( 
-- !\multiplicand_register|register_1_bit_ins4|q~q\ & ( \multiplicand_register|register_1_bit_ins3|q~q\ & ( (!\multiplicand[2]~input_o\) # ((!\Equal0~0_combout\) # (\multiplicand[3]~input_o\)) ) ) ) # ( \multiplicand_register|register_1_bit_ins4|q~q\ & ( 
-- !\multiplicand_register|register_1_bit_ins3|q~q\ & ( ((!\multiplicand[3]~input_o\) # (!\Equal0~0_combout\)) # (\multiplicand[2]~input_o\) ) ) ) # ( !\multiplicand_register|register_1_bit_ins4|q~q\ & ( !\multiplicand_register|register_1_bit_ins3|q~q\ & ( 
-- ((!\Equal0~0_combout\) # (\multiplicand[3]~input_o\)) # (\multiplicand[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110111111111111101110111111111101110111111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicand[2]~input_o\,
	datab => \ALT_INV_multiplicand[3]~input_o\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \multiplicand_register|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => \multiplicand_register|register_1_bit_ins3|ALT_INV_q~q\,
	combout => \Equal0~1_combout\);

-- Location: FF_X87_Y25_N14
init : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_initiation_time[0]~1_combout\,
	d => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init~q\);

-- Location: FF_X87_Y25_N25
\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_initiation_time[0]~1_combout\,
	asdata => \controller|ROM_ins|Mux5~0_combout\,
	clrn => \ALT_INV_init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\);

-- Location: MLABCELL_X87_Y25_N18
\controller|ROM_ins|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controller|ROM_ins|Mux4~0_combout\ = ( \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( \controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & ( 
-- !\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ $ (!\controller|state_register_ins|register_1_bit|q~q\) ) ) ) # ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( 
-- \controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & ( (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & \controller|state_register_ins|register_1_bit|q~q\) ) ) ) # ( 
-- \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & ( \controller|state_register_ins|register_1_bit|q~q\ ) ) ) # ( 
-- !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & ( (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & 
-- \controller|state_register_ins|register_1_bit|q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100000011000000110011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	datac => \controller|state_register_ins|register_1_bit|ALT_INV_q~q\,
	datae => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => \controller|state_register_ins|register_4_bit|register_1_bit_ins4|ALT_INV_q~q\,
	combout => \controller|ROM_ins|Mux4~0_combout\);

-- Location: FF_X87_Y25_N2
\controller|state_register_ins|register_1_bit|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_initiation_time[0]~1_combout\,
	asdata => \controller|ROM_ins|Mux4~0_combout\,
	clrn => \ALT_INV_init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|state_register_ins|register_1_bit|q~q\);

-- Location: MLABCELL_X87_Y25_N3
\controller|ROM_ins|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controller|ROM_ins|Mux8~0_combout\ = ( \controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & ( \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( (!\controller|state_register_ins|register_1_bit|q~q\ & 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & \controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)) ) ) ) # ( \controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & ( 
-- !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\) # (\product_register_3_to_0|register_1_bit_ins1|q~q\) ) ) ) # ( 
-- !\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( (!\controller|state_register_ins|register_1_bit|q~q\ & 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & ((!\product_register_3_to_0|register_1_bit_ins1|q~q\) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000001100111111111100000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state_register_ins|register_1_bit|ALT_INV_q~q\,
	datab => \product_register_3_to_0|register_1_bit_ins1|ALT_INV_q~q\,
	datac => \controller|state_register_ins|register_4_bit|register_1_bit_ins4|ALT_INV_q~q\,
	datad => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datae => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \controller|ROM_ins|Mux8~0_combout\);

-- Location: FF_X87_Y25_N20
\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_initiation_time[0]~1_combout\,
	asdata => \controller|ROM_ins|Mux8~0_combout\,
	clrn => \ALT_INV_init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\);

-- Location: MLABCELL_X87_Y25_N45
\controller|ROM_ins|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controller|ROM_ins|Mux7~1_combout\ = ( \controller|state_register_ins|register_1_bit|q~q\ & ( \product_register_3_to_0|register_1_bit_ins1|q~q\ & ( (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ $ (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\))) ) ) ) # ( !\controller|state_register_ins|register_1_bit|q~q\ & ( 
-- \product_register_3_to_0|register_1_bit_ins1|q~q\ & ( (!\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & 
-- ((\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\) # 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\))))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ $ (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) ) ) ) # ( \controller|state_register_ins|register_1_bit|q~q\ & ( 
-- !\product_register_3_to_0|register_1_bit_ins1|q~q\ & ( (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & 
-- !\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)) ) ) ) # ( !\controller|state_register_ins|register_1_bit|q~q\ & ( !\product_register_3_to_0|register_1_bit_ins1|q~q\ & ( 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\) # 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\)))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & (((!\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & 
-- \controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100001100000001010000000001000101100011100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	datab => \controller|state_register_ins|register_4_bit|register_1_bit_ins4|ALT_INV_q~q\,
	datac => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	datad => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datae => \controller|state_register_ins|register_1_bit|ALT_INV_q~q\,
	dataf => \product_register_3_to_0|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \controller|ROM_ins|Mux7~1_combout\);

-- Location: FF_X87_Y25_N8
\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_initiation_time[0]~1_combout\,
	asdata => \controller|ROM_ins|Mux7~1_combout\,
	clrn => \ALT_INV_init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\);

-- Location: MLABCELL_X87_Y25_N54
\controller|ROM_ins|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controller|ROM_ins|Mux6~0_combout\ = ( \controller|state_register_ins|register_1_bit|q~q\ & ( \product_register_3_to_0|register_1_bit_ins1|q~q\ & ( (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & 
-- ((\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & 
-- !\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\)) ) ) ) # ( !\controller|state_register_ins|register_1_bit|q~q\ & ( \product_register_3_to_0|register_1_bit_ins1|q~q\ & ( 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & (((\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\)))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & 
-- ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & ((\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\)))) ) ) ) # ( \controller|state_register_ins|register_1_bit|q~q\ & ( !\product_register_3_to_0|register_1_bit_ins1|q~q\ & ( 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ $ (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\))) ) ) ) # ( 
-- !\controller|state_register_ins|register_1_bit|q~q\ & ( !\product_register_3_to_0|register_1_bit_ins1|q~q\ & ( (!\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & 
-- ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & 
-- ((\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\))))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins4|q~q\ & (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ $ (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001011110000000000101101000000101111011100000010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datab => \controller|state_register_ins|register_4_bit|register_1_bit_ins4|ALT_INV_q~q\,
	datac => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	datad => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	datae => \controller|state_register_ins|register_1_bit|ALT_INV_q~q\,
	dataf => \product_register_3_to_0|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \controller|ROM_ins|Mux6~0_combout\);

-- Location: FF_X87_Y25_N59
\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_initiation_time[0]~1_combout\,
	asdata => \controller|ROM_ins|Mux6~0_combout\,
	clrn => \ALT_INV_init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\);

-- Location: LABCELL_X88_Y25_N51
\controller|ROM_ins|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \controller|ROM_ins|Mux7~0_combout\ = ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( \controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datae => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \controller|ROM_ins|Mux7~0_combout\);

-- Location: LABCELL_X88_Y25_N3
\controller|ROM_ins|Mux1\ : cyclonev_lcell_comb
-- Equation(s):
-- \controller|ROM_ins|Mux1~combout\ = LCELL(( \controller|ROM_ins|Mux7~0_combout\ & ( (!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\) # (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\) ) ) # ( 
-- !\controller|ROM_ins|Mux7~0_combout\ & ( (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	datad => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => \controller|ROM_ins|ALT_INV_Mux7~0_combout\,
	combout => \controller|ROM_ins|Mux1~combout\);

-- Location: IOIBUF_X89_Y35_N61
\multiplicator[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicator(1),
	o => \multiplicator[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\multiplicator[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicator(2),
	o => \multiplicator[2]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\multiplicator[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicator(3),
	o => \multiplicator[3]~input_o\);

-- Location: FF_X88_Y25_N49
\product_register_7_to_4|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux1~combout\,
	asdata => \pr_7_to_4_in[0]~1_combout\,
	clrn => \ALT_INV_init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_register_7_to_4|register_1_bit_ins1|q~q\);

-- Location: LABCELL_X88_Y25_N0
\adder|full_adder_ins_2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|full_adder_ins_2|s~combout\ = ( \product_register_7_to_4|register_1_bit_ins2|q~q\ & ( !\multiplicand_register|register_1_bit_ins2|q~q\ $ (((\multiplicand_register|register_1_bit_ins1|q~q\ & 
-- \product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\))) ) ) # ( !\product_register_7_to_4|register_1_bit_ins2|q~q\ & ( !\multiplicand_register|register_1_bit_ins2|q~q\ $ (((!\multiplicand_register|register_1_bit_ins1|q~q\) # 
-- (!\product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110011111100000000111111110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \multiplicand_register|register_1_bit_ins1|ALT_INV_q~q\,
	datac => \product_register_7_to_4|register_1_bit_ins1|ALT_INV_q~DUPLICATE_q\,
	datad => \multiplicand_register|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => \product_register_7_to_4|register_1_bit_ins2|ALT_INV_q~q\,
	combout => \adder|full_adder_ins_2|s~combout\);

-- Location: FF_X88_Y25_N10
\product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux1~combout\,
	d => \pr_7_to_4_in[1]~2_combout\,
	clrn => \ALT_INV_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE_q\);

-- Location: LABCELL_X88_Y25_N54
\adder|full_adder_ins_3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|full_adder_ins_3|s~combout\ = ( \product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE_q\ & ( \product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\ & ( !\multiplicand_register|register_1_bit_ins3|q~q\ $ 
-- (!\product_register_7_to_4|register_1_bit_ins3|q~q\ $ (((\multiplicand_register|register_1_bit_ins1|q~q\) # (\multiplicand_register|register_1_bit_ins2|q~q\)))) ) ) ) # ( !\product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE_q\ & ( 
-- \product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\ & ( !\multiplicand_register|register_1_bit_ins3|q~q\ $ (!\product_register_7_to_4|register_1_bit_ins3|q~q\ $ (((\multiplicand_register|register_1_bit_ins2|q~q\ & 
-- \multiplicand_register|register_1_bit_ins1|q~q\)))) ) ) ) # ( \product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE_q\ & ( !\product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\ & ( !\multiplicand_register|register_1_bit_ins3|q~q\ $ 
-- (!\product_register_7_to_4|register_1_bit_ins3|q~q\ $ (\multiplicand_register|register_1_bit_ins2|q~q\)) ) ) ) # ( !\product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE_q\ & ( !\product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\ & ( 
-- !\multiplicand_register|register_1_bit_ins3|q~q\ $ (!\product_register_7_to_4|register_1_bit_ins3|q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011010010110100101100110011010010110100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand_register|register_1_bit_ins3|ALT_INV_q~q\,
	datab => \product_register_7_to_4|register_1_bit_ins3|ALT_INV_q~q\,
	datac => \multiplicand_register|register_1_bit_ins2|ALT_INV_q~q\,
	datad => \multiplicand_register|register_1_bit_ins1|ALT_INV_q~q\,
	datae => \product_register_7_to_4|register_1_bit_ins2|ALT_INV_q~DUPLICATE_q\,
	dataf => \product_register_7_to_4|register_1_bit_ins1|ALT_INV_q~DUPLICATE_q\,
	combout => \adder|full_adder_ins_3|s~combout\);

-- Location: LABCELL_X88_Y25_N15
\adder|c3\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|c3~combout\ = ( \product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE_q\ & ( \product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\ & ( (!\multiplicand_register|register_1_bit_ins3|q~q\ & (\product_register_7_to_4|register_1_bit_ins3|q~q\ & 
-- ((\multiplicand_register|register_1_bit_ins2|q~q\) # (\multiplicand_register|register_1_bit_ins1|q~q\)))) # (\multiplicand_register|register_1_bit_ins3|q~q\ & (((\multiplicand_register|register_1_bit_ins2|q~q\) # 
-- (\product_register_7_to_4|register_1_bit_ins3|q~q\)) # (\multiplicand_register|register_1_bit_ins1|q~q\))) ) ) ) # ( !\product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE_q\ & ( \product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\ & ( 
-- (!\multiplicand_register|register_1_bit_ins3|q~q\ & (\multiplicand_register|register_1_bit_ins1|q~q\ & (\product_register_7_to_4|register_1_bit_ins3|q~q\ & \multiplicand_register|register_1_bit_ins2|q~q\))) # 
-- (\multiplicand_register|register_1_bit_ins3|q~q\ & (((\multiplicand_register|register_1_bit_ins1|q~q\ & \multiplicand_register|register_1_bit_ins2|q~q\)) # (\product_register_7_to_4|register_1_bit_ins3|q~q\))) ) ) ) # ( 
-- \product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE_q\ & ( !\product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\ & ( (!\multiplicand_register|register_1_bit_ins3|q~q\ & (\product_register_7_to_4|register_1_bit_ins3|q~q\ & 
-- \multiplicand_register|register_1_bit_ins2|q~q\)) # (\multiplicand_register|register_1_bit_ins3|q~q\ & ((\multiplicand_register|register_1_bit_ins2|q~q\) # (\product_register_7_to_4|register_1_bit_ins3|q~q\))) ) ) ) # ( 
-- !\product_register_7_to_4|register_1_bit_ins2|q~DUPLICATE_q\ & ( !\product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\ & ( (\multiplicand_register|register_1_bit_ins3|q~q\ & \product_register_7_to_4|register_1_bit_ins3|q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010101111100000101000101110001011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand_register|register_1_bit_ins3|ALT_INV_q~q\,
	datab => \multiplicand_register|register_1_bit_ins1|ALT_INV_q~q\,
	datac => \product_register_7_to_4|register_1_bit_ins3|ALT_INV_q~q\,
	datad => \multiplicand_register|register_1_bit_ins2|ALT_INV_q~q\,
	datae => \product_register_7_to_4|register_1_bit_ins2|ALT_INV_q~DUPLICATE_q\,
	dataf => \product_register_7_to_4|register_1_bit_ins1|ALT_INV_q~DUPLICATE_q\,
	combout => \adder|c3~combout\);

-- Location: FF_X88_Y25_N44
\product_register_7_to_4|register_1_bit_ins4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux1~combout\,
	d => \pr_7_to_4_in[3]~4_combout\,
	clrn => \ALT_INV_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_register_7_to_4|register_1_bit_ins4|q~q\);

-- Location: LABCELL_X88_Y25_N30
\adder|full_adder_ins_4|prop\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|full_adder_ins_4|prop~combout\ = ( \multiplicand_register|register_1_bit_ins4|q~q\ & ( !\product_register_7_to_4|register_1_bit_ins4|q~q\ ) ) # ( !\multiplicand_register|register_1_bit_ins4|q~q\ & ( \product_register_7_to_4|register_1_bit_ins4|q~q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \product_register_7_to_4|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => \multiplicand_register|register_1_bit_ins4|ALT_INV_q~q\,
	combout => \adder|full_adder_ins_4|prop~combout\);

-- Location: LABCELL_X88_Y25_N18
\pr_8_in~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr_8_in~0_combout\ = ( \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( \product_register_7_to_4|register_1_bit_ins4|q~DUPLICATE_q\ & ( (!\multiplicand_register|register_1_bit_ins4|q~q\ & (\adder|c3~combout\ & 
-- ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) # (\multiplicand_register|register_1_bit_ins4|q~q\ & 
-- (((!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) ) ) ) # ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( 
-- \product_register_7_to_4|register_1_bit_ins4|q~DUPLICATE_q\ & ( (!\multiplicand_register|register_1_bit_ins4|q~q\ & (\adder|c3~combout\ & ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\) # 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) # (\multiplicand_register|register_1_bit_ins4|q~q\ & (((!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\) # 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) ) ) ) # ( \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( !\product_register_7_to_4|register_1_bit_ins4|q~DUPLICATE_q\ & ( 
-- (\multiplicand_register|register_1_bit_ins4|q~q\ & (\adder|c3~combout\ & ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) ) ) ) # ( 
-- !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( !\product_register_7_to_4|register_1_bit_ins4|q~DUPLICATE_q\ & ( (\multiplicand_register|register_1_bit_ins4|q~q\ & (\adder|c3~combout\ & 
-- ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\) # (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000000100000001000101110111011100000111000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand_register|register_1_bit_ins4|ALT_INV_q~q\,
	datab => \adder|ALT_INV_c3~combout\,
	datac => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	datad => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datae => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => \product_register_7_to_4|register_1_bit_ins4|ALT_INV_q~DUPLICATE_q\,
	combout => \pr_8_in~0_combout\);

-- Location: FF_X88_Y25_N19
\product_register_8|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux1~combout\,
	d => \pr_8_in~0_combout\,
	clrn => \ALT_INV_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_register_8|q~q\);

-- Location: LABCELL_X88_Y25_N42
\pr_7_to_4_in[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr_7_to_4_in[3]~4_combout\ = ( \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( \product_register_8|q~q\ & ( (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & 
-- (((\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\)))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & (!\adder|c3~combout\ $ ((!\adder|full_adder_ins_4|prop~combout\)))) ) ) ) # ( 
-- !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( \product_register_8|q~q\ & ( (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & ((!\adder|c3~combout\ $ (!\adder|full_adder_ins_4|prop~combout\)) # 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\))) ) ) ) # ( \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( !\product_register_8|q~q\ & ( 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & (!\adder|c3~combout\ $ (!\adder|full_adder_ins_4|prop~combout\))) ) ) ) # ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( !\product_register_8|q~q\ & ( 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & (!\adder|c3~combout\ $ (!\adder|full_adder_ins_4|prop~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000000000000110011000000110000011110000111101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|ALT_INV_c3~combout\,
	datab => \adder|full_adder_ins_4|ALT_INV_prop~combout\,
	datac => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	datad => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datae => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => \product_register_8|ALT_INV_q~q\,
	combout => \pr_7_to_4_in[3]~4_combout\);

-- Location: FF_X88_Y25_N43
\product_register_7_to_4|register_1_bit_ins4|q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux1~combout\,
	d => \pr_7_to_4_in[3]~4_combout\,
	clrn => \ALT_INV_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_register_7_to_4|register_1_bit_ins4|q~DUPLICATE_q\);

-- Location: LABCELL_X88_Y25_N6
\pr_7_to_4_in[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr_7_to_4_in[2]~3_combout\ = ( \product_register_7_to_4|register_1_bit_ins4|q~DUPLICATE_q\ & ( (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & 
-- ((\adder|full_adder_ins_3|s~combout\) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & 
-- ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & ((\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & 
-- (\adder|full_adder_ins_3|s~combout\)))) ) ) # ( !\product_register_7_to_4|register_1_bit_ins4|q~DUPLICATE_q\ & ( (\adder|full_adder_ins_3|s~combout\ & ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & \controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\)) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001001000000010000100100000001011011110000000101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	datab => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datac => \adder|full_adder_ins_3|ALT_INV_s~combout\,
	datad => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => \product_register_7_to_4|register_1_bit_ins4|ALT_INV_q~DUPLICATE_q\,
	combout => \pr_7_to_4_in[2]~3_combout\);

-- Location: FF_X88_Y25_N8
\product_register_7_to_4|register_1_bit_ins3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux1~combout\,
	d => \pr_7_to_4_in[2]~3_combout\,
	clrn => \ALT_INV_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_register_7_to_4|register_1_bit_ins3|q~q\);

-- Location: LABCELL_X88_Y25_N9
\pr_7_to_4_in[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr_7_to_4_in[1]~2_combout\ = ( \product_register_7_to_4|register_1_bit_ins3|q~q\ & ( (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & 
-- ((\adder|full_adder_ins_2|s~combout\) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & 
-- ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & ((\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & 
-- (\adder|full_adder_ins_2|s~combout\)))) ) ) # ( !\product_register_7_to_4|register_1_bit_ins3|q~q\ & ( (\adder|full_adder_ins_2|s~combout\ & ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & \controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\)) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001001000000010000100100000001011011110000000101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	datab => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datac => \adder|full_adder_ins_2|ALT_INV_s~combout\,
	datad => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => \product_register_7_to_4|register_1_bit_ins3|ALT_INV_q~q\,
	combout => \pr_7_to_4_in[1]~2_combout\);

-- Location: FF_X88_Y25_N11
\product_register_7_to_4|register_1_bit_ins2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux1~combout\,
	d => \pr_7_to_4_in[1]~2_combout\,
	clrn => \ALT_INV_init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_register_7_to_4|register_1_bit_ins2|q~q\);

-- Location: LABCELL_X88_Y25_N24
\pr_7_to_4_in[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr_7_to_4_in[0]~1_combout\ = ( \product_register_7_to_4|register_1_bit_ins1|q~q\ & ( \product_register_7_to_4|register_1_bit_ins2|q~q\ & ( (!\multiplicand_register|register_1_bit_ins1|q~q\ & 
-- (((\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & \controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\))) # 
-- (\multiplicand_register|register_1_bit_ins1|q~q\ & (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ $ 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) ) ) ) # ( !\product_register_7_to_4|register_1_bit_ins1|q~q\ & ( \product_register_7_to_4|register_1_bit_ins2|q~q\ & ( (!\multiplicand_register|register_1_bit_ins1|q~q\ & 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ $ (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) # 
-- (\multiplicand_register|register_1_bit_ins1|q~q\ & (((\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & \controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)) # 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\))) ) ) ) # ( \product_register_7_to_4|register_1_bit_ins1|q~q\ & ( !\product_register_7_to_4|register_1_bit_ins2|q~q\ & ( (!\multiplicand_register|register_1_bit_ins1|q~q\ & 
-- ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & !\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)) # 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ((\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\))))) ) ) ) # ( !\product_register_7_to_4|register_1_bit_ins1|q~q\ & ( 
-- !\product_register_7_to_4|register_1_bit_ins2|q~q\ & ( (\multiplicand_register|register_1_bit_ins1|q~q\ & ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & 
-- !\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ((\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010001000010000010001000000111000111010000101100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplicand_register|register_1_bit_ins1|ALT_INV_q~q\,
	datab => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	datac => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	datad => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datae => \product_register_7_to_4|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => \product_register_7_to_4|register_1_bit_ins2|ALT_INV_q~q\,
	combout => \pr_7_to_4_in[0]~1_combout\);

-- Location: FF_X88_Y25_N50
\product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux1~combout\,
	asdata => \pr_7_to_4_in[0]~1_combout\,
	clrn => \ALT_INV_init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y25_N33
\pr_3_to_0_in[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr_3_to_0_in[3]~3_combout\ = ( \product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\ & ( ((\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ $ 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\)))) # (\multiplicator[3]~input_o\) ) ) # ( !\product_register_7_to_4|register_1_bit_ins1|q~DUPLICATE_q\ & ( (\multiplicator[3]~input_o\ & 
-- ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\) # (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ $ (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101101000000001110110100010010111111110001001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datab => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	datac => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	datad => \ALT_INV_multiplicator[3]~input_o\,
	dataf => \product_register_7_to_4|register_1_bit_ins1|ALT_INV_q~DUPLICATE_q\,
	combout => \pr_3_to_0_in[3]~3_combout\);

-- Location: MLABCELL_X87_Y25_N27
\pr_7_to_4_in[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr_7_to_4_in[3]~0_combout\ = ( \controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & ( \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ ) 
-- ) ) # ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & ( \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ ) ) ) # ( 
-- \controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( \controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ ) ) ) # ( 
-- !\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datae => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \pr_7_to_4_in[3]~0_combout\);

-- Location: FF_X87_Y25_N35
\product_register_3_to_0|register_1_bit_ins4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux1~combout\,
	d => \pr_3_to_0_in[3]~3_combout\,
	clrn => \ALT_INV_init~q\,
	ena => \pr_7_to_4_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_register_3_to_0|register_1_bit_ins4|q~q\);

-- Location: MLABCELL_X87_Y25_N36
\pr_3_to_0_in[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr_3_to_0_in[2]~2_combout\ = ( \product_register_3_to_0|register_1_bit_ins4|q~q\ & ( ((\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ $ 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) # (\multiplicator[2]~input_o\) ) ) # ( !\product_register_3_to_0|register_1_bit_ins4|q~q\ & ( (\multiplicator[2]~input_o\ & 
-- ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\) # (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ $ (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000101010101000100010101010111011101010101011101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_multiplicator[2]~input_o\,
	datab => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	datac => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	datad => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => \product_register_3_to_0|register_1_bit_ins4|ALT_INV_q~q\,
	combout => \pr_3_to_0_in[2]~2_combout\);

-- Location: FF_X87_Y25_N38
\product_register_3_to_0|register_1_bit_ins3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux1~combout\,
	d => \pr_3_to_0_in[2]~2_combout\,
	clrn => \ALT_INV_init~q\,
	ena => \pr_7_to_4_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_register_3_to_0|register_1_bit_ins3|q~q\);

-- Location: MLABCELL_X87_Y25_N51
\pr_3_to_0_in[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr_3_to_0_in[1]~1_combout\ = ( \product_register_3_to_0|register_1_bit_ins3|q~q\ & ( ((\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ $ 
-- (!\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\)))) # (\multiplicator[1]~input_o\) ) ) # ( !\product_register_3_to_0|register_1_bit_ins3|q~q\ & ( (\multiplicator[1]~input_o\ & 
-- ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\) # (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ $ (\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001001000011110000100100001111011011110000111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datab => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	datac => \ALT_INV_multiplicator[1]~input_o\,
	datad => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => \product_register_3_to_0|register_1_bit_ins3|ALT_INV_q~q\,
	combout => \pr_3_to_0_in[1]~1_combout\);

-- Location: FF_X87_Y25_N53
\product_register_3_to_0|register_1_bit_ins2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux1~combout\,
	d => \pr_3_to_0_in[1]~1_combout\,
	clrn => \ALT_INV_init~q\,
	ena => \pr_7_to_4_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_register_3_to_0|register_1_bit_ins2|q~q\);

-- Location: IOIBUF_X89_Y35_N78
\multiplicator[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_multiplicator(0),
	o => \multiplicator[0]~input_o\);

-- Location: MLABCELL_X87_Y25_N30
\pr_3_to_0_in[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pr_3_to_0_in[0]~0_combout\ = ( \controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ 
-- & ((\multiplicator[0]~input_o\))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & (\product_register_3_to_0|register_1_bit_ins2|q~q\)))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & 
-- (((\multiplicator[0]~input_o\)))) ) ) # ( !\controller|state_register_ins|register_4_bit|register_1_bit_ins1|q~q\ & ( (!\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & (((\multiplicator[0]~input_o\)))) # 
-- (\controller|state_register_ins|register_4_bit|register_1_bit_ins2|q~q\ & ((!\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ & ((\multiplicator[0]~input_o\))) # (\controller|state_register_ins|register_4_bit|register_1_bit_ins3|q~q\ 
-- & (\product_register_3_to_0|register_1_bit_ins2|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000010110111110000001011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state_register_ins|register_4_bit|register_1_bit_ins2|ALT_INV_q~q\,
	datab => \controller|state_register_ins|register_4_bit|register_1_bit_ins3|ALT_INV_q~q\,
	datac => \product_register_3_to_0|register_1_bit_ins2|ALT_INV_q~q\,
	datad => \ALT_INV_multiplicator[0]~input_o\,
	dataf => \controller|state_register_ins|register_4_bit|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \pr_3_to_0_in[0]~0_combout\);

-- Location: FF_X87_Y25_N32
\product_register_3_to_0|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \controller|ROM_ins|Mux1~combout\,
	d => \pr_3_to_0_in[0]~0_combout\,
	clrn => \ALT_INV_init~q\,
	ena => \pr_7_to_4_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product_register_3_to_0|register_1_bit_ins1|q~q\);

-- Location: MLABCELL_X28_Y20_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


