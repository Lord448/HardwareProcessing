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

-- DATE "10/02/2023 00:43:49"

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
-- i_NumB[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_OpSel[0]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[0]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_OpSel[1]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[7]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[7]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[6]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[6]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[5]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[5]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[4]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[4]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[3]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[3]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[2]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumB[1]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- i_NumA[1]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
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
SIGNAL \DisplayDriver|r_Count[8]~feeder_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[8]~34\ : std_logic;
SIGNAL \DisplayDriver|r_Count[9]~35_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[9]~36\ : std_logic;
SIGNAL \DisplayDriver|r_Count[10]~37_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Count[10]~feeder_combout\ : std_logic;
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
SIGNAL \DisplayDriver|r_Sel[0]~1_combout\ : std_logic;
SIGNAL \DisplayDriver|r_Sel[1]~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux0~0_combout\ : std_logic;
SIGNAL \i_NumA[3]~input_o\ : std_logic;
SIGNAL \i_NumB[3]~input_o\ : std_logic;
SIGNAL \i_OpSel[0]~input_o\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \i_NumA[2]~input_o\ : std_logic;
SIGNAL \i_NumB[2]~input_o\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \i_NumB[1]~input_o\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \i_NumA[1]~input_o\ : std_logic;
SIGNAL \i_NumA[0]~input_o\ : std_logic;
SIGNAL \i_NumB[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \i_NumA[4]~input_o\ : std_logic;
SIGNAL \i_NumA[5]~input_o\ : std_logic;
SIGNAL \i_NumA[6]~input_o\ : std_logic;
SIGNAL \i_NumA[7]~input_o\ : std_logic;
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
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \i_OpSel[1]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~1\ : std_logic;
SIGNAL \DisplayDriver|Add2~3\ : std_logic;
SIGNAL \DisplayDriver|Add2~5\ : std_logic;
SIGNAL \DisplayDriver|Add2~6_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \DisplayDriver|Mux12~0_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[3]~3_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~4_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[2]~2_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~2_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[1]~1_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[0]~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux6~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~7\ : std_logic;
SIGNAL \DisplayDriver|Add2~9\ : std_logic;
SIGNAL \DisplayDriver|Add2~11\ : std_logic;
SIGNAL \DisplayDriver|Add2~13\ : std_logic;
SIGNAL \DisplayDriver|Add2~15\ : std_logic;
SIGNAL \DisplayDriver|Add2~17\ : std_logic;
SIGNAL \DisplayDriver|Add2~19\ : std_logic;
SIGNAL \DisplayDriver|Add2~20_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[4]~0_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[2]~7_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~18_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[1]~6_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~16_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[0]~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \DisplayDriver|Add2~21\ : std_logic;
SIGNAL \DisplayDriver|Add2~22_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[3]~8_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux6~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \DisplayDriver|Add2~23\ : std_logic;
SIGNAL \DisplayDriver|Add2~25\ : std_logic;
SIGNAL \DisplayDriver|Add2~26_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[5]~2_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~24_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[4]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \DisplayDriver|Add2~27\ : std_logic;
SIGNAL \DisplayDriver|Add2~28_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[6]~3_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~29\ : std_logic;
SIGNAL \DisplayDriver|Add2~30_combout\ : std_logic;
SIGNAL \DisplayDriver|r_IntPNumber[7]~4_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux10~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~12_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[6]~6_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~10_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[5]~5_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~14_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[7]~7_combout\ : std_logic;
SIGNAL \DisplayDriver|Add2~8_combout\ : std_logic;
SIGNAL \DisplayDriver|r_DecPNumber[4]~4_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux10~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux9~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux9~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux4~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux8~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux8~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux7~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux3~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux7~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux6~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux2~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux6~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux5~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux1~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux5~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder3|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder2|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder1|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux4~1_combout\ : std_logic;
SIGNAL \DisplayDriver|DisplayDecoder4|Mux0~0_combout\ : std_logic;
SIGNAL \DisplayDriver|Mux4~2_combout\ : std_logic;
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
	i => \DisplayDriver|Mux4~2_combout\,
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

-- Location: LCCOMB_X19_Y7_N16
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

-- Location: LCCOMB_X19_Y6_N14
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

-- Location: LCCOMB_X19_Y6_N16
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

-- Location: FF_X19_Y6_N17
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

-- Location: LCCOMB_X19_Y7_N10
\DisplayDriver|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~1_combout\ = (!\DisplayDriver|r_Count\(8) & (((!\DisplayDriver|r_Count\(5) & !\DisplayDriver|r_Count\(6))) # (!\DisplayDriver|r_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(7),
	datab => \DisplayDriver|r_Count\(8),
	datac => \DisplayDriver|r_Count\(5),
	datad => \DisplayDriver|r_Count\(6),
	combout => \DisplayDriver|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y6_N22
\DisplayDriver|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~0_combout\ = (!\DisplayDriver|r_Count\(13) & (!\DisplayDriver|r_Count\(12) & (!\DisplayDriver|r_Count\(11) & !\DisplayDriver|r_Count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(13),
	datab => \DisplayDriver|r_Count\(12),
	datac => \DisplayDriver|r_Count\(11),
	datad => \DisplayDriver|r_Count\(14),
	combout => \DisplayDriver|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y7_N12
\DisplayDriver|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~2_combout\ = (\DisplayDriver|LessThan0~0_combout\ & (((\DisplayDriver|LessThan0~1_combout\) # (!\DisplayDriver|r_Count\(10))) # (!\DisplayDriver|r_Count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(9),
	datab => \DisplayDriver|r_Count\(10),
	datac => \DisplayDriver|LessThan0~1_combout\,
	datad => \DisplayDriver|LessThan0~0_combout\,
	combout => \DisplayDriver|LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y7_N14
\DisplayDriver|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|LessThan0~3_combout\ = (\DisplayDriver|r_Count\(15) & (\DisplayDriver|r_Count\(16) & !\DisplayDriver|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(15),
	datac => \DisplayDriver|r_Count\(16),
	datad => \DisplayDriver|LessThan0~2_combout\,
	combout => \DisplayDriver|LessThan0~3_combout\);

-- Location: FF_X19_Y7_N17
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

-- Location: LCCOMB_X19_Y7_N18
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

-- Location: FF_X19_Y7_N19
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

-- Location: LCCOMB_X19_Y7_N20
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

-- Location: FF_X19_Y7_N21
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

-- Location: LCCOMB_X19_Y7_N22
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

-- Location: FF_X19_Y7_N23
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

-- Location: LCCOMB_X19_Y7_N24
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

-- Location: FF_X19_Y7_N25
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

-- Location: LCCOMB_X19_Y7_N26
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

-- Location: FF_X19_Y7_N27
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

-- Location: LCCOMB_X19_Y7_N28
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

-- Location: FF_X19_Y7_N29
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

-- Location: LCCOMB_X19_Y7_N30
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

-- Location: FF_X19_Y7_N31
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

-- Location: LCCOMB_X19_Y6_N0
\DisplayDriver|r_Count[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[8]~33_combout\ = (\DisplayDriver|r_Count\(8) & (\DisplayDriver|r_Count[7]~32\ $ (GND))) # (!\DisplayDriver|r_Count\(8) & (!\DisplayDriver|r_Count[7]~32\ & VCC))
-- \DisplayDriver|r_Count[8]~34\ = CARRY((\DisplayDriver|r_Count\(8) & !\DisplayDriver|r_Count[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Count\(8),
	datad => VCC,
	cin => \DisplayDriver|r_Count[7]~32\,
	combout => \DisplayDriver|r_Count[8]~33_combout\,
	cout => \DisplayDriver|r_Count[8]~34\);

-- Location: LCCOMB_X19_Y7_N8
\DisplayDriver|r_Count[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[8]~feeder_combout\ = \DisplayDriver|r_Count[8]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DisplayDriver|r_Count[8]~33_combout\,
	combout => \DisplayDriver|r_Count[8]~feeder_combout\);

-- Location: FF_X19_Y7_N9
\DisplayDriver|r_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[8]~feeder_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(8));

-- Location: LCCOMB_X19_Y6_N2
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

-- Location: FF_X19_Y6_N3
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

-- Location: LCCOMB_X19_Y6_N4
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

-- Location: LCCOMB_X19_Y7_N2
\DisplayDriver|r_Count[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Count[10]~feeder_combout\ = \DisplayDriver|r_Count[10]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DisplayDriver|r_Count[10]~37_combout\,
	combout => \DisplayDriver|r_Count[10]~feeder_combout\);

-- Location: FF_X19_Y7_N3
\DisplayDriver|r_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \DisplayDriver|r_Count[10]~feeder_combout\,
	sclr => \DisplayDriver|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DisplayDriver|r_Count\(10));

-- Location: LCCOMB_X19_Y6_N6
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

-- Location: FF_X19_Y6_N7
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

-- Location: LCCOMB_X19_Y6_N8
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

-- Location: FF_X19_Y6_N9
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

-- Location: LCCOMB_X19_Y6_N10
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

-- Location: FF_X19_Y6_N11
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

-- Location: LCCOMB_X19_Y6_N12
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

-- Location: FF_X19_Y6_N13
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

-- Location: FF_X19_Y6_N15
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

-- Location: LCCOMB_X19_Y7_N6
\DisplayDriver|r_Sel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Sel[0]~1_combout\ = \DisplayDriver|r_Sel\(0) $ (((\DisplayDriver|r_Count\(15) & (\DisplayDriver|r_Count\(16) & !\DisplayDriver|LessThan0~2_combout\))))

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
	combout => \DisplayDriver|r_Sel[0]~1_combout\);

-- Location: FF_X19_Y7_N7
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

-- Location: LCCOMB_X19_Y7_N0
\DisplayDriver|r_Sel[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_Sel[1]~0_combout\ = \DisplayDriver|r_Sel\(1) $ (((\DisplayDriver|r_Sel\(0) & \DisplayDriver|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datab => \DisplayDriver|LessThan0~3_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|r_Sel[1]~0_combout\);

-- Location: FF_X19_Y7_N1
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
-- \DisplayDriver|Mux3~0_combout\ = (\DisplayDriver|r_Sel\(0)) # (\DisplayDriver|r_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y8_N26
\DisplayDriver|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux2~0_combout\ = (\DisplayDriver|r_Sel\(1)) # (!\DisplayDriver|r_Sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y8_N16
\DisplayDriver|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux1~0_combout\ = (\DisplayDriver|r_Sel\(0)) # (!\DisplayDriver|r_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y8_N6
\DisplayDriver|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux0~0_combout\ = (!\DisplayDriver|r_Sel\(1)) # (!\DisplayDriver|r_Sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|Mux0~0_combout\);

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

-- Location: LCCOMB_X25_Y8_N2
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = \i_NumB[3]~input_o\ $ (\i_OpSel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_NumB[3]~input_o\,
	datac => \i_OpSel[0]~input_o\,
	combout => \Add0~9_combout\);

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

-- Location: LCCOMB_X24_Y8_N30
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \i_OpSel[0]~input_o\ $ (\i_NumB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_OpSel[0]~input_o\,
	datad => \i_NumB[2]~input_o\,
	combout => \Add0~10_combout\);

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

-- Location: LCCOMB_X24_Y8_N0
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \i_OpSel[0]~input_o\ $ (\i_NumB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datac => \i_NumB[1]~input_o\,
	combout => \Add0~11_combout\);

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

-- Location: LCCOMB_X25_Y8_N28
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \i_OpSel[0]~input_o\ $ (\i_NumB[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_OpSel[0]~input_o\,
	datad => \i_NumB[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X25_Y8_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\i_OpSel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X25_Y8_N10
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\i_NumA[0]~input_o\ & ((\Add0~0_combout\ & (\Add0~2_cout\ & VCC)) # (!\Add0~0_combout\ & (!\Add0~2_cout\)))) # (!\i_NumA[0]~input_o\ & ((\Add0~0_combout\ & (!\Add0~2_cout\)) # (!\Add0~0_combout\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\i_NumA[0]~input_o\ & (!\Add0~0_combout\ & !\Add0~2_cout\)) # (!\i_NumA[0]~input_o\ & ((!\Add0~2_cout\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[0]~input_o\,
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X25_Y8_N12
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Add0~11_combout\ $ (\i_NumA[1]~input_o\ $ (!\Add0~4\)))) # (GND)
-- \Add0~13\ = CARRY((\Add0~11_combout\ & ((\i_NumA[1]~input_o\) # (!\Add0~4\))) # (!\Add0~11_combout\ & (\i_NumA[1]~input_o\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \i_NumA[1]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X25_Y8_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\i_NumA[2]~input_o\ & ((\Add0~10_combout\ & (\Add0~13\ & VCC)) # (!\Add0~10_combout\ & (!\Add0~13\)))) # (!\i_NumA[2]~input_o\ & ((\Add0~10_combout\ & (!\Add0~13\)) # (!\Add0~10_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\i_NumA[2]~input_o\ & (!\Add0~10_combout\ & !\Add0~13\)) # (!\i_NumA[2]~input_o\ & ((!\Add0~13\) # (!\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[2]~input_o\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X25_Y8_N16
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\i_NumA[3]~input_o\ $ (\Add0~9_combout\ $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\i_NumA[3]~input_o\ & ((\Add0~9_combout\) # (!\Add0~15\))) # (!\i_NumA[3]~input_o\ & (\Add0~9_combout\ & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[3]~input_o\,
	datab => \Add0~9_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

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

-- Location: DSPMULT_X20_Y8_N0
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

-- Location: DSPOUT_X20_Y8_N2
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

-- Location: LCCOMB_X21_Y8_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\i_OpSel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT3\))) # (!\i_OpSel[1]~input_o\ & (\Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X21_Y8_N4
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\i_OpSel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT2\))) # (!\i_OpSel[1]~input_o\ & (\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X21_Y8_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\i_OpSel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT1\))) # (!\i_OpSel[1]~input_o\ & (\Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X21_Y8_N20
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\i_OpSel[1]~input_o\ & (\Mult0|auto_generated|mac_out2~dataout\)) # (!\i_OpSel[1]~input_o\ & ((\Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~dataout\,
	datac => \Add0~3_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X23_Y8_N0
\DisplayDriver|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~0_combout\ = \Mux7~0_combout\ $ (VCC)
-- \DisplayDriver|Add2~1\ = CARRY(\Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datad => VCC,
	combout => \DisplayDriver|Add2~0_combout\,
	cout => \DisplayDriver|Add2~1\);

-- Location: LCCOMB_X23_Y8_N2
\DisplayDriver|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~2_combout\ = (\Mux6~0_combout\ & (\DisplayDriver|Add2~1\ & VCC)) # (!\Mux6~0_combout\ & (!\DisplayDriver|Add2~1\))
-- \DisplayDriver|Add2~3\ = CARRY((!\Mux6~0_combout\ & !\DisplayDriver|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~1\,
	combout => \DisplayDriver|Add2~2_combout\,
	cout => \DisplayDriver|Add2~3\);

-- Location: LCCOMB_X23_Y8_N4
\DisplayDriver|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~4_combout\ = (\Mux5~0_combout\ & ((GND) # (!\DisplayDriver|Add2~3\))) # (!\Mux5~0_combout\ & (\DisplayDriver|Add2~3\ $ (GND)))
-- \DisplayDriver|Add2~5\ = CARRY((\Mux5~0_combout\) # (!\DisplayDriver|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~0_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~3\,
	combout => \DisplayDriver|Add2~4_combout\,
	cout => \DisplayDriver|Add2~5\);

-- Location: LCCOMB_X23_Y8_N6
\DisplayDriver|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~6_combout\ = (\Mux4~0_combout\ & (\DisplayDriver|Add2~5\ & VCC)) # (!\Mux4~0_combout\ & (!\DisplayDriver|Add2~5\))
-- \DisplayDriver|Add2~7\ = CARRY((!\Mux4~0_combout\ & !\DisplayDriver|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~0_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~5\,
	combout => \DisplayDriver|Add2~6_combout\,
	cout => \DisplayDriver|Add2~7\);

-- Location: LCCOMB_X25_Y8_N26
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \i_OpSel[0]~input_o\ $ (\i_NumB[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_OpSel[0]~input_o\,
	datad => \i_NumB[7]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X25_Y8_N4
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \i_OpSel[0]~input_o\ $ (\i_NumB[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_OpSel[0]~input_o\,
	datad => \i_NumB[6]~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X24_Y8_N16
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = \i_OpSel[0]~input_o\ $ (\i_NumB[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_OpSel[0]~input_o\,
	datad => \i_NumB[5]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X25_Y8_N30
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \i_OpSel[0]~input_o\ $ (\i_NumB[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_OpSel[0]~input_o\,
	datad => \i_NumB[4]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X25_Y8_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Add0~8_combout\ & ((\i_NumA[4]~input_o\ & (\Add0~17\ & VCC)) # (!\i_NumA[4]~input_o\ & (!\Add0~17\)))) # (!\Add0~8_combout\ & ((\i_NumA[4]~input_o\ & (!\Add0~17\)) # (!\i_NumA[4]~input_o\ & ((\Add0~17\) # (GND)))))
-- \Add0~19\ = CARRY((\Add0~8_combout\ & (!\i_NumA[4]~input_o\ & !\Add0~17\)) # (!\Add0~8_combout\ & ((!\Add0~17\) # (!\i_NumA[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \i_NumA[4]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X25_Y8_N20
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\Add0~7_combout\ $ (\i_NumA[5]~input_o\ $ (!\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((\Add0~7_combout\ & ((\i_NumA[5]~input_o\) # (!\Add0~19\))) # (!\Add0~7_combout\ & (\i_NumA[5]~input_o\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \i_NumA[5]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X25_Y8_N22
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\i_NumA[6]~input_o\ & ((\Add0~6_combout\ & (\Add0~21\ & VCC)) # (!\Add0~6_combout\ & (!\Add0~21\)))) # (!\i_NumA[6]~input_o\ & ((\Add0~6_combout\ & (!\Add0~21\)) # (!\Add0~6_combout\ & ((\Add0~21\) # (GND)))))
-- \Add0~23\ = CARRY((\i_NumA[6]~input_o\ & (!\Add0~6_combout\ & !\Add0~21\)) # (!\i_NumA[6]~input_o\ & ((!\Add0~21\) # (!\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_NumA[6]~input_o\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X25_Y8_N24
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \Add0~5_combout\ $ (\Add0~23\ $ (!\i_NumA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datad => \i_NumA[7]~input_o\,
	cin => \Add0~23\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X24_Y8_N18
\DisplayDriver|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux12~0_combout\ = (\i_OpSel[1]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT15\)))) # (!\i_OpSel[1]~input_o\ & (\i_OpSel[0]~input_o\ & (\Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[0]~input_o\,
	datab => \Add0~24_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \i_OpSel[1]~input_o\,
	combout => \DisplayDriver|Mux12~0_combout\);

-- Location: LCCOMB_X21_Y8_N6
\DisplayDriver|r_DecPNumber[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[3]~3_combout\ = (\DisplayDriver|Mux12~0_combout\ & (!\DisplayDriver|Add2~6_combout\)) # (!\DisplayDriver|Mux12~0_combout\ & ((\Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Add2~6_combout\,
	datab => \Mux4~0_combout\,
	datad => \DisplayDriver|Mux12~0_combout\,
	combout => \DisplayDriver|r_DecPNumber[3]~3_combout\);

-- Location: LCCOMB_X21_Y8_N14
\DisplayDriver|r_DecPNumber[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[2]~2_combout\ = (\DisplayDriver|Mux12~0_combout\ & (!\DisplayDriver|Add2~4_combout\)) # (!\DisplayDriver|Mux12~0_combout\ & ((\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DisplayDriver|Add2~4_combout\,
	datac => \Mux5~0_combout\,
	datad => \DisplayDriver|Mux12~0_combout\,
	combout => \DisplayDriver|r_DecPNumber[2]~2_combout\);

-- Location: LCCOMB_X21_Y8_N30
\DisplayDriver|r_DecPNumber[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[1]~1_combout\ = (\DisplayDriver|Mux12~0_combout\ & (!\DisplayDriver|Add2~2_combout\)) # (!\DisplayDriver|Mux12~0_combout\ & ((\Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Add2~2_combout\,
	datab => \Mux6~0_combout\,
	datad => \DisplayDriver|Mux12~0_combout\,
	combout => \DisplayDriver|r_DecPNumber[1]~1_combout\);

-- Location: LCCOMB_X21_Y8_N18
\DisplayDriver|r_DecPNumber[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[0]~0_combout\ = (\DisplayDriver|Mux12~0_combout\ & ((!\DisplayDriver|Add2~0_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & (\Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datac => \DisplayDriver|Add2~0_combout\,
	datad => \DisplayDriver|Mux12~0_combout\,
	combout => \DisplayDriver|r_DecPNumber[0]~0_combout\);

-- Location: LCCOMB_X21_Y8_N12
\DisplayDriver|DisplayDecoder4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux6~0_combout\ = (\DisplayDriver|r_DecPNumber[3]~3_combout\ & (\DisplayDriver|r_DecPNumber[0]~0_combout\ & (\DisplayDriver|r_DecPNumber[2]~2_combout\ $ (\DisplayDriver|r_DecPNumber[1]~1_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[3]~3_combout\ & (!\DisplayDriver|r_DecPNumber[1]~1_combout\ & (\DisplayDriver|r_DecPNumber[2]~2_combout\ $ (\DisplayDriver|r_DecPNumber[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y8_N4
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\i_OpSel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!\i_OpSel[1]~input_o\ & (\Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[1]~input_o\,
	datab => \Add0~24_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X24_Y8_N22
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\i_OpSel[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT6\)) # (!\i_OpSel[1]~input_o\ & ((\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \Add0~22_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X24_Y8_N20
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\i_OpSel[1]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT5\)) # (!\i_OpSel[1]~input_o\ & ((\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \Add0~20_combout\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X24_Y8_N2
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\i_OpSel[1]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT4\))) # (!\i_OpSel[1]~input_o\ & (\Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \i_OpSel[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X23_Y8_N8
\DisplayDriver|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~8_combout\ = (\Mux3~0_combout\ & ((GND) # (!\DisplayDriver|Add2~7\))) # (!\Mux3~0_combout\ & (\DisplayDriver|Add2~7\ $ (GND)))
-- \DisplayDriver|Add2~9\ = CARRY((\Mux3~0_combout\) # (!\DisplayDriver|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~7\,
	combout => \DisplayDriver|Add2~8_combout\,
	cout => \DisplayDriver|Add2~9\);

-- Location: LCCOMB_X23_Y8_N10
\DisplayDriver|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~10_combout\ = (\Mux2~0_combout\ & (\DisplayDriver|Add2~9\ & VCC)) # (!\Mux2~0_combout\ & (!\DisplayDriver|Add2~9\))
-- \DisplayDriver|Add2~11\ = CARRY((!\Mux2~0_combout\ & !\DisplayDriver|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~9\,
	combout => \DisplayDriver|Add2~10_combout\,
	cout => \DisplayDriver|Add2~11\);

-- Location: LCCOMB_X23_Y8_N12
\DisplayDriver|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~12_combout\ = (\Mux1~0_combout\ & ((GND) # (!\DisplayDriver|Add2~11\))) # (!\Mux1~0_combout\ & (\DisplayDriver|Add2~11\ $ (GND)))
-- \DisplayDriver|Add2~13\ = CARRY((\Mux1~0_combout\) # (!\DisplayDriver|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~0_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~11\,
	combout => \DisplayDriver|Add2~12_combout\,
	cout => \DisplayDriver|Add2~13\);

-- Location: LCCOMB_X23_Y8_N14
\DisplayDriver|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~14_combout\ = (\Mux0~0_combout\ & (\DisplayDriver|Add2~13\ & VCC)) # (!\Mux0~0_combout\ & (!\DisplayDriver|Add2~13\))
-- \DisplayDriver|Add2~15\ = CARRY((!\Mux0~0_combout\ & !\DisplayDriver|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datad => VCC,
	cin => \DisplayDriver|Add2~13\,
	combout => \DisplayDriver|Add2~14_combout\,
	cout => \DisplayDriver|Add2~15\);

-- Location: LCCOMB_X23_Y8_N16
\DisplayDriver|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~16_combout\ = (\DisplayDriver|Add2~15\ & ((((\i_OpSel[1]~input_o\ & \Mult0|auto_generated|mac_out2~DATAOUT8\))))) # (!\DisplayDriver|Add2~15\ & (((\i_OpSel[1]~input_o\ & \Mult0|auto_generated|mac_out2~DATAOUT8\)) # (GND)))
-- \DisplayDriver|Add2~17\ = CARRY(((\i_OpSel[1]~input_o\ & \Mult0|auto_generated|mac_out2~DATAOUT8\)) # (!\DisplayDriver|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i_OpSel[1]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \DisplayDriver|Add2~15\,
	combout => \DisplayDriver|Add2~16_combout\,
	cout => \DisplayDriver|Add2~17\);

-- Location: LCCOMB_X23_Y8_N18
\DisplayDriver|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~18_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\i_OpSel[1]~input_o\ & (\DisplayDriver|Add2~17\ & VCC)) # (!\i_OpSel[1]~input_o\ & (!\DisplayDriver|Add2~17\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- (((!\DisplayDriver|Add2~17\))))
-- \DisplayDriver|Add2~19\ = CARRY((!\DisplayDriver|Add2~17\ & ((!\i_OpSel[1]~input_o\) # (!\Mult0|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \i_OpSel[1]~input_o\,
	datad => VCC,
	cin => \DisplayDriver|Add2~17\,
	combout => \DisplayDriver|Add2~18_combout\,
	cout => \DisplayDriver|Add2~19\);

-- Location: LCCOMB_X23_Y8_N20
\DisplayDriver|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~20_combout\ = (\DisplayDriver|Add2~19\ & ((((\Mult0|auto_generated|mac_out2~DATAOUT10\ & \i_OpSel[1]~input_o\))))) # (!\DisplayDriver|Add2~19\ & (((\Mult0|auto_generated|mac_out2~DATAOUT10\ & \i_OpSel[1]~input_o\)) # (GND)))
-- \DisplayDriver|Add2~21\ = CARRY(((\Mult0|auto_generated|mac_out2~DATAOUT10\ & \i_OpSel[1]~input_o\)) # (!\DisplayDriver|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \i_OpSel[1]~input_o\,
	datad => VCC,
	cin => \DisplayDriver|Add2~19\,
	combout => \DisplayDriver|Add2~20_combout\,
	cout => \DisplayDriver|Add2~21\);

-- Location: LCCOMB_X22_Y8_N0
\DisplayDriver|r_IntPNumber[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[4]~0_combout\ = (!\Mult0|auto_generated|mac_out2~DATAOUT15\ & \i_OpSel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => \i_OpSel[1]~input_o\,
	combout => \DisplayDriver|r_IntPNumber[4]~0_combout\);

-- Location: LCCOMB_X22_Y8_N28
\DisplayDriver|r_IntPNumber[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[2]~7_combout\ = (\DisplayDriver|Add2~20_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\DisplayDriver|r_IntPNumber[4]~0_combout\)))) # (!\DisplayDriver|Add2~20_combout\ & ((\DisplayDriver|Mux12~0_combout\) # 
-- ((\Mult0|auto_generated|mac_out2~DATAOUT10\ & \DisplayDriver|r_IntPNumber[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Add2~20_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	datac => \DisplayDriver|Mux12~0_combout\,
	datad => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	combout => \DisplayDriver|r_IntPNumber[2]~7_combout\);

-- Location: LCCOMB_X22_Y8_N6
\DisplayDriver|r_IntPNumber[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[1]~6_combout\ = (\DisplayDriver|Mux12~0_combout\ & (((\DisplayDriver|r_IntPNumber[4]~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT9\)) # (!\DisplayDriver|Add2~18_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & 
-- (\DisplayDriver|r_IntPNumber[4]~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datab => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => \DisplayDriver|Add2~18_combout\,
	combout => \DisplayDriver|r_IntPNumber[1]~6_combout\);

-- Location: LCCOMB_X22_Y8_N4
\DisplayDriver|r_IntPNumber[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[0]~5_combout\ = (\DisplayDriver|Mux12~0_combout\ & (((\DisplayDriver|r_IntPNumber[4]~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT8\)) # (!\DisplayDriver|Add2~16_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & 
-- (\DisplayDriver|r_IntPNumber[4]~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datab => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \DisplayDriver|Add2~16_combout\,
	combout => \DisplayDriver|r_IntPNumber[0]~5_combout\);

-- Location: LCCOMB_X23_Y8_N22
\DisplayDriver|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~22_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\i_OpSel[1]~input_o\ & (\DisplayDriver|Add2~21\ & VCC)) # (!\i_OpSel[1]~input_o\ & (!\DisplayDriver|Add2~21\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- (((!\DisplayDriver|Add2~21\))))
-- \DisplayDriver|Add2~23\ = CARRY((!\DisplayDriver|Add2~21\ & ((!\i_OpSel[1]~input_o\) # (!\Mult0|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \i_OpSel[1]~input_o\,
	datad => VCC,
	cin => \DisplayDriver|Add2~21\,
	combout => \DisplayDriver|Add2~22_combout\,
	cout => \DisplayDriver|Add2~23\);

-- Location: LCCOMB_X22_Y8_N14
\DisplayDriver|r_IntPNumber[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[3]~8_combout\ = (\DisplayDriver|Mux12~0_combout\ & (((\DisplayDriver|r_IntPNumber[4]~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT11\)) # (!\DisplayDriver|Add2~22_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & 
-- (\DisplayDriver|r_IntPNumber[4]~0_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datab => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	datac => \DisplayDriver|Add2~22_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	combout => \DisplayDriver|r_IntPNumber[3]~8_combout\);

-- Location: LCCOMB_X19_Y8_N20
\DisplayDriver|DisplayDecoder2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux6~0_combout\ = (\DisplayDriver|r_IntPNumber[2]~7_combout\ & (!\DisplayDriver|r_IntPNumber[1]~6_combout\ & (\DisplayDriver|r_IntPNumber[0]~5_combout\ $ (!\DisplayDriver|r_IntPNumber[3]~8_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[2]~7_combout\ & (\DisplayDriver|r_IntPNumber[0]~5_combout\ & (\DisplayDriver|r_IntPNumber[1]~6_combout\ $ (!\DisplayDriver|r_IntPNumber[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~7_combout\,
	datab => \DisplayDriver|r_IntPNumber[1]~6_combout\,
	datac => \DisplayDriver|r_IntPNumber[0]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y8_N24
\DisplayDriver|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~24_combout\ = (\DisplayDriver|Add2~23\ & ((((\Mult0|auto_generated|mac_out2~DATAOUT12\ & \i_OpSel[1]~input_o\))))) # (!\DisplayDriver|Add2~23\ & (((\Mult0|auto_generated|mac_out2~DATAOUT12\ & \i_OpSel[1]~input_o\)) # (GND)))
-- \DisplayDriver|Add2~25\ = CARRY(((\Mult0|auto_generated|mac_out2~DATAOUT12\ & \i_OpSel[1]~input_o\)) # (!\DisplayDriver|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \i_OpSel[1]~input_o\,
	datad => VCC,
	cin => \DisplayDriver|Add2~23\,
	combout => \DisplayDriver|Add2~24_combout\,
	cout => \DisplayDriver|Add2~25\);

-- Location: LCCOMB_X23_Y8_N26
\DisplayDriver|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~26_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT13\ & ((\i_OpSel[1]~input_o\ & (\DisplayDriver|Add2~25\ & VCC)) # (!\i_OpSel[1]~input_o\ & (!\DisplayDriver|Add2~25\)))) # (!\Mult0|auto_generated|mac_out2~DATAOUT13\ & 
-- (((!\DisplayDriver|Add2~25\))))
-- \DisplayDriver|Add2~27\ = CARRY((!\DisplayDriver|Add2~25\ & ((!\i_OpSel[1]~input_o\) # (!\Mult0|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \i_OpSel[1]~input_o\,
	datad => VCC,
	cin => \DisplayDriver|Add2~25\,
	combout => \DisplayDriver|Add2~26_combout\,
	cout => \DisplayDriver|Add2~27\);

-- Location: LCCOMB_X22_Y8_N12
\DisplayDriver|r_IntPNumber[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[5]~2_combout\ = (\DisplayDriver|Mux12~0_combout\ & (((\DisplayDriver|r_IntPNumber[4]~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT13\)) # (!\DisplayDriver|Add2~26_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & 
-- (\DisplayDriver|r_IntPNumber[4]~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datab => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \DisplayDriver|Add2~26_combout\,
	combout => \DisplayDriver|r_IntPNumber[5]~2_combout\);

-- Location: LCCOMB_X22_Y8_N18
\DisplayDriver|r_IntPNumber[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[4]~1_combout\ = (\DisplayDriver|Mux12~0_combout\ & (((\DisplayDriver|r_IntPNumber[4]~0_combout\ & \Mult0|auto_generated|mac_out2~DATAOUT12\)) # (!\DisplayDriver|Add2~24_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & 
-- (\DisplayDriver|r_IntPNumber[4]~0_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datab => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \DisplayDriver|Add2~24_combout\,
	combout => \DisplayDriver|r_IntPNumber[4]~1_combout\);

-- Location: LCCOMB_X23_Y8_N28
\DisplayDriver|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~28_combout\ = (\DisplayDriver|Add2~27\ & ((((\Mult0|auto_generated|mac_out2~DATAOUT14\ & \i_OpSel[1]~input_o\))))) # (!\DisplayDriver|Add2~27\ & (((\Mult0|auto_generated|mac_out2~DATAOUT14\ & \i_OpSel[1]~input_o\)) # (GND)))
-- \DisplayDriver|Add2~29\ = CARRY(((\Mult0|auto_generated|mac_out2~DATAOUT14\ & \i_OpSel[1]~input_o\)) # (!\DisplayDriver|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \i_OpSel[1]~input_o\,
	datad => VCC,
	cin => \DisplayDriver|Add2~27\,
	combout => \DisplayDriver|Add2~28_combout\,
	cout => \DisplayDriver|Add2~29\);

-- Location: LCCOMB_X22_Y8_N22
\DisplayDriver|r_IntPNumber[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[6]~3_combout\ = (\DisplayDriver|Mux12~0_combout\ & (((\Mult0|auto_generated|mac_out2~DATAOUT14\ & \DisplayDriver|r_IntPNumber[4]~0_combout\)) # (!\DisplayDriver|Add2~28_combout\))) # (!\DisplayDriver|Mux12~0_combout\ & 
-- (\Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\DisplayDriver|r_IntPNumber[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	datac => \DisplayDriver|Add2~28_combout\,
	datad => \DisplayDriver|r_IntPNumber[4]~0_combout\,
	combout => \DisplayDriver|r_IntPNumber[6]~3_combout\);

-- Location: LCCOMB_X23_Y8_N30
\DisplayDriver|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Add2~30_combout\ = \DisplayDriver|Add2~29\ $ (((\i_OpSel[1]~input_o\ & \Mult0|auto_generated|mac_out2~DATAOUT15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i_OpSel[1]~input_o\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	cin => \DisplayDriver|Add2~29\,
	combout => \DisplayDriver|Add2~30_combout\);

-- Location: LCCOMB_X22_Y8_N16
\DisplayDriver|r_IntPNumber[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_IntPNumber[7]~4_combout\ = (\DisplayDriver|Mux12~0_combout\ & \DisplayDriver|Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux12~0_combout\,
	datac => \DisplayDriver|Add2~30_combout\,
	combout => \DisplayDriver|r_IntPNumber[7]~4_combout\);

-- Location: LCCOMB_X22_Y8_N2
\DisplayDriver|DisplayDecoder1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux6~0_combout\ = (\DisplayDriver|r_IntPNumber[6]~3_combout\ & (!\DisplayDriver|r_IntPNumber[5]~2_combout\ & (\DisplayDriver|r_IntPNumber[4]~1_combout\ $ (!\DisplayDriver|r_IntPNumber[7]~4_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[6]~3_combout\ & (\DisplayDriver|r_IntPNumber[4]~1_combout\ & (\DisplayDriver|r_IntPNumber[5]~2_combout\ $ (!\DisplayDriver|r_IntPNumber[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[5]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[4]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[6]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[7]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y8_N8
\DisplayDriver|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux10~0_combout\ = (\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|r_Sel\(0) & ((\DisplayDriver|DisplayDecoder1|Mux6~0_combout\))) # (!\DisplayDriver|r_Sel\(0) & (\DisplayDriver|DisplayDecoder2|Mux6~0_combout\)))) # (!\DisplayDriver|r_Sel\(1) 
-- & (((\DisplayDriver|r_Sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux6~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|DisplayDecoder1|Mux6~0_combout\,
	combout => \DisplayDriver|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y8_N12
\DisplayDriver|r_DecPNumber[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[6]~6_combout\ = (\DisplayDriver|Mux12~0_combout\ & (!\DisplayDriver|Add2~12_combout\)) # (!\DisplayDriver|Mux12~0_combout\ & ((\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Add2~12_combout\,
	datac => \Mux1~0_combout\,
	datad => \DisplayDriver|Mux12~0_combout\,
	combout => \DisplayDriver|r_DecPNumber[6]~6_combout\);

-- Location: LCCOMB_X24_Y8_N6
\DisplayDriver|r_DecPNumber[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[5]~5_combout\ = (\DisplayDriver|Mux12~0_combout\ & (!\DisplayDriver|Add2~10_combout\)) # (!\DisplayDriver|Mux12~0_combout\ & ((\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Add2~10_combout\,
	datab => \Mux2~0_combout\,
	datad => \DisplayDriver|Mux12~0_combout\,
	combout => \DisplayDriver|r_DecPNumber[5]~5_combout\);

-- Location: LCCOMB_X24_Y8_N26
\DisplayDriver|r_DecPNumber[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[7]~7_combout\ = (\DisplayDriver|Mux12~0_combout\ & (!\DisplayDriver|Add2~14_combout\)) # (!\DisplayDriver|Mux12~0_combout\ & ((\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Add2~14_combout\,
	datac => \Mux0~0_combout\,
	datad => \DisplayDriver|Mux12~0_combout\,
	combout => \DisplayDriver|r_DecPNumber[7]~7_combout\);

-- Location: LCCOMB_X24_Y8_N24
\DisplayDriver|r_DecPNumber[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|r_DecPNumber[4]~4_combout\ = (\DisplayDriver|Mux12~0_combout\ & (!\DisplayDriver|Add2~8_combout\)) # (!\DisplayDriver|Mux12~0_combout\ & ((\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Add2~8_combout\,
	datab => \Mux3~0_combout\,
	datad => \DisplayDriver|Mux12~0_combout\,
	combout => \DisplayDriver|r_DecPNumber[4]~4_combout\);

-- Location: LCCOMB_X19_Y8_N14
\DisplayDriver|DisplayDecoder3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux6~0_combout\ = (\DisplayDriver|r_DecPNumber[6]~6_combout\ & (!\DisplayDriver|r_DecPNumber[5]~5_combout\ & (\DisplayDriver|r_DecPNumber[7]~7_combout\ $ (!\DisplayDriver|r_DecPNumber[4]~4_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[6]~6_combout\ & (\DisplayDriver|r_DecPNumber[4]~4_combout\ & (\DisplayDriver|r_DecPNumber[5]~5_combout\ $ (!\DisplayDriver|r_DecPNumber[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[6]~6_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~5_combout\,
	datac => \DisplayDriver|r_DecPNumber[7]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[4]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y8_N22
\DisplayDriver|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux10~1_combout\ = (\DisplayDriver|Mux10~0_combout\ & (((\DisplayDriver|DisplayDecoder3|Mux6~0_combout\) # (\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|Mux10~0_combout\ & (\DisplayDriver|DisplayDecoder4|Mux6~0_combout\ & 
-- ((!\DisplayDriver|r_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder4|Mux6~0_combout\,
	datab => \DisplayDriver|Mux10~0_combout\,
	datac => \DisplayDriver|DisplayDecoder3|Mux6~0_combout\,
	datad => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|Mux10~1_combout\);

-- Location: LCCOMB_X19_Y8_N12
\DisplayDriver|DisplayDecoder2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux5~0_combout\ = (\DisplayDriver|r_IntPNumber[1]~6_combout\ & ((\DisplayDriver|r_IntPNumber[0]~5_combout\ & ((\DisplayDriver|r_IntPNumber[3]~8_combout\))) # (!\DisplayDriver|r_IntPNumber[0]~5_combout\ & 
-- (\DisplayDriver|r_IntPNumber[2]~7_combout\)))) # (!\DisplayDriver|r_IntPNumber[1]~6_combout\ & (\DisplayDriver|r_IntPNumber[2]~7_combout\ & (\DisplayDriver|r_IntPNumber[0]~5_combout\ $ (\DisplayDriver|r_IntPNumber[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~7_combout\,
	datab => \DisplayDriver|r_IntPNumber[1]~6_combout\,
	datac => \DisplayDriver|r_IntPNumber[0]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y8_N20
\DisplayDriver|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux4~0_combout\ = \DisplayDriver|r_Sel\(0) $ (\DisplayDriver|r_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y8_N26
\DisplayDriver|DisplayDecoder3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux5~0_combout\ = (\DisplayDriver|r_DecPNumber[5]~5_combout\ & ((\DisplayDriver|r_DecPNumber[4]~4_combout\ & ((\DisplayDriver|r_DecPNumber[7]~7_combout\))) # (!\DisplayDriver|r_DecPNumber[4]~4_combout\ & 
-- (\DisplayDriver|r_DecPNumber[6]~6_combout\)))) # (!\DisplayDriver|r_DecPNumber[5]~5_combout\ & (\DisplayDriver|r_DecPNumber[6]~6_combout\ & (\DisplayDriver|r_DecPNumber[7]~7_combout\ $ (\DisplayDriver|r_DecPNumber[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[6]~6_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~5_combout\,
	datac => \DisplayDriver|r_DecPNumber[7]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[4]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y8_N2
\DisplayDriver|DisplayDecoder4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux5~0_combout\ = (\DisplayDriver|r_DecPNumber[3]~3_combout\ & ((\DisplayDriver|r_DecPNumber[0]~0_combout\ & ((\DisplayDriver|r_DecPNumber[1]~1_combout\))) # (!\DisplayDriver|r_DecPNumber[0]~0_combout\ & 
-- (\DisplayDriver|r_DecPNumber[2]~2_combout\)))) # (!\DisplayDriver|r_DecPNumber[3]~3_combout\ & (\DisplayDriver|r_DecPNumber[2]~2_combout\ & (\DisplayDriver|r_DecPNumber[1]~1_combout\ $ (\DisplayDriver|r_DecPNumber[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y8_N24
\DisplayDriver|DisplayDecoder1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux5~0_combout\ = (\DisplayDriver|r_IntPNumber[5]~2_combout\ & ((\DisplayDriver|r_IntPNumber[4]~1_combout\ & ((\DisplayDriver|r_IntPNumber[7]~4_combout\))) # (!\DisplayDriver|r_IntPNumber[4]~1_combout\ & 
-- (\DisplayDriver|r_IntPNumber[6]~3_combout\)))) # (!\DisplayDriver|r_IntPNumber[5]~2_combout\ & (\DisplayDriver|r_IntPNumber[6]~3_combout\ & (\DisplayDriver|r_IntPNumber[4]~1_combout\ $ (\DisplayDriver|r_IntPNumber[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[5]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[4]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[6]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[7]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y8_N8
\DisplayDriver|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux9~0_combout\ = (\DisplayDriver|r_Sel\(0) & (((\DisplayDriver|DisplayDecoder1|Mux5~0_combout\) # (!\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|r_Sel\(0) & (\DisplayDriver|DisplayDecoder4|Mux5~0_combout\ & (!\DisplayDriver|r_Sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datab => \DisplayDriver|DisplayDecoder4|Mux5~0_combout\,
	datac => \DisplayDriver|r_Sel\(1),
	datad => \DisplayDriver|DisplayDecoder1|Mux5~0_combout\,
	combout => \DisplayDriver|Mux9~0_combout\);

-- Location: LCCOMB_X19_Y8_N28
\DisplayDriver|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux9~1_combout\ = (\DisplayDriver|Mux4~0_combout\ & ((\DisplayDriver|Mux9~0_combout\ & ((\DisplayDriver|DisplayDecoder3|Mux5~0_combout\))) # (!\DisplayDriver|Mux9~0_combout\ & (\DisplayDriver|DisplayDecoder2|Mux5~0_combout\)))) # 
-- (!\DisplayDriver|Mux4~0_combout\ & (((\DisplayDriver|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux5~0_combout\,
	datab => \DisplayDriver|Mux4~0_combout\,
	datac => \DisplayDriver|DisplayDecoder3|Mux5~0_combout\,
	datad => \DisplayDriver|Mux9~0_combout\,
	combout => \DisplayDriver|Mux9~1_combout\);

-- Location: LCCOMB_X21_Y8_N10
\DisplayDriver|DisplayDecoder4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux4~0_combout\ = (\DisplayDriver|r_DecPNumber[3]~3_combout\ & (\DisplayDriver|r_DecPNumber[2]~2_combout\ & ((\DisplayDriver|r_DecPNumber[1]~1_combout\) # (!\DisplayDriver|r_DecPNumber[0]~0_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[3]~3_combout\ & (!\DisplayDriver|r_DecPNumber[2]~2_combout\ & (\DisplayDriver|r_DecPNumber[1]~1_combout\ & !\DisplayDriver|r_DecPNumber[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y8_N0
\DisplayDriver|DisplayDecoder3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux4~0_combout\ = (\DisplayDriver|r_DecPNumber[6]~6_combout\ & (\DisplayDriver|r_DecPNumber[7]~7_combout\ & ((\DisplayDriver|r_DecPNumber[5]~5_combout\) # (!\DisplayDriver|r_DecPNumber[4]~4_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[6]~6_combout\ & (\DisplayDriver|r_DecPNumber[5]~5_combout\ & (!\DisplayDriver|r_DecPNumber[7]~7_combout\ & !\DisplayDriver|r_DecPNumber[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[6]~6_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~5_combout\,
	datac => \DisplayDriver|r_DecPNumber[7]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[4]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y8_N10
\DisplayDriver|DisplayDecoder2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux4~0_combout\ = (\DisplayDriver|r_IntPNumber[2]~7_combout\ & (\DisplayDriver|r_IntPNumber[3]~8_combout\ & ((\DisplayDriver|r_IntPNumber[1]~6_combout\) # (!\DisplayDriver|r_IntPNumber[0]~5_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[2]~7_combout\ & (\DisplayDriver|r_IntPNumber[1]~6_combout\ & (!\DisplayDriver|r_IntPNumber[0]~5_combout\ & !\DisplayDriver|r_IntPNumber[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~7_combout\,
	datab => \DisplayDriver|r_IntPNumber[1]~6_combout\,
	datac => \DisplayDriver|r_IntPNumber[0]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y8_N30
\DisplayDriver|DisplayDecoder1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux4~0_combout\ = (\DisplayDriver|r_IntPNumber[6]~3_combout\ & (\DisplayDriver|r_IntPNumber[7]~4_combout\ & ((\DisplayDriver|r_IntPNumber[5]~2_combout\) # (!\DisplayDriver|r_IntPNumber[4]~1_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[6]~3_combout\ & (\DisplayDriver|r_IntPNumber[5]~2_combout\ & (!\DisplayDriver|r_IntPNumber[4]~1_combout\ & !\DisplayDriver|r_IntPNumber[7]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[5]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[4]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[6]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[7]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y8_N18
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

-- Location: LCCOMB_X18_Y8_N0
\DisplayDriver|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux8~1_combout\ = (\DisplayDriver|r_Sel\(1) & (((\DisplayDriver|Mux8~0_combout\)))) # (!\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|Mux8~0_combout\ & ((\DisplayDriver|DisplayDecoder3|Mux4~0_combout\))) # (!\DisplayDriver|Mux8~0_combout\ & 
-- (\DisplayDriver|DisplayDecoder4|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder4|Mux4~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|DisplayDecoder3|Mux4~0_combout\,
	datad => \DisplayDriver|Mux8~0_combout\,
	combout => \DisplayDriver|Mux8~1_combout\);

-- Location: LCCOMB_X21_Y8_N16
\DisplayDriver|DisplayDecoder4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux3~0_combout\ = (\DisplayDriver|r_DecPNumber[0]~0_combout\ & ((\DisplayDriver|r_DecPNumber[2]~2_combout\ $ (!\DisplayDriver|r_DecPNumber[1]~1_combout\)))) # (!\DisplayDriver|r_DecPNumber[0]~0_combout\ & 
-- ((\DisplayDriver|r_DecPNumber[3]~3_combout\ & (!\DisplayDriver|r_DecPNumber[2]~2_combout\ & \DisplayDriver|r_DecPNumber[1]~1_combout\)) # (!\DisplayDriver|r_DecPNumber[3]~3_combout\ & (\DisplayDriver|r_DecPNumber[2]~2_combout\ & 
-- !\DisplayDriver|r_DecPNumber[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y8_N8
\DisplayDriver|DisplayDecoder1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux3~0_combout\ = (\DisplayDriver|r_IntPNumber[4]~1_combout\ & (\DisplayDriver|r_IntPNumber[5]~2_combout\ $ ((!\DisplayDriver|r_IntPNumber[6]~3_combout\)))) # (!\DisplayDriver|r_IntPNumber[4]~1_combout\ & 
-- ((\DisplayDriver|r_IntPNumber[5]~2_combout\ & (!\DisplayDriver|r_IntPNumber[6]~3_combout\ & \DisplayDriver|r_IntPNumber[7]~4_combout\)) # (!\DisplayDriver|r_IntPNumber[5]~2_combout\ & (\DisplayDriver|r_IntPNumber[6]~3_combout\ & 
-- !\DisplayDriver|r_IntPNumber[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[5]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[4]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[6]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[7]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y8_N10
\DisplayDriver|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux7~0_combout\ = (\DisplayDriver|r_Sel\(0) & (((\DisplayDriver|DisplayDecoder1|Mux3~0_combout\) # (!\DisplayDriver|r_Sel\(1))))) # (!\DisplayDriver|r_Sel\(0) & (\DisplayDriver|DisplayDecoder4|Mux3~0_combout\ & 
-- ((!\DisplayDriver|r_Sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder4|Mux3~0_combout\,
	datab => \DisplayDriver|r_Sel\(0),
	datac => \DisplayDriver|DisplayDecoder1|Mux3~0_combout\,
	datad => \DisplayDriver|r_Sel\(1),
	combout => \DisplayDriver|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y8_N30
\DisplayDriver|DisplayDecoder2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux3~0_combout\ = (\DisplayDriver|r_IntPNumber[0]~5_combout\ & (\DisplayDriver|r_IntPNumber[2]~7_combout\ $ ((!\DisplayDriver|r_IntPNumber[1]~6_combout\)))) # (!\DisplayDriver|r_IntPNumber[0]~5_combout\ & 
-- ((\DisplayDriver|r_IntPNumber[2]~7_combout\ & (!\DisplayDriver|r_IntPNumber[1]~6_combout\ & !\DisplayDriver|r_IntPNumber[3]~8_combout\)) # (!\DisplayDriver|r_IntPNumber[2]~7_combout\ & (\DisplayDriver|r_IntPNumber[1]~6_combout\ & 
-- \DisplayDriver|r_IntPNumber[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~7_combout\,
	datab => \DisplayDriver|r_IntPNumber[1]~6_combout\,
	datac => \DisplayDriver|r_IntPNumber[0]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y8_N16
\DisplayDriver|DisplayDecoder3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux3~0_combout\ = (\DisplayDriver|r_DecPNumber[4]~4_combout\ & (\DisplayDriver|r_DecPNumber[6]~6_combout\ $ ((!\DisplayDriver|r_DecPNumber[5]~5_combout\)))) # (!\DisplayDriver|r_DecPNumber[4]~4_combout\ & 
-- ((\DisplayDriver|r_DecPNumber[6]~6_combout\ & (!\DisplayDriver|r_DecPNumber[5]~5_combout\ & !\DisplayDriver|r_DecPNumber[7]~7_combout\)) # (!\DisplayDriver|r_DecPNumber[6]~6_combout\ & (\DisplayDriver|r_DecPNumber[5]~5_combout\ & 
-- \DisplayDriver|r_DecPNumber[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[6]~6_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~5_combout\,
	datac => \DisplayDriver|r_DecPNumber[7]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[4]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y8_N12
\DisplayDriver|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux7~1_combout\ = (\DisplayDriver|Mux7~0_combout\ & (((\DisplayDriver|DisplayDecoder3|Mux3~0_combout\)) # (!\DisplayDriver|Mux4~0_combout\))) # (!\DisplayDriver|Mux7~0_combout\ & (\DisplayDriver|Mux4~0_combout\ & 
-- (\DisplayDriver|DisplayDecoder2|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux7~0_combout\,
	datab => \DisplayDriver|Mux4~0_combout\,
	datac => \DisplayDriver|DisplayDecoder2|Mux3~0_combout\,
	datad => \DisplayDriver|DisplayDecoder3|Mux3~0_combout\,
	combout => \DisplayDriver|Mux7~1_combout\);

-- Location: LCCOMB_X21_Y8_N22
\DisplayDriver|DisplayDecoder4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux2~0_combout\ = (\DisplayDriver|r_DecPNumber[1]~1_combout\ & (!\DisplayDriver|r_DecPNumber[3]~3_combout\ & ((\DisplayDriver|r_DecPNumber[0]~0_combout\)))) # (!\DisplayDriver|r_DecPNumber[1]~1_combout\ & 
-- ((\DisplayDriver|r_DecPNumber[2]~2_combout\ & (!\DisplayDriver|r_DecPNumber[3]~3_combout\)) # (!\DisplayDriver|r_DecPNumber[2]~2_combout\ & ((\DisplayDriver|r_DecPNumber[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y8_N2
\DisplayDriver|DisplayDecoder2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux2~0_combout\ = (\DisplayDriver|r_IntPNumber[1]~6_combout\ & (((\DisplayDriver|r_IntPNumber[0]~5_combout\ & !\DisplayDriver|r_IntPNumber[3]~8_combout\)))) # (!\DisplayDriver|r_IntPNumber[1]~6_combout\ & 
-- ((\DisplayDriver|r_IntPNumber[2]~7_combout\ & ((!\DisplayDriver|r_IntPNumber[3]~8_combout\))) # (!\DisplayDriver|r_IntPNumber[2]~7_combout\ & (\DisplayDriver|r_IntPNumber[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~7_combout\,
	datab => \DisplayDriver|r_IntPNumber[1]~6_combout\,
	datac => \DisplayDriver|r_IntPNumber[0]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y8_N10
\DisplayDriver|DisplayDecoder1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux2~0_combout\ = (\DisplayDriver|r_IntPNumber[5]~2_combout\ & (\DisplayDriver|r_IntPNumber[4]~1_combout\ & ((!\DisplayDriver|r_IntPNumber[7]~4_combout\)))) # (!\DisplayDriver|r_IntPNumber[5]~2_combout\ & 
-- ((\DisplayDriver|r_IntPNumber[6]~3_combout\ & ((!\DisplayDriver|r_IntPNumber[7]~4_combout\))) # (!\DisplayDriver|r_IntPNumber[6]~3_combout\ & (\DisplayDriver|r_IntPNumber[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[5]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[4]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[6]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[7]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y8_N30
\DisplayDriver|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux6~0_combout\ = (\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|r_Sel\(0) & ((\DisplayDriver|DisplayDecoder1|Mux2~0_combout\))) # (!\DisplayDriver|r_Sel\(0) & (\DisplayDriver|DisplayDecoder2|Mux2~0_combout\)))) # (!\DisplayDriver|r_Sel\(1) & 
-- (((\DisplayDriver|r_Sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux2~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|DisplayDecoder1|Mux2~0_combout\,
	combout => \DisplayDriver|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y8_N24
\DisplayDriver|DisplayDecoder3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux2~0_combout\ = (\DisplayDriver|r_DecPNumber[5]~5_combout\ & (((!\DisplayDriver|r_DecPNumber[7]~7_combout\ & \DisplayDriver|r_DecPNumber[4]~4_combout\)))) # (!\DisplayDriver|r_DecPNumber[5]~5_combout\ & 
-- ((\DisplayDriver|r_DecPNumber[6]~6_combout\ & (!\DisplayDriver|r_DecPNumber[7]~7_combout\)) # (!\DisplayDriver|r_DecPNumber[6]~6_combout\ & ((\DisplayDriver|r_DecPNumber[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[6]~6_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~5_combout\,
	datac => \DisplayDriver|r_DecPNumber[7]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[4]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y8_N28
\DisplayDriver|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux6~1_combout\ = (\DisplayDriver|r_Sel\(1) & (((\DisplayDriver|Mux6~0_combout\)))) # (!\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|Mux6~0_combout\ & ((\DisplayDriver|DisplayDecoder3|Mux2~0_combout\))) # (!\DisplayDriver|Mux6~0_combout\ & 
-- (\DisplayDriver|DisplayDecoder4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder4|Mux2~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|Mux6~0_combout\,
	datad => \DisplayDriver|DisplayDecoder3|Mux2~0_combout\,
	combout => \DisplayDriver|Mux6~1_combout\);

-- Location: LCCOMB_X21_Y8_N24
\DisplayDriver|DisplayDecoder4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux1~0_combout\ = (\DisplayDriver|r_DecPNumber[2]~2_combout\ & (\DisplayDriver|r_DecPNumber[0]~0_combout\ & (\DisplayDriver|r_DecPNumber[3]~3_combout\ $ (\DisplayDriver|r_DecPNumber[1]~1_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[2]~2_combout\ & (!\DisplayDriver|r_DecPNumber[3]~3_combout\ & ((\DisplayDriver|r_DecPNumber[1]~1_combout\) # (\DisplayDriver|r_DecPNumber[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y8_N20
\DisplayDriver|DisplayDecoder1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux1~0_combout\ = (\DisplayDriver|r_IntPNumber[5]~2_combout\ & (!\DisplayDriver|r_IntPNumber[7]~4_combout\ & ((\DisplayDriver|r_IntPNumber[4]~1_combout\) # (!\DisplayDriver|r_IntPNumber[6]~3_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[5]~2_combout\ & (\DisplayDriver|r_IntPNumber[4]~1_combout\ & (\DisplayDriver|r_IntPNumber[6]~3_combout\ $ (!\DisplayDriver|r_IntPNumber[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[5]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[4]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[6]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[7]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y8_N14
\DisplayDriver|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux5~0_combout\ = (\DisplayDriver|r_Sel\(1) & (((\DisplayDriver|r_Sel\(0) & \DisplayDriver|DisplayDecoder1|Mux1~0_combout\)))) # (!\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|DisplayDecoder4|Mux1~0_combout\) # ((\DisplayDriver|r_Sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder4|Mux1~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|DisplayDecoder1|Mux1~0_combout\,
	combout => \DisplayDriver|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y8_N8
\DisplayDriver|DisplayDecoder3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux1~0_combout\ = (\DisplayDriver|r_DecPNumber[6]~6_combout\ & (\DisplayDriver|r_DecPNumber[4]~4_combout\ & (\DisplayDriver|r_DecPNumber[5]~5_combout\ $ (\DisplayDriver|r_DecPNumber[7]~7_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[6]~6_combout\ & (!\DisplayDriver|r_DecPNumber[7]~7_combout\ & ((\DisplayDriver|r_DecPNumber[5]~5_combout\) # (\DisplayDriver|r_DecPNumber[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[6]~6_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~5_combout\,
	datac => \DisplayDriver|r_DecPNumber[7]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[4]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y8_N18
\DisplayDriver|DisplayDecoder2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux1~0_combout\ = (\DisplayDriver|r_IntPNumber[2]~7_combout\ & (\DisplayDriver|r_IntPNumber[0]~5_combout\ & (\DisplayDriver|r_IntPNumber[1]~6_combout\ $ (\DisplayDriver|r_IntPNumber[3]~8_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[2]~7_combout\ & (!\DisplayDriver|r_IntPNumber[3]~8_combout\ & ((\DisplayDriver|r_IntPNumber[1]~6_combout\) # (\DisplayDriver|r_IntPNumber[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~7_combout\,
	datab => \DisplayDriver|r_IntPNumber[1]~6_combout\,
	datac => \DisplayDriver|r_IntPNumber[0]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y8_N22
\DisplayDriver|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux5~1_combout\ = (\DisplayDriver|Mux5~0_combout\ & (((\DisplayDriver|DisplayDecoder3|Mux1~0_combout\)) # (!\DisplayDriver|Mux4~0_combout\))) # (!\DisplayDriver|Mux5~0_combout\ & (\DisplayDriver|Mux4~0_combout\ & 
-- ((\DisplayDriver|DisplayDecoder2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|Mux5~0_combout\,
	datab => \DisplayDriver|Mux4~0_combout\,
	datac => \DisplayDriver|DisplayDecoder3|Mux1~0_combout\,
	datad => \DisplayDriver|DisplayDecoder2|Mux1~0_combout\,
	combout => \DisplayDriver|Mux5~1_combout\);

-- Location: LCCOMB_X19_Y8_N6
\DisplayDriver|DisplayDecoder3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder3|Mux0~0_combout\ = (\DisplayDriver|r_DecPNumber[4]~4_combout\ & ((\DisplayDriver|r_DecPNumber[7]~7_combout\) # (\DisplayDriver|r_DecPNumber[6]~6_combout\ $ (\DisplayDriver|r_DecPNumber[5]~5_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[4]~4_combout\ & ((\DisplayDriver|r_DecPNumber[5]~5_combout\) # (\DisplayDriver|r_DecPNumber[6]~6_combout\ $ (\DisplayDriver|r_DecPNumber[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[6]~6_combout\,
	datab => \DisplayDriver|r_DecPNumber[5]~5_combout\,
	datac => \DisplayDriver|r_DecPNumber[7]~7_combout\,
	datad => \DisplayDriver|r_DecPNumber[4]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder3|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y8_N4
\DisplayDriver|DisplayDecoder2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder2|Mux0~0_combout\ = (\DisplayDriver|r_IntPNumber[0]~5_combout\ & ((\DisplayDriver|r_IntPNumber[3]~8_combout\) # (\DisplayDriver|r_IntPNumber[2]~7_combout\ $ (\DisplayDriver|r_IntPNumber[1]~6_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[0]~5_combout\ & ((\DisplayDriver|r_IntPNumber[1]~6_combout\) # (\DisplayDriver|r_IntPNumber[2]~7_combout\ $ (\DisplayDriver|r_IntPNumber[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[2]~7_combout\,
	datab => \DisplayDriver|r_IntPNumber[1]~6_combout\,
	datac => \DisplayDriver|r_IntPNumber[0]~5_combout\,
	datad => \DisplayDriver|r_IntPNumber[3]~8_combout\,
	combout => \DisplayDriver|DisplayDecoder2|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y8_N26
\DisplayDriver|DisplayDecoder1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder1|Mux0~0_combout\ = (\DisplayDriver|r_IntPNumber[4]~1_combout\ & ((\DisplayDriver|r_IntPNumber[7]~4_combout\) # (\DisplayDriver|r_IntPNumber[5]~2_combout\ $ (\DisplayDriver|r_IntPNumber[6]~3_combout\)))) # 
-- (!\DisplayDriver|r_IntPNumber[4]~1_combout\ & ((\DisplayDriver|r_IntPNumber[5]~2_combout\) # (\DisplayDriver|r_IntPNumber[6]~3_combout\ $ (\DisplayDriver|r_IntPNumber[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_IntPNumber[5]~2_combout\,
	datab => \DisplayDriver|r_IntPNumber[4]~1_combout\,
	datac => \DisplayDriver|r_IntPNumber[6]~3_combout\,
	datad => \DisplayDriver|r_IntPNumber[7]~4_combout\,
	combout => \DisplayDriver|DisplayDecoder1|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y8_N4
\DisplayDriver|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux4~1_combout\ = (\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|r_Sel\(0) & ((!\DisplayDriver|DisplayDecoder1|Mux0~0_combout\))) # (!\DisplayDriver|r_Sel\(0) & (!\DisplayDriver|DisplayDecoder2|Mux0~0_combout\)))) # (!\DisplayDriver|r_Sel\(1) 
-- & (((\DisplayDriver|r_Sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder2|Mux0~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|DisplayDecoder1|Mux0~0_combout\,
	combout => \DisplayDriver|Mux4~1_combout\);

-- Location: LCCOMB_X21_Y8_N26
\DisplayDriver|DisplayDecoder4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|DisplayDecoder4|Mux0~0_combout\ = (\DisplayDriver|r_DecPNumber[0]~0_combout\ & ((\DisplayDriver|r_DecPNumber[3]~3_combout\) # (\DisplayDriver|r_DecPNumber[2]~2_combout\ $ (\DisplayDriver|r_DecPNumber[1]~1_combout\)))) # 
-- (!\DisplayDriver|r_DecPNumber[0]~0_combout\ & ((\DisplayDriver|r_DecPNumber[1]~1_combout\) # (\DisplayDriver|r_DecPNumber[3]~3_combout\ $ (\DisplayDriver|r_DecPNumber[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_DecPNumber[3]~3_combout\,
	datab => \DisplayDriver|r_DecPNumber[2]~2_combout\,
	datac => \DisplayDriver|r_DecPNumber[1]~1_combout\,
	datad => \DisplayDriver|r_DecPNumber[0]~0_combout\,
	combout => \DisplayDriver|DisplayDecoder4|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y8_N2
\DisplayDriver|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux4~2_combout\ = (\DisplayDriver|r_Sel\(1) & (((\DisplayDriver|Mux4~1_combout\)))) # (!\DisplayDriver|r_Sel\(1) & ((\DisplayDriver|Mux4~1_combout\ & (!\DisplayDriver|DisplayDecoder3|Mux0~0_combout\)) # (!\DisplayDriver|Mux4~1_combout\ & 
-- ((!\DisplayDriver|DisplayDecoder4|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|DisplayDecoder3|Mux0~0_combout\,
	datab => \DisplayDriver|r_Sel\(1),
	datac => \DisplayDriver|Mux4~1_combout\,
	datad => \DisplayDriver|DisplayDecoder4|Mux0~0_combout\,
	combout => \DisplayDriver|Mux4~2_combout\);

-- Location: LCCOMB_X19_Y7_N4
\DisplayDriver|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DisplayDriver|Mux0~1_combout\ = (!\DisplayDriver|r_Sel\(0) & \DisplayDriver|r_Sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DisplayDriver|r_Sel\(0),
	datad => \DisplayDriver|r_Sel\(1),
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


