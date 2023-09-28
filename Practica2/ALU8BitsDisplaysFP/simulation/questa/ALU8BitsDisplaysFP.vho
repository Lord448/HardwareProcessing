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

-- DATE "09/27/2023 18:21:16"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU8BitsDisplaysFP IS
    PORT (
	i_CLK : IN std_logic;
	i_NumA : IN std_logic_vector(7 DOWNTO 0);
	i_NumB : IN std_logic_vector(7 DOWNTO 0);
	i_OpSel : IN std_logic_vector(1 DOWNTO 0);
	o_Displays : BUFFER std_logic_vector(3 DOWNTO 0);
	o_Segments : BUFFER std_logic_vector(6 DOWNTO 0);
	o_DispPoint : BUFFER std_logic
	);
END ALU8BitsDisplaysFP;

-- Design Ports Information
-- o_Displays[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Displays[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Displays[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Displays[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Segments[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DispPoint	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_NumB[3]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[1]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[4]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_OpSel[1]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[4]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[3]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[2]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[1]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[0]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_OpSel[0]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[7]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[7]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[6]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[6]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[5]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[5]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU8BitsDisplaysFP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_NumA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_NumB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_OpSel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_Displays : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_Segments : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_DispPoint : std_logic;
SIGNAL \o_Displays[0]~output_o\ : std_logic;
SIGNAL \o_Displays[1]~output_o\ : std_logic;
SIGNAL \o_Displays[2]~output_o\ : std_logic;
SIGNAL \o_Displays[3]~output_o\ : std_logic;
SIGNAL \o_Segments[0]~output_o\ : std_logic;
SIGNAL \o_Segments[1]~output_o\ : std_logic;
SIGNAL \o_Segments[2]~output_o\ : std_logic;
SIGNAL \o_Segments[3]~output_o\ : std_logic;
SIGNAL \o_Segments[4]~output_o\ : std_logic;
SIGNAL \o_Segments[5]~output_o\ : std_logic;
SIGNAL \o_Segments[6]~output_o\ : std_logic;
SIGNAL \o_DispPoint~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \DisplayDriver|r_Count[0]~17_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[15]~48\ : std_logic;
SIGNAL \DisplayDriver|r_Count[16]~49_combout\ : std_logic;
SIGNAL \DisplayDriver|LessThan0~2_combout\ : std_logic;
SIGNAL \DisplayDriver|LessThan0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|LessThan0~1_combout\ : std_logic;
SIGNAL \DisplayDriver|LessThan0~3_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[0]~18\ : std_logic;
SIGNAL \DisplayDriver|r_Count[1]~19_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[1]~20\ : std_logic;
SIGNAL \DisplayDriver|r_Count[2]~21_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[2]~22\ : std_logic;
SIGNAL \DisplayDriver|r_Count[3]~23_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[3]~24\ : std_logic;
SIGNAL \DisplayDriver|r_Count[4]~25_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[4]~26\ : std_logic;
SIGNAL \DisplayDriver|r_Count[5]~27_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[5]~28\ : std_logic;
SIGNAL \DisplayDriver|r_Count[6]~29_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[6]~30\ : std_logic;
SIGNAL \DisplayDriver|r_Count[7]~31_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[7]~32\ : std_logic;
SIGNAL \DisplayDriver|r_Count[8]~33_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[8]~34\ : std_logic;
SIGNAL \DisplayDriver|r_Count[9]~35_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[9]~36\ : std_logic;
SIGNAL \DisplayDriver|r_Count[10]~37_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[10]~38\ : std_logic;
SIGNAL \DisplayDriver|r_Count[11]~39_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[11]~40\ : std_logic;
SIGNAL \DisplayDriver|r_Count[12]~41_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[12]~42\ : std_logic;
SIGNAL \DisplayDriver|r_Count[13]~43_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[13]~44\ : std_logic;
SIGNAL \DisplayDriver|r_Count[14]~45_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[14]~46\ : std_logic;
SIGNAL \DisplayDriver|r_Count[15]~47_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Sel[0]~0_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Sel[0]~1_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Sel[1]~2_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux0~0_combout\ : std_logic;
SIGNAL \i_OpSel[0]~input_o\ : std_logic;
SIGNAL \i_NumB[1]~input_o\ : std_logic;
SIGNAL \i_NumB[2]~input_o\ : std_logic;
SIGNAL \i_NumB[3]~input_o\ : std_logic;
SIGNAL \i_NumA[3]~input_o\ : std_logic;
SIGNAL \i_NumA[2]~input_o\ : std_logic;
SIGNAL \i_NumA[1]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \i_NumB[0]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \i_NumA[0]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \i_OpSel[1]~input_o\ : std_logic;
SIGNAL \i_NumB[7]~input_o\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \i_NumA[7]~input_o\ : std_logic;
SIGNAL \i_NumB[6]~input_o\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \i_NumA[6]~input_o\ : std_logic;
SIGNAL \i_NumB[5]~input_o\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \i_NumA[5]~input_o\ : std_logic;
SIGNAL \i_NumB[4]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \i_NumA[4]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_cout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~1\ : std_logic;
SIGNAL \DisplayDriver|Add2~3\ : std_logic;
SIGNAL \DisplayDriver|Add2~4_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[2]~2_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~2_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[1]~1_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~5\ : std_logic;
SIGNAL \DisplayDriver|Add2~6_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[3]~3_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[0]~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux6~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~7\ : std_logic;
SIGNAL \DisplayDriver|Add2~8_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[0]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~9\ : std_logic;
SIGNAL \DisplayDriver|Add2~11\ : std_logic;
SIGNAL \DisplayDriver|Add2~13\ : std_logic;
SIGNAL \DisplayDriver|Add2~14_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[3]~5_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~12_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[2]~4_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~10_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[1]~3_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux10~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux9~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux8~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux7~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux4~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DisplayDriver|r_Count\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DisplayDriver|r_Sel\ : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_NumA <= i_NumA;
ww_i_NumB <= i_NumB;
ww_i_OpSel <= i_OpSel;
o_Displays <= ww_o_Displays;
o_Segments <= ww_o_Segments;
o_DispPoint <= ww_o_DispPoint;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
\o_Displays[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \o_Displays[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\o_Displays[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \o_Displays[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\o_Displays[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \o_Displays[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\o_Displays[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \o_Displays[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\o_Segments[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \o_Segments[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\o_Segments[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \o_Segments[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\o_Segments[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \o_Segments[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\o_Segments[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \o_Segments[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\o_Segments[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \o_Segments[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\o_Segments[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \o_Segments[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\o_Segments[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \o_Segments[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\o_DispPoint~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \o_DispPoint~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\i_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: LCCOMB_X1_Y6_N16
\DisplayDriver|r_Count[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[0]~17_combout\ = \DisplayDriver|r_Count\(0) $ (VCC)
-- \DisplayDriver|r_Count[0]~18\ = CARRY(\DisplayDriver|r_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(0),
	datad => VCC,
	combout => \DisplayDriver|r_Count[0]~17_combout\,
	cout => \DisplayDriver|r_Count[0]~18\);

-- Location: LCCOMB_X1_Y5_N14
\DisplayDriver|r_Count[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[15]~47_combout\ = (\DisplayDriver|r_Count\(15) & (!\DisplayDriver|r_Count[14]~46\)) # (!\DisplayDriver|r_Count\(15) & ((\DisplayDriver|r_Count[14]~46\) # (GND)))
-- \DisplayDriver|r_Count[15]~48\ = CARRY((!\DisplayDriver|r_Count[14]~46\) # (!\DisplayDriver|r_Count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(15),
	datad => VCC,
	cin => \DisplayDriver|r_Count[14]~46\,
	combout => \DisplayDriver|r_Count[15]~47_combout\,
	cout => \DisplayDriver|r_Count[15]~48\);

-- Location: LCCOMB_X1_Y5_N16
\DisplayDriver|r_Count[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[16]~49_combout\ = \DisplayDriver|r_Count[15]~48\ $ (!\DisplayDriver|r_Count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DisplayDriver|r_Count\(16),
	cin => \DisplayDriver|r_Count[15]~48\,
	combout => \DisplayDriver|r_Count[16]~49_combout\);

-- Location: FF_X1_Y5_N17
\DisplayDriver|r_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[16]~49_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(16));

-- Location: LCCOMB_X1_Y5_N24
\DisplayDriver|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~2_combout\ = (!\DisplayDriver|r_Count\(14) & (!\DisplayDriver|r_Count\(12) & (!\DisplayDriver|r_Count\(13) & !\DisplayDriver|r_Count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(14),
	datab => \DisplayDriver|r_Count\(12),
	datac => \DisplayDriver|r_Count\(13),
	datad => \DisplayDriver|r_Count\(11),
	combout => \DisplayDriver|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y6_N8
\DisplayDriver|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~0_combout\ = ((!\DisplayDriver|r_Count\(5) & !\DisplayDriver|r_Count\(6))) # (!\DisplayDriver|r_Count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(5),
	datac => \DisplayDriver|r_Count\(7),
	datad => \DisplayDriver|r_Count\(6),
	combout => \DisplayDriver|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y5_N18
\DisplayDriver|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~1_combout\ = (((!\DisplayDriver|r_Count\(8) & \DisplayDriver|LessThan0~0_combout\)) # (!\DisplayDriver|r_Count\(10))) # (!\DisplayDriver|r_Count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(9),
	datab => \DisplayDriver|r_Count\(8),
	datac => \DisplayDriver|r_Count\(10),
	datad => \DisplayDriver|LessThan0~0_combout\,
	combout => \DisplayDriver|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y5_N20
\DisplayDriver|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~3_combout\ = (\DisplayDriver|r_Count\(16) & (\DisplayDriver|r_Count\(15) & ((!\DisplayDriver|LessThan0~1_combout\) # (!\DisplayDriver|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(16),
	datab => \DisplayDriver|LessThan0~2_combout\,
	datac => \DisplayDriver|r_Count\(15),
	datad => \DisplayDriver|LessThan0~1_combout\,
	combout => \DisplayDriver|LessThan0~3_combout\);

-- Location: FF_X1_Y6_N17
\DisplayDriver|r_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[0]~17_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(0));

-- Location: LCCOMB_X1_Y6_N18
\DisplayDriver|r_Count[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[1]~19_combout\ = (\DisplayDriver|r_Count\(1) & (!\DisplayDriver|r_Count[0]~18\)) # (!\DisplayDriver|r_Count\(1) & ((\DisplayDriver|r_Count[0]~18\) # (GND)))
-- \DisplayDriver|r_Count[1]~20\ = CARRY((!\DisplayDriver|r_Count[0]~18\) # (!\DisplayDriver|r_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(1),
	datad => VCC,
	cin => \DisplayDriver|r_Count[0]~18\,
	combout => \DisplayDriver|r_Count[1]~19_combout\,
	cout => \DisplayDriver|r_Count[1]~20\);

-- Location: FF_X1_Y6_N19
\DisplayDriver|r_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[1]~19_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(1));

-- Location: LCCOMB_X1_Y6_N20
\DisplayDriver|r_Count[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[2]~21_combout\ = (\DisplayDriver|r_Count\(2) & (\DisplayDriver|r_Count[1]~20\ $ (GND))) # (!\DisplayDriver|r_Count\(2) & (!\DisplayDriver|r_Count[1]~20\ & VCC))
-- \DisplayDriver|r_Count[2]~22\ = CARRY((\DisplayDriver|r_Count\(2) & !\DisplayDriver|r_Count[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(2),
	datad => VCC,
	cin => \DisplayDriver|r_Count[1]~20\,
	combout => \DisplayDriver|r_Count[2]~21_combout\,
	cout => \DisplayDriver|r_Count[2]~22\);

-- Location: FF_X1_Y6_N21
\DisplayDriver|r_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[2]~21_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(2));

-- Location: LCCOMB_X1_Y6_N22
\DisplayDriver|r_Count[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[3]~23_combout\ = (\DisplayDriver|r_Count\(3) & (!\DisplayDriver|r_Count[2]~22\)) # (!\DisplayDriver|r_Count\(3) & ((\DisplayDriver|r_Count[2]~22\) # (GND)))
-- \DisplayDriver|r_Count[3]~24\ = CARRY((!\DisplayDriver|r_Count[2]~22\) # (!\DisplayDriver|r_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(3),
	datad => VCC,
	cin => \DisplayDriver|r_Count[2]~22\,
	combout => \DisplayDriver|r_Count[3]~23_combout\,
	cout => \DisplayDriver|r_Count[3]~24\);

-- Location: FF_X1_Y6_N23
\DisplayDriver|r_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[3]~23_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(3));

-- Location: LCCOMB_X1_Y6_N24
\DisplayDriver|r_Count[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[4]~25_combout\ = (\DisplayDriver|r_Count\(4) & (\DisplayDriver|r_Count[3]~24\ $ (GND))) # (!\DisplayDriver|r_Count\(4) & (!\DisplayDriver|r_Count[3]~24\ & VCC))
-- \DisplayDriver|r_Count[4]~26\ = CARRY((\DisplayDriver|r_Count\(4) & !\DisplayDriver|r_Count[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(4),
	datad => VCC,
	cin => \DisplayDriver|r_Count[3]~24\,
	combout => \DisplayDriver|r_Count[4]~25_combout\,
	cout => \DisplayDriver|r_Count[4]~26\);

-- Location: FF_X1_Y6_N25
\DisplayDriver|r_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[4]~25_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(4));

-- Location: LCCOMB_X1_Y6_N26
\DisplayDriver|r_Count[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[5]~27_combout\ = (\DisplayDriver|r_Count\(5) & (!\DisplayDriver|r_Count[4]~26\)) # (!\DisplayDriver|r_Count\(5) & ((\DisplayDriver|r_Count[4]~26\) # (GND)))
-- \DisplayDriver|r_Count[5]~28\ = CARRY((!\DisplayDriver|r_Count[4]~26\) # (!\DisplayDriver|r_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(5),
	datad => VCC,
	cin => \DisplayDriver|r_Count[4]~26\,
	combout => \DisplayDriver|r_Count[5]~27_combout\,
	cout => \DisplayDriver|r_Count[5]~28\);

-- Location: FF_X1_Y6_N27
\DisplayDriver|r_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[5]~27_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(5));

-- Location: LCCOMB_X1_Y6_N28
\DisplayDriver|r_Count[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[6]~29_combout\ = (\DisplayDriver|r_Count\(6) & (\DisplayDriver|r_Count[5]~28\ $ (GND))) # (!\DisplayDriver|r_Count\(6) & (!\DisplayDriver|r_Count[5]~28\ & VCC))
-- \DisplayDriver|r_Count[6]~30\ = CARRY((\DisplayDriver|r_Count\(6) & !\DisplayDriver|r_Count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(6),
	datad => VCC,
	cin => \DisplayDriver|r_Count[5]~28\,
	combout => \DisplayDriver|r_Count[6]~29_combout\,
	cout => \DisplayDriver|r_Count[6]~30\);

-- Location: FF_X1_Y6_N29
\DisplayDriver|r_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[6]~29_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(6));

-- Location: LCCOMB_X1_Y6_N30
\DisplayDriver|r_Count[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[7]~31_combout\ = (\DisplayDriver|r_Count\(7) & (!\DisplayDriver|r_Count[6]~30\)) # (!\DisplayDriver|r_Count\(7) & ((\DisplayDriver|r_Count[6]~30\) # (GND)))
-- \DisplayDriver|r_Count[7]~32\ = CARRY((!\DisplayDriver|r_Count[6]~30\) # (!\DisplayDriver|r_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(7),
	datad => VCC,
	cin => \DisplayDriver|r_Count[6]~30\,
	combout => \DisplayDriver|r_Count[7]~31_combout\,
	cout => \DisplayDriver|r_Count[7]~32\);

-- Location: FF_X1_Y6_N31
\DisplayDriver|r_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[7]~31_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(7));

-- Location: LCCOMB_X1_Y5_N0
\DisplayDriver|r_Count[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[8]~33_combout\ = (\DisplayDriver|r_Count\(8) & (\DisplayDriver|r_Count[7]~32\ $ (GND))) # (!\DisplayDriver|r_Count\(8) & (!\DisplayDriver|r_Count[7]~32\ & VCC))
-- \DisplayDriver|r_Count[8]~34\ = CARRY((\DisplayDriver|r_Count\(8) & !\DisplayDriver|r_Count[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(8),
	datad => VCC,
	cin => \DisplayDriver|r_Count[7]~32\,
	combout => \DisplayDriver|r_Count[8]~33_combout\,
	cout => \DisplayDriver|r_Count[8]~34\);

-- Location: FF_X1_Y5_N1
\DisplayDriver|r_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[8]~33_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(8));

-- Location: LCCOMB_X1_Y5_N2
\DisplayDriver|r_Count[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[9]~35_combout\ = (\DisplayDriver|r_Count\(9) & (!\DisplayDriver|r_Count[8]~34\)) # (!\DisplayDriver|r_Count\(9) & ((\DisplayDriver|r_Count[8]~34\) # (GND)))
-- \DisplayDriver|r_Count[9]~36\ = CARRY((!\DisplayDriver|r_Count[8]~34\) # (!\DisplayDriver|r_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(9),
	datad => VCC,
	cin => \DisplayDriver|r_Count[8]~34\,
	combout => \DisplayDriver|r_Count[9]~35_combout\,
	cout => \DisplayDriver|r_Count[9]~36\);

-- Location: FF_X1_Y5_N3
\DisplayDriver|r_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[9]~35_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(9));

-- Location: LCCOMB_X1_Y5_N4
\DisplayDriver|r_Count[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[10]~37_combout\ = (\DisplayDriver|r_Count\(10) & (\DisplayDriver|r_Count[9]~36\ $ (GND))) # (!\DisplayDriver|r_Count\(10) & (!\DisplayDriver|r_Count[9]~36\ & VCC))
-- \DisplayDriver|r_Count[10]~38\ = CARRY((\DisplayDriver|r_Count\(10) & !\DisplayDriver|r_Count[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(10),
	datad => VCC,
	cin => \DisplayDriver|r_Count[9]~36\,
	combout => \DisplayDriver|r_Count[10]~37_combout\,
	cout => \DisplayDriver|r_Count[10]~38\);

-- Location: FF_X1_Y5_N5
\DisplayDriver|r_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[10]~37_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(10));

-- Location: LCCOMB_X1_Y5_N6
\DisplayDriver|r_Count[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[11]~39_combout\ = (\DisplayDriver|r_Count\(11) & (!\DisplayDriver|r_Count[10]~38\)) # (!\DisplayDriver|r_Count\(11) & ((\DisplayDriver|r_Count[10]~38\) # (GND)))
-- \DisplayDriver|r_Count[11]~40\ = CARRY((!\DisplayDriver|r_Count[10]~38\) # (!\DisplayDriver|r_Count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(11),
	datad => VCC,
	cin => \DisplayDriver|r_Count[10]~38\,
	combout => \DisplayDriver|r_Count[11]~39_combout\,
	cout => \DisplayDriver|r_Count[11]~40\);

-- Location: FF_X1_Y5_N7
\DisplayDriver|r_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[11]~39_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(11));

-- Location: LCCOMB_X1_Y5_N8
\DisplayDriver|r_Count[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[12]~41_combout\ = (\DisplayDriver|r_Count\(12) & (\DisplayDriver|r_Count[11]~40\ $ (GND))) # (!\DisplayDriver|r_Count\(12) & (!\DisplayDriver|r_Count[11]~40\ & VCC))
-- \DisplayDriver|r_Count[12]~42\ = CARRY((\DisplayDriver|r_Count\(12) & !\DisplayDriver|r_Count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(12),
	datad => VCC,
	cin => \DisplayDriver|r_Count[11]~40\,
	combout => \DisplayDriver|r_Count[12]~41_combout\,
	cout => \DisplayDriver|r_Count[12]~42\);

-- Location: FF_X1_Y5_N9
\DisplayDriver|r_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[12]~41_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(12));

-- Location: LCCOMB_X1_Y5_N10
\DisplayDriver|r_Count[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[13]~43_combout\ = (\DisplayDriver|r_Count\(13) & (!\DisplayDriver|r_Count[12]~42\)) # (!\DisplayDriver|r_Count\(13) & ((\DisplayDriver|r_Count[12]~42\) # (GND)))
-- \DisplayDriver|r_Count[13]~44\ = CARRY((!\DisplayDriver|r_Count[12]~42\) # (!\DisplayDriver|r_Count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(13),
	datad => VCC,
	cin => \DisplayDriver|r_Count[12]~42\,
	combout => \DisplayDriver|r_Count[13]~43_combout\,
	cout => \DisplayDriver|r_Count[13]~44\);

-- Location: FF_X1_Y5_N11
\DisplayDriver|r_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[13]~43_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(13));

-- Location: LCCOMB_X1_Y5_N12
\DisplayDriver|r_Count[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[14]~45_combout\ = (\DisplayDriver|r_Count\(14) & (\DisplayDriver|r_Count[13]~44\ $ (GND))) # (!\DisplayDriver|r_Count\(14) & (!\DisplayDriver|r_Count[13]~44\ & VCC))
-- \DisplayDriver|r_Count[14]~46\ = CARRY((\DisplayDriver|r_Count\(14) & !\DisplayDriver|r_Count[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(14),
	datad => VCC,
	cin => \DisplayDriver|r_Count[13]~44\,
	combout => \DisplayDriver|r_Count[14]~45_combout\,
	cout => \DisplayDriver|r_Count[14]~46\);

-- Location: FF_X1_Y5_N13
\DisplayDriver|r_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[14]~45_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(14));

-- Location: FF_X1_Y5_N15
\DisplayDriver|r_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Count[15]~47_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(15));

-- Location: LCCOMB_X1_Y5_N22
\DisplayDriver|r_Sel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Sel[0]~0_combout\ = (\DisplayDriver|r_Count\(15) & \DisplayDriver|r_Count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DisplayDriver|r_Count\(15),
	datad => \DisplayDriver|r_Count\(16),
	combout => \DisplayDriver|r_Sel[0]~0_combout\);

-- Location: LCCOMB_X1_Y5_N26
\DisplayDriver|r_Sel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Sel[0]~1_combout\ = \DisplayDriver|r_Sel\(0) $ (((\DisplayDriver|r_Sel[0]~0_combout\ & ((!\DisplayDriver|LessThan0~1_combout\) # (!\DisplayDriver|LessThan0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel[0]~0_combout\,
	datab => \DisplayDriver|LessThan0~2_combout\,
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|LessThan0~1_combout\,
	combout => \DisplayDriver|r_Sel[0]~1_combout\);

-- Location: FF_X1_Y5_N27
\DisplayDriver|r_Sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Sel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Sel\(0));

-- Location: LCCOMB_X1_Y5_N28
\DisplayDriver|r_Sel[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Sel[1]~2_combout\ = \DisplayDriver|r_Sel\(1) $ (((\DisplayDriver|r_Sel\(0) & \DisplayDriver|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|LessThan0~3_combout\,
	combout => \DisplayDriver|r_Sel[1]~2_combout\);

-- Location: FF_X1_Y5_N29
\DisplayDriver|r_Sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~input_o\,
	d => \DisplayDriver|r_Sel[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Sel\(1));

-- Location: LCCOMB_X12_Y23_N0
\DisplayDriver|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux3~0_combout\ = (\DisplayDriver|r_Sel\(1)) # (\DisplayDriver|r_Sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|r_Sel\(0),
	combout => \DisplayDriver|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y23_N6
\DisplayDriver|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux2~0_combout\ = (\DisplayDriver|r_Sel\(1)) # (!\DisplayDriver|r_Sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|r_Sel\(0),
	combout => \DisplayDriver|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y23_N24
\DisplayDriver|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux1~0_combout\ = (\DisplayDriver|r_Sel\(0)) # (!\DisplayDriver|r_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|r_Sel\(0),
	combout => \DisplayDriver|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y23_N2
\DisplayDriver|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux0~0_combout\ = (!\DisplayDriver|r_Sel\(0)) # (!\DisplayDriver|r_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|r_Sel\(0),
	combout => \DisplayDriver|Mux0~0_combout\);

-- Location: IOIBUF_X34_Y12_N15
\i_OpSel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OpSel(0),
	o => \i_OpSel[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\i_NumB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumB(1),
	o => \i_NumB[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\i_NumB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumB(2),
	o => \i_NumB[2]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\i_NumB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumB(3),
	o => \i_NumB[3]~input_o\);

-- Location: LCCOMB_X19_Y6_N20
\Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(5) = LCELL(\i_NumB[3]~input_o\ $ (((\i_NumB[1]~input_o\ & \i_NumB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_NumB[1]~input_o\,
	datac => \i_NumB[2]~input_o\,
	datad => \i_NumB[3]~input_o\,
	combout => \Mult0|auto_generated|le4a\(5));

-- Location: IOIBUF_X34_Y3_N22
\i_NumA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumA(3),
	o => \i_NumA[3]~input_o\);

-- Location: LCCOMB_X19_Y6_N26
\Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((\i_NumA[3]~input_o\ & ((\i_NumB[3]~input_o\) # ((\i_NumB[1]~input_o\ & \i_NumB[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[3]~input_o\,
	datab => \i_NumB[1]~input_o\,
	datac => \i_NumB[2]~input_o\,
	datad => \i_NumA[3]~input_o\,
	combout => \Mult0|auto_generated|le5a\(3));

-- Location: IOIBUF_X34_Y2_N15
\i_NumA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumA(2),
	o => \i_NumA[2]~input_o\);

-- Location: LCCOMB_X19_Y6_N22
\Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\i_NumA[2]~input_o\ & ((\i_NumB[3]~input_o\) # ((\i_NumB[2]~input_o\ & \i_NumB[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[3]~input_o\,
	datab => \i_NumB[2]~input_o\,
	datac => \i_NumA[2]~input_o\,
	datad => \i_NumB[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X19_Y6_N12
\Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\i_NumA[3]~input_o\ & (\i_NumB[3]~input_o\ & (\i_NumB[1]~input_o\ $ (\i_NumB[2]~input_o\)))) # (!\i_NumA[3]~input_o\ & (\i_NumB[3]~input_o\ $ (((\i_NumB[1]~input_o\ & \i_NumB[2]~input_o\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[3]~input_o\,
	datab => \i_NumB[1]~input_o\,
	datac => \i_NumB[2]~input_o\,
	datad => \i_NumA[3]~input_o\,
	combout => \Mult0|auto_generated|le4a\(4));

-- Location: IOIBUF_X34_Y2_N22
\i_NumA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumA(1),
	o => \i_NumA[1]~input_o\);

-- Location: LCCOMB_X19_Y6_N10
\Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\i_NumA[1]~input_o\ & ((\i_NumB[3]~input_o\) # ((\i_NumB[1]~input_o\ & \i_NumB[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[3]~input_o\,
	datab => \i_NumB[1]~input_o\,
	datac => \i_NumB[2]~input_o\,
	datad => \i_NumA[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X19_Y6_N4
\Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs2a[1]~0_combout\ = \i_NumB[2]~input_o\ $ (\i_NumB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_NumB[2]~input_o\,
	datad => \i_NumB[1]~input_o\,
	combout => \Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X19_Y6_N28
\Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & ((\Mult0|auto_generated|le4a\(5) $ (\i_NumA[3]~input_o\)))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\i_NumA[2]~input_o\ & (\Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[2]~input_o\,
	datab => \Mult0|auto_generated|le4a\(5),
	datac => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \i_NumA[3]~input_o\,
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: IOIBUF_X3_Y0_N1
\i_NumB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumB(0),
	o => \i_NumB[0]~input_o\);

-- Location: LCCOMB_X19_Y6_N2
\Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(4) = LCELL((\i_NumB[1]~input_o\ & ((\i_NumB[0]~input_o\) # (!\i_NumA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_NumB[1]~input_o\,
	datac => \i_NumB[0]~input_o\,
	datad => \i_NumA[3]~input_o\,
	combout => \Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X19_Y6_N18
\Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & (\i_NumA[2]~input_o\ $ ((\Mult0|auto_generated|le4a\(5))))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (((\Mult0|auto_generated|le4a\(5) & !\i_NumA[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[2]~input_o\,
	datab => \Mult0|auto_generated|le4a\(5),
	datac => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \i_NumA[1]~input_o\,
	combout => \Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X19_Y6_N0
\Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(3) = LCELL((\i_NumB[0]~input_o\ & ((\i_NumB[1]~input_o\ $ (\i_NumA[3]~input_o\)))) # (!\i_NumB[0]~input_o\ & (!\i_NumA[2]~input_o\ & (\i_NumB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[2]~input_o\,
	datab => \i_NumB[1]~input_o\,
	datac => \i_NumB[0]~input_o\,
	datad => \i_NumA[3]~input_o\,
	combout => \Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X19_Y6_N14
\Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(2) = LCELL((\i_NumB[0]~input_o\ & (\i_NumA[2]~input_o\ $ ((\i_NumB[1]~input_o\)))) # (!\i_NumB[0]~input_o\ & (((\i_NumB[1]~input_o\ & !\i_NumA[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[2]~input_o\,
	datab => \i_NumB[1]~input_o\,
	datac => \i_NumB[0]~input_o\,
	datad => \i_NumA[1]~input_o\,
	combout => \Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X18_Y6_N2
\Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|le4a\(5) & (\Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\Mult0|auto_generated|le4a\(5) & (\Mult0|auto_generated|le3a\(2) & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|le4a\(5) & \Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(5),
	datab => \Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X18_Y6_N4
\Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|le3a\(3) & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|le3a\(3) & ((\Mult0|auto_generated|op_1~1\) # (GND)))
-- \Mult0|auto_generated|op_1~3\ = CARRY((!\Mult0|auto_generated|op_1~1\) # (!\Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X18_Y6_N6
\Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|le3a\(4) $ (\Mult0|auto_generated|le4a\(2) $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|le3a\(4) & ((\Mult0|auto_generated|le4a\(2)) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|le3a\(4) & (\Mult0|auto_generated|le4a\(2) & !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(4),
	datab => \Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X18_Y6_N8
\Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|le4a\(3) & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|op_1~5\)))) # (!\Mult0|auto_generated|le5a\(1) 
-- & ((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le4a\(3) & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|le4a\(3) & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le5a\(1) & ((!\Mult0|auto_generated|op_1~5\) # (!\Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(1),
	datab => \Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X18_Y6_N10
\Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|le5a\(2) $ (\Mult0|auto_generated|le4a\(4) $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|le5a\(2) & ((\Mult0|auto_generated|le4a\(4)) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|le5a\(2) & (\Mult0|auto_generated|le4a\(4) & !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(2),
	datab => \Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X18_Y6_N12
\Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = \Mult0|auto_generated|le4a\(5) $ (\Mult0|auto_generated|op_1~9\ $ (!\Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(5),
	datad => \Mult0|auto_generated|le5a\(3),
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X18_Y6_N0
\Mult0|auto_generated|le3a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(5) = LCELL(\i_NumB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_NumB[1]~input_o\,
	combout => \Mult0|auto_generated|le3a\(5));

-- Location: IOIBUF_X32_Y0_N8
\i_NumA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumA(0),
	o => \i_NumA[0]~input_o\);

-- Location: LCCOMB_X19_Y6_N16
\Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL((\i_NumA[0]~input_o\ & ((\i_NumB[3]~input_o\) # ((\i_NumB[2]~input_o\ & \i_NumB[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[3]~input_o\,
	datab => \i_NumB[2]~input_o\,
	datac => \i_NumA[0]~input_o\,
	datad => \i_NumB[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X19_Y6_N30
\Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|cs2a[1]~0_combout\ & ((\Mult0|auto_generated|le4a\(5) $ (\i_NumA[1]~input_o\)))) # (!\Mult0|auto_generated|cs2a[1]~0_combout\ & (!\i_NumA[0]~input_o\ & (\Mult0|auto_generated|le4a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[0]~input_o\,
	datab => \Mult0|auto_generated|le4a\(5),
	datac => \Mult0|auto_generated|cs2a[1]~0_combout\,
	datad => \i_NumA[1]~input_o\,
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X19_Y6_N24
\Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL(\i_NumB[3]~input_o\ $ (((\i_NumB[2]~input_o\ & ((\i_NumA[0]~input_o\) # (\i_NumB[1]~input_o\))) # (!\i_NumB[2]~input_o\ & (\i_NumA[0]~input_o\ & \i_NumB[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[3]~input_o\,
	datab => \i_NumB[2]~input_o\,
	datac => \i_NumA[0]~input_o\,
	datad => \i_NumB[1]~input_o\,
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X19_Y6_N6
\Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(1) = LCELL((\i_NumB[0]~input_o\ & ((\i_NumB[1]~input_o\ $ (\i_NumA[1]~input_o\)))) # (!\i_NumB[0]~input_o\ & (!\i_NumA[0]~input_o\ & (\i_NumB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[0]~input_o\,
	datab => \i_NumB[1]~input_o\,
	datac => \i_NumB[0]~input_o\,
	datad => \i_NumA[1]~input_o\,
	combout => \Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X19_Y6_N8
\Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(0) = LCELL(\i_NumB[1]~input_o\ $ (((\i_NumA[0]~input_o\ & \i_NumB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[0]~input_o\,
	datac => \i_NumB[0]~input_o\,
	datad => \i_NumB[1]~input_o\,
	combout => \Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X18_Y6_N14
\Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~0_combout\ = (\i_NumB[1]~input_o\ & (\Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\i_NumB[1]~input_o\ & (\Mult0|auto_generated|le3a\(0) & VCC))
-- \Mult0|auto_generated|op_3~1\ = CARRY((\i_NumB[1]~input_o\ & \Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[1]~input_o\,
	datab => \Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \Mult0|auto_generated|op_3~0_combout\,
	cout => \Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X18_Y6_N16
\Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~2_combout\ = (\Mult0|auto_generated|le3a\(1) & (!\Mult0|auto_generated|op_3~1\)) # (!\Mult0|auto_generated|le3a\(1) & ((\Mult0|auto_generated|op_3~1\) # (GND)))
-- \Mult0|auto_generated|op_3~3\ = CARRY((!\Mult0|auto_generated|op_3~1\) # (!\Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~1\,
	combout => \Mult0|auto_generated|op_3~2_combout\,
	cout => \Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X18_Y6_N18
\Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~4_combout\ = ((\Mult0|auto_generated|le4a\(0) $ (\Mult0|auto_generated|op_1~0_combout\ $ (!\Mult0|auto_generated|op_3~3\)))) # (GND)
-- \Mult0|auto_generated|op_3~5\ = CARRY((\Mult0|auto_generated|le4a\(0) & ((\Mult0|auto_generated|op_1~0_combout\) # (!\Mult0|auto_generated|op_3~3\))) # (!\Mult0|auto_generated|le4a\(0) & (\Mult0|auto_generated|op_1~0_combout\ & 
-- !\Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(0),
	datab => \Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~3\,
	combout => \Mult0|auto_generated|op_3~4_combout\,
	cout => \Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X18_Y6_N20
\Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~6_combout\ = (\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_1~2_combout\ & (\Mult0|auto_generated|op_3~5\ & VCC)) # (!\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|op_3~5\)))) # 
-- (!\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|op_1~2_combout\ & ((\Mult0|auto_generated|op_3~5\) # (GND)))))
-- \Mult0|auto_generated|op_3~7\ = CARRY((\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|op_1~2_combout\ & !\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|le4a\(1) & ((!\Mult0|auto_generated|op_3~5\) # 
-- (!\Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(1),
	datab => \Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~5\,
	combout => \Mult0|auto_generated|op_3~6_combout\,
	cout => \Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X18_Y6_N22
\Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~8_combout\ = ((\Mult0|auto_generated|op_1~4_combout\ $ (\Mult0|auto_generated|le5a\(0) $ (!\Mult0|auto_generated|op_3~7\)))) # (GND)
-- \Mult0|auto_generated|op_3~9\ = CARRY((\Mult0|auto_generated|op_1~4_combout\ & ((\Mult0|auto_generated|le5a\(0)) # (!\Mult0|auto_generated|op_3~7\))) # (!\Mult0|auto_generated|op_1~4_combout\ & (\Mult0|auto_generated|le5a\(0) & 
-- !\Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~4_combout\,
	datab => \Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~7\,
	combout => \Mult0|auto_generated|op_3~8_combout\,
	cout => \Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X18_Y6_N24
\Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~10_combout\ = (\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|le3a\(5) & (\Mult0|auto_generated|op_3~9\ & VCC)) # (!\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_3~9\)))) # 
-- (!\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|le3a\(5) & ((\Mult0|auto_generated|op_3~9\) # (GND)))))
-- \Mult0|auto_generated|op_3~11\ = CARRY((\Mult0|auto_generated|op_1~6_combout\ & (!\Mult0|auto_generated|le3a\(5) & !\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|op_1~6_combout\ & ((!\Mult0|auto_generated|op_3~9\) # 
-- (!\Mult0|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~6_combout\,
	datab => \Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~9\,
	combout => \Mult0|auto_generated|op_3~10_combout\,
	cout => \Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X18_Y6_N26
\Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~12_combout\ = ((\Mult0|auto_generated|op_1~8_combout\ $ (\Mult0|auto_generated|le3a\(5) $ (!\Mult0|auto_generated|op_3~11\)))) # (GND)
-- \Mult0|auto_generated|op_3~13\ = CARRY((\Mult0|auto_generated|op_1~8_combout\ & ((\Mult0|auto_generated|le3a\(5)) # (!\Mult0|auto_generated|op_3~11\))) # (!\Mult0|auto_generated|op_1~8_combout\ & (\Mult0|auto_generated|le3a\(5) & 
-- !\Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~8_combout\,
	datab => \Mult0|auto_generated|le3a\(5),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~11\,
	combout => \Mult0|auto_generated|op_3~12_combout\,
	cout => \Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X18_Y6_N28
\Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~14_combout\ = \Mult0|auto_generated|op_1~10_combout\ $ (\Mult0|auto_generated|op_3~13\ $ (!\Mult0|auto_generated|le3a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~10_combout\,
	datad => \Mult0|auto_generated|le3a\(5),
	cin => \Mult0|auto_generated|op_3~13\,
	combout => \Mult0|auto_generated|op_3~14_combout\);

-- Location: IOIBUF_X34_Y12_N22
\i_OpSel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_OpSel(1),
	o => \i_OpSel[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\i_NumB[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumB(7),
	o => \i_NumB[7]~input_o\);

-- Location: LCCOMB_X17_Y4_N6
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \i_OpSel[1]~input_o\ $ (\i_NumB[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_OpSel[1]~input_o\,
	datad => \i_NumB[7]~input_o\,
	combout => \Add0~18_combout\);

-- Location: IOIBUF_X34_Y9_N22
\i_NumA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumA(7),
	o => \i_NumA[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\i_NumB[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumB(6),
	o => \i_NumB[6]~input_o\);

-- Location: LCCOMB_X17_Y4_N16
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = \i_OpSel[1]~input_o\ $ (\i_NumB[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_OpSel[1]~input_o\,
	datad => \i_NumB[6]~input_o\,
	combout => \Add0~19_combout\);

-- Location: IOIBUF_X34_Y7_N8
\i_NumA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumA(6),
	o => \i_NumA[6]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\i_NumB[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumB(5),
	o => \i_NumB[5]~input_o\);

-- Location: LCCOMB_X17_Y4_N26
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \i_OpSel[1]~input_o\ $ (\i_NumB[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_OpSel[1]~input_o\,
	datad => \i_NumB[5]~input_o\,
	combout => \Add0~20_combout\);

-- Location: IOIBUF_X34_Y4_N15
\i_NumA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumA(5),
	o => \i_NumA[5]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\i_NumB[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumB(4),
	o => \i_NumB[4]~input_o\);

-- Location: LCCOMB_X17_Y4_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \i_OpSel[1]~input_o\ $ (\i_NumB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_OpSel[1]~input_o\,
	datad => \i_NumB[4]~input_o\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X34_Y4_N22
\i_NumA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_NumA(4),
	o => \i_NumA[4]~input_o\);

-- Location: LCCOMB_X18_Y4_N4
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \i_OpSel[1]~input_o\ $ (\i_NumB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[1]~input_o\,
	datac => \i_NumB[3]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X18_Y4_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \i_OpSel[1]~input_o\ $ (\i_NumB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[1]~input_o\,
	datac => \i_NumB[2]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X18_Y4_N28
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \i_NumB[1]~input_o\ $ (\i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_NumB[1]~input_o\,
	datac => \i_OpSel[1]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X18_Y4_N30
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \i_OpSel[1]~input_o\ $ (\i_NumB[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[1]~input_o\,
	datac => \i_NumB[0]~input_o\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X18_Y4_N8
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_cout\ = CARRY(\i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[1]~input_o\,
	datad => VCC,
	cout => \Add0~6_cout\);

-- Location: LCCOMB_X18_Y4_N10
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~4_combout\ & ((\i_NumA[0]~input_o\ & (\Add0~6_cout\ & VCC)) # (!\i_NumA[0]~input_o\ & (!\Add0~6_cout\)))) # (!\Add0~4_combout\ & ((\i_NumA[0]~input_o\ & (!\Add0~6_cout\)) # (!\i_NumA[0]~input_o\ & ((\Add0~6_cout\) # (GND)))))
-- \Add0~8\ = CARRY((\Add0~4_combout\ & (!\i_NumA[0]~input_o\ & !\Add0~6_cout\)) # (!\Add0~4_combout\ & ((!\Add0~6_cout\) # (!\i_NumA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \i_NumA[0]~input_o\,
	datad => VCC,
	cin => \Add0~6_cout\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X18_Y4_N12
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = ((\i_NumA[1]~input_o\ $ (\Add0~3_combout\ $ (!\Add0~8\)))) # (GND)
-- \Add0~10\ = CARRY((\i_NumA[1]~input_o\ & ((\Add0~3_combout\) # (!\Add0~8\))) # (!\i_NumA[1]~input_o\ & (\Add0~3_combout\ & !\Add0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[1]~input_o\,
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X18_Y4_N14
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\i_NumA[2]~input_o\ & ((\Add0~2_combout\ & (\Add0~10\ & VCC)) # (!\Add0~2_combout\ & (!\Add0~10\)))) # (!\i_NumA[2]~input_o\ & ((\Add0~2_combout\ & (!\Add0~10\)) # (!\Add0~2_combout\ & ((\Add0~10\) # (GND)))))
-- \Add0~12\ = CARRY((\i_NumA[2]~input_o\ & (!\Add0~2_combout\ & !\Add0~10\)) # (!\i_NumA[2]~input_o\ & ((!\Add0~10\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[2]~input_o\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X18_Y4_N16
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = ((\Add0~1_combout\ $ (\i_NumA[3]~input_o\ $ (!\Add0~12\)))) # (GND)
-- \Add0~14\ = CARRY((\Add0~1_combout\ & ((\i_NumA[3]~input_o\) # (!\Add0~12\))) # (!\Add0~1_combout\ & (\i_NumA[3]~input_o\ & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \i_NumA[3]~input_o\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X18_Y4_N18
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~0_combout\ & ((\i_NumA[4]~input_o\ & (\Add0~14\ & VCC)) # (!\i_NumA[4]~input_o\ & (!\Add0~14\)))) # (!\Add0~0_combout\ & ((\i_NumA[4]~input_o\ & (!\Add0~14\)) # (!\i_NumA[4]~input_o\ & ((\Add0~14\) # (GND)))))
-- \Add0~16\ = CARRY((\Add0~0_combout\ & (!\i_NumA[4]~input_o\ & !\Add0~14\)) # (!\Add0~0_combout\ & ((!\Add0~14\) # (!\i_NumA[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \i_NumA[4]~input_o\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X18_Y4_N20
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = ((\Add0~20_combout\ $ (\i_NumA[5]~input_o\ $ (!\Add0~16\)))) # (GND)
-- \Add0~22\ = CARRY((\Add0~20_combout\ & ((\i_NumA[5]~input_o\) # (!\Add0~16\))) # (!\Add0~20_combout\ & (\i_NumA[5]~input_o\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \i_NumA[5]~input_o\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X18_Y4_N22
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~19_combout\ & ((\i_NumA[6]~input_o\ & (\Add0~22\ & VCC)) # (!\i_NumA[6]~input_o\ & (!\Add0~22\)))) # (!\Add0~19_combout\ & ((\i_NumA[6]~input_o\ & (!\Add0~22\)) # (!\i_NumA[6]~input_o\ & ((\Add0~22\) # (GND)))))
-- \Add0~24\ = CARRY((\Add0~19_combout\ & (!\i_NumA[6]~input_o\ & !\Add0~22\)) # (!\Add0~19_combout\ & ((!\Add0~22\) # (!\i_NumA[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~19_combout\,
	datab => \i_NumA[6]~input_o\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X18_Y4_N24
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = \Add0~18_combout\ $ (\Add0~24\ $ (!\i_NumA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datad => \i_NumA[7]~input_o\,
	cin => \Add0~24\,
	combout => \Add0~25_combout\);

-- Location: LCCOMB_X18_Y9_N22
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\i_OpSel[0]~input_o\ & (\Mult0|auto_generated|op_3~14_combout\)) # (!\i_OpSel[0]~input_o\ & ((\Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datac => \Mult0|auto_generated|op_3~14_combout\,
	datad => \Add0~25_combout\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X18_Y9_N18
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\i_OpSel[0]~input_o\ & (\Mult0|auto_generated|op_3~4_combout\)) # (!\i_OpSel[0]~input_o\ & ((\Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datab => \Mult0|auto_generated|op_3~4_combout\,
	datac => \Add0~11_combout\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X18_Y9_N12
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\i_OpSel[0]~input_o\ & (\Mult0|auto_generated|op_3~2_combout\)) # (!\i_OpSel[0]~input_o\ & ((\Add0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_3~2_combout\,
	datac => \i_OpSel[0]~input_o\,
	datad => \Add0~9_combout\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X18_Y9_N10
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\i_OpSel[0]~input_o\ & ((\Mult0|auto_generated|op_3~0_combout\))) # (!\i_OpSel[0]~input_o\ & (\Add0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Mult0|auto_generated|op_3~0_combout\,
	datac => \i_OpSel[0]~input_o\,
	combout => \Add0~31_combout\);

-- Location: LCCOMB_X18_Y12_N4
\DisplayDriver|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~0_combout\ = \Add0~31_combout\ $ (VCC)
-- \DisplayDriver|Add2~1\ = CARRY(\Add0~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~31_combout\,
	datad => VCC,
	combout => \DisplayDriver|Add2~0_combout\,
	cout => \DisplayDriver|Add2~1\);

-- Location: LCCOMB_X18_Y12_N6
\DisplayDriver|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~2_combout\ = (\Add0~30_combout\ & (!\DisplayDriver|Add2~1\)) # (!\Add0~30_combout\ & ((\DisplayDriver|Add2~1\) # (GND)))
-- \DisplayDriver|Add2~3\ = CARRY((!\DisplayDriver|Add2~1\) # (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~1\,
	combout => \DisplayDriver|Add2~2_combout\,
	cout => \DisplayDriver|Add2~3\);

-- Location: LCCOMB_X18_Y12_N8
\DisplayDriver|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~4_combout\ = (\Add0~29_combout\ & (\DisplayDriver|Add2~3\ $ (GND))) # (!\Add0~29_combout\ & (!\DisplayDriver|Add2~3\ & VCC))
-- \DisplayDriver|Add2~5\ = CARRY((\Add0~29_combout\ & !\DisplayDriver|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~29_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~3\,
	combout => \DisplayDriver|Add2~4_combout\,
	cout => \DisplayDriver|Add2~5\);

-- Location: LCCOMB_X18_Y12_N30
\DisplayDriver|r_DecPNumber[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[2]~2_combout\ = (\Add0~27_combout\ & (!\DisplayDriver|Add2~4_combout\)) # (!\Add0~27_combout\ & ((\Add0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~27_combout\,
	datac => \DisplayDriver|Add2~4_combout\,
	datad => \Add0~29_combout\,
	combout => \DisplayDriver|r_DecPNumber[2]~2_combout\);

-- Location: LCCOMB_X18_Y12_N28
\DisplayDriver|r_DecPNumber[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[1]~1_combout\ = (\Add0~27_combout\ & ((!\DisplayDriver|Add2~2_combout\))) # (!\Add0~27_combout\ & (\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~27_combout\,
	datac => \Add0~30_combout\,
	datad => \DisplayDriver|Add2~2_combout\,
	combout => \DisplayDriver|r_DecPNumber[1]~1_combout\);

-- Location: LCCOMB_X18_Y9_N16
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\i_OpSel[0]~input_o\ & ((\Mult0|auto_generated|op_3~6_combout\))) # (!\i_OpSel[0]~input_o\ & (\Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datac => \Add0~13_combout\,
	datad => \Mult0|auto_generated|op_3~6_combout\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X18_Y12_N10
\DisplayDriver|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~6_combout\ = (\Add0~28_combout\ & (!\DisplayDriver|Add2~5\)) # (!\Add0~28_combout\ & ((\DisplayDriver|Add2~5\) # (GND)))
-- \DisplayDriver|Add2~7\ = CARRY((!\DisplayDriver|Add2~5\) # (!\Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~5\,
	combout => \DisplayDriver|Add2~6_combout\,
	cout => \DisplayDriver|Add2~7\);

-- Location: LCCOMB_X18_Y12_N20
\DisplayDriver|r_DecPNumber[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[3]~3_combout\ = (\Add0~27_combout\ & ((!\DisplayDriver|Add2~6_combout\))) # (!\Add0~27_combout\ & (\Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~27_combout\,
	datac => \Add0~28_combout\,
	datad => \DisplayDriver|Add2~6_combout\,
	combout => \DisplayDriver|r_DecPNumber[3]~3_combout\);

-- Location: LCCOMB_X18_Y12_N2
\DisplayDriver|r_DecPNumber[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[0]~0_combout\ = (\Add0~27_combout\ & ((!\DisplayDriver|Add2~0_combout\))) # (!\Add0~27_combout\ & (\Add0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~31_combout\,
	datac => \DisplayDriver|Add2~0_combout\,
	datad => \Add0~27_combout\,
	combout => \DisplayDriver|r_DecPNumber[0]~0_combout\);

-- Location: LCCOMB_X17_Y19_N12
\DisplayDriver|DisplayDecoder2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux6~0_combout\ = (\DisplayDriver|r_DecPNumber[2]~2_combout\ & (!\DisplayDriver|r_DecPNumber[1]~1_combout\ & (\DisplayDriver|r_DecPNumber[3]~3_combout\ $ (!\DisplayDriver|r_DecPNumber[0]~0_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[2]~2_combout\ & (\DisplayDriver|r_DecPNumber[0]~0_combout\ & (\DisplayDriver|r_DecPNumber[1]~1_combout\ $ (!\DisplayDriver|r_DecPNumber[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y9_N0
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\i_OpSel[0]~input_o\ & (\Mult0|auto_generated|op_3~8_combout\)) # (!\i_OpSel[0]~input_o\ & ((\Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datab => \Mult0|auto_generated|op_3~8_combout\,
	datac => \Add0~15_combout\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X18_Y12_N12
\DisplayDriver|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~8_combout\ = (\Add0~17_combout\ & (\DisplayDriver|Add2~7\ $ (GND))) # (!\Add0~17_combout\ & (!\DisplayDriver|Add2~7\ & VCC))
-- \DisplayDriver|Add2~9\ = CARRY((\Add0~17_combout\ & !\DisplayDriver|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~17_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~7\,
	combout => \DisplayDriver|Add2~8_combout\,
	cout => \DisplayDriver|Add2~9\);

-- Location: LCCOMB_X18_Y12_N24
\DisplayDriver|r_IntPNumber[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[0]~2_combout\ = (\Add0~27_combout\ & ((!\DisplayDriver|Add2~8_combout\))) # (!\Add0~27_combout\ & (\Add0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~27_combout\,
	datac => \Add0~17_combout\,
	datad => \DisplayDriver|Add2~8_combout\,
	combout => \DisplayDriver|r_IntPNumber[0]~2_combout\);

-- Location: LCCOMB_X18_Y9_N26
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\i_OpSel[0]~input_o\ & (\Mult0|auto_generated|op_3~12_combout\)) # (!\i_OpSel[0]~input_o\ & ((\Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datab => \Mult0|auto_generated|op_3~12_combout\,
	datac => \Add0~23_combout\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X18_Y9_N4
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\i_OpSel[0]~input_o\ & (\Mult0|auto_generated|op_3~10_combout\)) # (!\i_OpSel[0]~input_o\ & ((\Add0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~10_combout\,
	datac => \i_OpSel[0]~input_o\,
	datad => \Add0~21_combout\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X18_Y12_N14
\DisplayDriver|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~10_combout\ = (\Add0~32_combout\ & (!\DisplayDriver|Add2~9\)) # (!\Add0~32_combout\ & ((\DisplayDriver|Add2~9\) # (GND)))
-- \DisplayDriver|Add2~11\ = CARRY((!\DisplayDriver|Add2~9\) # (!\Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~9\,
	combout => \DisplayDriver|Add2~10_combout\,
	cout => \DisplayDriver|Add2~11\);

-- Location: LCCOMB_X18_Y12_N16
\DisplayDriver|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~12_combout\ = (\Add0~33_combout\ & (\DisplayDriver|Add2~11\ $ (GND))) # (!\Add0~33_combout\ & (!\DisplayDriver|Add2~11\ & VCC))
-- \DisplayDriver|Add2~13\ = CARRY((\Add0~33_combout\ & !\DisplayDriver|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~33_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~11\,
	combout => \DisplayDriver|Add2~12_combout\,
	cout => \DisplayDriver|Add2~13\);

-- Location: LCCOMB_X18_Y12_N18
\DisplayDriver|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~14_combout\ = \DisplayDriver|Add2~13\ $ (!\Add0~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add0~27_combout\,
	cin => \DisplayDriver|Add2~13\,
	combout => \DisplayDriver|Add2~14_combout\);

-- Location: LCCOMB_X18_Y9_N24
\DisplayDriver|r_IntPNumber[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[3]~5_combout\ = (\DisplayDriver|Add2~14_combout\ & ((\i_OpSel[0]~input_o\ & (\Mult0|auto_generated|op_3~14_combout\)) # (!\i_OpSel[0]~input_o\ & ((\Add0~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~14_combout\,
	datab => \DisplayDriver|Add2~14_combout\,
	datac => \i_OpSel[0]~input_o\,
	datad => \Add0~25_combout\,
	combout => \DisplayDriver|r_IntPNumber[3]~5_combout\);

-- Location: LCCOMB_X18_Y12_N0
\DisplayDriver|r_IntPNumber[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[2]~4_combout\ = (\Add0~27_combout\ & ((!\DisplayDriver|Add2~12_combout\))) # (!\Add0~27_combout\ & (\Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~27_combout\,
	datac => \Add0~33_combout\,
	datad => \DisplayDriver|Add2~12_combout\,
	combout => \DisplayDriver|r_IntPNumber[2]~4_combout\);

-- Location: LCCOMB_X18_Y12_N26
\DisplayDriver|r_IntPNumber[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[1]~3_combout\ = (\Add0~27_combout\ & ((!\DisplayDriver|Add2~10_combout\))) # (!\Add0~27_combout\ & (\Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datac => \DisplayDriver|Add2~10_combout\,
	datad => \Add0~27_combout\,
	combout => \DisplayDriver|r_IntPNumber[1]~3_combout\);

-- Location: LCCOMB_X17_Y20_N20
\DisplayDriver|DisplayDecoder1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux6~0_combout\ = (\DisplayDriver|r_IntPNumber[3]~5_combout\ & (\DisplayDriver|r_IntPNumber[0]~2_combout\ & (\DisplayDriver|r_IntPNumber[2]~4_combout\ $ (\DisplayDriver|r_IntPNumber[1]~3_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[3]~5_combout\ & (!\DisplayDriver|r_IntPNumber[1]~3_combout\ & (\DisplayDriver|r_IntPNumber[0]~2_combout\ $ (\DisplayDriver|r_IntPNumber[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[0]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[3]~5_combout\,
	datac => \DisplayDriver|r_IntPNumber[2]~4_combout\,
	datad => \DisplayDriver|r_IntPNumber[1]~3_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y20_N30
\DisplayDriver|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux10~0_combout\ = (\DisplayDriver|r_Sel\(1) & (((\DisplayDriver|r_Sel\(0)) # (\DisplayDriver|DisplayDecoder1|Mux6~0_combout\)))) # (!\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|DisplayDecoder2|Mux6~0_combout\) # 
-- ((!\DisplayDriver|r_Sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux6~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|DisplayDecoder1|Mux6~0_combout\,
	combout => \DisplayDriver|Mux10~0_combout\);

-- Location: LCCOMB_X17_Y19_N10
\DisplayDriver|DisplayDecoder2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux5~0_combout\ = (\DisplayDriver|r_DecPNumber[1]~1_combout\ & ((\DisplayDriver|r_DecPNumber[0]~0_combout\ & ((\DisplayDriver|r_DecPNumber[3]~3_combout\))) # (!\DisplayDriver|r_DecPNumber[0]~0_combout\ & 
-- (\DisplayDriver|r_DecPNumber[2]~2_combout\)))) # (!\DisplayDriver|r_DecPNumber[1]~1_combout\ & (\DisplayDriver|r_DecPNumber[2]~2_combout\ & (\DisplayDriver|r_DecPNumber[3]~3_combout\ $ (\DisplayDriver|r_DecPNumber[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y20_N12
\DisplayDriver|DisplayDecoder1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux5~0_combout\ = (\DisplayDriver|r_IntPNumber[3]~5_combout\ & ((\DisplayDriver|r_IntPNumber[0]~2_combout\ & ((\DisplayDriver|r_IntPNumber[1]~3_combout\))) # (!\DisplayDriver|r_IntPNumber[0]~2_combout\ & 
-- (\DisplayDriver|r_IntPNumber[2]~4_combout\)))) # (!\DisplayDriver|r_IntPNumber[3]~5_combout\ & (\DisplayDriver|r_IntPNumber[2]~4_combout\ & (\DisplayDriver|r_IntPNumber[0]~2_combout\ $ (\DisplayDriver|r_IntPNumber[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[0]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[3]~5_combout\,
	datac => \DisplayDriver|r_IntPNumber[2]~4_combout\,
	datad => \DisplayDriver|r_IntPNumber[1]~3_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y20_N22
\DisplayDriver|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux9~0_combout\ = (\DisplayDriver|r_Sel\(1) & (((\DisplayDriver|r_Sel\(0)) # (\DisplayDriver|DisplayDecoder1|Mux5~0_combout\)))) # (!\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|DisplayDecoder2|Mux5~0_combout\) # 
-- ((!\DisplayDriver|r_Sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux5~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|DisplayDecoder1|Mux5~0_combout\,
	combout => \DisplayDriver|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y19_N4
\DisplayDriver|DisplayDecoder2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux4~0_combout\ = (\DisplayDriver|r_DecPNumber[2]~2_combout\ & (\DisplayDriver|r_DecPNumber[3]~3_combout\ & ((\DisplayDriver|r_DecPNumber[1]~1_combout\) # (!\DisplayDriver|r_DecPNumber[0]~0_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[2]~2_combout\ & (\DisplayDriver|r_DecPNumber[1]~1_combout\ & (!\DisplayDriver|r_DecPNumber[3]~3_combout\ & !\DisplayDriver|r_DecPNumber[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y20_N24
\DisplayDriver|DisplayDecoder1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux4~0_combout\ = (\DisplayDriver|r_IntPNumber[3]~5_combout\ & (\DisplayDriver|r_IntPNumber[2]~4_combout\ & ((\DisplayDriver|r_IntPNumber[1]~3_combout\) # (!\DisplayDriver|r_IntPNumber[0]~2_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[3]~5_combout\ & (!\DisplayDriver|r_IntPNumber[0]~2_combout\ & (!\DisplayDriver|r_IntPNumber[2]~4_combout\ & \DisplayDriver|r_IntPNumber[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[0]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[3]~5_combout\,
	datac => \DisplayDriver|r_IntPNumber[2]~4_combout\,
	datad => \DisplayDriver|r_IntPNumber[1]~3_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y20_N18
\DisplayDriver|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux8~0_combout\ = (\DisplayDriver|r_Sel\(1) & (((\DisplayDriver|r_Sel\(0)) # (\DisplayDriver|DisplayDecoder1|Mux4~0_combout\)))) # (!\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|DisplayDecoder2|Mux4~0_combout\) # 
-- ((!\DisplayDriver|r_Sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux4~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|DisplayDecoder1|Mux4~0_combout\,
	combout => \DisplayDriver|Mux8~0_combout\);

-- Location: LCCOMB_X17_Y19_N26
\DisplayDriver|DisplayDecoder2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux3~0_combout\ = (\DisplayDriver|r_DecPNumber[0]~0_combout\ & (\DisplayDriver|r_DecPNumber[2]~2_combout\ $ ((!\DisplayDriver|r_DecPNumber[1]~1_combout\)))) # (!\DisplayDriver|r_DecPNumber[0]~0_combout\ & 
-- ((\DisplayDriver|r_DecPNumber[2]~2_combout\ & (!\DisplayDriver|r_DecPNumber[1]~1_combout\ & !\DisplayDriver|r_DecPNumber[3]~3_combout\)) # (!\DisplayDriver|r_DecPNumber[2]~2_combout\ & (\DisplayDriver|r_DecPNumber[1]~1_combout\ & 
-- \DisplayDriver|r_DecPNumber[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y20_N16
\DisplayDriver|DisplayDecoder1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux3~0_combout\ = (\DisplayDriver|r_IntPNumber[0]~2_combout\ & ((\DisplayDriver|r_IntPNumber[2]~4_combout\ $ (!\DisplayDriver|r_IntPNumber[1]~3_combout\)))) # (!\DisplayDriver|r_IntPNumber[0]~2_combout\ & 
-- ((\DisplayDriver|r_IntPNumber[3]~5_combout\ & (!\DisplayDriver|r_IntPNumber[2]~4_combout\ & \DisplayDriver|r_IntPNumber[1]~3_combout\)) # (!\DisplayDriver|r_IntPNumber[3]~5_combout\ & (\DisplayDriver|r_IntPNumber[2]~4_combout\ & 
-- !\DisplayDriver|r_IntPNumber[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[0]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[3]~5_combout\,
	datac => \DisplayDriver|r_IntPNumber[2]~4_combout\,
	datad => \DisplayDriver|r_IntPNumber[1]~3_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y20_N6
\DisplayDriver|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux7~0_combout\ = (\DisplayDriver|r_Sel\(1) & (((\DisplayDriver|r_Sel\(0)) # (\DisplayDriver|DisplayDecoder1|Mux3~0_combout\)))) # (!\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|DisplayDecoder2|Mux3~0_combout\) # 
-- ((!\DisplayDriver|r_Sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux3~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|DisplayDecoder1|Mux3~0_combout\,
	combout => \DisplayDriver|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y19_N0
\DisplayDriver|DisplayDecoder2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux2~0_combout\ = (\DisplayDriver|r_DecPNumber[1]~1_combout\ & (((!\DisplayDriver|r_DecPNumber[3]~3_combout\ & \DisplayDriver|r_DecPNumber[0]~0_combout\)))) # (!\DisplayDriver|r_DecPNumber[1]~1_combout\ & 
-- ((\DisplayDriver|r_DecPNumber[2]~2_combout\ & (!\DisplayDriver|r_DecPNumber[3]~3_combout\)) # (!\DisplayDriver|r_DecPNumber[2]~2_combout\ & ((\DisplayDriver|r_DecPNumber[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y20_N4
\DisplayDriver|DisplayDecoder1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux2~0_combout\ = (\DisplayDriver|r_IntPNumber[1]~3_combout\ & (\DisplayDriver|r_IntPNumber[0]~2_combout\ & (!\DisplayDriver|r_IntPNumber[3]~5_combout\))) # (!\DisplayDriver|r_IntPNumber[1]~3_combout\ & 
-- ((\DisplayDriver|r_IntPNumber[2]~4_combout\ & ((!\DisplayDriver|r_IntPNumber[3]~5_combout\))) # (!\DisplayDriver|r_IntPNumber[2]~4_combout\ & (\DisplayDriver|r_IntPNumber[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[0]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[3]~5_combout\,
	datac => \DisplayDriver|r_IntPNumber[2]~4_combout\,
	datad => \DisplayDriver|r_IntPNumber[1]~3_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux2~0_combout\);

-- Location: LCCOMB_X17_Y20_N14
\DisplayDriver|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux6~0_combout\ = (\DisplayDriver|r_Sel\(0) & ((\DisplayDriver|DisplayDecoder2|Mux2~0_combout\) # ((\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|r_Sel\(0) & (((\DisplayDriver|DisplayDecoder1|Mux2~0_combout\) # 
-- (!\DisplayDriver|r_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datab => \DisplayDriver|DisplayDecoder2|Mux2~0_combout\,
	datac => \DisplayDriver|DisplayDecoder1|Mux2~0_combout\,
	datad => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y20_N8
\DisplayDriver|DisplayDecoder1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux1~0_combout\ = (\DisplayDriver|r_IntPNumber[0]~2_combout\ & (\DisplayDriver|r_IntPNumber[3]~5_combout\ $ (((\DisplayDriver|r_IntPNumber[1]~3_combout\) # (!\DisplayDriver|r_IntPNumber[2]~4_combout\))))) # 
-- (!\DisplayDriver|r_IntPNumber[0]~2_combout\ & (!\DisplayDriver|r_IntPNumber[3]~5_combout\ & (!\DisplayDriver|r_IntPNumber[2]~4_combout\ & \DisplayDriver|r_IntPNumber[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[0]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[3]~5_combout\,
	datac => \DisplayDriver|r_IntPNumber[2]~4_combout\,
	datad => \DisplayDriver|r_IntPNumber[1]~3_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y19_N18
\DisplayDriver|DisplayDecoder2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux1~0_combout\ = (\DisplayDriver|r_DecPNumber[2]~2_combout\ & (\DisplayDriver|r_DecPNumber[0]~0_combout\ & (\DisplayDriver|r_DecPNumber[1]~1_combout\ $ (\DisplayDriver|r_DecPNumber[3]~3_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[2]~2_combout\ & (!\DisplayDriver|r_DecPNumber[3]~3_combout\ & ((\DisplayDriver|r_DecPNumber[1]~1_combout\) # (\DisplayDriver|r_DecPNumber[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y20_N26
\DisplayDriver|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux5~0_combout\ = (\DisplayDriver|r_Sel\(0) & ((\DisplayDriver|r_Sel\(1)) # ((\DisplayDriver|DisplayDecoder2|Mux1~0_combout\)))) # (!\DisplayDriver|r_Sel\(0) & (((\DisplayDriver|DisplayDecoder1|Mux1~0_combout\)) # 
-- (!\DisplayDriver|r_Sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|DisplayDecoder1|Mux1~0_combout\,
	datad => \DisplayDriver|DisplayDecoder2|Mux1~0_combout\,
	combout => \DisplayDriver|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y19_N8
\DisplayDriver|DisplayDecoder2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux0~0_combout\ = (\DisplayDriver|r_DecPNumber[0]~0_combout\ & ((\DisplayDriver|r_DecPNumber[3]~3_combout\) # (\DisplayDriver|r_DecPNumber[2]~2_combout\ $ (\DisplayDriver|r_DecPNumber[1]~1_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[0]~0_combout\ & ((\DisplayDriver|r_DecPNumber[1]~1_combout\) # (\DisplayDriver|r_DecPNumber[2]~2_combout\ $ (\DisplayDriver|r_DecPNumber[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y20_N0
\DisplayDriver|DisplayDecoder1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux0~0_combout\ = (\DisplayDriver|r_IntPNumber[0]~2_combout\ & ((\DisplayDriver|r_IntPNumber[3]~5_combout\) # (\DisplayDriver|r_IntPNumber[2]~4_combout\ $ (\DisplayDriver|r_IntPNumber[1]~3_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[0]~2_combout\ & ((\DisplayDriver|r_IntPNumber[1]~3_combout\) # (\DisplayDriver|r_IntPNumber[3]~5_combout\ $ (\DisplayDriver|r_IntPNumber[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[0]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[3]~5_combout\,
	datac => \DisplayDriver|r_IntPNumber[2]~4_combout\,
	datad => \DisplayDriver|r_IntPNumber[1]~3_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y20_N10
\DisplayDriver|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux4~0_combout\ = (\DisplayDriver|r_Sel\(0) & (!\DisplayDriver|DisplayDecoder2|Mux0~0_combout\ & (!\DisplayDriver|r_Sel\(1)))) # (!\DisplayDriver|r_Sel\(0) & (((!\DisplayDriver|DisplayDecoder1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux0~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|DisplayDecoder1|Mux0~0_combout\,
	combout => \DisplayDriver|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y20_N28
\DisplayDriver|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux4~1_combout\ = (\DisplayDriver|Mux4~0_combout\) # ((\DisplayDriver|r_Sel\(1) & (\DisplayDriver|r_Sel\(0) & !\Add0~27_combout\)) # (!\DisplayDriver|r_Sel\(1) & (!\DisplayDriver|r_Sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux4~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	datad => \Add0~27_combout\,
	combout => \DisplayDriver|Mux4~1_combout\);

ww_o_Displays(0) <= \o_Displays[0]~output_o\;

ww_o_Displays(1) <= \o_Displays[1]~output_o\;

ww_o_Displays(2) <= \o_Displays[2]~output_o\;

ww_o_Displays(3) <= \o_Displays[3]~output_o\;

ww_o_Segments(0) <= \o_Segments[0]~output_o\;

ww_o_Segments(1) <= \o_Segments[1]~output_o\;

ww_o_Segments(2) <= \o_Segments[2]~output_o\;

ww_o_Segments(3) <= \o_Segments[3]~output_o\;

ww_o_Segments(4) <= \o_Segments[4]~output_o\;

ww_o_Segments(5) <= \o_Segments[5]~output_o\;

ww_o_Segments(6) <= \o_Segments[6]~output_o\;

ww_o_DispPoint <= \o_DispPoint~output_o\;
END structure;


