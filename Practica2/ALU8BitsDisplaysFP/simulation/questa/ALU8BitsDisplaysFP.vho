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

-- DATE "10/08/2023 18:21:23"

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
	o_DispPoint : BUFFER std_logic;
	o_NumSign : BUFFER std_logic
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
-- i_NumB[4]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[4]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[3]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[3]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[2]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[1]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
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
SIGNAL \DisplayDriver|r_Count[15]~48\ : std_logic;
SIGNAL \DisplayDriver|r_Count[16]~49_combout\ : std_logic;
SIGNAL \DisplayDriver|LessThan0~2_combout\ : std_logic;
SIGNAL \DisplayDriver|LessThan0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|LessThan0~1_combout\ : std_logic;
SIGNAL \DisplayDriver|LessThan0~3_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Sel[0]~1_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Sel[1]~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux0~0_combout\ : std_logic;
SIGNAL \i_OpSel[0]~input_o\ : std_logic;
SIGNAL \i_NumA[4]~input_o\ : std_logic;
SIGNAL \i_NumB[4]~input_o\ : std_logic;
SIGNAL \i_NumB[3]~input_o\ : std_logic;
SIGNAL \i_NumA[3]~input_o\ : std_logic;
SIGNAL \i_NumB[2]~input_o\ : std_logic;
SIGNAL \i_NumA[2]~input_o\ : std_logic;
SIGNAL \i_NumB[1]~input_o\ : std_logic;
SIGNAL \i_NumA[1]~input_o\ : std_logic;
SIGNAL \i_NumB[0]~input_o\ : std_logic;
SIGNAL \i_NumA[0]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \i_NumA[5]~input_o\ : std_logic;
SIGNAL \i_NumA[6]~input_o\ : std_logic;
SIGNAL \i_NumA[7]~input_o\ : std_logic;
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
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \i_OpSel[1]~input_o\ : std_logic;
SIGNAL \DisplayDriver|Mux12~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \DisplayDriver|Add2~1\ : std_logic;
SIGNAL \DisplayDriver|Add2~3\ : std_logic;
SIGNAL \DisplayDriver|Add2~5\ : std_logic;
SIGNAL \DisplayDriver|Add2~7\ : std_logic;
SIGNAL \DisplayDriver|Add2~9\ : std_logic;
SIGNAL \DisplayDriver|Add2~11\ : std_logic;
SIGNAL \DisplayDriver|Add2~13\ : std_logic;
SIGNAL \DisplayDriver|Add2~15\ : std_logic;
SIGNAL \DisplayDriver|Add2~17\ : std_logic;
SIGNAL \DisplayDriver|Add2~19\ : std_logic;
SIGNAL \DisplayDriver|Add2~20_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[2]~6_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~16_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[0]~4_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~18_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[1]~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~21\ : std_logic;
SIGNAL \DisplayDriver|Add2~22_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[3]~7_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux6~0_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~23\ : std_logic;
SIGNAL \DisplayDriver|Add2~25\ : std_logic;
SIGNAL \DisplayDriver|Add2~27\ : std_logic;
SIGNAL \DisplayDriver|Add2~28_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[6]~2_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~26_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[5]~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~29\ : std_logic;
SIGNAL \DisplayDriver|Add2~30_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[7]~3_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~24_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[4]~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux10~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~4_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[0]~0_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[2]~3_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~2_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[1]~2_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~6_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[3]~4_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[0]~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~8_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[4]~5_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~10_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[5]~6_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~12_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[6]~7_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~14_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[7]~8_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux10~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux9~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux7~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux9~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux8~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux8~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux7~1_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux7~2_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux6~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux5~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux4~1_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux0~1_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DisplayDriver|r_Count\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \DisplayDriver|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \DisplayDriver|ALT_INV_Mux12~0_combout\ : std_logic;

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
\DisplayDriver|ALT_INV_Mux0~1_combout\ <= NOT \DisplayDriver|Mux0~1_combout\;
\DisplayDriver|ALT_INV_Mux12~0_combout\ <= NOT \DisplayDriver|Mux12~0_combout\;
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
	i => \DisplayDriver|Mux7~2_combout\,
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
	i => \DisplayDriver|ALT_INV_Mux0~1_combout\,
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
	i => \DisplayDriver|ALT_INV_Mux12~0_combout\,
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

-- Location: LCCOMB_X21_Y9_N16
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

-- Location: FF_X21_Y9_N17
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

-- Location: LCCOMB_X21_Y9_N18
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

-- Location: FF_X21_Y9_N19
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

-- Location: LCCOMB_X21_Y9_N20
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

-- Location: FF_X21_Y9_N21
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

-- Location: LCCOMB_X21_Y9_N22
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

-- Location: FF_X21_Y9_N23
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

-- Location: LCCOMB_X21_Y9_N24
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

-- Location: FF_X21_Y9_N25
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

-- Location: LCCOMB_X21_Y9_N26
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

-- Location: FF_X21_Y9_N27
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

-- Location: LCCOMB_X21_Y9_N28
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

-- Location: FF_X21_Y9_N29
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

-- Location: LCCOMB_X21_Y9_N30
\DisplayDriver|r_Count[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[7]~31_combout\ = (\DisplayDriver|r_Count\(7) & (!\DisplayDriver|r_Count[6]~30\)) # (!\DisplayDriver|r_Count\(7) & ((\DisplayDriver|r_Count[6]~30\) # (GND)))
-- \DisplayDriver|r_Count[7]~32\ = CARRY((!\DisplayDriver|r_Count[6]~30\) # (!\DisplayDriver|r_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(7),
	datad => VCC,
	cin => \DisplayDriver|r_Count[6]~30\,
	combout => \DisplayDriver|r_Count[7]~31_combout\,
	cout => \DisplayDriver|r_Count[7]~32\);

-- Location: FF_X21_Y9_N31
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

-- Location: LCCOMB_X21_Y8_N0
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

-- Location: FF_X21_Y8_N1
\DisplayDriver|r_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[8]~33_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(8));

-- Location: LCCOMB_X21_Y8_N2
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

-- Location: FF_X21_Y8_N3
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

-- Location: LCCOMB_X21_Y8_N4
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

-- Location: FF_X21_Y8_N5
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

-- Location: LCCOMB_X21_Y8_N6
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

-- Location: FF_X21_Y8_N7
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

-- Location: LCCOMB_X21_Y8_N8
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

-- Location: FF_X21_Y8_N9
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

-- Location: LCCOMB_X21_Y8_N10
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

-- Location: FF_X21_Y8_N11
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

-- Location: LCCOMB_X21_Y8_N12
\DisplayDriver|r_Count[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[14]~45_combout\ = (\DisplayDriver|r_Count\(14) & (\DisplayDriver|r_Count[13]~44\ $ (GND))) # (!\DisplayDriver|r_Count\(14) & (!\DisplayDriver|r_Count[13]~44\ & VCC))
-- \DisplayDriver|r_Count[14]~46\ = CARRY((\DisplayDriver|r_Count\(14) & !\DisplayDriver|r_Count[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Count\(14),
	datad => VCC,
	cin => \DisplayDriver|r_Count[13]~44\,
	combout => \DisplayDriver|r_Count[14]~45_combout\,
	cout => \DisplayDriver|r_Count[14]~46\);

-- Location: FF_X21_Y8_N13
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

-- Location: LCCOMB_X21_Y8_N14
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

-- Location: FF_X21_Y8_N15
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

-- Location: LCCOMB_X21_Y8_N16
\DisplayDriver|r_Count[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[16]~49_combout\ = \DisplayDriver|r_Count\(16) $ (!\DisplayDriver|r_Count[15]~48\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(16),
	cin => \DisplayDriver|r_Count[15]~48\,
	combout => \DisplayDriver|r_Count[16]~49_combout\);

-- Location: FF_X21_Y8_N17
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

-- Location: LCCOMB_X21_Y8_N28
\DisplayDriver|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~2_combout\ = (!\DisplayDriver|r_Count\(13) & (!\DisplayDriver|r_Count\(12) & (!\DisplayDriver|r_Count\(14) & !\DisplayDriver|r_Count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(13),
	datab => \DisplayDriver|r_Count\(12),
	datac => \DisplayDriver|r_Count\(14),
	datad => \DisplayDriver|r_Count\(11),
	combout => \DisplayDriver|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y9_N12
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

-- Location: LCCOMB_X21_Y8_N18
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

-- Location: LCCOMB_X21_Y8_N26
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

-- Location: LCCOMB_X21_Y8_N24
\DisplayDriver|r_Sel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Sel[0]~1_combout\ = \DisplayDriver|LessThan0~3_combout\ $ (\DisplayDriver|r_Sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|LessThan0~3_combout\,
	datac => \DisplayDriver|r_Sel\(0),
	combout => \DisplayDriver|r_Sel[0]~1_combout\);

-- Location: FF_X21_Y8_N25
\DisplayDriver|r_Sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Sel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Sel\(0));

-- Location: LCCOMB_X21_Y8_N30
\DisplayDriver|r_Sel[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Sel[1]~0_combout\ = \DisplayDriver|r_Sel\(1) $ (((\DisplayDriver|LessThan0~3_combout\ & \DisplayDriver|r_Sel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|LessThan0~3_combout\,
	datab => \DisplayDriver|r_Sel\(0),
	datac => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|r_Sel[1]~0_combout\);

-- Location: FF_X21_Y8_N31
\DisplayDriver|r_Sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Sel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Sel\(1));

-- Location: LCCOMB_X18_Y8_N24
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

-- Location: LCCOMB_X18_Y8_N18
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

-- Location: LCCOMB_X19_Y8_N24
\DisplayDriver|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux1~0_combout\ = (\DisplayDriver|r_Sel\(0)) # (!\DisplayDriver|r_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datac => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y8_N14
\DisplayDriver|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux0~0_combout\ = (!\DisplayDriver|r_Sel\(1)) # (!\DisplayDriver|r_Sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datac => \DisplayDriver|r_Sel\(1),
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

-- Location: LCCOMB_X22_Y4_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\i_NumB[0]~input_o\ & (\i_NumA[0]~input_o\ $ (VCC))) # (!\i_NumB[0]~input_o\ & ((\i_NumA[0]~input_o\) # (GND)))
-- \Add1~1\ = CARRY((\i_NumA[0]~input_o\) # (!\i_NumB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[0]~input_o\,
	datab => \i_NumA[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X22_Y4_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\i_NumB[1]~input_o\ & ((\i_NumA[1]~input_o\ & (!\Add1~1\)) # (!\i_NumA[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\i_NumB[1]~input_o\ & ((\i_NumA[1]~input_o\ & (\Add1~1\ & VCC)) # (!\i_NumA[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\i_NumB[1]~input_o\ & ((!\Add1~1\) # (!\i_NumA[1]~input_o\))) # (!\i_NumB[1]~input_o\ & (!\i_NumA[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[1]~input_o\,
	datab => \i_NumA[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X22_Y4_N12
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\i_NumB[2]~input_o\ $ (\i_NumA[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\i_NumB[2]~input_o\ & (\i_NumA[2]~input_o\ & !\Add1~3\)) # (!\i_NumB[2]~input_o\ & ((\i_NumA[2]~input_o\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[2]~input_o\,
	datab => \i_NumA[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X22_Y4_N14
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\i_NumB[3]~input_o\ & ((\i_NumA[3]~input_o\ & (!\Add1~5\)) # (!\i_NumA[3]~input_o\ & ((\Add1~5\) # (GND))))) # (!\i_NumB[3]~input_o\ & ((\i_NumA[3]~input_o\ & (\Add1~5\ & VCC)) # (!\i_NumA[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\i_NumB[3]~input_o\ & ((!\Add1~5\) # (!\i_NumA[3]~input_o\))) # (!\i_NumB[3]~input_o\ & (!\i_NumA[3]~input_o\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[3]~input_o\,
	datab => \i_NumA[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X22_Y4_N16
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\i_NumA[4]~input_o\ $ (\i_NumB[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\i_NumA[4]~input_o\ & ((!\Add1~7\) # (!\i_NumB[4]~input_o\))) # (!\i_NumA[4]~input_o\ & (!\i_NumB[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[4]~input_o\,
	datab => \i_NumB[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

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

-- Location: DSPMULT_X20_Y4_N0
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
	signa => GND,
	signb => GND,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X20_Y4_N2
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

-- Location: LCCOMB_X21_Y4_N2
\DisplayDriver|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux12~0_combout\ = (\i_OpSel[1]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT15\)))) # (!\i_OpSel[1]~input_o\ & (\i_OpSel[0]~input_o\ & (\Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datab => \Add1~8_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \i_OpSel[1]~input_o\,
	combout => \DisplayDriver|Mux12~0_combout\);

-- Location: LCCOMB_X23_Y4_N10
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\i_NumA[0]~input_o\ & (\i_NumB[0]~input_o\ $ (VCC))) # (!\i_NumA[0]~input_o\ & (\i_NumB[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\i_NumA[0]~input_o\ & \i_NumB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[0]~input_o\,
	datab => \i_NumB[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X23_Y4_N12
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\i_NumA[1]~input_o\ & ((\i_NumB[1]~input_o\ & (\Add0~1\ & VCC)) # (!\i_NumB[1]~input_o\ & (!\Add0~1\)))) # (!\i_NumA[1]~input_o\ & ((\i_NumB[1]~input_o\ & (!\Add0~1\)) # (!\i_NumB[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\i_NumA[1]~input_o\ & (!\i_NumB[1]~input_o\ & !\Add0~1\)) # (!\i_NumA[1]~input_o\ & ((!\Add0~1\) # (!\i_NumB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[1]~input_o\,
	datab => \i_NumB[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X23_Y4_N14
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\i_NumA[2]~input_o\ $ (\i_NumB[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\i_NumA[2]~input_o\ & ((\i_NumB[2]~input_o\) # (!\Add0~3\))) # (!\i_NumA[2]~input_o\ & (\i_NumB[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[2]~input_o\,
	datab => \i_NumB[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X23_Y4_N16
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\i_NumA[3]~input_o\ & ((\i_NumB[3]~input_o\ & (\Add0~5\ & VCC)) # (!\i_NumB[3]~input_o\ & (!\Add0~5\)))) # (!\i_NumA[3]~input_o\ & ((\i_NumB[3]~input_o\ & (!\Add0~5\)) # (!\i_NumB[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\i_NumA[3]~input_o\ & (!\i_NumB[3]~input_o\ & !\Add0~5\)) # (!\i_NumA[3]~input_o\ & ((!\Add0~5\) # (!\i_NumB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[3]~input_o\,
	datab => \i_NumB[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X23_Y4_N18
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\i_NumB[4]~input_o\ $ (\i_NumA[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\i_NumB[4]~input_o\ & ((\i_NumA[4]~input_o\) # (!\Add0~7\))) # (!\i_NumB[4]~input_o\ & (\i_NumA[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[4]~input_o\,
	datab => \i_NumA[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X23_Y4_N20
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\i_NumA[5]~input_o\ & ((\i_NumB[5]~input_o\ & (\Add0~9\ & VCC)) # (!\i_NumB[5]~input_o\ & (!\Add0~9\)))) # (!\i_NumA[5]~input_o\ & ((\i_NumB[5]~input_o\ & (!\Add0~9\)) # (!\i_NumB[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\i_NumA[5]~input_o\ & (!\i_NumB[5]~input_o\ & !\Add0~9\)) # (!\i_NumA[5]~input_o\ & ((!\Add0~9\) # (!\i_NumB[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[5]~input_o\,
	datab => \i_NumB[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X23_Y4_N22
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\i_NumB[6]~input_o\ $ (\i_NumA[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\i_NumB[6]~input_o\ & ((\i_NumA[6]~input_o\) # (!\Add0~11\))) # (!\i_NumB[6]~input_o\ & (\i_NumA[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[6]~input_o\,
	datab => \i_NumA[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X22_Y4_N18
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\i_NumB[5]~input_o\ & ((\i_NumA[5]~input_o\ & (!\Add1~9\)) # (!\i_NumA[5]~input_o\ & ((\Add1~9\) # (GND))))) # (!\i_NumB[5]~input_o\ & ((\i_NumA[5]~input_o\ & (\Add1~9\ & VCC)) # (!\i_NumA[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\i_NumB[5]~input_o\ & ((!\Add1~9\) # (!\i_NumA[5]~input_o\))) # (!\i_NumB[5]~input_o\ & (!\i_NumA[5]~input_o\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[5]~input_o\,
	datab => \i_NumA[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X22_Y4_N20
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\i_NumA[6]~input_o\ $ (\i_NumB[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\i_NumA[6]~input_o\ & ((!\Add1~11\) # (!\i_NumB[6]~input_o\))) # (!\i_NumA[6]~input_o\ & (!\i_NumB[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[6]~input_o\,
	datab => \i_NumB[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X22_Y4_N28
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\i_OpSel[1]~input_o\ & ((\i_OpSel[0]~input_o\ & ((\Add1~12_combout\))) # (!\i_OpSel[0]~input_o\ & (\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[1]~input_o\,
	datab => \Add0~12_combout\,
	datac => \i_OpSel[0]~input_o\,
	datad => \Add1~12_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X21_Y4_N28
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT10\ & \i_OpSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \Mux5~0_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X22_Y4_N2
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\i_OpSel[1]~input_o\ & ((\i_OpSel[0]~input_o\ & (\Add1~10_combout\)) # (!\i_OpSel[0]~input_o\ & ((\Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datab => \Add1~10_combout\,
	datac => \Add0~10_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X21_Y4_N18
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT9\ & \i_OpSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X21_Y4_N24
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\i_OpSel[1]~input_o\ & ((\i_OpSel[0]~input_o\ & (\Add1~8_combout\)) # (!\i_OpSel[0]~input_o\ & ((\Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datab => \Add1~8_combout\,
	datac => \Add0~8_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X21_Y4_N30
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT8\ & \i_OpSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X21_Y4_N8
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\i_OpSel[1]~input_o\ & ((\i_OpSel[0]~input_o\ & (\Add1~6_combout\)) # (!\i_OpSel[0]~input_o\ & ((\Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datab => \Add1~6_combout\,
	datac => \Add0~6_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X21_Y4_N10
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT7\ & \i_OpSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	datac => \Mux8~0_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X22_Y4_N0
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\i_OpSel[1]~input_o\ & ((\i_OpSel[0]~input_o\ & (\Add1~4_combout\)) # (!\i_OpSel[0]~input_o\ & ((\Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add0~4_combout\,
	datac => \i_OpSel[0]~input_o\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X21_Y4_N12
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT6\ & \i_OpSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datac => \Mux9~0_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X22_Y4_N6
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\i_OpSel[1]~input_o\ & ((\i_OpSel[0]~input_o\ & (\Add1~2_combout\)) # (!\i_OpSel[0]~input_o\ & ((\Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add0~2_combout\,
	datac => \i_OpSel[0]~input_o\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X19_Y4_N4
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT5\ & \i_OpSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \Mux10~0_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X21_Y4_N22
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\i_OpSel[1]~input_o\ & ((\i_OpSel[0]~input_o\ & ((\Add1~0_combout\))) # (!\i_OpSel[0]~input_o\ & (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datab => \Add0~0_combout\,
	datac => \Add1~0_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X21_Y4_N16
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT4\ & \i_OpSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X21_Y7_N0
\DisplayDriver|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~0_combout\ = (((\i_OpSel[1]~input_o\ & \Mult0|auto_generated|mac_out2~dataout\)))
-- \DisplayDriver|Add2~1\ = CARRY((\i_OpSel[1]~input_o\ & \Mult0|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \DisplayDriver|Add2~0_combout\,
	cout => \DisplayDriver|Add2~1\);

-- Location: LCCOMB_X21_Y7_N2
\DisplayDriver|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~2_combout\ = (\i_OpSel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT1\ & (\DisplayDriver|Add2~1\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\DisplayDriver|Add2~1\)))) # (!\i_OpSel[1]~input_o\ & 
-- (((!\DisplayDriver|Add2~1\))))
-- \DisplayDriver|Add2~3\ = CARRY((!\DisplayDriver|Add2~1\ & ((!\Mult0|auto_generated|mac_out2~DATAOUT1\) # (!\i_OpSel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \DisplayDriver|Add2~1\,
	combout => \DisplayDriver|Add2~2_combout\,
	cout => \DisplayDriver|Add2~3\);

-- Location: LCCOMB_X21_Y7_N4
\DisplayDriver|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~4_combout\ = (\DisplayDriver|Add2~3\ & ((((\i_OpSel[1]~input_o\ & \Mult0|auto_generated|mac_out2~DATAOUT2\))))) # (!\DisplayDriver|Add2~3\ & (((\i_OpSel[1]~input_o\ & \Mult0|auto_generated|mac_out2~DATAOUT2\)) # (GND)))
-- \DisplayDriver|Add2~5\ = CARRY(((\i_OpSel[1]~input_o\ & \Mult0|auto_generated|mac_out2~DATAOUT2\)) # (!\DisplayDriver|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \DisplayDriver|Add2~3\,
	combout => \DisplayDriver|Add2~4_combout\,
	cout => \DisplayDriver|Add2~5\);

-- Location: LCCOMB_X21_Y7_N6
\DisplayDriver|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~6_combout\ = (\i_OpSel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT3\ & (\DisplayDriver|Add2~5\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\DisplayDriver|Add2~5\)))) # (!\i_OpSel[1]~input_o\ & 
-- (((!\DisplayDriver|Add2~5\))))
-- \DisplayDriver|Add2~7\ = CARRY((!\DisplayDriver|Add2~5\ & ((!\Mult0|auto_generated|mac_out2~DATAOUT3\) # (!\i_OpSel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => VCC,
	cin => \DisplayDriver|Add2~5\,
	combout => \DisplayDriver|Add2~6_combout\,
	cout => \DisplayDriver|Add2~7\);

-- Location: LCCOMB_X21_Y7_N8
\DisplayDriver|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~8_combout\ = (\Mux11~1_combout\ & ((GND) # (!\DisplayDriver|Add2~7\))) # (!\Mux11~1_combout\ & (\DisplayDriver|Add2~7\ $ (GND)))
-- \DisplayDriver|Add2~9\ = CARRY((\Mux11~1_combout\) # (!\DisplayDriver|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~7\,
	combout => \DisplayDriver|Add2~8_combout\,
	cout => \DisplayDriver|Add2~9\);

-- Location: LCCOMB_X21_Y7_N10
\DisplayDriver|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~10_combout\ = (\Mux10~1_combout\ & (\DisplayDriver|Add2~9\ & VCC)) # (!\Mux10~1_combout\ & (!\DisplayDriver|Add2~9\))
-- \DisplayDriver|Add2~11\ = CARRY((!\Mux10~1_combout\ & !\DisplayDriver|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~9\,
	combout => \DisplayDriver|Add2~10_combout\,
	cout => \DisplayDriver|Add2~11\);

-- Location: LCCOMB_X21_Y7_N12
\DisplayDriver|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~12_combout\ = (\Mux9~1_combout\ & ((GND) # (!\DisplayDriver|Add2~11\))) # (!\Mux9~1_combout\ & (\DisplayDriver|Add2~11\ $ (GND)))
-- \DisplayDriver|Add2~13\ = CARRY((\Mux9~1_combout\) # (!\DisplayDriver|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~1_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~11\,
	combout => \DisplayDriver|Add2~12_combout\,
	cout => \DisplayDriver|Add2~13\);

-- Location: LCCOMB_X21_Y7_N14
\DisplayDriver|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~14_combout\ = (\Mux8~1_combout\ & (\DisplayDriver|Add2~13\ & VCC)) # (!\Mux8~1_combout\ & (!\DisplayDriver|Add2~13\))
-- \DisplayDriver|Add2~15\ = CARRY((!\Mux8~1_combout\ & !\DisplayDriver|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~1_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~13\,
	combout => \DisplayDriver|Add2~14_combout\,
	cout => \DisplayDriver|Add2~15\);

-- Location: LCCOMB_X21_Y7_N16
\DisplayDriver|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~16_combout\ = (\Mux7~1_combout\ & ((GND) # (!\DisplayDriver|Add2~15\))) # (!\Mux7~1_combout\ & (\DisplayDriver|Add2~15\ $ (GND)))
-- \DisplayDriver|Add2~17\ = CARRY((\Mux7~1_combout\) # (!\DisplayDriver|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~15\,
	combout => \DisplayDriver|Add2~16_combout\,
	cout => \DisplayDriver|Add2~17\);

-- Location: LCCOMB_X21_Y7_N18
\DisplayDriver|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~18_combout\ = (\Mux6~1_combout\ & (\DisplayDriver|Add2~17\ & VCC)) # (!\Mux6~1_combout\ & (!\DisplayDriver|Add2~17\))
-- \DisplayDriver|Add2~19\ = CARRY((!\Mux6~1_combout\ & !\DisplayDriver|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~17\,
	combout => \DisplayDriver|Add2~18_combout\,
	cout => \DisplayDriver|Add2~19\);

-- Location: LCCOMB_X21_Y7_N20
\DisplayDriver|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~20_combout\ = (\Mux5~1_combout\ & ((GND) # (!\DisplayDriver|Add2~19\))) # (!\Mux5~1_combout\ & (\DisplayDriver|Add2~19\ $ (GND)))
-- \DisplayDriver|Add2~21\ = CARRY((\Mux5~1_combout\) # (!\DisplayDriver|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~1_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~19\,
	combout => \DisplayDriver|Add2~20_combout\,
	cout => \DisplayDriver|Add2~21\);

-- Location: LCCOMB_X19_Y7_N12
\DisplayDriver|r_IntPNumber[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[2]~6_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((!\DisplayDriver|Add2~20_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|Mux12~0_combout\,
	datac => \Mux5~1_combout\,
	datad => \DisplayDriver|Add2~20_combout\,
	combout => \DisplayDriver|r_IntPNumber[2]~6_combout\);

-- Location: LCCOMB_X19_Y7_N28
\DisplayDriver|r_IntPNumber[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[0]~4_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((!\DisplayDriver|Add2~16_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|Mux12~0_combout\,
	datac => \Mux7~1_combout\,
	datad => \DisplayDriver|Add2~16_combout\,
	combout => \DisplayDriver|r_IntPNumber[0]~4_combout\);

-- Location: LCCOMB_X19_Y7_N22
\DisplayDriver|r_IntPNumber[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[1]~5_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((!\DisplayDriver|Add2~18_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|Mux12~0_combout\,
	datac => \Mux6~1_combout\,
	datad => \DisplayDriver|Add2~18_combout\,
	combout => \DisplayDriver|r_IntPNumber[1]~5_combout\);

-- Location: LCCOMB_X23_Y4_N24
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\i_NumA[7]~input_o\ & ((\i_NumB[7]~input_o\ & (\Add0~13\ & VCC)) # (!\i_NumB[7]~input_o\ & (!\Add0~13\)))) # (!\i_NumA[7]~input_o\ & ((\i_NumB[7]~input_o\ & (!\Add0~13\)) # (!\i_NumB[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\i_NumA[7]~input_o\ & (!\i_NumB[7]~input_o\ & !\Add0~13\)) # (!\i_NumA[7]~input_o\ & ((!\Add0~13\) # (!\i_NumB[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[7]~input_o\,
	datab => \i_NumB[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X22_Y4_N22
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\i_NumB[7]~input_o\ & ((\i_NumA[7]~input_o\ & (!\Add1~13\)) # (!\i_NumA[7]~input_o\ & ((\Add1~13\) # (GND))))) # (!\i_NumB[7]~input_o\ & ((\i_NumA[7]~input_o\ & (\Add1~13\ & VCC)) # (!\i_NumA[7]~input_o\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\i_NumB[7]~input_o\ & ((!\Add1~13\) # (!\i_NumA[7]~input_o\))) # (!\i_NumB[7]~input_o\ & (!\i_NumA[7]~input_o\ & !\Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumB[7]~input_o\,
	datab => \i_NumA[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X22_Y4_N30
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\i_OpSel[1]~input_o\ & ((\i_OpSel[0]~input_o\ & ((\Add1~14_combout\))) # (!\i_OpSel[0]~input_o\ & (\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datab => \Add0~14_combout\,
	datac => \Add1~14_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X21_Y4_N6
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT11\ & \i_OpSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datac => \Mux4~0_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X21_Y7_N22
\DisplayDriver|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~22_combout\ = (\Mux4~1_combout\ & (\DisplayDriver|Add2~21\ & VCC)) # (!\Mux4~1_combout\ & (!\DisplayDriver|Add2~21\))
-- \DisplayDriver|Add2~23\ = CARRY((!\Mux4~1_combout\ & !\DisplayDriver|Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~21\,
	combout => \DisplayDriver|Add2~22_combout\,
	cout => \DisplayDriver|Add2~23\);

-- Location: LCCOMB_X19_Y7_N18
\DisplayDriver|r_IntPNumber[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[3]~7_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((!\DisplayDriver|Add2~22_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datac => \DisplayDriver|Mux12~0_combout\,
	datad => \DisplayDriver|Add2~22_combout\,
	combout => \DisplayDriver|r_IntPNumber[3]~7_combout\);

-- Location: LCCOMB_X19_Y7_N0
\DisplayDriver|DisplayDecoder2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux6~0_combout\ = (\DisplayDriver|r_IntPNumber[2]~6_combout\ & (!\DisplayDriver|r_IntPNumber[1]~5_combout\ & (\DisplayDriver|r_IntPNumber[0]~4_combout\ $ (!\DisplayDriver|r_IntPNumber[3]~7_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[2]~6_combout\ & (\DisplayDriver|r_IntPNumber[0]~4_combout\ & (\DisplayDriver|r_IntPNumber[1]~5_combout\ $ (!\DisplayDriver|r_IntPNumber[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~6_combout\,
	datab => \DisplayDriver|r_IntPNumber[0]~4_combout\,
	datac => \DisplayDriver|r_IntPNumber[1]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~7_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y4_N24
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\ $ (GND)
-- \Add1~17\ = CARRY(!\Add1~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X22_Y4_N26
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = !\Add1~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X21_Y4_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\i_OpSel[1]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT14\)))) # (!\i_OpSel[1]~input_o\ & (\Add1~18_combout\ & ((\i_OpSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datac => \i_OpSel[0]~input_o\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X21_Y4_N14
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\i_OpSel[1]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT13\)))) # (!\i_OpSel[1]~input_o\ & (\i_OpSel[0]~input_o\ & ((\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datac => \Add1~18_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X23_Y4_N26
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X22_Y4_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\i_OpSel[1]~input_o\ & ((\i_OpSel[0]~input_o\ & ((\Add1~16_combout\))) # (!\i_OpSel[0]~input_o\ & (\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add1~16_combout\,
	datac => \i_OpSel[0]~input_o\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X21_Y4_N0
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\) # ((\Mult0|auto_generated|mac_out2~DATAOUT12\ & \i_OpSel[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X21_Y7_N24
\DisplayDriver|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~24_combout\ = (\Mux3~1_combout\ & ((GND) # (!\DisplayDriver|Add2~23\))) # (!\Mux3~1_combout\ & (\DisplayDriver|Add2~23\ $ (GND)))
-- \DisplayDriver|Add2~25\ = CARRY((\Mux3~1_combout\) # (!\DisplayDriver|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~1_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~23\,
	combout => \DisplayDriver|Add2~24_combout\,
	cout => \DisplayDriver|Add2~25\);

-- Location: LCCOMB_X21_Y7_N26
\DisplayDriver|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~26_combout\ = (\Mux2~0_combout\ & (\DisplayDriver|Add2~25\ & VCC)) # (!\Mux2~0_combout\ & (!\DisplayDriver|Add2~25\))
-- \DisplayDriver|Add2~27\ = CARRY((!\Mux2~0_combout\ & !\DisplayDriver|Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~0_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~25\,
	combout => \DisplayDriver|Add2~26_combout\,
	cout => \DisplayDriver|Add2~27\);

-- Location: LCCOMB_X21_Y7_N28
\DisplayDriver|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~28_combout\ = (\Mux1~0_combout\ & ((GND) # (!\DisplayDriver|Add2~27\))) # (!\Mux1~0_combout\ & (\DisplayDriver|Add2~27\ $ (GND)))
-- \DisplayDriver|Add2~29\ = CARRY((\Mux1~0_combout\) # (!\DisplayDriver|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~0_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~27\,
	combout => \DisplayDriver|Add2~28_combout\,
	cout => \DisplayDriver|Add2~29\);

-- Location: LCCOMB_X22_Y7_N12
\DisplayDriver|r_IntPNumber[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[6]~2_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((!\DisplayDriver|Add2~28_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|Mux12~0_combout\,
	datac => \Mux1~0_combout\,
	datad => \DisplayDriver|Add2~28_combout\,
	combout => \DisplayDriver|r_IntPNumber[6]~2_combout\);

-- Location: LCCOMB_X22_Y7_N18
\DisplayDriver|r_IntPNumber[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[5]~1_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((!\DisplayDriver|Add2~26_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \DisplayDriver|Mux12~0_combout\,
	datac => \DisplayDriver|Add2~26_combout\,
	combout => \DisplayDriver|r_IntPNumber[5]~1_combout\);

-- Location: LCCOMB_X21_Y4_N26
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\i_OpSel[1]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT15\)))) # (!\i_OpSel[1]~input_o\ & (\Add1~18_combout\ & ((\i_OpSel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datac => \i_OpSel[0]~input_o\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X21_Y7_N30
\DisplayDriver|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~30_combout\ = \DisplayDriver|Add2~29\ $ (\Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mux0~0_combout\,
	cin => \DisplayDriver|Add2~29\,
	combout => \DisplayDriver|Add2~30_combout\);

-- Location: LCCOMB_X22_Y7_N26
\DisplayDriver|r_IntPNumber[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[7]~3_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((\DisplayDriver|Add2~30_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|Mux12~0_combout\,
	datac => \Mux0~0_combout\,
	datad => \DisplayDriver|Add2~30_combout\,
	combout => \DisplayDriver|r_IntPNumber[7]~3_combout\);

-- Location: LCCOMB_X22_Y7_N16
\DisplayDriver|r_IntPNumber[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[4]~0_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((!\DisplayDriver|Add2~24_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|Mux12~0_combout\,
	datac => \Mux3~1_combout\,
	datad => \DisplayDriver|Add2~24_combout\,
	combout => \DisplayDriver|r_IntPNumber[4]~0_combout\);

-- Location: LCCOMB_X22_Y7_N0
\DisplayDriver|DisplayDecoder1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux6~0_combout\ = (\DisplayDriver|r_IntPNumber[6]~2_combout\ & (!\DisplayDriver|r_IntPNumber[5]~1_combout\ & (\DisplayDriver|r_IntPNumber[7]~3_combout\ $ (!\DisplayDriver|r_IntPNumber[4]~0_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[6]~2_combout\ & (\DisplayDriver|r_IntPNumber[4]~0_combout\ & (\DisplayDriver|r_IntPNumber[5]~1_combout\ $ (!\DisplayDriver|r_IntPNumber[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[6]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[5]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[7]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y8_N12
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

-- Location: LCCOMB_X21_Y4_N4
\DisplayDriver|r_DecPNumber[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[0]~0_combout\ = (!\Mult0|auto_generated|mac_out2~DATAOUT15\ & \i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \i_OpSel[1]~input_o\,
	combout => \DisplayDriver|r_DecPNumber[0]~0_combout\);

-- Location: LCCOMB_X21_Y6_N12
\DisplayDriver|r_DecPNumber[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[2]~3_combout\ = (\DisplayDriver|Mux12~0_combout\ & (((\Mult0|auto_generated|mac_out2~DATAOUT2\ & \DisplayDriver|r_DecPNumber[0]~0_combout\)) # (!\DisplayDriver|Add2~4_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\DisplayDriver|r_DecPNumber[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datac => \DisplayDriver|Add2~4_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|r_DecPNumber[2]~3_combout\);

-- Location: LCCOMB_X21_Y6_N18
\DisplayDriver|r_DecPNumber[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[1]~2_combout\ = (\DisplayDriver|Mux12~0_combout\ & (((\Mult0|auto_generated|mac_out2~DATAOUT1\ & \DisplayDriver|r_DecPNumber[0]~0_combout\)) # (!\DisplayDriver|Add2~2_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\DisplayDriver|r_DecPNumber[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datac => \DisplayDriver|Add2~2_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|r_DecPNumber[1]~2_combout\);

-- Location: LCCOMB_X21_Y6_N14
\DisplayDriver|r_DecPNumber[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[3]~4_combout\ = (\DisplayDriver|Mux12~0_combout\ & (((\DisplayDriver|r_DecPNumber[0]~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT3\)) # (!\DisplayDriver|Add2~6_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & 
-- (\DisplayDriver|r_DecPNumber[0]~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datab => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \DisplayDriver|Add2~6_combout\,
	combout => \DisplayDriver|r_DecPNumber[3]~4_combout\);

-- Location: LCCOMB_X21_Y6_N24
\DisplayDriver|r_DecPNumber[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[0]~1_combout\ = (\DisplayDriver|Mux12~0_combout\ & (((\DisplayDriver|r_DecPNumber[0]~0_combout\ & \Mult0|auto_generated|mac_out2~dataout\)) # (!\DisplayDriver|Add2~0_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & 
-- (\DisplayDriver|r_DecPNumber[0]~0_combout\ & (\Mult0|auto_generated|mac_out2~dataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datab => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~dataout\,
	datad => \DisplayDriver|Add2~0_combout\,
	combout => \DisplayDriver|r_DecPNumber[0]~1_combout\);

-- Location: LCCOMB_X21_Y6_N28
\DisplayDriver|DisplayDecoder4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux6~0_combout\ = (\DisplayDriver|r_DecPNumber[2]~3_combout\ & (!\DisplayDriver|r_DecPNumber[1]~2_combout\ & (\DisplayDriver|r_DecPNumber[3]~4_combout\ $ (!\DisplayDriver|r_DecPNumber[0]~1_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[2]~3_combout\ & (\DisplayDriver|r_DecPNumber[0]~1_combout\ & (\DisplayDriver|r_DecPNumber[1]~2_combout\ $ (!\DisplayDriver|r_DecPNumber[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~4_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~1_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y7_N10
\DisplayDriver|r_DecPNumber[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[4]~5_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((!\DisplayDriver|Add2~8_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|Mux12~0_combout\,
	datac => \Mux11~1_combout\,
	datad => \DisplayDriver|Add2~8_combout\,
	combout => \DisplayDriver|r_DecPNumber[4]~5_combout\);

-- Location: LCCOMB_X18_Y7_N20
\DisplayDriver|r_DecPNumber[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[5]~6_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((!\DisplayDriver|Add2~10_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datac => \Mux10~1_combout\,
	datad => \DisplayDriver|Add2~10_combout\,
	combout => \DisplayDriver|r_DecPNumber[5]~6_combout\);

-- Location: LCCOMB_X18_Y7_N22
\DisplayDriver|r_DecPNumber[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[6]~7_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((!\DisplayDriver|Add2~12_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datac => \Mux9~1_combout\,
	datad => \DisplayDriver|Add2~12_combout\,
	combout => \DisplayDriver|r_DecPNumber[6]~7_combout\);

-- Location: LCCOMB_X18_Y7_N24
\DisplayDriver|r_DecPNumber[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[7]~8_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((!\DisplayDriver|Add2~14_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datac => \Mux8~1_combout\,
	datad => \DisplayDriver|Add2~14_combout\,
	combout => \DisplayDriver|r_DecPNumber[7]~8_combout\);

-- Location: LCCOMB_X18_Y7_N18
\DisplayDriver|DisplayDecoder3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux6~0_combout\ = (\DisplayDriver|r_DecPNumber[6]~7_combout\ & (!\DisplayDriver|r_DecPNumber[5]~6_combout\ & (\DisplayDriver|r_DecPNumber[4]~5_combout\ $ (!\DisplayDriver|r_DecPNumber[7]~8_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[6]~7_combout\ & (\DisplayDriver|r_DecPNumber[4]~5_combout\ & (\DisplayDriver|r_DecPNumber[5]~6_combout\ $ (!\DisplayDriver|r_DecPNumber[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[4]~5_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~6_combout\,
	datac => \DisplayDriver|r_DecPNumber[6]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[7]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y8_N22
\DisplayDriver|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux10~1_combout\ = (\DisplayDriver|Mux10~0_combout\ & (((\DisplayDriver|r_Sel\(1)) # (\DisplayDriver|DisplayDecoder3|Mux6~0_combout\)))) # (!\DisplayDriver|Mux10~0_combout\ & (\DisplayDriver|DisplayDecoder4|Mux6~0_combout\ & 
-- (!\DisplayDriver|r_Sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux10~0_combout\,
	datab => \DisplayDriver|DisplayDecoder4|Mux6~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder3|Mux6~0_combout\,
	combout => \DisplayDriver|Mux10~1_combout\);

-- Location: LCCOMB_X19_Y7_N10
\DisplayDriver|DisplayDecoder2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux5~0_combout\ = (\DisplayDriver|r_IntPNumber[1]~5_combout\ & ((\DisplayDriver|r_IntPNumber[0]~4_combout\ & ((\DisplayDriver|r_IntPNumber[3]~7_combout\))) # (!\DisplayDriver|r_IntPNumber[0]~4_combout\ & 
-- (\DisplayDriver|r_IntPNumber[2]~6_combout\)))) # (!\DisplayDriver|r_IntPNumber[1]~5_combout\ & (\DisplayDriver|r_IntPNumber[2]~6_combout\ & (\DisplayDriver|r_IntPNumber[0]~4_combout\ $ (\DisplayDriver|r_IntPNumber[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~6_combout\,
	datab => \DisplayDriver|r_IntPNumber[0]~4_combout\,
	datac => \DisplayDriver|r_IntPNumber[1]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~7_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y6_N22
\DisplayDriver|DisplayDecoder4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux5~0_combout\ = (\DisplayDriver|r_DecPNumber[1]~2_combout\ & ((\DisplayDriver|r_DecPNumber[0]~1_combout\ & ((\DisplayDriver|r_DecPNumber[3]~4_combout\))) # (!\DisplayDriver|r_DecPNumber[0]~1_combout\ & 
-- (\DisplayDriver|r_DecPNumber[2]~3_combout\)))) # (!\DisplayDriver|r_DecPNumber[1]~2_combout\ & (\DisplayDriver|r_DecPNumber[2]~3_combout\ & (\DisplayDriver|r_DecPNumber[3]~4_combout\ $ (\DisplayDriver|r_DecPNumber[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~4_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~1_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y7_N20
\DisplayDriver|DisplayDecoder1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux5~0_combout\ = (\DisplayDriver|r_IntPNumber[5]~1_combout\ & ((\DisplayDriver|r_IntPNumber[4]~0_combout\ & ((\DisplayDriver|r_IntPNumber[7]~3_combout\))) # (!\DisplayDriver|r_IntPNumber[4]~0_combout\ & 
-- (\DisplayDriver|r_IntPNumber[6]~2_combout\)))) # (!\DisplayDriver|r_IntPNumber[5]~1_combout\ & (\DisplayDriver|r_IntPNumber[6]~2_combout\ & (\DisplayDriver|r_IntPNumber[7]~3_combout\ $ (\DisplayDriver|r_IntPNumber[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[6]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[5]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[7]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y7_N2
\DisplayDriver|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux9~0_combout\ = (\DisplayDriver|r_Sel\(1) & (((\DisplayDriver|DisplayDecoder1|Mux5~0_combout\ & \DisplayDriver|r_Sel\(0))))) # (!\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|DisplayDecoder4|Mux5~0_combout\) # ((\DisplayDriver|r_Sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder4|Mux5~0_combout\,
	datab => \DisplayDriver|DisplayDecoder1|Mux5~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|r_Sel\(0),
	combout => \DisplayDriver|Mux9~0_combout\);

-- Location: LCCOMB_X18_Y7_N4
\DisplayDriver|DisplayDecoder3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux5~0_combout\ = (\DisplayDriver|r_DecPNumber[5]~6_combout\ & ((\DisplayDriver|r_DecPNumber[4]~5_combout\ & ((\DisplayDriver|r_DecPNumber[7]~8_combout\))) # (!\DisplayDriver|r_DecPNumber[4]~5_combout\ & 
-- (\DisplayDriver|r_DecPNumber[6]~7_combout\)))) # (!\DisplayDriver|r_DecPNumber[5]~6_combout\ & (\DisplayDriver|r_DecPNumber[6]~7_combout\ & (\DisplayDriver|r_DecPNumber[4]~5_combout\ $ (\DisplayDriver|r_DecPNumber[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[4]~5_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~6_combout\,
	datac => \DisplayDriver|r_DecPNumber[6]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[7]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y8_N28
\DisplayDriver|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux7~0_combout\ = \DisplayDriver|r_Sel\(0) $ (\DisplayDriver|r_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datac => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y7_N24
\DisplayDriver|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux9~1_combout\ = (\DisplayDriver|Mux9~0_combout\ & (((\DisplayDriver|DisplayDecoder3|Mux5~0_combout\) # (!\DisplayDriver|Mux7~0_combout\)))) # (!\DisplayDriver|Mux9~0_combout\ & (\DisplayDriver|DisplayDecoder2|Mux5~0_combout\ & 
-- ((\DisplayDriver|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux5~0_combout\,
	datab => \DisplayDriver|Mux9~0_combout\,
	datac => \DisplayDriver|DisplayDecoder3|Mux5~0_combout\,
	datad => \DisplayDriver|Mux7~0_combout\,
	combout => \DisplayDriver|Mux9~1_combout\);

-- Location: LCCOMB_X19_Y7_N6
\DisplayDriver|DisplayDecoder2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux4~0_combout\ = (\DisplayDriver|r_IntPNumber[2]~6_combout\ & (\DisplayDriver|r_IntPNumber[3]~7_combout\ & ((\DisplayDriver|r_IntPNumber[1]~5_combout\) # (!\DisplayDriver|r_IntPNumber[0]~4_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[2]~6_combout\ & (!\DisplayDriver|r_IntPNumber[0]~4_combout\ & (\DisplayDriver|r_IntPNumber[1]~5_combout\ & !\DisplayDriver|r_IntPNumber[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~6_combout\,
	datab => \DisplayDriver|r_IntPNumber[0]~4_combout\,
	datac => \DisplayDriver|r_IntPNumber[1]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~7_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y7_N24
\DisplayDriver|DisplayDecoder1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux4~0_combout\ = (\DisplayDriver|r_IntPNumber[6]~2_combout\ & (\DisplayDriver|r_IntPNumber[7]~3_combout\ & ((\DisplayDriver|r_IntPNumber[5]~1_combout\) # (!\DisplayDriver|r_IntPNumber[4]~0_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[6]~2_combout\ & (\DisplayDriver|r_IntPNumber[5]~1_combout\ & (!\DisplayDriver|r_IntPNumber[7]~3_combout\ & !\DisplayDriver|r_IntPNumber[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[6]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[5]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[7]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y7_N10
\DisplayDriver|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux8~0_combout\ = (\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|r_Sel\(0) & ((\DisplayDriver|DisplayDecoder1|Mux4~0_combout\))) # (!\DisplayDriver|r_Sel\(0) & (\DisplayDriver|DisplayDecoder2|Mux4~0_combout\)))) # (!\DisplayDriver|r_Sel\(1) & 
-- (((\DisplayDriver|r_Sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux4~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|DisplayDecoder1|Mux4~0_combout\,
	combout => \DisplayDriver|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y7_N0
\DisplayDriver|DisplayDecoder3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux4~0_combout\ = (\DisplayDriver|r_DecPNumber[6]~7_combout\ & (\DisplayDriver|r_DecPNumber[7]~8_combout\ & ((\DisplayDriver|r_DecPNumber[5]~6_combout\) # (!\DisplayDriver|r_DecPNumber[4]~5_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[6]~7_combout\ & (!\DisplayDriver|r_DecPNumber[4]~5_combout\ & (\DisplayDriver|r_DecPNumber[5]~6_combout\ & !\DisplayDriver|r_DecPNumber[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[4]~5_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~6_combout\,
	datac => \DisplayDriver|r_DecPNumber[6]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[7]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y6_N4
\DisplayDriver|DisplayDecoder4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux4~0_combout\ = (\DisplayDriver|r_DecPNumber[2]~3_combout\ & (\DisplayDriver|r_DecPNumber[3]~4_combout\ & ((\DisplayDriver|r_DecPNumber[1]~2_combout\) # (!\DisplayDriver|r_DecPNumber[0]~1_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[2]~3_combout\ & (\DisplayDriver|r_DecPNumber[1]~2_combout\ & (!\DisplayDriver|r_DecPNumber[3]~4_combout\ & !\DisplayDriver|r_DecPNumber[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~4_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~1_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y7_N2
\DisplayDriver|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux8~1_combout\ = (\DisplayDriver|Mux8~0_combout\ & ((\DisplayDriver|DisplayDecoder3|Mux4~0_combout\) # ((\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|Mux8~0_combout\ & (((!\DisplayDriver|r_Sel\(1) & 
-- \DisplayDriver|DisplayDecoder4|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux8~0_combout\,
	datab => \DisplayDriver|DisplayDecoder3|Mux4~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder4|Mux4~0_combout\,
	combout => \DisplayDriver|Mux8~1_combout\);

-- Location: LCCOMB_X18_Y7_N16
\DisplayDriver|DisplayDecoder3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux3~0_combout\ = (\DisplayDriver|r_DecPNumber[4]~5_combout\ & (\DisplayDriver|r_DecPNumber[5]~6_combout\ $ ((!\DisplayDriver|r_DecPNumber[6]~7_combout\)))) # (!\DisplayDriver|r_DecPNumber[4]~5_combout\ & 
-- ((\DisplayDriver|r_DecPNumber[5]~6_combout\ & (!\DisplayDriver|r_DecPNumber[6]~7_combout\ & \DisplayDriver|r_DecPNumber[7]~8_combout\)) # (!\DisplayDriver|r_DecPNumber[5]~6_combout\ & (\DisplayDriver|r_DecPNumber[6]~7_combout\ & 
-- !\DisplayDriver|r_DecPNumber[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[4]~5_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~6_combout\,
	datac => \DisplayDriver|r_DecPNumber[6]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[7]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y7_N16
\DisplayDriver|DisplayDecoder2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux3~0_combout\ = (\DisplayDriver|r_IntPNumber[0]~4_combout\ & (\DisplayDriver|r_IntPNumber[2]~6_combout\ $ ((!\DisplayDriver|r_IntPNumber[1]~5_combout\)))) # (!\DisplayDriver|r_IntPNumber[0]~4_combout\ & 
-- ((\DisplayDriver|r_IntPNumber[2]~6_combout\ & (!\DisplayDriver|r_IntPNumber[1]~5_combout\ & !\DisplayDriver|r_IntPNumber[3]~7_combout\)) # (!\DisplayDriver|r_IntPNumber[2]~6_combout\ & (\DisplayDriver|r_IntPNumber[1]~5_combout\ & 
-- \DisplayDriver|r_IntPNumber[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~6_combout\,
	datab => \DisplayDriver|r_IntPNumber[0]~4_combout\,
	datac => \DisplayDriver|r_IntPNumber[1]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~7_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y6_N10
\DisplayDriver|DisplayDecoder4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux3~0_combout\ = (\DisplayDriver|r_DecPNumber[0]~1_combout\ & (\DisplayDriver|r_DecPNumber[2]~3_combout\ $ ((!\DisplayDriver|r_DecPNumber[1]~2_combout\)))) # (!\DisplayDriver|r_DecPNumber[0]~1_combout\ & 
-- ((\DisplayDriver|r_DecPNumber[2]~3_combout\ & (!\DisplayDriver|r_DecPNumber[1]~2_combout\ & !\DisplayDriver|r_DecPNumber[3]~4_combout\)) # (!\DisplayDriver|r_DecPNumber[2]~3_combout\ & (\DisplayDriver|r_DecPNumber[1]~2_combout\ & 
-- \DisplayDriver|r_DecPNumber[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~4_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~1_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y7_N6
\DisplayDriver|DisplayDecoder1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux3~0_combout\ = (\DisplayDriver|r_IntPNumber[4]~0_combout\ & (\DisplayDriver|r_IntPNumber[6]~2_combout\ $ ((!\DisplayDriver|r_IntPNumber[5]~1_combout\)))) # (!\DisplayDriver|r_IntPNumber[4]~0_combout\ & 
-- ((\DisplayDriver|r_IntPNumber[6]~2_combout\ & (!\DisplayDriver|r_IntPNumber[5]~1_combout\ & !\DisplayDriver|r_IntPNumber[7]~3_combout\)) # (!\DisplayDriver|r_IntPNumber[6]~2_combout\ & (\DisplayDriver|r_IntPNumber[5]~1_combout\ & 
-- \DisplayDriver|r_IntPNumber[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[6]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[5]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[7]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y7_N14
\DisplayDriver|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux7~1_combout\ = (\DisplayDriver|r_Sel\(1) & (((\DisplayDriver|r_Sel\(0) & \DisplayDriver|DisplayDecoder1|Mux3~0_combout\)))) # (!\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|DisplayDecoder4|Mux3~0_combout\) # ((\DisplayDriver|r_Sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(1),
	datab => \DisplayDriver|DisplayDecoder4|Mux3~0_combout\,
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|DisplayDecoder1|Mux3~0_combout\,
	combout => \DisplayDriver|Mux7~1_combout\);

-- Location: LCCOMB_X19_Y7_N4
\DisplayDriver|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux7~2_combout\ = (\DisplayDriver|Mux7~1_combout\ & ((\DisplayDriver|DisplayDecoder3|Mux3~0_combout\) # ((!\DisplayDriver|Mux7~0_combout\)))) # (!\DisplayDriver|Mux7~1_combout\ & (((\DisplayDriver|DisplayDecoder2|Mux3~0_combout\ & 
-- \DisplayDriver|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder3|Mux3~0_combout\,
	datab => \DisplayDriver|DisplayDecoder2|Mux3~0_combout\,
	datac => \DisplayDriver|Mux7~1_combout\,
	datad => \DisplayDriver|Mux7~0_combout\,
	combout => \DisplayDriver|Mux7~2_combout\);

-- Location: LCCOMB_X19_Y7_N30
\DisplayDriver|DisplayDecoder2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux2~0_combout\ = (\DisplayDriver|r_IntPNumber[1]~5_combout\ & (((\DisplayDriver|r_IntPNumber[0]~4_combout\ & !\DisplayDriver|r_IntPNumber[3]~7_combout\)))) # (!\DisplayDriver|r_IntPNumber[1]~5_combout\ & 
-- ((\DisplayDriver|r_IntPNumber[2]~6_combout\ & ((!\DisplayDriver|r_IntPNumber[3]~7_combout\))) # (!\DisplayDriver|r_IntPNumber[2]~6_combout\ & (\DisplayDriver|r_IntPNumber[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~6_combout\,
	datab => \DisplayDriver|r_IntPNumber[0]~4_combout\,
	datac => \DisplayDriver|r_IntPNumber[1]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~7_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y7_N4
\DisplayDriver|DisplayDecoder1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux2~0_combout\ = (\DisplayDriver|r_IntPNumber[5]~1_combout\ & (((!\DisplayDriver|r_IntPNumber[7]~3_combout\ & \DisplayDriver|r_IntPNumber[4]~0_combout\)))) # (!\DisplayDriver|r_IntPNumber[5]~1_combout\ & 
-- ((\DisplayDriver|r_IntPNumber[6]~2_combout\ & (!\DisplayDriver|r_IntPNumber[7]~3_combout\)) # (!\DisplayDriver|r_IntPNumber[6]~2_combout\ & ((\DisplayDriver|r_IntPNumber[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[6]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[5]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[7]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y7_N6
\DisplayDriver|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux6~0_combout\ = (\DisplayDriver|r_Sel\(0) & (((\DisplayDriver|DisplayDecoder1|Mux2~0_combout\) # (!\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|r_Sel\(0) & (\DisplayDriver|DisplayDecoder2|Mux2~0_combout\ & (\DisplayDriver|r_Sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux2~0_combout\,
	datab => \DisplayDriver|r_Sel\(0),
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder1|Mux2~0_combout\,
	combout => \DisplayDriver|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y6_N20
\DisplayDriver|DisplayDecoder4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux2~0_combout\ = (\DisplayDriver|r_DecPNumber[1]~2_combout\ & (((!\DisplayDriver|r_DecPNumber[3]~4_combout\ & \DisplayDriver|r_DecPNumber[0]~1_combout\)))) # (!\DisplayDriver|r_DecPNumber[1]~2_combout\ & 
-- ((\DisplayDriver|r_DecPNumber[2]~3_combout\ & (!\DisplayDriver|r_DecPNumber[3]~4_combout\)) # (!\DisplayDriver|r_DecPNumber[2]~3_combout\ & ((\DisplayDriver|r_DecPNumber[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~4_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~1_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y7_N12
\DisplayDriver|DisplayDecoder3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux2~0_combout\ = (\DisplayDriver|r_DecPNumber[5]~6_combout\ & (\DisplayDriver|r_DecPNumber[4]~5_combout\ & ((!\DisplayDriver|r_DecPNumber[7]~8_combout\)))) # (!\DisplayDriver|r_DecPNumber[5]~6_combout\ & 
-- ((\DisplayDriver|r_DecPNumber[6]~7_combout\ & ((!\DisplayDriver|r_DecPNumber[7]~8_combout\))) # (!\DisplayDriver|r_DecPNumber[6]~7_combout\ & (\DisplayDriver|r_DecPNumber[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[4]~5_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~6_combout\,
	datac => \DisplayDriver|r_DecPNumber[6]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[7]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y7_N26
\DisplayDriver|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux6~1_combout\ = (\DisplayDriver|Mux6~0_combout\ & (((\DisplayDriver|r_Sel\(1)) # (\DisplayDriver|DisplayDecoder3|Mux2~0_combout\)))) # (!\DisplayDriver|Mux6~0_combout\ & (\DisplayDriver|DisplayDecoder4|Mux2~0_combout\ & 
-- (!\DisplayDriver|r_Sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux6~0_combout\,
	datab => \DisplayDriver|DisplayDecoder4|Mux2~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder3|Mux2~0_combout\,
	combout => \DisplayDriver|Mux6~1_combout\);

-- Location: LCCOMB_X18_Y7_N8
\DisplayDriver|DisplayDecoder3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux1~0_combout\ = (\DisplayDriver|r_DecPNumber[4]~5_combout\ & (\DisplayDriver|r_DecPNumber[7]~8_combout\ $ (((\DisplayDriver|r_DecPNumber[5]~6_combout\) # (!\DisplayDriver|r_DecPNumber[6]~7_combout\))))) # 
-- (!\DisplayDriver|r_DecPNumber[4]~5_combout\ & (\DisplayDriver|r_DecPNumber[5]~6_combout\ & (!\DisplayDriver|r_DecPNumber[6]~7_combout\ & !\DisplayDriver|r_DecPNumber[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[4]~5_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~6_combout\,
	datac => \DisplayDriver|r_DecPNumber[6]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[7]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y7_N30
\DisplayDriver|DisplayDecoder1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux1~0_combout\ = (\DisplayDriver|r_IntPNumber[6]~2_combout\ & (\DisplayDriver|r_IntPNumber[4]~0_combout\ & (\DisplayDriver|r_IntPNumber[5]~1_combout\ $ (\DisplayDriver|r_IntPNumber[7]~3_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[6]~2_combout\ & (!\DisplayDriver|r_IntPNumber[7]~3_combout\ & ((\DisplayDriver|r_IntPNumber[5]~1_combout\) # (\DisplayDriver|r_IntPNumber[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[6]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[5]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[7]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y6_N26
\DisplayDriver|DisplayDecoder4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux1~0_combout\ = (\DisplayDriver|r_DecPNumber[2]~3_combout\ & (\DisplayDriver|r_DecPNumber[0]~1_combout\ & (\DisplayDriver|r_DecPNumber[1]~2_combout\ $ (\DisplayDriver|r_DecPNumber[3]~4_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[2]~3_combout\ & (!\DisplayDriver|r_DecPNumber[3]~4_combout\ & ((\DisplayDriver|r_DecPNumber[1]~2_combout\) # (\DisplayDriver|r_DecPNumber[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~4_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~1_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y7_N28
\DisplayDriver|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux5~0_combout\ = (\DisplayDriver|r_Sel\(0) & (((\DisplayDriver|DisplayDecoder1|Mux1~0_combout\)) # (!\DisplayDriver|r_Sel\(1)))) # (!\DisplayDriver|r_Sel\(0) & (!\DisplayDriver|r_Sel\(1) & 
-- ((\DisplayDriver|DisplayDecoder4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|DisplayDecoder1|Mux1~0_combout\,
	datad => \DisplayDriver|DisplayDecoder4|Mux1~0_combout\,
	combout => \DisplayDriver|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y7_N8
\DisplayDriver|DisplayDecoder2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux1~0_combout\ = (\DisplayDriver|r_IntPNumber[2]~6_combout\ & (\DisplayDriver|r_IntPNumber[0]~4_combout\ & (\DisplayDriver|r_IntPNumber[1]~5_combout\ $ (\DisplayDriver|r_IntPNumber[3]~7_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[2]~6_combout\ & (!\DisplayDriver|r_IntPNumber[3]~7_combout\ & ((\DisplayDriver|r_IntPNumber[0]~4_combout\) # (\DisplayDriver|r_IntPNumber[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~6_combout\,
	datab => \DisplayDriver|r_IntPNumber[0]~4_combout\,
	datac => \DisplayDriver|r_IntPNumber[1]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~7_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y7_N26
\DisplayDriver|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux5~1_combout\ = (\DisplayDriver|Mux5~0_combout\ & ((\DisplayDriver|DisplayDecoder3|Mux1~0_combout\) # ((!\DisplayDriver|Mux7~0_combout\)))) # (!\DisplayDriver|Mux5~0_combout\ & (((\DisplayDriver|DisplayDecoder2|Mux1~0_combout\ & 
-- \DisplayDriver|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder3|Mux1~0_combout\,
	datab => \DisplayDriver|Mux5~0_combout\,
	datac => \DisplayDriver|DisplayDecoder2|Mux1~0_combout\,
	datad => \DisplayDriver|Mux7~0_combout\,
	combout => \DisplayDriver|Mux5~1_combout\);

-- Location: LCCOMB_X19_Y7_N20
\DisplayDriver|DisplayDecoder2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux0~0_combout\ = (\DisplayDriver|r_IntPNumber[0]~4_combout\ & ((\DisplayDriver|r_IntPNumber[3]~7_combout\) # (\DisplayDriver|r_IntPNumber[2]~6_combout\ $ (\DisplayDriver|r_IntPNumber[1]~5_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[0]~4_combout\ & ((\DisplayDriver|r_IntPNumber[1]~5_combout\) # (\DisplayDriver|r_IntPNumber[2]~6_combout\ $ (\DisplayDriver|r_IntPNumber[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~6_combout\,
	datab => \DisplayDriver|r_IntPNumber[0]~4_combout\,
	datac => \DisplayDriver|r_IntPNumber[1]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~7_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y7_N22
\DisplayDriver|DisplayDecoder1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux0~0_combout\ = (\DisplayDriver|r_IntPNumber[4]~0_combout\ & ((\DisplayDriver|r_IntPNumber[7]~3_combout\) # (\DisplayDriver|r_IntPNumber[6]~2_combout\ $ (\DisplayDriver|r_IntPNumber[5]~1_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[4]~0_combout\ & ((\DisplayDriver|r_IntPNumber[5]~1_combout\) # (\DisplayDriver|r_IntPNumber[6]~2_combout\ $ (\DisplayDriver|r_IntPNumber[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[6]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[5]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[7]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y7_N30
\DisplayDriver|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux4~0_combout\ = (\DisplayDriver|r_Sel\(0) & (((!\DisplayDriver|DisplayDecoder1|Mux0~0_combout\) # (!\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|r_Sel\(0) & (!\DisplayDriver|DisplayDecoder2|Mux0~0_combout\ & 
-- (\DisplayDriver|r_Sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux0~0_combout\,
	datab => \DisplayDriver|r_Sel\(0),
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder1|Mux0~0_combout\,
	combout => \DisplayDriver|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y7_N28
\DisplayDriver|DisplayDecoder3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux0~0_combout\ = (\DisplayDriver|r_DecPNumber[4]~5_combout\ & ((\DisplayDriver|r_DecPNumber[7]~8_combout\) # (\DisplayDriver|r_DecPNumber[5]~6_combout\ $ (\DisplayDriver|r_DecPNumber[6]~7_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[4]~5_combout\ & ((\DisplayDriver|r_DecPNumber[5]~6_combout\) # (\DisplayDriver|r_DecPNumber[6]~7_combout\ $ (\DisplayDriver|r_DecPNumber[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[4]~5_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~6_combout\,
	datac => \DisplayDriver|r_DecPNumber[6]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[7]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y6_N0
\DisplayDriver|DisplayDecoder4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux0~0_combout\ = (\DisplayDriver|r_DecPNumber[0]~1_combout\ & ((\DisplayDriver|r_DecPNumber[3]~4_combout\) # (\DisplayDriver|r_DecPNumber[2]~3_combout\ $ (\DisplayDriver|r_DecPNumber[1]~2_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[0]~1_combout\ & ((\DisplayDriver|r_DecPNumber[1]~2_combout\) # (\DisplayDriver|r_DecPNumber[2]~3_combout\ $ (\DisplayDriver|r_DecPNumber[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[2]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[1]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[3]~4_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~1_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y7_N14
\DisplayDriver|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux4~1_combout\ = (\DisplayDriver|Mux4~0_combout\ & (((\DisplayDriver|r_Sel\(1))) # (!\DisplayDriver|DisplayDecoder3|Mux0~0_combout\))) # (!\DisplayDriver|Mux4~0_combout\ & (((!\DisplayDriver|r_Sel\(1) & 
-- !\DisplayDriver|DisplayDecoder4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux4~0_combout\,
	datab => \DisplayDriver|DisplayDecoder3|Mux0~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder4|Mux0~0_combout\,
	combout => \DisplayDriver|Mux4~1_combout\);

-- Location: LCCOMB_X18_Y8_N4
\DisplayDriver|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux0~1_combout\ = (\DisplayDriver|r_Sel\(1) & !\DisplayDriver|r_Sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|r_Sel\(0),
	combout => \DisplayDriver|Mux0~1_combout\);

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


