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

-- DATE "10/16/2023 12:48:04"

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
	i_NumA : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	i_NumB : IN IEEE.NUMERIC_STD.signed(7 DOWNTO 0);
	i_OpSel : IN std_logic_vector(1 DOWNTO 0);
	o_Displays : OUT std_logic_vector(3 DOWNTO 0);
	o_Segments : OUT std_logic_vector(6 DOWNTO 0);
	o_DispPoint : OUT std_logic;
	o_NumSign : OUT std_logic
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
-- o_NumSign	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- i_OpSel[1]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[7]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_OpSel[0]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[6]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[5]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[4]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[3]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[1]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[7]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[6]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[5]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[4]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[3]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[2]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[1]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[0]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_o_NumSign : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
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
SIGNAL \o_NumSign~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DisplayDriver|r_Count[0]~17_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[15]~48\ : std_logic;
SIGNAL \DisplayDriver|r_Count[16]~49_combout\ : std_logic;
SIGNAL \DisplayDriver|LessThan0~1_combout\ : std_logic;
SIGNAL \DisplayDriver|LessThan0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|LessThan0~2_combout\ : std_logic;
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
SIGNAL \DisplayDriver|r_Sel[1]~1_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux0~0_combout\ : std_logic;
SIGNAL \i_NumA[0]~input_o\ : std_logic;
SIGNAL \i_NumA[1]~input_o\ : std_logic;
SIGNAL \i_NumA[2]~input_o\ : std_logic;
SIGNAL \i_NumA[3]~input_o\ : std_logic;
SIGNAL \i_NumA[4]~input_o\ : std_logic;
SIGNAL \i_NumA[5]~input_o\ : std_logic;
SIGNAL \i_NumA[6]~input_o\ : std_logic;
SIGNAL \i_NumA[7]~input_o\ : std_logic;
SIGNAL \i_NumB[0]~input_o\ : std_logic;
SIGNAL \i_NumB[1]~input_o\ : std_logic;
SIGNAL \i_NumB[2]~input_o\ : std_logic;
SIGNAL \i_NumB[3]~input_o\ : std_logic;
SIGNAL \i_NumB[4]~input_o\ : std_logic;
SIGNAL \i_NumB[5]~input_o\ : std_logic;
SIGNAL \i_NumB[6]~input_o\ : std_logic;
SIGNAL \i_NumB[7]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \i_OpSel[0]~input_o\ : std_logic;
SIGNAL \i_OpSel[1]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux6~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux10~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux6~2_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux6~3_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux10~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux10~2_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux5~2_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux5~3_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux9~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux9~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux8~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux4~2_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux4~3_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux8~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux3~2_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux3~3_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux7~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux7~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux2~2_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux2~3_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux6~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux1~2_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux1~3_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux5~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux0~2_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux0~3_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux4~1_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux12~8_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DisplayDriver|r_Count\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DisplayDriver|ALT_INV_Mux12~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_NumA <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(i_NumA);
ww_i_NumB <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(i_NumB);
ww_i_OpSel <= i_OpSel;
o_Displays <= ww_o_Displays;
o_Segments <= ww_o_Segments;
o_DispPoint <= ww_o_DispPoint;
o_NumSign <= ww_o_NumSign;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\i_NumA[7]~input_o\ & \i_NumA[6]~input_o\ & \i_NumA[5]~input_o\ & \i_NumA[4]~input_o\ & \i_NumA[3]~input_o\ & \i_NumA[2]~input_o\ & \i_NumA[1]~input_o\ & \i_NumA[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\i_NumB[7]~input_o\ & \i_NumB[6]~input_o\ & \i_NumB[5]~input_o\ & \i_NumB[4]~input_o\ & \i_NumB[3]~input_o\ & \i_NumB[2]~input_o\ & \i_NumB[1]~input_o\ & \i_NumB[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
\DisplayDriver|ALT_INV_Mux12~8_combout\ <= NOT \DisplayDriver|Mux12~8_combout\;
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
	i => \DisplayDriver|Mux10~1_combout\,
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
	i => \DisplayDriver|Mux9~1_combout\,
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
	i => \DisplayDriver|Mux8~1_combout\,
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
	i => \DisplayDriver|Mux7~1_combout\,
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
	i => \DisplayDriver|Mux6~1_combout\,
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
	i => \DisplayDriver|Mux5~1_combout\,
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

-- Location: IOOBUF_X34_Y10_N9
\o_NumSign~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DisplayDriver|ALT_INV_Mux12~8_combout\,
	devoe => ww_devoe,
	o => \o_NumSign~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\i_CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G2
\i_CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X14_Y10_N16
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

-- Location: LCCOMB_X14_Y9_N14
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

-- Location: LCCOMB_X14_Y9_N16
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

-- Location: FF_X14_Y9_N17
\DisplayDriver|r_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[16]~49_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(16));

-- Location: LCCOMB_X14_Y10_N2
\DisplayDriver|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~1_combout\ = (!\DisplayDriver|r_Count\(8) & (((!\DisplayDriver|r_Count\(5) & !\DisplayDriver|r_Count\(6))) # (!\DisplayDriver|r_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(5),
	datab => \DisplayDriver|r_Count\(6),
	datac => \DisplayDriver|r_Count\(7),
	datad => \DisplayDriver|r_Count\(8),
	combout => \DisplayDriver|LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y9_N22
\DisplayDriver|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~0_combout\ = (!\DisplayDriver|r_Count\(14) & (!\DisplayDriver|r_Count\(12) & (!\DisplayDriver|r_Count\(13) & !\DisplayDriver|r_Count\(11))))

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
	combout => \DisplayDriver|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y10_N12
\DisplayDriver|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~2_combout\ = (\DisplayDriver|LessThan0~0_combout\ & (((\DisplayDriver|LessThan0~1_combout\) # (!\DisplayDriver|r_Count\(10))) # (!\DisplayDriver|r_Count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(9),
	datab => \DisplayDriver|LessThan0~1_combout\,
	datac => \DisplayDriver|r_Count\(10),
	datad => \DisplayDriver|LessThan0~0_combout\,
	combout => \DisplayDriver|LessThan0~2_combout\);

-- Location: LCCOMB_X14_Y10_N10
\DisplayDriver|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~3_combout\ = (\DisplayDriver|r_Count\(15) & (\DisplayDriver|r_Count\(16) & !\DisplayDriver|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(15),
	datab => \DisplayDriver|r_Count\(16),
	datad => \DisplayDriver|LessThan0~2_combout\,
	combout => \DisplayDriver|LessThan0~3_combout\);

-- Location: FF_X14_Y10_N17
\DisplayDriver|r_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[0]~17_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(0));

-- Location: LCCOMB_X14_Y10_N18
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

-- Location: FF_X14_Y10_N19
\DisplayDriver|r_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[1]~19_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(1));

-- Location: LCCOMB_X14_Y10_N20
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

-- Location: FF_X14_Y10_N21
\DisplayDriver|r_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[2]~21_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(2));

-- Location: LCCOMB_X14_Y10_N22
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

-- Location: FF_X14_Y10_N23
\DisplayDriver|r_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[3]~23_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(3));

-- Location: LCCOMB_X14_Y10_N24
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

-- Location: FF_X14_Y10_N25
\DisplayDriver|r_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[4]~25_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(4));

-- Location: LCCOMB_X14_Y10_N26
\DisplayDriver|r_Count[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[5]~27_combout\ = (\DisplayDriver|r_Count\(5) & (!\DisplayDriver|r_Count[4]~26\)) # (!\DisplayDriver|r_Count\(5) & ((\DisplayDriver|r_Count[4]~26\) # (GND)))
-- \DisplayDriver|r_Count[5]~28\ = CARRY((!\DisplayDriver|r_Count[4]~26\) # (!\DisplayDriver|r_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(5),
	datad => VCC,
	cin => \DisplayDriver|r_Count[4]~26\,
	combout => \DisplayDriver|r_Count[5]~27_combout\,
	cout => \DisplayDriver|r_Count[5]~28\);

-- Location: FF_X14_Y10_N27
\DisplayDriver|r_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[5]~27_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(5));

-- Location: LCCOMB_X14_Y10_N28
\DisplayDriver|r_Count[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[6]~29_combout\ = (\DisplayDriver|r_Count\(6) & (\DisplayDriver|r_Count[5]~28\ $ (GND))) # (!\DisplayDriver|r_Count\(6) & (!\DisplayDriver|r_Count[5]~28\ & VCC))
-- \DisplayDriver|r_Count[6]~30\ = CARRY((\DisplayDriver|r_Count\(6) & !\DisplayDriver|r_Count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(6),
	datad => VCC,
	cin => \DisplayDriver|r_Count[5]~28\,
	combout => \DisplayDriver|r_Count[6]~29_combout\,
	cout => \DisplayDriver|r_Count[6]~30\);

-- Location: FF_X14_Y10_N29
\DisplayDriver|r_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[6]~29_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(6));

-- Location: LCCOMB_X14_Y10_N30
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

-- Location: FF_X14_Y10_N31
\DisplayDriver|r_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[7]~31_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(7));

-- Location: LCCOMB_X14_Y9_N0
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

-- Location: FF_X13_Y10_N21
\DisplayDriver|r_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \DisplayDriver|r_Count[8]~33_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(8));

-- Location: LCCOMB_X14_Y9_N2
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

-- Location: FF_X14_Y9_N3
\DisplayDriver|r_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[9]~35_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(9));

-- Location: LCCOMB_X14_Y9_N4
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

-- Location: FF_X14_Y9_N5
\DisplayDriver|r_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[10]~37_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(10));

-- Location: LCCOMB_X14_Y9_N6
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

-- Location: FF_X14_Y9_N7
\DisplayDriver|r_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[11]~39_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(11));

-- Location: LCCOMB_X14_Y9_N8
\DisplayDriver|r_Count[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[12]~41_combout\ = (\DisplayDriver|r_Count\(12) & (\DisplayDriver|r_Count[11]~40\ $ (GND))) # (!\DisplayDriver|r_Count\(12) & (!\DisplayDriver|r_Count[11]~40\ & VCC))
-- \DisplayDriver|r_Count[12]~42\ = CARRY((\DisplayDriver|r_Count\(12) & !\DisplayDriver|r_Count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(12),
	datad => VCC,
	cin => \DisplayDriver|r_Count[11]~40\,
	combout => \DisplayDriver|r_Count[12]~41_combout\,
	cout => \DisplayDriver|r_Count[12]~42\);

-- Location: FF_X14_Y9_N9
\DisplayDriver|r_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[12]~41_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(12));

-- Location: LCCOMB_X14_Y9_N10
\DisplayDriver|r_Count[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[13]~43_combout\ = (\DisplayDriver|r_Count\(13) & (!\DisplayDriver|r_Count[12]~42\)) # (!\DisplayDriver|r_Count\(13) & ((\DisplayDriver|r_Count[12]~42\) # (GND)))
-- \DisplayDriver|r_Count[13]~44\ = CARRY((!\DisplayDriver|r_Count[12]~42\) # (!\DisplayDriver|r_Count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(13),
	datad => VCC,
	cin => \DisplayDriver|r_Count[12]~42\,
	combout => \DisplayDriver|r_Count[13]~43_combout\,
	cout => \DisplayDriver|r_Count[13]~44\);

-- Location: FF_X14_Y9_N11
\DisplayDriver|r_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[13]~43_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(13));

-- Location: LCCOMB_X14_Y9_N12
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

-- Location: FF_X14_Y9_N13
\DisplayDriver|r_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[14]~45_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(14));

-- Location: FF_X14_Y9_N15
\DisplayDriver|r_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[15]~47_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(15));

-- Location: LCCOMB_X14_Y10_N8
\DisplayDriver|r_Sel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Sel[0]~0_combout\ = \DisplayDriver|r_Sel\(0) $ (((\DisplayDriver|r_Count\(15) & (\DisplayDriver|r_Count\(16) & !\DisplayDriver|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(15),
	datab => \DisplayDriver|r_Count\(16),
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|LessThan0~2_combout\,
	combout => \DisplayDriver|r_Sel[0]~0_combout\);

-- Location: FF_X14_Y10_N9
\DisplayDriver|r_Sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Sel\(0));

-- Location: LCCOMB_X14_Y10_N6
\DisplayDriver|r_Sel[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Sel[1]~1_combout\ = \DisplayDriver|r_Sel\(1) $ (((\DisplayDriver|r_Sel\(0) & \DisplayDriver|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Sel\(0),
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|LessThan0~3_combout\,
	combout => \DisplayDriver|r_Sel[1]~1_combout\);

-- Location: FF_X14_Y10_N7
\DisplayDriver|r_Sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Sel[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Sel\(1));

-- Location: LCCOMB_X14_Y10_N0
\DisplayDriver|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux3~0_combout\ = (\DisplayDriver|r_Sel\(1)) # (\DisplayDriver|r_Sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	combout => \DisplayDriver|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y10_N14
\DisplayDriver|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux2~0_combout\ = (\DisplayDriver|r_Sel\(1)) # (!\DisplayDriver|r_Sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	combout => \DisplayDriver|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y10_N28
\DisplayDriver|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux1~0_combout\ = (\DisplayDriver|r_Sel\(0)) # (!\DisplayDriver|r_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|r_Sel\(0),
	combout => \DisplayDriver|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y10_N4
\DisplayDriver|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux0~0_combout\ = (!\DisplayDriver|r_Sel\(0)) # (!\DisplayDriver|r_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	combout => \DisplayDriver|Mux0~0_combout\);

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

-- Location: DSPMULT_X20_Y6_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y6_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

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

-- Location: LCCOMB_X19_Y6_N0
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\i_OpSel[0]~input_o\ & !\i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_OpSel[0]~input_o\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X19_Y6_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \i_NumB[0]~input_o\ $ (((\i_OpSel[0]~input_o\ & !\i_OpSel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datac => \i_NumB[0]~input_o\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X19_Y6_N10
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\Add0~0_combout\ & (\Mux7~0_combout\ $ (VCC))) # (!\Add0~0_combout\ & (\Mux7~0_combout\ & VCC))
-- \Add0~2\ = CARRY((\Add0~0_combout\ & \Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Mux7~0_combout\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

-- Location: LCCOMB_X19_Y6_N12
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~2\ & (\i_NumB[1]~input_o\ $ ((!\Mux7~0_combout\)))) # (!\Add0~2\ & ((\i_NumB[1]~input_o\ $ (\Mux7~0_combout\)) # (GND)))
-- \Add0~4\ = CARRY((\i_NumB[1]~input_o\ $ (!\Mux7~0_combout\)) # (!\Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[1]~input_o\,
	datab => \Mux7~0_combout\,
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X19_Y6_N14
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~4\ & ((\i_NumB[2]~input_o\ $ (\Mux7~0_combout\)))) # (!\Add0~4\ & (\i_NumB[2]~input_o\ $ (\Mux7~0_combout\ $ (VCC))))
-- \Add0~6\ = CARRY((!\Add0~4\ & (\i_NumB[2]~input_o\ $ (\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[2]~input_o\,
	datab => \Mux7~0_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X19_Y6_N16
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~6\ & (\i_NumB[3]~input_o\ $ ((!\Mux7~0_combout\)))) # (!\Add0~6\ & ((\i_NumB[3]~input_o\ $ (\Mux7~0_combout\)) # (GND)))
-- \Add0~8\ = CARRY((\i_NumB[3]~input_o\ $ (!\Mux7~0_combout\)) # (!\Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[3]~input_o\,
	datab => \Mux7~0_combout\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X19_Y6_N18
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8\ & ((\i_NumB[4]~input_o\ $ (\Mux7~0_combout\)))) # (!\Add0~8\ & (\i_NumB[4]~input_o\ $ (\Mux7~0_combout\ $ (VCC))))
-- \Add0~10\ = CARRY((!\Add0~8\ & (\i_NumB[4]~input_o\ $ (\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[4]~input_o\,
	datab => \Mux7~0_combout\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X19_Y6_N20
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~10\ & (\i_NumB[5]~input_o\ $ ((!\Mux7~0_combout\)))) # (!\Add0~10\ & ((\i_NumB[5]~input_o\ $ (\Mux7~0_combout\)) # (GND)))
-- \Add0~12\ = CARRY((\i_NumB[5]~input_o\ $ (!\Mux7~0_combout\)) # (!\Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[5]~input_o\,
	datab => \Mux7~0_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X21_Y6_N4
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\i_NumA[0]~input_o\ & (\Add0~1_combout\ $ (VCC))) # (!\i_NumA[0]~input_o\ & (\Add0~1_combout\ & VCC))
-- \Add1~1\ = CARRY((\i_NumA[0]~input_o\ & \Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[0]~input_o\,
	datab => \Add0~1_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X21_Y6_N6
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\i_NumA[1]~input_o\ & ((\Add0~3_combout\ & (\Add1~1\ & VCC)) # (!\Add0~3_combout\ & (!\Add1~1\)))) # (!\i_NumA[1]~input_o\ & ((\Add0~3_combout\ & (!\Add1~1\)) # (!\Add0~3_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\i_NumA[1]~input_o\ & (!\Add0~3_combout\ & !\Add1~1\)) # (!\i_NumA[1]~input_o\ & ((!\Add1~1\) # (!\Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[1]~input_o\,
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X21_Y6_N8
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\Add0~5_combout\ $ (\i_NumA[2]~input_o\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\Add0~5_combout\ & ((\i_NumA[2]~input_o\) # (!\Add1~3\))) # (!\Add0~5_combout\ & (\i_NumA[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \i_NumA[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X21_Y6_N10
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~7_combout\ & ((\i_NumA[3]~input_o\ & (\Add1~5\ & VCC)) # (!\i_NumA[3]~input_o\ & (!\Add1~5\)))) # (!\Add0~7_combout\ & ((\i_NumA[3]~input_o\ & (!\Add1~5\)) # (!\i_NumA[3]~input_o\ & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\Add0~7_combout\ & (!\i_NumA[3]~input_o\ & !\Add1~5\)) # (!\Add0~7_combout\ & ((!\Add1~5\) # (!\i_NumA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \i_NumA[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X21_Y6_N12
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\i_NumA[4]~input_o\ $ (\Add0~9_combout\ $ (!\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\i_NumA[4]~input_o\ & ((\Add0~9_combout\) # (!\Add1~7\))) # (!\i_NumA[4]~input_o\ & (\Add0~9_combout\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[4]~input_o\,
	datab => \Add0~9_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X21_Y6_N14
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\i_NumA[5]~input_o\ & ((\Add0~11_combout\ & (\Add1~9\ & VCC)) # (!\Add0~11_combout\ & (!\Add1~9\)))) # (!\i_NumA[5]~input_o\ & ((\Add0~11_combout\ & (!\Add1~9\)) # (!\Add0~11_combout\ & ((\Add1~9\) # (GND)))))
-- \Add1~11\ = CARRY((\i_NumA[5]~input_o\ & (!\Add0~11_combout\ & !\Add1~9\)) # (!\i_NumA[5]~input_o\ & ((!\Add1~9\) # (!\Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[5]~input_o\,
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X21_Y6_N22
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\i_OpSel[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT9\)) # (!\i_OpSel[1]~input_o\ & ((\Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \Add1~10_combout\,
	datac => \i_OpSel[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X19_Y6_N22
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12\ & ((\i_NumB[6]~input_o\ $ (\Mux7~0_combout\)))) # (!\Add0~12\ & (\i_NumB[6]~input_o\ $ (\Mux7~0_combout\ $ (VCC))))
-- \Add0~14\ = CARRY((!\Add0~12\ & (\i_NumB[6]~input_o\ $ (\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[6]~input_o\,
	datab => \Mux7~0_combout\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X21_Y6_N16
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Add0~13_combout\ $ (\i_NumA[6]~input_o\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\Add0~13_combout\ & ((\i_NumA[6]~input_o\) # (!\Add1~11\))) # (!\Add0~13_combout\ & (\i_NumA[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \i_NumA[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X21_Y6_N26
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\i_OpSel[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT10\)) # (!\i_OpSel[1]~input_o\ & ((\Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \Add1~12_combout\,
	datac => \i_OpSel[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X19_Y6_N24
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = \i_NumB[7]~input_o\ $ (\Add0~14\ $ (\Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[7]~input_o\,
	datad => \Mux7~0_combout\,
	cin => \Add0~14\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X21_Y6_N18
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add0~15_combout\ & ((\i_NumA[7]~input_o\ & (\Add1~13\ & VCC)) # (!\i_NumA[7]~input_o\ & (!\Add1~13\)))) # (!\Add0~15_combout\ & ((\i_NumA[7]~input_o\ & (!\Add1~13\)) # (!\i_NumA[7]~input_o\ & ((\Add1~13\) # (GND)))))
-- \Add1~15\ = CARRY((\Add0~15_combout\ & (!\i_NumA[7]~input_o\ & !\Add1~13\)) # (!\Add0~15_combout\ & ((!\Add1~13\) # (!\i_NumA[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \i_NumA[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X21_Y6_N24
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\i_OpSel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT11\))) # (!\i_OpSel[1]~input_o\ & (\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datac => \i_OpSel[1]~input_o\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X21_Y6_N28
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\i_OpSel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT8\))) # (!\i_OpSel[1]~input_o\ & (\Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datac => \i_OpSel[1]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X17_Y10_N24
\DisplayDriver|DisplayDecoder2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux6~0_combout\ = (\Mux13~0_combout\ & (!\Mux14~0_combout\ & (\Mux12~0_combout\ $ (!\Mux15~0_combout\)))) # (!\Mux13~0_combout\ & (\Mux15~0_combout\ & (\Mux14~0_combout\ $ (!\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux13~0_combout\,
	datac => \Mux12~0_combout\,
	datad => \Mux15~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y6_N2
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT13\ & \i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X21_Y6_N20
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = !\Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X19_Y6_N8
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\i_OpSel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT12\))) # (!\i_OpSel[1]~input_o\ & (\Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X19_Y10_N20
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT14\ & \i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X19_Y6_N28
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT15\ & \i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X18_Y10_N8
\DisplayDriver|DisplayDecoder1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux6~0_combout\ = (\Mux9~0_combout\ & (!\Mux10~0_combout\ & (\Mux11~0_combout\ $ (!\Mux8~0_combout\)))) # (!\Mux9~0_combout\ & (\Mux11~0_combout\ & (\Mux10~0_combout\ $ (!\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux8~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y10_N18
\DisplayDriver|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux10~0_combout\ = (\DisplayDriver|r_Sel\(0) & (((\DisplayDriver|DisplayDecoder1|Mux6~0_combout\) # (!\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|r_Sel\(0) & (\DisplayDriver|DisplayDecoder2|Mux6~0_combout\ & (\DisplayDriver|r_Sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datab => \DisplayDriver|DisplayDecoder2|Mux6~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder1|Mux6~0_combout\,
	combout => \DisplayDriver|Mux10~0_combout\);

-- Location: LCCOMB_X19_Y10_N6
\DisplayDriver|DisplayDecoder4|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux6~2_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT2\ & (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\ $ (!\Mult0|auto_generated|mac_out2~dataout\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT2\ & (\Mult0|auto_generated|mac_out2~dataout\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\ $ (!\Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \DisplayDriver|DisplayDecoder4|Mux6~2_combout\);

-- Location: LCCOMB_X19_Y10_N8
\DisplayDriver|DisplayDecoder4|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux6~3_combout\ = (\DisplayDriver|DisplayDecoder4|Mux6~2_combout\ & \i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder4|Mux6~2_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \DisplayDriver|DisplayDecoder4|Mux6~3_combout\);

-- Location: LCCOMB_X21_Y6_N0
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\i_OpSel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT5\))) # (!\i_OpSel[1]~input_o\ & (\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \i_OpSel[1]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X21_Y6_N2
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\i_OpSel[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT7\)) # (!\i_OpSel[1]~input_o\ & ((\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \i_OpSel[1]~input_o\,
	datad => \Add1~6_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X19_Y6_N30
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\i_OpSel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT6\))) # (!\i_OpSel[1]~input_o\ & (\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~4_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X21_Y6_N30
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\i_OpSel[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT4\)) # (!\i_OpSel[1]~input_o\ & ((\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \Add1~0_combout\,
	datac => \i_OpSel[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X16_Y10_N16
\DisplayDriver|DisplayDecoder3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux6~0_combout\ = (\Mux16~0_combout\ & (\Mux19~0_combout\ & (\Mux18~0_combout\ $ (\Mux17~0_combout\)))) # (!\Mux16~0_combout\ & (!\Mux18~0_combout\ & (\Mux17~0_combout\ $ (\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux16~0_combout\,
	datac => \Mux17~0_combout\,
	datad => \Mux19~0_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y10_N10
\DisplayDriver|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux10~1_combout\ = (\DisplayDriver|r_Sel\(1) & (\DisplayDriver|Mux10~0_combout\)) # (!\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|Mux10~0_combout\ & ((\DisplayDriver|DisplayDecoder3|Mux6~0_combout\))) # (!\DisplayDriver|Mux10~0_combout\ & 
-- (\DisplayDriver|DisplayDecoder4|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(1),
	datab => \DisplayDriver|Mux10~0_combout\,
	datac => \DisplayDriver|DisplayDecoder4|Mux6~3_combout\,
	datad => \DisplayDriver|DisplayDecoder3|Mux6~0_combout\,
	combout => \DisplayDriver|Mux10~1_combout\);

-- Location: LCCOMB_X17_Y10_N22
\DisplayDriver|DisplayDecoder2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux5~0_combout\ = (\Mux14~0_combout\ & ((\Mux15~0_combout\ & ((\Mux12~0_combout\))) # (!\Mux15~0_combout\ & (\Mux13~0_combout\)))) # (!\Mux14~0_combout\ & (\Mux13~0_combout\ & (\Mux12~0_combout\ $ (\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux13~0_combout\,
	datac => \Mux12~0_combout\,
	datad => \Mux15~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y10_N4
\DisplayDriver|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux10~2_combout\ = \DisplayDriver|r_Sel\(1) $ (\DisplayDriver|r_Sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|r_Sel\(0),
	combout => \DisplayDriver|Mux10~2_combout\);

-- Location: LCCOMB_X16_Y10_N6
\DisplayDriver|DisplayDecoder3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux5~0_combout\ = (\Mux18~0_combout\ & ((\Mux19~0_combout\ & (\Mux16~0_combout\)) # (!\Mux19~0_combout\ & ((\Mux17~0_combout\))))) # (!\Mux18~0_combout\ & (\Mux17~0_combout\ & (\Mux16~0_combout\ $ (\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux16~0_combout\,
	datac => \Mux17~0_combout\,
	datad => \Mux19~0_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y10_N18
\DisplayDriver|DisplayDecoder1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux5~0_combout\ = (\Mux10~0_combout\ & ((\Mux11~0_combout\ & ((\Mux8~0_combout\))) # (!\Mux11~0_combout\ & (\Mux9~0_combout\)))) # (!\Mux10~0_combout\ & (\Mux9~0_combout\ & (\Mux11~0_combout\ $ (\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux8~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y10_N14
\DisplayDriver|DisplayDecoder4|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux5~2_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\Mult0|auto_generated|mac_out2~dataout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT1\))) # (!\Mult0|auto_generated|mac_out2~dataout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT2\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & (\Mult0|auto_generated|mac_out2~DATAOUT2\ & (\Mult0|auto_generated|mac_out2~dataout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \DisplayDriver|DisplayDecoder4|Mux5~2_combout\);

-- Location: LCCOMB_X19_Y10_N16
\DisplayDriver|DisplayDecoder4|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux5~3_combout\ = (\DisplayDriver|DisplayDecoder4|Mux5~2_combout\ & \i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DisplayDriver|DisplayDecoder4|Mux5~2_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \DisplayDriver|DisplayDecoder4|Mux5~3_combout\);

-- Location: LCCOMB_X18_Y10_N16
\DisplayDriver|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux9~0_combout\ = (\DisplayDriver|r_Sel\(0) & ((\DisplayDriver|DisplayDecoder1|Mux5~0_combout\) # ((!\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|r_Sel\(0) & (((!\DisplayDriver|r_Sel\(1) & 
-- \DisplayDriver|DisplayDecoder4|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datab => \DisplayDriver|DisplayDecoder1|Mux5~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder4|Mux5~3_combout\,
	combout => \DisplayDriver|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y10_N12
\DisplayDriver|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux9~1_combout\ = (\DisplayDriver|Mux10~2_combout\ & ((\DisplayDriver|Mux9~0_combout\ & ((\DisplayDriver|DisplayDecoder3|Mux5~0_combout\))) # (!\DisplayDriver|Mux9~0_combout\ & (\DisplayDriver|DisplayDecoder2|Mux5~0_combout\)))) # 
-- (!\DisplayDriver|Mux10~2_combout\ & (((\DisplayDriver|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux5~0_combout\,
	datab => \DisplayDriver|Mux10~2_combout\,
	datac => \DisplayDriver|DisplayDecoder3|Mux5~0_combout\,
	datad => \DisplayDriver|Mux9~0_combout\,
	combout => \DisplayDriver|Mux9~1_combout\);

-- Location: LCCOMB_X16_Y10_N30
\DisplayDriver|DisplayDecoder3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux4~0_combout\ = (\Mux16~0_combout\ & (\Mux17~0_combout\ & ((\Mux18~0_combout\) # (!\Mux19~0_combout\)))) # (!\Mux16~0_combout\ & (\Mux18~0_combout\ & (!\Mux17~0_combout\ & !\Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux16~0_combout\,
	datac => \Mux17~0_combout\,
	datad => \Mux19~0_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y10_N18
\DisplayDriver|DisplayDecoder2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux4~0_combout\ = (\Mux13~0_combout\ & (\Mux12~0_combout\ & ((\Mux14~0_combout\) # (!\Mux15~0_combout\)))) # (!\Mux13~0_combout\ & (\Mux14~0_combout\ & (!\Mux12~0_combout\ & !\Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux13~0_combout\,
	datac => \Mux12~0_combout\,
	datad => \Mux15~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y10_N30
\DisplayDriver|DisplayDecoder1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux4~0_combout\ = (\Mux9~0_combout\ & (\Mux8~0_combout\ & ((\Mux10~0_combout\) # (!\Mux11~0_combout\)))) # (!\Mux9~0_combout\ & (\Mux10~0_combout\ & (!\Mux11~0_combout\ & !\Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux8~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y10_N20
\DisplayDriver|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux8~0_combout\ = (\DisplayDriver|r_Sel\(0) & (((\DisplayDriver|DisplayDecoder1|Mux4~0_combout\) # (!\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|r_Sel\(0) & (\DisplayDriver|DisplayDecoder2|Mux4~0_combout\ & (\DisplayDriver|r_Sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datab => \DisplayDriver|DisplayDecoder2|Mux4~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder1|Mux4~0_combout\,
	combout => \DisplayDriver|Mux8~0_combout\);

-- Location: LCCOMB_X19_Y10_N26
\DisplayDriver|DisplayDecoder4|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux4~2_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT2\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\Mult0|auto_generated|mac_out2~DATAOUT1\) # (!\Mult0|auto_generated|mac_out2~dataout\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT2\ & (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\Mult0|auto_generated|mac_out2~dataout\ & \Mult0|auto_generated|mac_out2~DATAOUT1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \DisplayDriver|DisplayDecoder4|Mux4~2_combout\);

-- Location: LCCOMB_X19_Y10_N28
\DisplayDriver|DisplayDecoder4|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux4~3_combout\ = (\DisplayDriver|DisplayDecoder4|Mux4~2_combout\ & \i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DisplayDriver|DisplayDecoder4|Mux4~2_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \DisplayDriver|DisplayDecoder4|Mux4~3_combout\);

-- Location: LCCOMB_X16_Y10_N8
\DisplayDriver|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux8~1_combout\ = (\DisplayDriver|Mux8~0_combout\ & ((\DisplayDriver|DisplayDecoder3|Mux4~0_combout\) # ((\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|Mux8~0_combout\ & (((!\DisplayDriver|r_Sel\(1) & 
-- \DisplayDriver|DisplayDecoder4|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder3|Mux4~0_combout\,
	datab => \DisplayDriver|Mux8~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder4|Mux4~3_combout\,
	combout => \DisplayDriver|Mux8~1_combout\);

-- Location: LCCOMB_X19_Y10_N22
\DisplayDriver|DisplayDecoder4|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux3~2_combout\ = (\Mult0|auto_generated|mac_out2~dataout\ & (\Mult0|auto_generated|mac_out2~DATAOUT2\ $ (((!\Mult0|auto_generated|mac_out2~DATAOUT1\))))) # (!\Mult0|auto_generated|mac_out2~dataout\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT2\ & (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & !\Mult0|auto_generated|mac_out2~DATAOUT1\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT2\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\ & 
-- \Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \DisplayDriver|DisplayDecoder4|Mux3~2_combout\);

-- Location: LCCOMB_X19_Y10_N12
\DisplayDriver|DisplayDecoder4|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux3~3_combout\ = (\DisplayDriver|DisplayDecoder4|Mux3~2_combout\ & \i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DisplayDriver|DisplayDecoder4|Mux3~2_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \DisplayDriver|DisplayDecoder4|Mux3~3_combout\);

-- Location: LCCOMB_X18_Y10_N28
\DisplayDriver|DisplayDecoder1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux3~0_combout\ = (\Mux11~0_combout\ & (\Mux10~0_combout\ $ ((!\Mux9~0_combout\)))) # (!\Mux11~0_combout\ & ((\Mux10~0_combout\ & (!\Mux9~0_combout\ & \Mux8~0_combout\)) # (!\Mux10~0_combout\ & (\Mux9~0_combout\ & 
-- !\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux8~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y10_N6
\DisplayDriver|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux7~0_combout\ = (\DisplayDriver|r_Sel\(0) & (((\DisplayDriver|DisplayDecoder1|Mux3~0_combout\)) # (!\DisplayDriver|r_Sel\(1)))) # (!\DisplayDriver|r_Sel\(0) & (!\DisplayDriver|r_Sel\(1) & (\DisplayDriver|DisplayDecoder4|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|DisplayDecoder4|Mux3~3_combout\,
	datad => \DisplayDriver|DisplayDecoder1|Mux3~0_combout\,
	combout => \DisplayDriver|Mux7~0_combout\);

-- Location: LCCOMB_X16_Y10_N26
\DisplayDriver|DisplayDecoder3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux3~0_combout\ = (\Mux19~0_combout\ & (\Mux18~0_combout\ $ (((!\Mux17~0_combout\))))) # (!\Mux19~0_combout\ & ((\Mux18~0_combout\ & (\Mux16~0_combout\ & !\Mux17~0_combout\)) # (!\Mux18~0_combout\ & (!\Mux16~0_combout\ & 
-- \Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux16~0_combout\,
	datac => \Mux17~0_combout\,
	datad => \Mux19~0_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y10_N28
\DisplayDriver|DisplayDecoder2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux3~0_combout\ = (\Mux15~0_combout\ & (\Mux14~0_combout\ $ ((!\Mux13~0_combout\)))) # (!\Mux15~0_combout\ & ((\Mux14~0_combout\ & (!\Mux13~0_combout\ & \Mux12~0_combout\)) # (!\Mux14~0_combout\ & (\Mux13~0_combout\ & 
-- !\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux13~0_combout\,
	datac => \Mux12~0_combout\,
	datad => \Mux15~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y10_N26
\DisplayDriver|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux7~1_combout\ = (\DisplayDriver|Mux7~0_combout\ & (((\DisplayDriver|DisplayDecoder3|Mux3~0_combout\)) # (!\DisplayDriver|Mux10~2_combout\))) # (!\DisplayDriver|Mux7~0_combout\ & (\DisplayDriver|Mux10~2_combout\ & 
-- ((\DisplayDriver|DisplayDecoder2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux7~0_combout\,
	datab => \DisplayDriver|Mux10~2_combout\,
	datac => \DisplayDriver|DisplayDecoder3|Mux3~0_combout\,
	datad => \DisplayDriver|DisplayDecoder2|Mux3~0_combout\,
	combout => \DisplayDriver|Mux7~1_combout\);

-- Location: LCCOMB_X16_Y10_N24
\DisplayDriver|DisplayDecoder3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux2~0_combout\ = (\Mux18~0_combout\ & (!\Mux16~0_combout\ & ((\Mux19~0_combout\)))) # (!\Mux18~0_combout\ & ((\Mux17~0_combout\ & (!\Mux16~0_combout\)) # (!\Mux17~0_combout\ & ((\Mux19~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux16~0_combout\,
	datac => \Mux17~0_combout\,
	datad => \Mux19~0_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y10_N10
\DisplayDriver|DisplayDecoder4|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux2~2_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT1\ & (((!\Mult0|auto_generated|mac_out2~DATAOUT3\ & \Mult0|auto_generated|mac_out2~dataout\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT2\ & (!\Mult0|auto_generated|mac_out2~DATAOUT3\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\Mult0|auto_generated|mac_out2~dataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \DisplayDriver|DisplayDecoder4|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y10_N0
\DisplayDriver|DisplayDecoder4|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux2~3_combout\ = (\DisplayDriver|DisplayDecoder4|Mux2~2_combout\ & \i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder4|Mux2~2_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \DisplayDriver|DisplayDecoder4|Mux2~3_combout\);

-- Location: LCCOMB_X17_Y10_N4
\DisplayDriver|DisplayDecoder2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux2~0_combout\ = (\Mux14~0_combout\ & (((!\Mux12~0_combout\ & \Mux15~0_combout\)))) # (!\Mux14~0_combout\ & ((\Mux13~0_combout\ & (!\Mux12~0_combout\)) # (!\Mux13~0_combout\ & ((\Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux13~0_combout\,
	datac => \Mux12~0_combout\,
	datad => \Mux15~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y10_N24
\DisplayDriver|DisplayDecoder1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux2~0_combout\ = (\Mux10~0_combout\ & (\Mux11~0_combout\ & ((!\Mux8~0_combout\)))) # (!\Mux10~0_combout\ & ((\Mux9~0_combout\ & ((!\Mux8~0_combout\))) # (!\Mux9~0_combout\ & (\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux8~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y10_N26
\DisplayDriver|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux6~0_combout\ = (\DisplayDriver|r_Sel\(0) & (((\DisplayDriver|DisplayDecoder1|Mux2~0_combout\) # (!\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|r_Sel\(0) & (\DisplayDriver|DisplayDecoder2|Mux2~0_combout\ & (\DisplayDriver|r_Sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datab => \DisplayDriver|DisplayDecoder2|Mux2~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder1|Mux2~0_combout\,
	combout => \DisplayDriver|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y10_N20
\DisplayDriver|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux6~1_combout\ = (\DisplayDriver|Mux6~0_combout\ & ((\DisplayDriver|DisplayDecoder3|Mux2~0_combout\) # ((\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|Mux6~0_combout\ & (((\DisplayDriver|DisplayDecoder4|Mux2~3_combout\ & 
-- !\DisplayDriver|r_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder3|Mux2~0_combout\,
	datab => \DisplayDriver|DisplayDecoder4|Mux2~3_combout\,
	datac => \DisplayDriver|Mux6~0_combout\,
	datad => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|Mux6~1_combout\);

-- Location: LCCOMB_X17_Y10_N10
\DisplayDriver|DisplayDecoder2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux1~0_combout\ = (\Mux14~0_combout\ & (!\Mux12~0_combout\ & ((\Mux15~0_combout\) # (!\Mux13~0_combout\)))) # (!\Mux14~0_combout\ & (\Mux15~0_combout\ & (\Mux13~0_combout\ $ (!\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux13~0_combout\,
	datac => \Mux12~0_combout\,
	datad => \Mux15~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y10_N22
\DisplayDriver|DisplayDecoder3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux1~0_combout\ = (\Mux18~0_combout\ & (!\Mux16~0_combout\ & ((\Mux19~0_combout\) # (!\Mux17~0_combout\)))) # (!\Mux18~0_combout\ & (\Mux19~0_combout\ & (\Mux16~0_combout\ $ (!\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux16~0_combout\,
	datac => \Mux17~0_combout\,
	datad => \Mux19~0_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y10_N22
\DisplayDriver|DisplayDecoder1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux1~0_combout\ = (\Mux10~0_combout\ & (!\Mux8~0_combout\ & ((\Mux11~0_combout\) # (!\Mux9~0_combout\)))) # (!\Mux10~0_combout\ & (\Mux11~0_combout\ & (\Mux9~0_combout\ $ (!\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux8~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y10_N30
\DisplayDriver|DisplayDecoder4|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux1~2_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT2\ & (\Mult0|auto_generated|mac_out2~dataout\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\ $ (\Mult0|auto_generated|mac_out2~DATAOUT1\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT2\ & (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\Mult0|auto_generated|mac_out2~dataout\) # (\Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \DisplayDriver|DisplayDecoder4|Mux1~2_combout\);

-- Location: LCCOMB_X19_Y10_N4
\DisplayDriver|DisplayDecoder4|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux1~3_combout\ = (\DisplayDriver|DisplayDecoder4|Mux1~2_combout\ & \i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DisplayDriver|DisplayDecoder4|Mux1~2_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \DisplayDriver|DisplayDecoder4|Mux1~3_combout\);

-- Location: LCCOMB_X18_Y10_N4
\DisplayDriver|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux5~0_combout\ = (\DisplayDriver|r_Sel\(0) & (((\DisplayDriver|DisplayDecoder1|Mux1~0_combout\)) # (!\DisplayDriver|r_Sel\(1)))) # (!\DisplayDriver|r_Sel\(0) & (!\DisplayDriver|r_Sel\(1) & 
-- ((\DisplayDriver|DisplayDecoder4|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|DisplayDecoder1|Mux1~0_combout\,
	datad => \DisplayDriver|DisplayDecoder4|Mux1~3_combout\,
	combout => \DisplayDriver|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y10_N0
\DisplayDriver|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux5~1_combout\ = (\DisplayDriver|Mux10~2_combout\ & ((\DisplayDriver|Mux5~0_combout\ & ((\DisplayDriver|DisplayDecoder3|Mux1~0_combout\))) # (!\DisplayDriver|Mux5~0_combout\ & (\DisplayDriver|DisplayDecoder2|Mux1~0_combout\)))) # 
-- (!\DisplayDriver|Mux10~2_combout\ & (((\DisplayDriver|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux1~0_combout\,
	datab => \DisplayDriver|DisplayDecoder3|Mux1~0_combout\,
	datac => \DisplayDriver|Mux10~2_combout\,
	datad => \DisplayDriver|Mux5~0_combout\,
	combout => \DisplayDriver|Mux5~1_combout\);

-- Location: LCCOMB_X17_Y10_N30
\DisplayDriver|DisplayDecoder2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux0~0_combout\ = (\Mux15~0_combout\ & ((\Mux12~0_combout\) # (\Mux14~0_combout\ $ (\Mux13~0_combout\)))) # (!\Mux15~0_combout\ & ((\Mux14~0_combout\) # (\Mux13~0_combout\ $ (\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux13~0_combout\,
	datac => \Mux12~0_combout\,
	datad => \Mux15~0_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y10_N10
\DisplayDriver|DisplayDecoder1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux0~0_combout\ = (\Mux11~0_combout\ & ((\Mux8~0_combout\) # (\Mux10~0_combout\ $ (\Mux9~0_combout\)))) # (!\Mux11~0_combout\ & ((\Mux10~0_combout\) # (\Mux9~0_combout\ $ (\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Mux11~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux8~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y10_N12
\DisplayDriver|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux4~0_combout\ = (\DisplayDriver|r_Sel\(0) & (((!\DisplayDriver|DisplayDecoder1|Mux0~0_combout\) # (!\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|r_Sel\(0) & (!\DisplayDriver|DisplayDecoder2|Mux0~0_combout\ & 
-- (\DisplayDriver|r_Sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datab => \DisplayDriver|DisplayDecoder2|Mux0~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder1|Mux0~0_combout\,
	combout => \DisplayDriver|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y10_N12
\DisplayDriver|DisplayDecoder3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux0~0_combout\ = (\Mux19~0_combout\ & ((\Mux16~0_combout\) # (\Mux18~0_combout\ $ (\Mux17~0_combout\)))) # (!\Mux19~0_combout\ & ((\Mux18~0_combout\) # (\Mux16~0_combout\ $ (\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux16~0_combout\,
	datac => \Mux17~0_combout\,
	datad => \Mux19~0_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y10_N2
\DisplayDriver|DisplayDecoder4|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux0~2_combout\ = (\Mult0|auto_generated|mac_out2~dataout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT3\) # (\Mult0|auto_generated|mac_out2~DATAOUT2\ $ (\Mult0|auto_generated|mac_out2~DATAOUT1\)))) # 
-- (!\Mult0|auto_generated|mac_out2~dataout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT1\) # (\Mult0|auto_generated|mac_out2~DATAOUT2\ $ (\Mult0|auto_generated|mac_out2~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \DisplayDriver|DisplayDecoder4|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y10_N24
\DisplayDriver|DisplayDecoder4|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux0~3_combout\ = (\DisplayDriver|DisplayDecoder4|Mux0~2_combout\ & \i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|DisplayDecoder4|Mux0~2_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \DisplayDriver|DisplayDecoder4|Mux0~3_combout\);

-- Location: LCCOMB_X18_Y10_N14
\DisplayDriver|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux4~1_combout\ = (\DisplayDriver|Mux4~0_combout\ & (((\DisplayDriver|r_Sel\(1))) # (!\DisplayDriver|DisplayDecoder3|Mux0~0_combout\))) # (!\DisplayDriver|Mux4~0_combout\ & (((!\DisplayDriver|r_Sel\(1) & 
-- !\DisplayDriver|DisplayDecoder4|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux4~0_combout\,
	datab => \DisplayDriver|DisplayDecoder3|Mux0~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder4|Mux0~3_combout\,
	combout => \DisplayDriver|Mux4~1_combout\);

-- Location: LCCOMB_X19_Y6_N4
\DisplayDriver|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux12~8_combout\ = (\i_OpSel[1]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT15\)))) # (!\i_OpSel[1]~input_o\ & (\Add1~16_combout\ & ((\i_OpSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datac => \i_OpSel[0]~input_o\,
	datad => \i_OpSel[1]~input_o\,
	combout => \DisplayDriver|Mux12~8_combout\);

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

ww_o_NumSign <= \o_NumSign~output_o\;
END structure;


