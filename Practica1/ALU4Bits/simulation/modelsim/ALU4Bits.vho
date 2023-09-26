-- Copyright (C) 2023  Intel Corporation. All rights reserved.
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
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "09/16/2023 19:54:05"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU4Bits IS
    PORT (
	INA : IN std_logic_vector(3 DOWNTO 0);
	INB : IN std_logic_vector(3 DOWNTO 0);
	SEL : IN std_logic_vector(1 DOWNTO 0);
	RES : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALU4Bits;

-- Design Ports Information
-- RES[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RES[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RES[2]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RES[3]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[0]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[2]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[3]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU4Bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_INA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_INB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_RES : std_logic_vector(3 DOWNTO 0);
SIGNAL \RES[0]~output_o\ : std_logic;
SIGNAL \RES[1]~output_o\ : std_logic;
SIGNAL \RES[2]~output_o\ : std_logic;
SIGNAL \RES[3]~output_o\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \INA[0]~input_o\ : std_logic;
SIGNAL \INB[0]~input_o\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~3_cout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \INB[1]~input_o\ : std_logic;
SIGNAL \INA[1]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|result[1]~0_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \INB[2]~input_o\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \INA[2]~input_o\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Mult0|mult_core|result[2]~1_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \INA[3]~input_o\ : std_logic;
SIGNAL \INB[3]~input_o\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_INA <= INA;
ww_INB <= INB;
ww_SEL <= SEL;
RES <= ww_RES;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\RES[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~6_combout\,
	devoe => ww_devoe,
	o => \RES[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\RES[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~11_combout\,
	devoe => ww_devoe,
	o => \RES[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\RES[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~16_combout\,
	devoe => ww_devoe,
	o => \RES[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\RES[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~22_combout\,
	devoe => ww_devoe,
	o => \RES[3]~output_o\);

-- Location: IOIBUF_X5_Y0_N22
\SEL[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\INA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(0),
	o => \INA[0]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\INB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(0),
	o => \INB[0]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\SEL[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: LCCOMB_X8_Y4_N2
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \INB[0]~input_o\ $ (\SEL[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[0]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X8_Y4_N6
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_cout\ = CARRY(\SEL[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[0]~input_o\,
	datad => VCC,
	cout => \Add0~3_cout\);

-- Location: LCCOMB_X8_Y4_N8
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\INA[0]~input_o\ & ((\Add0~1_combout\ & (\Add0~3_cout\ & VCC)) # (!\Add0~1_combout\ & (!\Add0~3_cout\)))) # (!\INA[0]~input_o\ & ((\Add0~1_combout\ & (!\Add0~3_cout\)) # (!\Add0~1_combout\ & ((\Add0~3_cout\) # (GND)))))
-- \Add0~5\ = CARRY((\INA[0]~input_o\ & (!\Add0~1_combout\ & !\Add0~3_cout\)) # (!\INA[0]~input_o\ & ((!\Add0~3_cout\) # (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INA[0]~input_o\,
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \Add0~3_cout\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X8_Y4_N24
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\SEL[1]~input_o\ & ((\INB[0]~input_o\ & ((\INA[0]~input_o\) # (\SEL[0]~input_o\))) # (!\INB[0]~input_o\ & (\INA[0]~input_o\ & \SEL[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[0]~input_o\,
	datab => \INA[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X7_Y4_N8
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Add0~0_combout\) # ((!\SEL[1]~input_o\ & \Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~input_o\,
	datac => \Add0~4_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~6_combout\);

-- Location: IOIBUF_X7_Y0_N1
\INB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(1),
	o => \INB[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\INA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(1),
	o => \INA[1]~input_o\);

-- Location: LCCOMB_X8_Y4_N4
\Mult0|mult_core|result[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[1]~0_combout\ = (\INB[0]~input_o\ & (\INA[1]~input_o\ $ (((\INB[1]~input_o\ & \INA[0]~input_o\))))) # (!\INB[0]~input_o\ & (\INB[1]~input_o\ & (\INA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[0]~input_o\,
	datab => \INB[1]~input_o\,
	datac => \INA[0]~input_o\,
	datad => \INA[1]~input_o\,
	combout => \Mult0|mult_core|result[1]~0_combout\);

-- Location: LCCOMB_X8_Y4_N0
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\SEL[0]~input_o\ & ((\INB[1]~input_o\) # ((\INA[1]~input_o\)))) # (!\SEL[0]~input_o\ & (((\Mult0|mult_core|result[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[1]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \Mult0|mult_core|result[1]~0_combout\,
	datad => \INA[1]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X8_Y4_N26
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \INB[1]~input_o\ $ (\SEL[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INB[1]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X8_Y4_N10
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = ((\Add0~8_combout\ $ (\INA[1]~input_o\ $ (!\Add0~5\)))) # (GND)
-- \Add0~10\ = CARRY((\Add0~8_combout\ & ((\INA[1]~input_o\) # (!\Add0~5\))) # (!\Add0~8_combout\ & (\INA[1]~input_o\ & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \INA[1]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X7_Y4_N10
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\SEL[1]~input_o\ & (\Add0~7_combout\)) # (!\SEL[1]~input_o\ & ((\Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~7_combout\,
	datac => \Add0~9_combout\,
	datad => \SEL[1]~input_o\,
	combout => \Add0~11_combout\);

-- Location: IOIBUF_X16_Y0_N1
\INB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(2),
	o => \INB[2]~input_o\);

-- Location: LCCOMB_X8_Y4_N20
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \SEL[0]~input_o\ $ (\INB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[0]~input_o\,
	datac => \INB[2]~input_o\,
	combout => \Add0~12_combout\);

-- Location: IOIBUF_X7_Y24_N8
\INA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(2),
	o => \INA[2]~input_o\);

-- Location: LCCOMB_X8_Y4_N12
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12_combout\ & ((\INA[2]~input_o\ & (\Add0~10\ & VCC)) # (!\INA[2]~input_o\ & (!\Add0~10\)))) # (!\Add0~12_combout\ & ((\INA[2]~input_o\ & (!\Add0~10\)) # (!\INA[2]~input_o\ & ((\Add0~10\) # (GND)))))
-- \Add0~14\ = CARRY((\Add0~12_combout\ & (!\INA[2]~input_o\ & !\Add0~10\)) # (!\Add0~12_combout\ & ((!\Add0~10\) # (!\INA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \INA[2]~input_o\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X8_Y4_N22
\Mult0|mult_core|result[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|result[2]~1_combout\ = (\INB[1]~input_o\ & (\INA[1]~input_o\ & ((!\INA[0]~input_o\) # (!\INB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[0]~input_o\,
	datab => \INB[1]~input_o\,
	datac => \INA[0]~input_o\,
	datad => \INA[1]~input_o\,
	combout => \Mult0|mult_core|result[2]~1_combout\);

-- Location: LCCOMB_X8_Y4_N16
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\SEL[0]~input_o\ & (((\INA[2]~input_o\) # (\INB[2]~input_o\)))) # (!\SEL[0]~input_o\ & (\Mult0|mult_core|result[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|result[2]~1_combout\,
	datab => \INA[2]~input_o\,
	datac => \INB[2]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X7_Y4_N28
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\SEL[1]~input_o\ & ((\Add0~15_combout\))) # (!\SEL[1]~input_o\ & (\Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~input_o\,
	datac => \Add0~13_combout\,
	datad => \Add0~15_combout\,
	combout => \Add0~16_combout\);

-- Location: IOIBUF_X16_Y0_N8
\INA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(3),
	o => \INA[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\INB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(3),
	o => \INB[3]~input_o\);

-- Location: LCCOMB_X8_Y4_N30
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = \INB[3]~input_o\ $ (\SEL[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INB[3]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X8_Y4_N14
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \INA[3]~input_o\ $ (\Add0~14\ $ (!\Add0~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INA[3]~input_o\,
	datad => \Add0~19_combout\,
	cin => \Add0~14\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X8_Y4_N18
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\INB[0]~input_o\ & (\INB[1]~input_o\ & (\INA[0]~input_o\ & \INA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[0]~input_o\,
	datab => \INB[1]~input_o\,
	datac => \INA[0]~input_o\,
	datad => \INA[1]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X8_Y4_N28
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\SEL[0]~input_o\ & ((\INA[3]~input_o\) # ((\INB[3]~input_o\)))) # (!\SEL[0]~input_o\ & (((\Add0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INA[3]~input_o\,
	datab => \Add0~17_combout\,
	datac => \INB[3]~input_o\,
	datad => \SEL[0]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X7_Y4_N30
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\SEL[1]~input_o\ & ((\Add0~18_combout\))) # (!\SEL[1]~input_o\ & (\Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL[1]~input_o\,
	datac => \Add0~20_combout\,
	datad => \Add0~18_combout\,
	combout => \Add0~22_combout\);

ww_RES(0) <= \RES[0]~output_o\;

ww_RES(1) <= \RES[1]~output_o\;

ww_RES(2) <= \RES[2]~output_o\;

ww_RES(3) <= \RES[3]~output_o\;
END structure;


