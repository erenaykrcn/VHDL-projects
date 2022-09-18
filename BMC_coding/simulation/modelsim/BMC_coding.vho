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

-- DATE "09/18/2022 21:38:02"

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

ENTITY 	BMC_coding IS
    PORT (
	clk : IN std_logic;
	input : IN std_logic_vector(31 DOWNTO 0);
	output : OUT std_logic_vector(31 DOWNTO 0);
	mode : IN std_logic
	);
END BMC_coding;

-- Design Ports Information
-- output[0]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[8]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[9]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[10]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[11]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[12]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[13]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[14]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[15]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[16]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[17]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[18]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[19]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[20]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[21]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[22]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[23]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[24]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[25]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[26]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[27]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[28]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[29]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[30]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[31]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[8]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[9]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[11]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[12]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[13]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[14]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[15]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[16]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[17]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[18]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[19]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[20]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[21]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[22]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[23]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[24]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[25]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[26]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[27]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[28]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[29]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[30]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[31]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BMC_coding IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_input : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_mode : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins1|output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[0]~0_combout\ : std_logic;
SIGNAL \output[0]$latch~combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[1]~1_combout\ : std_logic;
SIGNAL \output[1]$latch~combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[2]~2_combout\ : std_logic;
SIGNAL \output[2]$latch~combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[3]~3_combout\ : std_logic;
SIGNAL \output[3]$latch~combout\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins2|output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[0]~0_combout\ : std_logic;
SIGNAL \output[4]$latch~combout\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[1]~1_combout\ : std_logic;
SIGNAL \output[5]$latch~combout\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[2]~2_combout\ : std_logic;
SIGNAL \output[6]$latch~combout\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[3]~3_combout\ : std_logic;
SIGNAL \output[7]$latch~combout\ : std_logic;
SIGNAL \input[8]~input_o\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins3|output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[0]~0_combout\ : std_logic;
SIGNAL \output[8]$latch~combout\ : std_logic;
SIGNAL \input[9]~input_o\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[1]~1_combout\ : std_logic;
SIGNAL \output[9]$latch~combout\ : std_logic;
SIGNAL \input[10]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[2]~2_combout\ : std_logic;
SIGNAL \output[10]$latch~combout\ : std_logic;
SIGNAL \input[11]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[3]~3_combout\ : std_logic;
SIGNAL \output[11]$latch~combout\ : std_logic;
SIGNAL \input[12]~input_o\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins4|output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[0]~0_combout\ : std_logic;
SIGNAL \output[12]$latch~combout\ : std_logic;
SIGNAL \input[13]~input_o\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[1]~1_combout\ : std_logic;
SIGNAL \output[13]$latch~combout\ : std_logic;
SIGNAL \input[14]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[2]~2_combout\ : std_logic;
SIGNAL \output[14]$latch~combout\ : std_logic;
SIGNAL \input[15]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[3]~3_combout\ : std_logic;
SIGNAL \output[15]$latch~combout\ : std_logic;
SIGNAL \input[16]~input_o\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins1|output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[0]~0_combout\ : std_logic;
SIGNAL \output[16]$latch~combout\ : std_logic;
SIGNAL \input[17]~input_o\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[1]~1_combout\ : std_logic;
SIGNAL \output[17]$latch~combout\ : std_logic;
SIGNAL \input[18]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[2]~2_combout\ : std_logic;
SIGNAL \output[18]$latch~combout\ : std_logic;
SIGNAL \input[19]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[3]~3_combout\ : std_logic;
SIGNAL \output[19]$latch~combout\ : std_logic;
SIGNAL \input[20]~input_o\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins2|output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[0]~0_combout\ : std_logic;
SIGNAL \output[20]$latch~combout\ : std_logic;
SIGNAL \input[21]~input_o\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[1]~1_combout\ : std_logic;
SIGNAL \output[21]$latch~combout\ : std_logic;
SIGNAL \input[22]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[2]~2_combout\ : std_logic;
SIGNAL \output[22]$latch~combout\ : std_logic;
SIGNAL \input[23]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[3]~3_combout\ : std_logic;
SIGNAL \output[23]$latch~combout\ : std_logic;
SIGNAL \input[24]~input_o\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0_combout\ : std_logic;
SIGNAL \output[24]$latch~combout\ : std_logic;
SIGNAL \input[25]~input_o\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[1]~1_combout\ : std_logic;
SIGNAL \output[25]$latch~combout\ : std_logic;
SIGNAL \input[26]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[2]~2_combout\ : std_logic;
SIGNAL \output[26]$latch~combout\ : std_logic;
SIGNAL \input[27]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[3]~3_combout\ : std_logic;
SIGNAL \output[27]$latch~combout\ : std_logic;
SIGNAL \input[28]~input_o\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins4|output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[0]~0_combout\ : std_logic;
SIGNAL \output[28]$latch~combout\ : std_logic;
SIGNAL \input[29]~input_o\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[1]~1_combout\ : std_logic;
SIGNAL \output[29]$latch~combout\ : std_logic;
SIGNAL \input[30]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[2]~2_combout\ : std_logic;
SIGNAL \output[30]$latch~combout\ : std_logic;
SIGNAL \input[31]~input_o\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q~0_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[3]~3_combout\ : std_logic;
SIGNAL \output[31]$latch~combout\ : std_logic;
SIGNAL data : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_input[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_input[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_mode~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL ALT_INV_data : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_output[31]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[30]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[29]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[28]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[27]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[26]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[25]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[24]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[23]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[22]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[21]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[20]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[19]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[18]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[17]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[16]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[14]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_output[0]$latch~combout\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|ALT_INV_output[3]~3_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|ALT_INV_output[2]~2_combout\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|ALT_INV_output[1]~1_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|ALT_INV_output[0]~0_combout\ : std_logic;
SIGNAL \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;
SIGNAL \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_input <= input;
output <= ww_output;
ww_mode <= mode;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input[31]~input_o\ <= NOT \input[31]~input_o\;
\ALT_INV_input[30]~input_o\ <= NOT \input[30]~input_o\;
\ALT_INV_input[29]~input_o\ <= NOT \input[29]~input_o\;
\ALT_INV_input[28]~input_o\ <= NOT \input[28]~input_o\;
\ALT_INV_input[27]~input_o\ <= NOT \input[27]~input_o\;
\ALT_INV_input[26]~input_o\ <= NOT \input[26]~input_o\;
\ALT_INV_input[25]~input_o\ <= NOT \input[25]~input_o\;
\ALT_INV_input[24]~input_o\ <= NOT \input[24]~input_o\;
\ALT_INV_input[23]~input_o\ <= NOT \input[23]~input_o\;
\ALT_INV_input[22]~input_o\ <= NOT \input[22]~input_o\;
\ALT_INV_input[21]~input_o\ <= NOT \input[21]~input_o\;
\ALT_INV_input[20]~input_o\ <= NOT \input[20]~input_o\;
\ALT_INV_input[19]~input_o\ <= NOT \input[19]~input_o\;
\ALT_INV_input[18]~input_o\ <= NOT \input[18]~input_o\;
\ALT_INV_input[17]~input_o\ <= NOT \input[17]~input_o\;
\ALT_INV_input[16]~input_o\ <= NOT \input[16]~input_o\;
\ALT_INV_input[15]~input_o\ <= NOT \input[15]~input_o\;
\ALT_INV_input[14]~input_o\ <= NOT \input[14]~input_o\;
\ALT_INV_input[13]~input_o\ <= NOT \input[13]~input_o\;
\ALT_INV_input[12]~input_o\ <= NOT \input[12]~input_o\;
\ALT_INV_input[11]~input_o\ <= NOT \input[11]~input_o\;
\ALT_INV_input[10]~input_o\ <= NOT \input[10]~input_o\;
\ALT_INV_input[9]~input_o\ <= NOT \input[9]~input_o\;
\ALT_INV_input[8]~input_o\ <= NOT \input[8]~input_o\;
\ALT_INV_input[7]~input_o\ <= NOT \input[7]~input_o\;
\ALT_INV_input[6]~input_o\ <= NOT \input[6]~input_o\;
\ALT_INV_input[5]~input_o\ <= NOT \input[5]~input_o\;
\ALT_INV_input[4]~input_o\ <= NOT \input[4]~input_o\;
\ALT_INV_input[3]~input_o\ <= NOT \input[3]~input_o\;
\ALT_INV_input[2]~input_o\ <= NOT \input[2]~input_o\;
\ALT_INV_input[1]~input_o\ <= NOT \input[1]~input_o\;
\ALT_INV_input[0]~input_o\ <= NOT \input[0]~input_o\;
\ALT_INV_mode~input_o\ <= NOT \mode~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
ALT_INV_data(31) <= NOT data(31);
ALT_INV_data(30) <= NOT data(30);
ALT_INV_data(29) <= NOT data(29);
ALT_INV_data(28) <= NOT data(28);
ALT_INV_data(27) <= NOT data(27);
ALT_INV_data(26) <= NOT data(26);
ALT_INV_data(25) <= NOT data(25);
ALT_INV_data(24) <= NOT data(24);
ALT_INV_data(23) <= NOT data(23);
ALT_INV_data(22) <= NOT data(22);
ALT_INV_data(21) <= NOT data(21);
ALT_INV_data(20) <= NOT data(20);
ALT_INV_data(19) <= NOT data(19);
ALT_INV_data(18) <= NOT data(18);
ALT_INV_data(17) <= NOT data(17);
ALT_INV_data(16) <= NOT data(16);
ALT_INV_data(15) <= NOT data(15);
ALT_INV_data(14) <= NOT data(14);
ALT_INV_data(13) <= NOT data(13);
ALT_INV_data(12) <= NOT data(12);
ALT_INV_data(11) <= NOT data(11);
ALT_INV_data(10) <= NOT data(10);
ALT_INV_data(9) <= NOT data(9);
ALT_INV_data(8) <= NOT data(8);
ALT_INV_data(7) <= NOT data(7);
ALT_INV_data(6) <= NOT data(6);
ALT_INV_data(5) <= NOT data(5);
ALT_INV_data(4) <= NOT data(4);
ALT_INV_data(3) <= NOT data(3);
ALT_INV_data(2) <= NOT data(2);
ALT_INV_data(1) <= NOT data(1);
ALT_INV_data(0) <= NOT data(0);
\ALT_INV_output[31]$latch~combout\ <= NOT \output[31]$latch~combout\;
\ALT_INV_output[30]$latch~combout\ <= NOT \output[30]$latch~combout\;
\ALT_INV_output[29]$latch~combout\ <= NOT \output[29]$latch~combout\;
\ALT_INV_output[28]$latch~combout\ <= NOT \output[28]$latch~combout\;
\ALT_INV_output[27]$latch~combout\ <= NOT \output[27]$latch~combout\;
\ALT_INV_output[26]$latch~combout\ <= NOT \output[26]$latch~combout\;
\ALT_INV_output[25]$latch~combout\ <= NOT \output[25]$latch~combout\;
\ALT_INV_output[24]$latch~combout\ <= NOT \output[24]$latch~combout\;
\ALT_INV_output[23]$latch~combout\ <= NOT \output[23]$latch~combout\;
\ALT_INV_output[22]$latch~combout\ <= NOT \output[22]$latch~combout\;
\ALT_INV_output[21]$latch~combout\ <= NOT \output[21]$latch~combout\;
\ALT_INV_output[20]$latch~combout\ <= NOT \output[20]$latch~combout\;
\ALT_INV_output[19]$latch~combout\ <= NOT \output[19]$latch~combout\;
\ALT_INV_output[18]$latch~combout\ <= NOT \output[18]$latch~combout\;
\ALT_INV_output[17]$latch~combout\ <= NOT \output[17]$latch~combout\;
\ALT_INV_output[16]$latch~combout\ <= NOT \output[16]$latch~combout\;
\ALT_INV_output[15]$latch~combout\ <= NOT \output[15]$latch~combout\;
\ALT_INV_output[14]$latch~combout\ <= NOT \output[14]$latch~combout\;
\ALT_INV_output[13]$latch~combout\ <= NOT \output[13]$latch~combout\;
\ALT_INV_output[12]$latch~combout\ <= NOT \output[12]$latch~combout\;
\ALT_INV_output[11]$latch~combout\ <= NOT \output[11]$latch~combout\;
\ALT_INV_output[10]$latch~combout\ <= NOT \output[10]$latch~combout\;
\ALT_INV_output[9]$latch~combout\ <= NOT \output[9]$latch~combout\;
\ALT_INV_output[8]$latch~combout\ <= NOT \output[8]$latch~combout\;
\ALT_INV_output[7]$latch~combout\ <= NOT \output[7]$latch~combout\;
\ALT_INV_output[6]$latch~combout\ <= NOT \output[6]$latch~combout\;
\ALT_INV_output[5]$latch~combout\ <= NOT \output[5]$latch~combout\;
\ALT_INV_output[4]$latch~combout\ <= NOT \output[4]$latch~combout\;
\ALT_INV_output[3]$latch~combout\ <= NOT \output[3]$latch~combout\;
\ALT_INV_output[2]$latch~combout\ <= NOT \output[2]$latch~combout\;
\ALT_INV_output[1]$latch~combout\ <= NOT \output[1]$latch~combout\;
\ALT_INV_output[0]$latch~combout\ <= NOT \output[0]$latch~combout\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|ALT_INV_output[3]~3_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[3]~3_combout\;
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|ALT_INV_output[2]~2_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[2]~2_combout\;
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|ALT_INV_output[1]~1_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[1]~1_combout\;
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|ALT_INV_output[0]~0_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[0]~0_combout\;
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\;
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|ALT_INV_output[3]~3_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[3]~3_combout\;
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|ALT_INV_output[2]~2_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[2]~2_combout\;
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|ALT_INV_output[1]~1_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[1]~1_combout\;
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|ALT_INV_output[0]~0_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0_combout\;
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\;
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|ALT_INV_output[3]~3_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[3]~3_combout\;
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|ALT_INV_output[2]~2_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[2]~2_combout\;
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|ALT_INV_output[1]~1_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[1]~1_combout\;
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|ALT_INV_output[0]~0_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[0]~0_combout\;
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\;
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|ALT_INV_output[3]~3_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[3]~3_combout\;
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|ALT_INV_output[2]~2_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[2]~2_combout\;
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|ALT_INV_output[1]~1_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[1]~1_combout\;
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|ALT_INV_output[0]~0_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[0]~0_combout\;
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\;
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|ALT_INV_output[3]~3_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[3]~3_combout\;
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|ALT_INV_output[2]~2_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[2]~2_combout\;
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|ALT_INV_output[1]~1_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[1]~1_combout\;
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|ALT_INV_output[0]~0_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[0]~0_combout\;
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\;
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|ALT_INV_output[3]~3_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[3]~3_combout\;
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|ALT_INV_output[2]~2_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[2]~2_combout\;
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|ALT_INV_output[1]~1_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[1]~1_combout\;
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|ALT_INV_output[0]~0_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[0]~0_combout\;
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\;
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|ALT_INV_output[3]~3_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[3]~3_combout\;
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|ALT_INV_output[2]~2_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[2]~2_combout\;
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|ALT_INV_output[1]~1_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[1]~1_combout\;
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|ALT_INV_output[0]~0_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[0]~0_combout\;
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\;
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|ALT_INV_output[3]~3_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[3]~3_combout\;
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|ALT_INV_output[2]~2_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[2]~2_combout\;
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|ALT_INV_output[1]~1_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[1]~1_combout\;
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~q\;
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|ALT_INV_output[0]~0_combout\ <= NOT \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[0]~0_combout\;
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\;
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\ <= NOT \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\;

-- Location: IOOBUF_X89_Y8_N22
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X89_Y37_N5
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOOBUF_X89_Y8_N56
\output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(2));

-- Location: IOOBUF_X89_Y6_N5
\output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(3));

-- Location: IOOBUF_X88_Y81_N37
\output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(4));

-- Location: IOOBUF_X66_Y0_N93
\output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(5));

-- Location: IOOBUF_X89_Y9_N56
\output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(6));

-- Location: IOOBUF_X89_Y4_N62
\output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(7));

-- Location: IOOBUF_X88_Y81_N54
\output[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(8));

-- Location: IOOBUF_X89_Y6_N56
\output[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(9));

-- Location: IOOBUF_X89_Y6_N22
\output[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[10]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(10));

-- Location: IOOBUF_X89_Y35_N45
\output[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[11]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(11));

-- Location: IOOBUF_X72_Y0_N36
\output[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[12]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(12));

-- Location: IOOBUF_X68_Y0_N53
\output[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[13]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(13));

-- Location: IOOBUF_X80_Y81_N53
\output[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[14]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(14));

-- Location: IOOBUF_X72_Y0_N19
\output[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[15]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(15));

-- Location: IOOBUF_X82_Y81_N93
\output[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[16]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(16));

-- Location: IOOBUF_X89_Y37_N39
\output[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[17]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(17));

-- Location: IOOBUF_X82_Y81_N42
\output[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[18]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(18));

-- Location: IOOBUF_X68_Y0_N2
\output[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[19]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(19));

-- Location: IOOBUF_X88_Y81_N20
\output[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[20]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(20));

-- Location: IOOBUF_X89_Y8_N5
\output[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[21]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(21));

-- Location: IOOBUF_X89_Y38_N39
\output[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[22]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(22));

-- Location: IOOBUF_X89_Y36_N22
\output[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[23]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(23));

-- Location: IOOBUF_X86_Y81_N19
\output[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[24]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(24));

-- Location: IOOBUF_X72_Y0_N53
\output[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[25]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(25));

-- Location: IOOBUF_X84_Y81_N2
\output[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[26]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(26));

-- Location: IOOBUF_X89_Y38_N56
\output[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[27]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(27));

-- Location: IOOBUF_X64_Y0_N19
\output[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[28]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(28));

-- Location: IOOBUF_X89_Y8_N39
\output[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[29]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(29));

-- Location: IOOBUF_X70_Y0_N53
\output[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[30]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(30));

-- Location: IOOBUF_X72_Y0_N2
\output[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output[31]$latch~combout\,
	devoe => ww_devoe,
	o => ww_output(31));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\input[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\mode~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode,
	o => \mode~input_o\);

-- Location: LABCELL_X88_Y34_N30
\data[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(0) = ( data(0) & ( (\mode~input_o\) # (\input[0]~input_o\) ) ) # ( !data(0) & ( (\input[0]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[0]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(0),
	combout => data(0));

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y34_N9
\encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins1|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins1|output[0]~0_combout\ = !data(0) $ (\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data(0),
	datad => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins1|output[0]~0_combout\);

-- Location: FF_X88_Y34_N11
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins1|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\);

-- Location: LABCELL_X88_Y34_N42
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~0_combout\ = !data(0) $ (\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010101101010100101010110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data(0),
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~0_combout\);

-- Location: FF_X88_Y34_N44
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\);

-- Location: LABCELL_X88_Y34_N45
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[0]~0_combout\ = ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\ & ( (!data(0) & 
-- ((!\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\))) # (data(0) & (!\clk~input_o\)) ) ) # ( !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\ & ( (!data(0) & 
-- ((!\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\))) # (data(0) & (\clk~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000011111100110000001111111100000011001111110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => ALT_INV_data(0),
	datad => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[0]~0_combout\);

-- Location: LABCELL_X88_Y34_N6
\output[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[0]$latch~combout\ = ( \output[0]$latch~combout\ & ( (\mode~input_o\) # (\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[0]~0_combout\) ) ) # ( !\output[0]$latch~combout\ & ( 
-- (\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[0]~0_combout\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|ALT_INV_output[0]~0_combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \ALT_INV_output[0]$latch~combout\,
	combout => \output[0]$latch~combout\);

-- Location: IOIBUF_X89_Y37_N21
\input[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LABCELL_X88_Y37_N45
\data[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(1) = ( data(1) & ( \mode~input_o\ ) ) # ( data(1) & ( !\mode~input_o\ & ( \input[1]~input_o\ ) ) ) # ( !data(1) & ( !\mode~input_o\ & ( \input[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[1]~input_o\,
	datae => ALT_INV_data(1),
	dataf => \ALT_INV_mode~input_o\,
	combout => data(1));

-- Location: LABCELL_X88_Y37_N0
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~0_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~q\ & ( data(1) ) ) # ( 
-- !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~q\ & ( !data(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => ALT_INV_data(1),
	combout => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~0_combout\);

-- Location: FF_X88_Y37_N2
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~q\);

-- Location: LABCELL_X88_Y37_N33
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[1]~1_combout\ = ( !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~q\ & ( \clk~input_o\ ) ) # ( 
-- \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~q\ & ( !\clk~input_o\ & ( data(1) ) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|q~q\ & ( !\clk~input_o\ & ( !data(1) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_data(1),
	datae => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[1]~1_combout\);

-- Location: LABCELL_X88_Y37_N54
\output[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[1]$latch~combout\ = ( \output[1]$latch~combout\ & ( \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[1]~1_combout\ ) ) # ( !\output[1]$latch~combout\ & ( \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[1]~1_combout\ & 
-- ( !\mode~input_o\ ) ) ) # ( \output[1]$latch~combout\ & ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[1]~1_combout\ & ( \mode~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_mode~input_o\,
	datae => \ALT_INV_output[1]$latch~combout\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|ALT_INV_output[1]~1_combout\,
	combout => \output[1]$latch~combout\);

-- Location: IOIBUF_X89_Y4_N95
\input[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LABCELL_X88_Y34_N36
\data[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(2) = ( \mode~input_o\ & ( data(2) ) ) # ( !\mode~input_o\ & ( \input[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[2]~input_o\,
	datad => ALT_INV_data(2),
	dataf => \ALT_INV_mode~input_o\,
	combout => data(2));

-- Location: LABCELL_X88_Y34_N57
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q~0_combout\ = ( data(2) & ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q~q\ ) ) # ( !data(2) & ( 
-- !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => ALT_INV_data(2),
	combout => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q~0_combout\);

-- Location: FF_X88_Y34_N59
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q~q\);

-- Location: LABCELL_X88_Y34_N21
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[2]~2_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\ & ( (!data(2) & (data(0))) # (data(2) & ((!\clk~input_o\ $ 
-- (!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q~q\)))) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\ & ( (!data(2) & (!data(0))) # (data(2) & ((!\clk~input_o\ $ 
-- (!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000111100101010100011110001010101001111000101010100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data(0),
	datab => \ALT_INV_clk~input_o\,
	datac => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins3|ALT_INV_q~q\,
	datad => ALT_INV_data(2),
	dataf => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[2]~2_combout\);

-- Location: LABCELL_X88_Y34_N54
\output[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[2]$latch~combout\ = ( \mode~input_o\ & ( \output[2]$latch~combout\ ) ) # ( !\mode~input_o\ & ( \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[2]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|ALT_INV_output[2]~2_combout\,
	datad => \ALT_INV_output[2]$latch~combout\,
	dataf => \ALT_INV_mode~input_o\,
	combout => \output[2]$latch~combout\);

-- Location: IOIBUF_X66_Y0_N41
\input[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LABCELL_X88_Y34_N27
\data[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(3) = ( \mode~input_o\ & ( data(3) ) ) # ( !\mode~input_o\ & ( \input[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[3]~input_o\,
	datad => ALT_INV_data(3),
	dataf => \ALT_INV_mode~input_o\,
	combout => data(3));

-- Location: LABCELL_X88_Y34_N18
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q~0_combout\ = ( data(3) & ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q~q\ ) ) # ( !data(3) & ( 
-- !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => ALT_INV_data(3),
	combout => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q~0_combout\);

-- Location: FF_X88_Y34_N20
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q~q\);

-- Location: LABCELL_X88_Y34_N33
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[3]~3_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\ & ( (!data(3) & (((data(0))))) # (data(3) & 
-- (!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q~q\ $ ((!\clk~input_o\)))) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|q~q\ & ( (!data(3) & (((!data(0))))) # 
-- (data(3) & (!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|q~q\ $ ((!\clk~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001100110111100000110011000001111011001100000111101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins4|ALT_INV_q~q\,
	datab => \ALT_INV_clk~input_o\,
	datac => ALT_INV_data(0),
	datad => ALT_INV_data(3),
	dataf => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[3]~3_combout\);

-- Location: LABCELL_X88_Y34_N0
\output[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[3]$latch~combout\ = ( \mode~input_o\ & ( \output[3]$latch~combout\ ) ) # ( !\mode~input_o\ & ( \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|output[3]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins1|ALT_INV_output[3]~3_combout\,
	datad => \ALT_INV_output[3]$latch~combout\,
	dataf => \ALT_INV_mode~input_o\,
	combout => \output[3]$latch~combout\);

-- Location: IOIBUF_X88_Y81_N2
\input[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: LABCELL_X88_Y35_N33
\data[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(4) = ( \mode~input_o\ & ( data(4) ) ) # ( !\mode~input_o\ & ( \input[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data(4),
	datac => \ALT_INV_input[4]~input_o\,
	dataf => \ALT_INV_mode~input_o\,
	combout => data(4));

-- Location: LABCELL_X88_Y35_N30
\encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins2|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins2|output[0]~0_combout\ = ( data(4) & ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\ ) ) # ( !data(4) & ( 
-- !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(4),
	combout => \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins2|output[0]~0_combout\);

-- Location: FF_X88_Y35_N32
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins2|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\);

-- Location: LABCELL_X88_Y35_N6
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~0_combout\ = ( data(4) & ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\ ) ) # ( !data(4) & ( 
-- !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(4),
	combout => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~0_combout\);

-- Location: FF_X88_Y35_N8
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\);

-- Location: LABCELL_X88_Y35_N0
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[0]~0_combout\ = ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\ & ( (!data(4) & 
-- ((!\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\))) # (data(4) & (!\clk~input_o\)) ) ) # ( !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\ & ( (!data(4) & 
-- ((!\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\))) # (data(4) & (\clk~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010111000101110001011100010111001010110010101100101011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\,
	datac => ALT_INV_data(4),
	dataf => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[0]~0_combout\);

-- Location: LABCELL_X88_Y35_N3
\output[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[4]$latch~combout\ = ( \output[4]$latch~combout\ & ( (\mode~input_o\) # (\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[0]~0_combout\) ) ) # ( !\output[4]$latch~combout\ & ( 
-- (\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[0]~0_combout\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|ALT_INV_output[0]~0_combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \ALT_INV_output[4]$latch~combout\,
	combout => \output[4]$latch~combout\);

-- Location: IOIBUF_X66_Y0_N75
\input[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: LABCELL_X88_Y36_N6
\data[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(5) = ( data(5) & ( (\mode~input_o\) # (\input[5]~input_o\) ) ) # ( !data(5) & ( (\input[5]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[5]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(5),
	combout => data(5));

-- Location: LABCELL_X88_Y36_N15
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q~0_combout\ = ( data(5) & ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q~q\ ) ) # ( !data(5) & ( 
-- !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => ALT_INV_data(5),
	combout => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q~0_combout\);

-- Location: FF_X88_Y36_N17
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q~q\);

-- Location: LABCELL_X88_Y36_N54
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[1]~1_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q~q\ & ( (!\clk~input_o\ & data(5)) ) ) # ( 
-- !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|q~q\ & ( (!data(5)) # (\clk~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datad => ALT_INV_data(5),
	dataf => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins2|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[1]~1_combout\);

-- Location: LABCELL_X88_Y36_N57
\output[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[5]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[1]~1_combout\ & ( (!\mode~input_o\) # (\output[5]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[1]~1_combout\ & ( 
-- (\output[5]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_output[5]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|ALT_INV_output[1]~1_combout\,
	combout => \output[5]$latch~combout\);

-- Location: IOIBUF_X89_Y9_N4
\input[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: LABCELL_X88_Y35_N12
\data[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(6) = ( \mode~input_o\ & ( data(6) ) ) # ( !\mode~input_o\ & ( \input[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_data(6),
	datac => \ALT_INV_input[6]~input_o\,
	dataf => \ALT_INV_mode~input_o\,
	combout => data(6));

-- Location: LABCELL_X88_Y35_N15
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q~0_combout\ = ( data(6) & ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q~q\ ) ) # ( !data(6) & ( 
-- !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => ALT_INV_data(6),
	combout => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q~0_combout\);

-- Location: FF_X88_Y35_N17
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q~q\);

-- Location: LABCELL_X88_Y35_N42
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[2]~2_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\ & ( (!data(6) & (((data(4))))) # (data(6) & (!\clk~input_o\ $ 
-- ((!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q~q\)))) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\ & ( (!data(6) & (((!data(4))))) # (data(6) & 
-- (!\clk~input_o\ $ ((!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001100110111100000110011000001111011001100000111101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins3|ALT_INV_q~q\,
	datac => ALT_INV_data(4),
	datad => ALT_INV_data(6),
	dataf => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[2]~2_combout\);

-- Location: LABCELL_X88_Y35_N45
\output[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[6]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[2]~2_combout\ & ( (!\mode~input_o\) # (\output[6]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[2]~2_combout\ & ( 
-- (\output[6]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_output[6]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|ALT_INV_output[2]~2_combout\,
	combout => \output[6]$latch~combout\);

-- Location: IOIBUF_X89_Y35_N95
\input[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: LABCELL_X88_Y35_N9
\data[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(7) = ( data(7) & ( (\mode~input_o\) # (\input[7]~input_o\) ) ) # ( !data(7) & ( (\input[7]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[7]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(7),
	combout => data(7));

-- Location: LABCELL_X88_Y35_N36
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q~0_combout\ = ( data(7) & ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q~q\ ) ) # ( !data(7) & ( 
-- !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => ALT_INV_data(7),
	combout => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q~0_combout\);

-- Location: FF_X88_Y35_N38
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q~q\);

-- Location: LABCELL_X88_Y35_N21
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[3]~3_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\ & ( (!data(7) & (data(4))) # (data(7) & ((!\clk~input_o\ $ 
-- (!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q~q\)))) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|q~q\ & ( (!data(7) & (!data(4))) # (data(7) & ((!\clk~input_o\ $ 
-- (!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001110101100101000111010110001010011010111000101001101011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data(4),
	datab => \ALT_INV_clk~input_o\,
	datac => ALT_INV_data(7),
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[3]~3_combout\);

-- Location: LABCELL_X88_Y35_N18
\output[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[7]$latch~combout\ = ( \output[7]$latch~combout\ & ( (\mode~input_o\) # (\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[3]~3_combout\) ) ) # ( !\output[7]$latch~combout\ & ( 
-- (\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|output[3]~3_combout\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins2|ALT_INV_output[3]~3_combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \ALT_INV_output[7]$latch~combout\,
	combout => \output[7]$latch~combout\);

-- Location: IOIBUF_X89_Y6_N38
\input[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(8),
	o => \input[8]~input_o\);

-- Location: LABCELL_X88_Y34_N51
\data[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(8) = ( data(8) & ( (\mode~input_o\) # (\input[8]~input_o\) ) ) # ( !data(8) & ( (\input[8]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[8]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(8),
	combout => data(8));

-- Location: LABCELL_X88_Y35_N51
\encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins3|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins3|output[0]~0_combout\ = !data(8) $ (\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_data(8),
	datad => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins3|output[0]~0_combout\);

-- Location: FF_X88_Y35_N53
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins3|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\);

-- Location: LABCELL_X88_Y35_N24
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~0_combout\ = !data(8) $ (\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111111100000000111111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_data(8),
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~0_combout\);

-- Location: FF_X88_Y35_N26
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\);

-- Location: LABCELL_X88_Y35_N39
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[0]~0_combout\ = ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( (!data(8) & 
-- (!\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\)) # (data(8) & ((!\clk~input_o\))) ) ) # ( !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( (!data(8) & 
-- (!\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\)) # (data(8) & ((\clk~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000110011101010100011001110101010110011001010101011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\,
	datab => \ALT_INV_clk~input_o\,
	datad => ALT_INV_data(8),
	dataf => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[0]~0_combout\);

-- Location: LABCELL_X88_Y35_N48
\output[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[8]$latch~combout\ = ( \output[8]$latch~combout\ & ( (\mode~input_o\) # (\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[0]~0_combout\) ) ) # ( !\output[8]$latch~combout\ & ( 
-- (\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[0]~0_combout\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|ALT_INV_output[0]~0_combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \ALT_INV_output[8]$latch~combout\,
	combout => \output[8]$latch~combout\);

-- Location: IOIBUF_X89_Y4_N44
\input[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(9),
	o => \input[9]~input_o\);

-- Location: LABCELL_X88_Y34_N15
\data[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(9) = ( data(9) & ( (\mode~input_o\) # (\input[9]~input_o\) ) ) # ( !data(9) & ( (\input[9]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[9]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(9),
	combout => data(9));

-- Location: LABCELL_X88_Y34_N24
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q~0_combout\ = ( data(9) & ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q~q\ ) ) # ( !data(9) & ( 
-- !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => ALT_INV_data(9),
	combout => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q~0_combout\);

-- Location: FF_X88_Y34_N26
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q~q\);

-- Location: LABCELL_X88_Y34_N39
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[1]~1_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q~q\ & ( (!\clk~input_o\ & data(9)) ) ) # ( 
-- !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|q~q\ & ( (!data(9)) # (\clk~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => ALT_INV_data(9),
	dataf => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins2|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[1]~1_combout\);

-- Location: LABCELL_X88_Y34_N12
\output[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[9]$latch~combout\ = ( \output[9]$latch~combout\ & ( (\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[1]~1_combout\) # (\mode~input_o\) ) ) # ( !\output[9]$latch~combout\ & ( (!\mode~input_o\ & 
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_mode~input_o\,
	datac => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|ALT_INV_output[1]~1_combout\,
	dataf => \ALT_INV_output[9]$latch~combout\,
	combout => \output[9]$latch~combout\);

-- Location: IOIBUF_X68_Y0_N35
\input[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(10),
	o => \input[10]~input_o\);

-- Location: MLABCELL_X87_Y34_N42
\data[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(10) = ( data(10) & ( (\mode~input_o\) # (\input[10]~input_o\) ) ) # ( !data(10) & ( (\input[10]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[10]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(10),
	combout => data(10));

-- Location: MLABCELL_X87_Y34_N3
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q~0_combout\ = ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q~q\ & ( data(10) ) ) # ( 
-- !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q~q\ & ( !data(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => ALT_INV_data(10),
	combout => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q~0_combout\);

-- Location: FF_X87_Y34_N4
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q~q\);

-- Location: LABCELL_X88_Y34_N3
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[2]~2_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( (!data(10) & (data(8))) # (data(10) & ((!\clk~input_o\ $ 
-- (!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q~q\)))) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( (!data(10) & (!data(8))) # (data(10) & ((!\clk~input_o\ 
-- $ (!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000111100101010100011110001010101001111000101010100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data(8),
	datab => \ALT_INV_clk~input_o\,
	datac => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins3|ALT_INV_q~q\,
	datad => ALT_INV_data(10),
	dataf => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[2]~2_combout\);

-- Location: LABCELL_X88_Y34_N48
\output[10]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[10]$latch~combout\ = ( \output[10]$latch~combout\ & ( (\mode~input_o\) # (\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[2]~2_combout\) ) ) # ( !\output[10]$latch~combout\ & ( 
-- (\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[2]~2_combout\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|ALT_INV_output[2]~2_combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \ALT_INV_output[10]$latch~combout\,
	combout => \output[10]$latch~combout\);

-- Location: IOIBUF_X89_Y9_N21
\input[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(11),
	o => \input[11]~input_o\);

-- Location: LABCELL_X88_Y33_N6
\data[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(11) = ( \mode~input_o\ & ( data(11) ) ) # ( !\mode~input_o\ & ( data(11) & ( \input[11]~input_o\ ) ) ) # ( !\mode~input_o\ & ( !data(11) & ( \input[11]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[11]~input_o\,
	datae => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(11),
	combout => data(11));

-- Location: LABCELL_X88_Y35_N27
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|q~0_combout\ = ( data(11) & ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|q~q\ ) ) # ( !data(11) & ( 
-- !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => ALT_INV_data(11),
	combout => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|q~0_combout\);

-- Location: FF_X88_Y35_N29
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|q~q\);

-- Location: LABCELL_X88_Y35_N54
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[3]~3_combout\ = ( data(11) & ( !\clk~input_o\ $ (!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|q~q\) ) ) # ( !data(11) & ( !data(8) $ 
-- (\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|q~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data(8),
	datab => \ALT_INV_clk~input_o\,
	datac => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\,
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins3|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => ALT_INV_data(11),
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[3]~3_combout\);

-- Location: LABCELL_X88_Y35_N57
\output[11]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[11]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[3]~3_combout\ & ( (!\mode~input_o\) # (\output[11]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|output[3]~3_combout\ & ( 
-- (\output[11]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_output[11]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins3|ALT_INV_output[3]~3_combout\,
	combout => \output[11]$latch~combout\);

-- Location: IOIBUF_X86_Y81_N52
\input[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(12),
	o => \input[12]~input_o\);

-- Location: MLABCELL_X87_Y35_N9
\data[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(12) = ( data(12) & ( (\mode~input_o\) # (\input[12]~input_o\) ) ) # ( !data(12) & ( (\input[12]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[12]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(12),
	combout => data(12));

-- Location: MLABCELL_X87_Y35_N45
\encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins4|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins4|output[0]~0_combout\ = ( data(12) & ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\ ) ) # ( !data(12) & ( 
-- !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(12),
	combout => \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins4|output[0]~0_combout\);

-- Location: FF_X87_Y35_N47
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|mux_32_bit_ins1|mux_16_bit_ins1|mux_4_bit_ins4|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\);

-- Location: MLABCELL_X87_Y35_N54
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~0_combout\ = ( data(12) & ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\ ) ) # ( !data(12) & ( 
-- !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(12),
	combout => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~0_combout\);

-- Location: FF_X87_Y35_N56
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\);

-- Location: MLABCELL_X87_Y35_N3
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[0]~0_combout\ = ( data(12) & ( !\clk~input_o\ $ (!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\) ) ) # ( !data(12) & ( 
-- !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datac => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\,
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(12),
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[0]~0_combout\);

-- Location: MLABCELL_X87_Y35_N6
\output[12]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[12]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[0]~0_combout\ & ( (!\mode~input_o\) # (\output[12]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[0]~0_combout\ & ( 
-- (\output[12]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_output[12]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|ALT_INV_output[0]~0_combout\,
	combout => \output[12]$latch~combout\);

-- Location: IOIBUF_X82_Y81_N75
\input[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(13),
	o => \input[13]~input_o\);

-- Location: LABCELL_X85_Y35_N30
\data[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(13) = ( data(13) & ( (\mode~input_o\) # (\input[13]~input_o\) ) ) # ( !data(13) & ( (\input[13]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[13]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(13),
	combout => data(13));

-- Location: LABCELL_X85_Y35_N33
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q~0_combout\ = ( data(13) & ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q~q\ ) ) # ( !data(13) & ( 
-- !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => ALT_INV_data(13),
	combout => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q~0_combout\);

-- Location: FF_X85_Y35_N35
\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q~q\);

-- Location: LABCELL_X85_Y35_N48
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[1]~1_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q~q\ & ( (!\clk~input_o\ & data(13)) ) ) # ( 
-- !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|q~q\ & ( (!data(13)) # (\clk~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => ALT_INV_data(13),
	dataf => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins2|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[1]~1_combout\);

-- Location: LABCELL_X85_Y35_N51
\output[13]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[13]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[1]~1_combout\ & ( (!\mode~input_o\) # (\output[13]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[1]~1_combout\ & ( 
-- (\output[13]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_output[13]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|ALT_INV_output[1]~1_combout\,
	combout => \output[13]$latch~combout\);

-- Location: IOIBUF_X84_Y81_N18
\input[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(14),
	o => \input[14]~input_o\);

-- Location: LABCELL_X85_Y35_N9
\data[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(14) = ( data(14) & ( (\mode~input_o\) # (\input[14]~input_o\) ) ) # ( !data(14) & ( (\input[14]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[14]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(14),
	combout => data(14));

-- Location: MLABCELL_X84_Y35_N12
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q~0_combout\ = ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q~q\ & ( data(14) ) ) # ( 
-- !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q~q\ & ( !data(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => ALT_INV_data(14),
	combout => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q~0_combout\);

-- Location: FF_X84_Y35_N13
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q~q\);

-- Location: LABCELL_X85_Y35_N18
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[2]~2_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\ & ( (!data(14) & (((data(12))))) # (data(14) & (!\clk~input_o\ $ 
-- (((!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q~q\))))) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\ & ( (!data(14) & (((!data(12))))) # (data(14) & 
-- (!\clk~input_o\ $ (((!\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|q~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111100010110100011110001000011101001011100001110100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => ALT_INV_data(14),
	datac => ALT_INV_data(12),
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[2]~2_combout\);

-- Location: LABCELL_X85_Y35_N21
\output[14]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[14]$latch~combout\ = ( \mode~input_o\ & ( \output[14]$latch~combout\ ) ) # ( !\mode~input_o\ & ( \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[2]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|ALT_INV_output[2]~2_combout\,
	datad => \ALT_INV_output[14]$latch~combout\,
	dataf => \ALT_INV_mode~input_o\,
	combout => \output[14]$latch~combout\);

-- Location: IOIBUF_X89_Y9_N38
\input[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(15),
	o => \input[15]~input_o\);

-- Location: LABCELL_X88_Y33_N15
\data[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(15) = ( \mode~input_o\ & ( data(15) ) ) # ( !\mode~input_o\ & ( data(15) & ( \input[15]~input_o\ ) ) ) # ( !\mode~input_o\ & ( !data(15) & ( \input[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[15]~input_o\,
	datae => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(15),
	combout => data(15));

-- Location: LABCELL_X85_Y35_N6
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q~0_combout\ = ( data(15) & ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q~q\ ) ) # ( !data(15) & ( 
-- !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => ALT_INV_data(15),
	combout => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q~0_combout\);

-- Location: FF_X85_Y35_N7
\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q~q\);

-- Location: MLABCELL_X87_Y35_N57
\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[3]~3_combout\ = ( \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q~q\ & ( (!data(15) & ((!data(12) $ 
-- (\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\)))) # (data(15) & (!\clk~input_o\)) ) ) # ( !\encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|q~q\ & ( (!data(15) & ((!data(12) 
-- $ (\encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|q~q\)))) # (data(15) & (\clk~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001101010101110000110101010111000011101010101100001110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => ALT_INV_data(12),
	datac => \encoder|register_BMC_0|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\,
	datad => ALT_INV_data(15),
	dataf => \encoder|register_parity|register_16_bit_ins1|register_4_bit_ins4|register_1_bit_ins4|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[3]~3_combout\);

-- Location: MLABCELL_X87_Y35_N42
\output[15]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[15]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[3]~3_combout\ & ( (!\mode~input_o\) # (\output[15]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|output[3]~3_combout\ & ( 
-- (\output[15]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_output[15]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins1|mux_4_bit_ins4|ALT_INV_output[3]~3_combout\,
	combout => \output[15]$latch~combout\);

-- Location: IOIBUF_X68_Y0_N18
\input[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(16),
	o => \input[16]~input_o\);

-- Location: LABCELL_X85_Y35_N39
\data[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(16) = ( data(16) & ( (\mode~input_o\) # (\input[16]~input_o\) ) ) # ( !data(16) & ( (\input[16]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[16]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(16),
	combout => data(16));

-- Location: LABCELL_X85_Y35_N36
\encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins1|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins1|output[0]~0_combout\ = ( data(16) & ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\ ) ) # ( !data(16) & ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(16),
	combout => \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins1|output[0]~0_combout\);

-- Location: FF_X85_Y35_N38
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins1|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\);

-- Location: MLABCELL_X84_Y35_N3
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~0_combout\ = ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\ & ( data(16) ) ) # ( 
-- !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\ & ( !data(16) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(16),
	combout => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~0_combout\);

-- Location: FF_X84_Y35_N4
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\);

-- Location: LABCELL_X85_Y35_N54
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[0]~0_combout\ = ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\ & ( (!data(16) & 
-- ((!\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\))) # (data(16) & (!\clk~input_o\)) ) ) # ( !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\ & ( (!data(16) & 
-- ((!\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\))) # (data(16) & (\clk~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110100010001110111010001000111101110001000101110111000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => ALT_INV_data(16),
	datad => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[0]~0_combout\);

-- Location: LABCELL_X85_Y35_N57
\output[16]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[16]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[0]~0_combout\ & ( (!\mode~input_o\) # (\output[16]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[0]~0_combout\ & ( 
-- (\output[16]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_output[16]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|ALT_INV_output[0]~0_combout\,
	combout => \output[16]$latch~combout\);

-- Location: IOIBUF_X89_Y37_N55
\input[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(17),
	o => \input[17]~input_o\);

-- Location: LABCELL_X88_Y37_N12
\data[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(17) = ( \input[17]~input_o\ & ( \mode~input_o\ & ( data(17) ) ) ) # ( !\input[17]~input_o\ & ( \mode~input_o\ & ( data(17) ) ) ) # ( \input[17]~input_o\ & ( !\mode~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_data(17),
	datae => \ALT_INV_input[17]~input_o\,
	dataf => \ALT_INV_mode~input_o\,
	combout => data(17));

-- Location: LABCELL_X88_Y37_N21
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~0_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~q\ & ( data(17) ) ) # ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~q\ & ( !data(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => ALT_INV_data(17),
	combout => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~0_combout\);

-- Location: FF_X88_Y37_N23
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~q\);

-- Location: LABCELL_X88_Y37_N36
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[1]~1_combout\ = ( !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~q\ & ( \clk~input_o\ ) ) # ( 
-- \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~q\ & ( !\clk~input_o\ & ( data(17) ) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|q~q\ & ( !\clk~input_o\ & ( !data(17) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000001111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_data(17),
	datae => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[1]~1_combout\);

-- Location: LABCELL_X88_Y37_N51
\output[17]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[17]$latch~combout\ = ( \output[17]$latch~combout\ & ( (\mode~input_o\) # (\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[1]~1_combout\) ) ) # ( !\output[17]$latch~combout\ & ( 
-- (\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[1]~1_combout\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|ALT_INV_output[1]~1_combout\,
	datac => \ALT_INV_mode~input_o\,
	dataf => \ALT_INV_output[17]$latch~combout\,
	combout => \output[17]$latch~combout\);

-- Location: IOIBUF_X82_Y81_N58
\input[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(18),
	o => \input[18]~input_o\);

-- Location: LABCELL_X85_Y35_N42
\data[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(18) = ( data(18) & ( (\mode~input_o\) # (\input[18]~input_o\) ) ) # ( !data(18) & ( (\input[18]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[18]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(18),
	combout => data(18));

-- Location: LABCELL_X85_Y35_N45
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q~0_combout\ = ( data(18) & ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q~q\ ) ) # ( !data(18) & ( 
-- !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => ALT_INV_data(18),
	combout => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q~0_combout\);

-- Location: FF_X85_Y35_N47
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q~q\);

-- Location: LABCELL_X85_Y35_N3
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[2]~2_combout\ = ( data(16) & ( (!data(18) & (((\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\)))) # (data(18) & (!\clk~input_o\ $ 
-- ((!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q~q\)))) ) ) # ( !data(16) & ( (!data(18) & (((!\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\)))) # (data(18) & 
-- (!\clk~input_o\ $ ((!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111000010010110111100001001000010010110111100001001011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => ALT_INV_data(18),
	datac => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins3|ALT_INV_q~q\,
	datad => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(16),
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[2]~2_combout\);

-- Location: LABCELL_X85_Y35_N0
\output[18]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[18]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[2]~2_combout\ & ( (!\mode~input_o\) # (\output[18]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[2]~2_combout\ & ( 
-- (\output[18]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_output[18]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|ALT_INV_output[2]~2_combout\,
	combout => \output[18]$latch~combout\);

-- Location: IOIBUF_X84_Y81_N52
\input[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(19),
	o => \input[19]~input_o\);

-- Location: LABCELL_X85_Y35_N12
\data[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(19) = ( data(19) & ( (\mode~input_o\) # (\input[19]~input_o\) ) ) # ( !data(19) & ( (\input[19]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[19]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(19),
	combout => data(19));

-- Location: LABCELL_X85_Y35_N15
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q~0_combout\ = ( data(19) & ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q~q\ ) ) # ( !data(19) & ( 
-- !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => ALT_INV_data(19),
	combout => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q~0_combout\);

-- Location: FF_X85_Y35_N17
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q~q\);

-- Location: LABCELL_X85_Y35_N24
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[3]~3_combout\ = ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q~q\ & ( (!data(19) & ((!data(16) $ 
-- (\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\)))) # (data(19) & (!\clk~input_o\)) ) ) # ( !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|q~q\ & ( (!data(19) & ((!data(16) 
-- $ (\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|q~q\)))) # (data(19) & (\clk~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000100011101110100010001110111100010001011101110001000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => ALT_INV_data(19),
	datac => ALT_INV_data(16),
	datad => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins1|register_1_bit_ins4|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[3]~3_combout\);

-- Location: LABCELL_X85_Y35_N27
\output[19]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[19]$latch~combout\ = ( \mode~input_o\ & ( \output[19]$latch~combout\ ) ) # ( !\mode~input_o\ & ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|output[3]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins1|ALT_INV_output[3]~3_combout\,
	datad => \ALT_INV_output[19]$latch~combout\,
	dataf => \ALT_INV_mode~input_o\,
	combout => \output[19]$latch~combout\);

-- Location: IOIBUF_X89_Y38_N4
\input[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(20),
	o => \input[20]~input_o\);

-- Location: LABCELL_X88_Y36_N39
\data[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(20) = ( data(20) & ( (\mode~input_o\) # (\input[20]~input_o\) ) ) # ( !data(20) & ( (\input[20]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[20]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(20),
	combout => data(20));

-- Location: LABCELL_X88_Y36_N36
\encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins2|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins2|output[0]~0_combout\ = ( data(20) & ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\ ) ) # ( !data(20) & ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(20),
	combout => \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins2|output[0]~0_combout\);

-- Location: FF_X88_Y36_N38
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins2|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\);

-- Location: MLABCELL_X87_Y36_N3
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~0_combout\ = ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\ & ( data(20) ) ) # ( 
-- !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\ & ( !data(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(20),
	combout => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~0_combout\);

-- Location: FF_X87_Y36_N4
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\);

-- Location: LABCELL_X88_Y36_N33
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[0]~0_combout\ = ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\ & ( (!data(20) & 
-- ((!\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\))) # (data(20) & (!\clk~input_o\)) ) ) # ( !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\ & ( (!data(20) & 
-- ((!\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\))) # (data(20) & (\clk~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001100000011111100110000001111111100000011001111110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => ALT_INV_data(20),
	datad => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[0]~0_combout\);

-- Location: LABCELL_X88_Y36_N30
\output[20]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[20]$latch~combout\ = ( \output[20]$latch~combout\ & ( (\mode~input_o\) # (\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[0]~0_combout\) ) ) # ( !\output[20]$latch~combout\ & ( 
-- (\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[0]~0_combout\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|ALT_INV_output[0]~0_combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \ALT_INV_output[20]$latch~combout\,
	combout => \output[20]$latch~combout\);

-- Location: IOIBUF_X70_Y0_N18
\input[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(21),
	o => \input[21]~input_o\);

-- Location: MLABCELL_X87_Y34_N6
\data[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(21) = ( data(21) & ( (\mode~input_o\) # (\input[21]~input_o\) ) ) # ( !data(21) & ( (\input[21]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[21]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(21),
	combout => data(21));

-- Location: MLABCELL_X87_Y34_N39
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q~0_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q~q\ & ( data(21) ) ) # ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q~q\ & ( !data(21) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => ALT_INV_data(21),
	combout => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q~0_combout\);

-- Location: FF_X87_Y34_N41
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q~q\);

-- Location: MLABCELL_X87_Y34_N30
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[1]~1_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q~q\ & ( (!\clk~input_o\ & data(21)) ) ) # ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|q~q\ & ( (!data(21)) # (\clk~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011111111110011001100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datad => ALT_INV_data(21),
	dataf => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins2|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[1]~1_combout\);

-- Location: MLABCELL_X87_Y34_N33
\output[21]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[21]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[1]~1_combout\ & ( (!\mode~input_o\) # (\output[21]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[1]~1_combout\ & ( 
-- (\output[21]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_output[21]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|ALT_INV_output[1]~1_combout\,
	combout => \output[21]$latch~combout\);

-- Location: IOIBUF_X89_Y36_N38
\input[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(22),
	o => \input[22]~input_o\);

-- Location: LABCELL_X88_Y36_N51
\data[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(22) = ( data(22) & ( (\mode~input_o\) # (\input[22]~input_o\) ) ) # ( !data(22) & ( (\input[22]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[22]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(22),
	combout => data(22));

-- Location: LABCELL_X88_Y36_N48
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|q~0_combout\ = !data(22) $ (\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_data(22),
	datad => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|ALT_INV_q~q\,
	combout => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|q~0_combout\);

-- Location: FF_X88_Y36_N50
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|q~q\);

-- Location: LABCELL_X88_Y36_N18
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[2]~2_combout\ = ( \clk~input_o\ & ( (!data(22) & ((!data(20) $ (\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\)))) # (data(22) & 
-- (!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|q~q\)) ) ) # ( !\clk~input_o\ & ( (!data(22) & ((!data(20) $ (\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\)))) # (data(22) 
-- & (\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010100110101110001010011010111001010001110101100101000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins3|ALT_INV_q~q\,
	datab => ALT_INV_data(20),
	datac => ALT_INV_data(22),
	datad => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[2]~2_combout\);

-- Location: LABCELL_X88_Y36_N21
\output[22]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[22]$latch~combout\ = ( \mode~input_o\ & ( \output[22]$latch~combout\ ) ) # ( !\mode~input_o\ & ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[2]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|ALT_INV_output[2]~2_combout\,
	datad => \ALT_INV_output[22]$latch~combout\,
	dataf => \ALT_INV_mode~input_o\,
	combout => \output[22]$latch~combout\);

-- Location: IOIBUF_X89_Y36_N55
\input[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(23),
	o => \input[23]~input_o\);

-- Location: LABCELL_X88_Y36_N24
\data[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(23) = ( data(23) & ( (\mode~input_o\) # (\input[23]~input_o\) ) ) # ( !data(23) & ( (\input[23]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[23]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(23),
	combout => data(23));

-- Location: LABCELL_X88_Y36_N27
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q~0_combout\ = ( data(23) & ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q~q\ ) ) # ( !data(23) & ( 
-- !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => ALT_INV_data(23),
	combout => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q~0_combout\);

-- Location: FF_X88_Y36_N29
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q~q\);

-- Location: LABCELL_X88_Y36_N0
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[3]~3_combout\ = ( data(20) & ( (!data(23) & (((\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\)))) # (data(23) & (!\clk~input_o\ $ 
-- (((!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q~q\))))) ) ) # ( !data(20) & ( (!data(23) & (((!\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|q~q\)))) # (data(23) & 
-- (!\clk~input_o\ $ (((!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|q~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000111100100101100011110010000011011010011100001101101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data(23),
	datab => \ALT_INV_clk~input_o\,
	datac => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins1|ALT_INV_q~q\,
	datad => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins2|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => ALT_INV_data(20),
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[3]~3_combout\);

-- Location: LABCELL_X88_Y36_N3
\output[23]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[23]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[3]~3_combout\ & ( (!\mode~input_o\) # (\output[23]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|output[3]~3_combout\ & ( 
-- (\mode~input_o\ & \output[23]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mode~input_o\,
	datad => \ALT_INV_output[23]$latch~combout\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins2|ALT_INV_output[3]~3_combout\,
	combout => \output[23]$latch~combout\);

-- Location: IOIBUF_X86_Y81_N1
\input[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(24),
	o => \input[24]~input_o\);

-- Location: MLABCELL_X87_Y36_N30
\data[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(24) = ( \mode~input_o\ & ( data(24) ) ) # ( !\mode~input_o\ & ( data(24) & ( \input[24]~input_o\ ) ) ) # ( !\mode~input_o\ & ( !data(24) & ( \input[24]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[24]~input_o\,
	datae => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(24),
	combout => data(24));

-- Location: MLABCELL_X87_Y36_N45
\encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( data(24) ) ) # ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( !data(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(24),
	combout => \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0_combout\);

-- Location: FF_X87_Y36_N47
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\);

-- Location: MLABCELL_X87_Y36_N57
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~0_combout\ = ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( data(24) ) ) # ( 
-- !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( !data(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(24),
	combout => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~0_combout\);

-- Location: FF_X87_Y36_N59
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\);

-- Location: MLABCELL_X87_Y36_N18
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0_combout\ = ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( data(24) & ( !\clk~input_o\ ) ) ) # ( 
-- !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( data(24) & ( \clk~input_o\ ) ) ) # ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( !data(24) & ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ ) ) ) # ( !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( !data(24) & ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datad => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\,
	datae => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(24),
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0_combout\);

-- Location: MLABCELL_X87_Y36_N48
\output[24]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[24]$latch~combout\ = ( \mode~input_o\ & ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0_combout\ & ( \output[24]$latch~combout\ ) ) ) # ( !\mode~input_o\ & ( 
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0_combout\ ) ) # ( \mode~input_o\ & ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[0]~0_combout\ & ( \output[24]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_output[24]$latch~combout\,
	datae => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|ALT_INV_output[0]~0_combout\,
	combout => \output[24]$latch~combout\);

-- Location: IOIBUF_X70_Y0_N35
\input[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(25),
	o => \input[25]~input_o\);

-- Location: MLABCELL_X87_Y34_N18
\data[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(25) = ( data(25) & ( (\mode~input_o\) # (\input[25]~input_o\) ) ) # ( !data(25) & ( (\input[25]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[25]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(25),
	combout => data(25));

-- Location: MLABCELL_X87_Y34_N51
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q~0_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q~q\ & ( data(25) ) ) # ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q~q\ & ( !data(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => ALT_INV_data(25),
	combout => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q~0_combout\);

-- Location: FF_X87_Y34_N53
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q~q\);

-- Location: MLABCELL_X87_Y34_N54
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[1]~1_combout\ = ( data(25) & ( !\clk~input_o\ $ (!\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q~q\) ) ) # ( !data(25) & ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => ALT_INV_data(25),
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[1]~1_combout\);

-- Location: MLABCELL_X87_Y34_N57
\output[25]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[25]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[1]~1_combout\ & ( (!\mode~input_o\) # (\output[25]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[1]~1_combout\ & ( 
-- (\mode~input_o\ & \output[25]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_mode~input_o\,
	datad => \ALT_INV_output[25]$latch~combout\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|ALT_INV_output[1]~1_combout\,
	combout => \output[25]$latch~combout\);

-- Location: IOIBUF_X89_Y38_N21
\input[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(26),
	o => \input[26]~input_o\);

-- Location: MLABCELL_X87_Y36_N6
\data[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(26) = ( \mode~input_o\ & ( data(26) ) ) # ( !\mode~input_o\ & ( data(26) & ( \input[26]~input_o\ ) ) ) # ( !\mode~input_o\ & ( !data(26) & ( \input[26]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[26]~input_o\,
	datae => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(26),
	combout => data(26));

-- Location: MLABCELL_X87_Y36_N36
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~0_combout\ = ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~q\ & ( data(26) ) ) # ( 
-- !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~q\ & ( !data(26) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => ALT_INV_data(26),
	combout => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~0_combout\);

-- Location: FF_X87_Y36_N38
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~q\);

-- Location: MLABCELL_X87_Y36_N12
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[2]~2_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( data(24) & ( (!data(26)) # (!\clk~input_o\ $ 
-- (!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~q\)) ) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( data(24) & ( (data(26) & (!\clk~input_o\ $ 
-- (!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~q\))) ) ) ) # ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( !data(24) & ( (data(26) & (!\clk~input_o\ $ 
-- (!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~q\))) ) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( !data(24) & ( (!data(26)) # (!\clk~input_o\ $ 
-- (!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|q~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111100000000000011110000000000001111001111111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_clk~input_o\,
	datac => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins3|ALT_INV_q~q\,
	datad => ALT_INV_data(26),
	datae => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(24),
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[2]~2_combout\);

-- Location: MLABCELL_X87_Y36_N27
\output[26]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[26]$latch~combout\ = ( \output[26]$latch~combout\ & ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[2]~2_combout\ ) ) # ( !\output[26]$latch~combout\ & ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[2]~2_combout\ 
-- & ( !\mode~input_o\ ) ) ) # ( \output[26]$latch~combout\ & ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[2]~2_combout\ & ( \mode~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mode~input_o\,
	datae => \ALT_INV_output[26]$latch~combout\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|ALT_INV_output[2]~2_combout\,
	combout => \output[26]$latch~combout\);

-- Location: IOIBUF_X89_Y36_N4
\input[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(27),
	o => \input[27]~input_o\);

-- Location: LABCELL_X88_Y36_N12
\data[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(27) = ( data(27) & ( (\mode~input_o\) # (\input[27]~input_o\) ) ) # ( !data(27) & ( (\input[27]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_input[27]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(27),
	combout => data(27));

-- Location: LABCELL_X88_Y36_N45
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q~0_combout\ = ( data(27) & ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q~q\ ) ) # ( !data(27) & ( 
-- !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => ALT_INV_data(27),
	combout => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q~0_combout\);

-- Location: FF_X88_Y36_N47
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q~q\);

-- Location: LABCELL_X88_Y36_N42
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[3]~3_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( (!data(27) & (((data(24))))) # (data(27) & (!\clk~input_o\ $ 
-- (((!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q~q\))))) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|q~q\ & ( (!data(27) & (((!data(24))))) # (data(27) & 
-- (!\clk~input_o\ $ (((!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|q~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000111100010110100011110001000011101001011100001110100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datab => ALT_INV_data(27),
	datac => ALT_INV_data(24),
	datad => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins3|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[3]~3_combout\);

-- Location: LABCELL_X88_Y36_N9
\output[27]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[27]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[3]~3_combout\ & ( (!\mode~input_o\) # (\output[27]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|output[3]~3_combout\ & ( 
-- (\output[27]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_output[27]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins3|ALT_INV_output[3]~3_combout\,
	combout => \output[27]$latch~combout\);

-- Location: IOIBUF_X64_Y0_N35
\input[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(28),
	o => \input[28]~input_o\);

-- Location: MLABCELL_X87_Y35_N33
\data[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(28) = ( data(28) & ( (\mode~input_o\) # (\input[28]~input_o\) ) ) # ( !data(28) & ( (\input[28]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[28]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(28),
	combout => data(28));

-- Location: MLABCELL_X87_Y35_N18
\encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins4|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins4|output[0]~0_combout\ = ( data(28) & ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\ ) ) # ( !data(28) & ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(28),
	combout => \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins4|output[0]~0_combout\);

-- Location: FF_X87_Y35_N20
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|mux_32_bit_ins1|mux_16_bit_ins2|mux_4_bit_ins4|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\);

-- Location: MLABCELL_X87_Y35_N30
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~0_combout\ = ( data(28) & ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\ ) ) # ( !data(28) & ( 
-- !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => ALT_INV_data(28),
	combout => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~0_combout\);

-- Location: FF_X87_Y35_N32
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\);

-- Location: MLABCELL_X87_Y35_N24
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[0]~0_combout\ = ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\ & ( (!data(28) & 
-- ((!\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\))) # (data(28) & (!\clk~input_o\)) ) ) # ( !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\ & ( (!data(28) & 
-- ((!\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\))) # (data(28) & (\clk~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000110110001101100011011000111100100111001001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data(28),
	datab => \ALT_INV_clk~input_o\,
	datac => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\,
	dataf => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[0]~0_combout\);

-- Location: MLABCELL_X87_Y35_N27
\output[28]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[28]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[0]~0_combout\ & ( (!\mode~input_o\) # (\output[28]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[0]~0_combout\ & ( 
-- (\mode~input_o\ & \output[28]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mode~input_o\,
	datad => \ALT_INV_output[28]$latch~combout\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|ALT_INV_output[0]~0_combout\,
	combout => \output[28]$latch~combout\);

-- Location: IOIBUF_X70_Y0_N1
\input[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(29),
	o => \input[29]~input_o\);

-- Location: MLABCELL_X87_Y34_N15
\data[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(29) = ( data(29) & ( (\input[29]~input_o\) # (\mode~input_o\) ) ) # ( !data(29) & ( (!\mode~input_o\ & \input[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_mode~input_o\,
	datad => \ALT_INV_input[29]~input_o\,
	dataf => ALT_INV_data(29),
	combout => data(29));

-- Location: MLABCELL_X87_Y34_N24
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q~0_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q~q\ & ( data(29) ) ) # ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q~q\ & ( !data(29) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|ALT_INV_q~q\,
	dataf => ALT_INV_data(29),
	combout => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q~0_combout\);

-- Location: FF_X87_Y34_N26
\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q~q\);

-- Location: MLABCELL_X87_Y34_N45
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[1]~1_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q~q\ & ( (!\clk~input_o\ & data(29)) ) ) # ( 
-- !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|q~q\ & ( (!data(29)) # (\clk~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clk~input_o\,
	datac => ALT_INV_data(29),
	dataf => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins2|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[1]~1_combout\);

-- Location: MLABCELL_X87_Y34_N12
\output[29]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[29]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[1]~1_combout\ & ( (!\mode~input_o\) # (\output[29]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[1]~1_combout\ & ( 
-- (\output[29]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_output[29]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|ALT_INV_output[1]~1_combout\,
	combout => \output[29]$latch~combout\);

-- Location: IOIBUF_X66_Y0_N58
\input[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(30),
	o => \input[30]~input_o\);

-- Location: MLABCELL_X87_Y35_N12
\data[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(30) = ( data(30) & ( (\mode~input_o\) # (\input[30]~input_o\) ) ) # ( !data(30) & ( (\input[30]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_input[30]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(30),
	combout => data(30));

-- Location: MLABCELL_X87_Y35_N51
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q~0_combout\ = ( data(30) & ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q~q\ ) ) # ( !data(30) & ( 
-- !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => ALT_INV_data(30),
	combout => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q~0_combout\);

-- Location: FF_X87_Y35_N52
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q~q\);

-- Location: MLABCELL_X87_Y35_N21
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[2]~2_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\ & ( (!data(30) & (data(28))) # (data(30) & ((!\clk~input_o\ $ 
-- (!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q~q\)))) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\ & ( (!data(30) & (!data(28))) # (data(30) & 
-- ((!\clk~input_o\ $ (!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110111000100010111011100001000111011101000100011101110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data(28),
	datab => ALT_INV_data(30),
	datac => \ALT_INV_clk~input_o\,
	datad => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins3|ALT_INV_q~q\,
	dataf => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[2]~2_combout\);

-- Location: MLABCELL_X87_Y35_N48
\output[30]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[30]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[2]~2_combout\ & ( (!\mode~input_o\) # (\output[30]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[2]~2_combout\ & ( 
-- (\output[30]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_output[30]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|ALT_INV_output[2]~2_combout\,
	combout => \output[30]$latch~combout\);

-- Location: IOIBUF_X86_Y81_N35
\input[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(31),
	o => \input[31]~input_o\);

-- Location: MLABCELL_X87_Y35_N39
\data[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- data(31) = ( data(31) & ( (\mode~input_o\) # (\input[31]~input_o\) ) ) # ( !data(31) & ( (\input[31]~input_o\ & !\mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_input[31]~input_o\,
	datad => \ALT_INV_mode~input_o\,
	dataf => ALT_INV_data(31),
	combout => data(31));

-- Location: MLABCELL_X87_Y35_N0
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q~0_combout\ = ( data(31) & ( \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q~q\ ) ) # ( !data(31) & ( 
-- !\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => ALT_INV_data(31),
	combout => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q~0_combout\);

-- Location: FF_X87_Y35_N2
\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q~q\);

-- Location: MLABCELL_X87_Y35_N15
\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[3]~3_combout\ = ( \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\ & ( (!data(31) & (data(28))) # (data(31) & ((!\clk~input_o\ $ 
-- (!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q~q\)))) ) ) # ( !\encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|q~q\ & ( (!data(31) & (!data(28))) # (data(31) & 
-- ((!\clk~input_o\ $ (!\encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110111000100010111011100001000111011101000100011101110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_data(28),
	datab => ALT_INV_data(31),
	datac => \ALT_INV_clk~input_o\,
	datad => \encoder|register_parity|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins4|ALT_INV_q~q\,
	dataf => \encoder|register_BMC_0|register_16_bit_ins2|register_4_bit_ins4|register_1_bit_ins1|ALT_INV_q~q\,
	combout => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[3]~3_combout\);

-- Location: MLABCELL_X87_Y35_N36
\output[31]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \output[31]$latch~combout\ = ( \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[3]~3_combout\ & ( (!\mode~input_o\) # (\output[31]$latch~combout\) ) ) # ( !\encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|output[3]~3_combout\ & ( 
-- (\output[31]$latch~combout\ & \mode~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_output[31]$latch~combout\,
	datad => \ALT_INV_mode~input_o\,
	dataf => \encoder|mux_32_bit_ins2|mux_16_bit_ins2|mux_4_bit_ins4|ALT_INV_output[3]~3_combout\,
	combout => \output[31]$latch~combout\);

-- Location: LABCELL_X61_Y13_N0
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


