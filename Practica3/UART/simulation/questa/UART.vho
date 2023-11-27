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

-- DATE "11/25/2023 14:49:42"

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

ENTITY 	UART IS
    PORT (
	i_TX_Data : IN std_logic_vector(7 DOWNTO 0);
	i_Parity_Sel : IN std_logic_vector(1 DOWNTO 0);
	i_CLK : IN std_logic;
	i_TX_Start : IN std_logic;
	o_Busy : BUFFER std_logic;
	o_TX_Done : BUFFER std_logic;
	o_TX_Serial : BUFFER std_logic
	);
END UART;

-- Design Ports Information
-- o_Busy	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_TX_Done	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_TX_Serial	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Parity_Sel[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_Parity_Sel[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Start	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[6]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[5]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[4]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[7]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[2]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_TX_Data[3]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_TX_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_Parity_Sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_TX_Start : std_logic;
SIGNAL ww_o_Busy : std_logic;
SIGNAL ww_o_TX_Done : std_logic;
SIGNAL ww_o_TX_Serial : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_Busy~output_o\ : std_logic;
SIGNAL \o_TX_Done~output_o\ : std_logic;
SIGNAL \o_TX_Serial~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_Parity_Sel[1]~input_o\ : std_logic;
SIGNAL \r_CLK_Count[0]~10_combout\ : std_logic;
SIGNAL \i_TX_Start~input_o\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \r_CLK_Count[6]~24\ : std_logic;
SIGNAL \r_CLK_Count[7]~25_combout\ : std_logic;
SIGNAL \r_CLK_Count[0]~9_combout\ : std_logic;
SIGNAL \r_CLK_Count[7]~26\ : std_logic;
SIGNAL \r_CLK_Count[8]~27_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \r_SM_Main.s_TX_Stop_Bit~q\ : std_logic;
SIGNAL \r_SM_Main~8_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Cleanup~q\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Idle~q\ : std_logic;
SIGNAL \r_CLK_Count[0]~20_combout\ : std_logic;
SIGNAL \r_CLK_Count[0]~11\ : std_logic;
SIGNAL \r_CLK_Count[1]~12_combout\ : std_logic;
SIGNAL \r_CLK_Count[1]~13\ : std_logic;
SIGNAL \r_CLK_Count[2]~14_combout\ : std_logic;
SIGNAL \r_CLK_Count[2]~15\ : std_logic;
SIGNAL \r_CLK_Count[3]~16_combout\ : std_logic;
SIGNAL \r_CLK_Count[3]~17\ : std_logic;
SIGNAL \r_CLK_Count[4]~18_combout\ : std_logic;
SIGNAL \r_CLK_Count[4]~19\ : std_logic;
SIGNAL \r_CLK_Count[5]~21_combout\ : std_logic;
SIGNAL \r_CLK_Count[5]~22\ : std_logic;
SIGNAL \r_CLK_Count[6]~23_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_TX_Start_Bit~q\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \r_SM_Main.s_TX_Data_Bits~q\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \r_SM_Main.s_Parity_Check~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \o_Busy~reg0_q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \r_TX_Done~q\ : std_logic;
SIGNAL \i_Parity_Sel[0]~input_o\ : std_logic;
SIGNAL \i_TX_Data[2]~input_o\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \i_TX_Data[0]~input_o\ : std_logic;
SIGNAL \r_TX_Data[0]~feeder_combout\ : std_logic;
SIGNAL \i_TX_Data[3]~input_o\ : std_logic;
SIGNAL \i_TX_Data[1]~input_o\ : std_logic;
SIGNAL \r_Parity_Value~0_combout\ : std_logic;
SIGNAL \i_TX_Data[4]~input_o\ : std_logic;
SIGNAL \i_TX_Data[6]~input_o\ : std_logic;
SIGNAL \i_TX_Data[5]~input_o\ : std_logic;
SIGNAL \i_TX_Data[7]~input_o\ : std_logic;
SIGNAL \r_Parity_Value~1_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \o_TX_Serial~reg0_q\ : std_logic;
SIGNAL r_Bit_Index : std_logic_vector(2 DOWNTO 0);
SIGNAL r_CLK_Count : std_logic_vector(8 DOWNTO 0);
SIGNAL r_TX_Data : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_TX_Data <= i_TX_Data;
ww_i_Parity_Sel <= i_Parity_Sel;
ww_i_CLK <= i_CLK;
ww_i_TX_Start <= i_TX_Start;
o_Busy <= ww_o_Busy;
o_TX_Done <= ww_o_TX_Done;
o_TX_Serial <= ww_o_TX_Serial;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y0_N2
\o_Busy~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Busy~reg0_q\,
	devoe => ww_devoe,
	o => \o_Busy~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\o_TX_Done~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r_TX_Done~q\,
	devoe => ww_devoe,
	o => \o_TX_Done~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\o_TX_Serial~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_TX_Serial~reg0_q\,
	devoe => ww_devoe,
	o => \o_TX_Serial~output_o\);

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

-- Location: IOIBUF_X0_Y5_N15
\i_Parity_Sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Parity_Sel(1),
	o => \i_Parity_Sel[1]~input_o\);

-- Location: LCCOMB_X7_Y5_N8
\r_CLK_Count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[0]~10_combout\ = r_CLK_Count(0) $ (VCC)
-- \r_CLK_Count[0]~11\ = CARRY(r_CLK_Count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(0),
	datad => VCC,
	combout => \r_CLK_Count[0]~10_combout\,
	cout => \r_CLK_Count[0]~11\);

-- Location: IOIBUF_X5_Y0_N15
\i_TX_Start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Start,
	o => \i_TX_Start~input_o\);

-- Location: LCCOMB_X6_Y5_N4
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\LessThan1~2_combout\ & ((\r_SM_Main.s_TX_Stop_Bit~q\) # ((\r_SM_Main.s_Parity_Check~q\ & \i_Parity_Sel[1]~input_o\)))) # (!\LessThan1~2_combout\ & (\r_SM_Main.s_Parity_Check~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Parity_Check~q\,
	datab => \r_SM_Main.s_TX_Stop_Bit~q\,
	datac => \i_Parity_Sel[1]~input_o\,
	datad => \LessThan1~2_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X7_Y5_N20
\r_CLK_Count[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[6]~23_combout\ = (r_CLK_Count(6) & (\r_CLK_Count[5]~22\ $ (GND))) # (!r_CLK_Count(6) & (!\r_CLK_Count[5]~22\ & VCC))
-- \r_CLK_Count[6]~24\ = CARRY((r_CLK_Count(6) & !\r_CLK_Count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(6),
	datad => VCC,
	cin => \r_CLK_Count[5]~22\,
	combout => \r_CLK_Count[6]~23_combout\,
	cout => \r_CLK_Count[6]~24\);

-- Location: LCCOMB_X7_Y5_N22
\r_CLK_Count[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[7]~25_combout\ = (r_CLK_Count(7) & (!\r_CLK_Count[6]~24\)) # (!r_CLK_Count(7) & ((\r_CLK_Count[6]~24\) # (GND)))
-- \r_CLK_Count[7]~26\ = CARRY((!\r_CLK_Count[6]~24\) # (!r_CLK_Count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(7),
	datad => VCC,
	cin => \r_CLK_Count[6]~24\,
	combout => \r_CLK_Count[7]~25_combout\,
	cout => \r_CLK_Count[7]~26\);

-- Location: LCCOMB_X7_Y5_N6
\r_CLK_Count[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[0]~9_combout\ = (!\r_SM_Main.s_Cleanup~q\ & ((!\r_SM_Main.s_Parity_Check~q\) # (!\i_Parity_Sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_SM_Main.s_Cleanup~q\,
	datac => \i_Parity_Sel[1]~input_o\,
	datad => \r_SM_Main.s_Parity_Check~q\,
	combout => \r_CLK_Count[0]~9_combout\);

-- Location: FF_X7_Y5_N23
\r_CLK_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[7]~25_combout\,
	sclr => \r_CLK_Count[0]~20_combout\,
	ena => \r_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(7));

-- Location: LCCOMB_X7_Y5_N24
\r_CLK_Count[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[8]~27_combout\ = \r_CLK_Count[7]~26\ $ (!r_CLK_Count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_CLK_Count(8),
	cin => \r_CLK_Count[7]~26\,
	combout => \r_CLK_Count[8]~27_combout\);

-- Location: FF_X7_Y5_N25
\r_CLK_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[8]~27_combout\,
	sclr => \r_CLK_Count[0]~20_combout\,
	ena => \r_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(8));

-- Location: LCCOMB_X7_Y5_N30
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!r_CLK_Count(6) & ((!r_CLK_Count(4)) # (!r_CLK_Count(5))))) # (!r_CLK_Count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(5),
	datab => r_CLK_Count(4),
	datac => r_CLK_Count(7),
	datad => r_CLK_Count(6),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X7_Y5_N0
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!r_CLK_Count(1) & (!r_CLK_Count(0) & (!r_CLK_Count(3) & !r_CLK_Count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(1),
	datab => r_CLK_Count(0),
	datac => r_CLK_Count(3),
	datad => r_CLK_Count(2),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X7_Y5_N26
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (r_CLK_Count(8) & (!\LessThan1~0_combout\ & ((r_CLK_Count(6)) # (!\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(6),
	datab => r_CLK_Count(8),
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X5_Y5_N20
\Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\r_SM_Main.s_TX_Data_Bits~q\ & ((r_Bit_Index(0) $ (\Selector14~0_combout\)))) # (!\r_SM_Main.s_TX_Data_Bits~q\ & (\r_SM_Main.s_Idle~q\ & (r_Bit_Index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \r_SM_Main.s_TX_Data_Bits~q\,
	datac => r_Bit_Index(0),
	datad => \Selector14~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: FF_X5_Y5_N21
\r_Bit_Index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(0));

-- Location: LCCOMB_X5_Y5_N22
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\r_SM_Main.s_TX_Data_Bits~q\ & (r_Bit_Index(0))) # (!\r_SM_Main.s_TX_Data_Bits~q\ & ((\r_SM_Main.s_Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => \r_SM_Main.s_TX_Data_Bits~q\,
	datad => \r_SM_Main.s_Idle~q\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X5_Y5_N24
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\r_SM_Main.s_TX_Data_Bits~q\ & (r_Bit_Index(1) $ (((\Selector13~0_combout\ & !\LessThan1~2_combout\))))) # (!\r_SM_Main.s_TX_Data_Bits~q\ & (\Selector13~0_combout\ & (r_Bit_Index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_TX_Data_Bits~q\,
	datab => \Selector13~0_combout\,
	datac => r_Bit_Index(1),
	datad => \LessThan1~2_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X5_Y5_N25
\r_Bit_Index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(1));

-- Location: LCCOMB_X6_Y5_N6
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (r_Bit_Index(0) & (r_Bit_Index(1) & !\LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datad => \LessThan1~2_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X6_Y5_N20
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\r_SM_Main.s_TX_Data_Bits~q\ & ((r_Bit_Index(2) $ (\Selector12~0_combout\)))) # (!\r_SM_Main.s_TX_Data_Bits~q\ & (\r_SM_Main.s_Idle~q\ & (r_Bit_Index(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \r_SM_Main.s_TX_Data_Bits~q\,
	datac => r_Bit_Index(2),
	datad => \Selector12~0_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X6_Y5_N21
\r_Bit_Index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_Bit_Index(2));

-- Location: LCCOMB_X6_Y5_N16
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (r_Bit_Index(0) & (r_Bit_Index(1) & (r_Bit_Index(2) & !\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(0),
	datab => r_Bit_Index(1),
	datac => r_Bit_Index(2),
	datad => \LessThan1~2_combout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X6_Y5_N10
\Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\Selector20~0_combout\) # ((\i_Parity_Sel[1]~input_o\ & (\r_SM_Main.s_TX_Data_Bits~q\ & \Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datab => \r_SM_Main.s_TX_Data_Bits~q\,
	datac => \Selector20~0_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector20~1_combout\);

-- Location: FF_X6_Y5_N11
\r_SM_Main.s_TX_Stop_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_TX_Stop_Bit~q\);

-- Location: LCCOMB_X7_Y5_N28
\r_SM_Main~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_SM_Main~8_combout\ = (\r_SM_Main.s_TX_Stop_Bit~q\ & !\LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_TX_Stop_Bit~q\,
	datad => \LessThan1~2_combout\,
	combout => \r_SM_Main~8_combout\);

-- Location: FF_X7_Y5_N29
\r_SM_Main.s_Cleanup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_SM_Main~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Cleanup~q\);

-- Location: LCCOMB_X6_Y5_N2
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\r_SM_Main.s_Cleanup~q\ & ((\i_TX_Start~input_o\) # (\r_SM_Main.s_Idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_TX_Start~input_o\,
	datac => \r_SM_Main.s_Idle~q\,
	datad => \r_SM_Main.s_Cleanup~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X6_Y5_N3
\r_SM_Main.s_Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Idle~q\);

-- Location: LCCOMB_X7_Y5_N4
\r_CLK_Count[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[0]~20_combout\ = (!\LessThan1~2_combout\) # (!\r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datad => \LessThan1~2_combout\,
	combout => \r_CLK_Count[0]~20_combout\);

-- Location: FF_X7_Y5_N9
\r_CLK_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[0]~10_combout\,
	sclr => \r_CLK_Count[0]~20_combout\,
	ena => \r_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(0));

-- Location: LCCOMB_X7_Y5_N10
\r_CLK_Count[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[1]~12_combout\ = (r_CLK_Count(1) & (!\r_CLK_Count[0]~11\)) # (!r_CLK_Count(1) & ((\r_CLK_Count[0]~11\) # (GND)))
-- \r_CLK_Count[1]~13\ = CARRY((!\r_CLK_Count[0]~11\) # (!r_CLK_Count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(1),
	datad => VCC,
	cin => \r_CLK_Count[0]~11\,
	combout => \r_CLK_Count[1]~12_combout\,
	cout => \r_CLK_Count[1]~13\);

-- Location: FF_X7_Y5_N11
\r_CLK_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[1]~12_combout\,
	sclr => \r_CLK_Count[0]~20_combout\,
	ena => \r_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(1));

-- Location: LCCOMB_X7_Y5_N12
\r_CLK_Count[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[2]~14_combout\ = (r_CLK_Count(2) & (\r_CLK_Count[1]~13\ $ (GND))) # (!r_CLK_Count(2) & (!\r_CLK_Count[1]~13\ & VCC))
-- \r_CLK_Count[2]~15\ = CARRY((r_CLK_Count(2) & !\r_CLK_Count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(2),
	datad => VCC,
	cin => \r_CLK_Count[1]~13\,
	combout => \r_CLK_Count[2]~14_combout\,
	cout => \r_CLK_Count[2]~15\);

-- Location: FF_X7_Y5_N13
\r_CLK_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[2]~14_combout\,
	sclr => \r_CLK_Count[0]~20_combout\,
	ena => \r_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(2));

-- Location: LCCOMB_X7_Y5_N14
\r_CLK_Count[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[3]~16_combout\ = (r_CLK_Count(3) & (!\r_CLK_Count[2]~15\)) # (!r_CLK_Count(3) & ((\r_CLK_Count[2]~15\) # (GND)))
-- \r_CLK_Count[3]~17\ = CARRY((!\r_CLK_Count[2]~15\) # (!r_CLK_Count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(3),
	datad => VCC,
	cin => \r_CLK_Count[2]~15\,
	combout => \r_CLK_Count[3]~16_combout\,
	cout => \r_CLK_Count[3]~17\);

-- Location: FF_X7_Y5_N15
\r_CLK_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[3]~16_combout\,
	sclr => \r_CLK_Count[0]~20_combout\,
	ena => \r_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(3));

-- Location: LCCOMB_X7_Y5_N16
\r_CLK_Count[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[4]~18_combout\ = (r_CLK_Count(4) & (\r_CLK_Count[3]~17\ $ (GND))) # (!r_CLK_Count(4) & (!\r_CLK_Count[3]~17\ & VCC))
-- \r_CLK_Count[4]~19\ = CARRY((r_CLK_Count(4) & !\r_CLK_Count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(4),
	datad => VCC,
	cin => \r_CLK_Count[3]~17\,
	combout => \r_CLK_Count[4]~18_combout\,
	cout => \r_CLK_Count[4]~19\);

-- Location: FF_X7_Y5_N17
\r_CLK_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[4]~18_combout\,
	sclr => \r_CLK_Count[0]~20_combout\,
	ena => \r_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(4));

-- Location: LCCOMB_X7_Y5_N18
\r_CLK_Count[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_CLK_Count[5]~21_combout\ = (r_CLK_Count(5) & (!\r_CLK_Count[4]~19\)) # (!r_CLK_Count(5) & ((\r_CLK_Count[4]~19\) # (GND)))
-- \r_CLK_Count[5]~22\ = CARRY((!\r_CLK_Count[4]~19\) # (!r_CLK_Count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_CLK_Count(5),
	datad => VCC,
	cin => \r_CLK_Count[4]~19\,
	combout => \r_CLK_Count[5]~21_combout\,
	cout => \r_CLK_Count[5]~22\);

-- Location: FF_X7_Y5_N19
\r_CLK_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[5]~21_combout\,
	sclr => \r_CLK_Count[0]~20_combout\,
	ena => \r_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(5));

-- Location: FF_X7_Y5_N21
\r_CLK_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_CLK_Count[6]~23_combout\,
	sclr => \r_CLK_Count[0]~20_combout\,
	ena => \r_CLK_Count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_CLK_Count(6));

-- Location: LCCOMB_X7_Y5_N2
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ((\LessThan1~0_combout\) # ((!r_CLK_Count(6) & \LessThan1~1_combout\))) # (!r_CLK_Count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_CLK_Count(6),
	datab => r_CLK_Count(8),
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X6_Y5_N24
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\r_SM_Main.s_Idle~q\ & (((\r_SM_Main.s_TX_Start_Bit~q\ & \LessThan1~2_combout\)))) # (!\r_SM_Main.s_Idle~q\ & ((\i_TX_Start~input_o\) # ((\r_SM_Main.s_TX_Start_Bit~q\ & \LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \i_TX_Start~input_o\,
	datac => \r_SM_Main.s_TX_Start_Bit~q\,
	datad => \LessThan1~2_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X6_Y5_N25
\r_SM_Main.s_TX_Start_Bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_TX_Start_Bit~q\);

-- Location: LCCOMB_X6_Y5_N14
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\LessThan1~2_combout\ & (((\r_SM_Main.s_TX_Data_Bits~q\ & !\Selector19~0_combout\)))) # (!\LessThan1~2_combout\ & ((\r_SM_Main.s_TX_Start_Bit~q\) # ((\r_SM_Main.s_TX_Data_Bits~q\ & !\Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \r_SM_Main.s_TX_Start_Bit~q\,
	datac => \r_SM_Main.s_TX_Data_Bits~q\,
	datad => \Selector19~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X6_Y5_N15
\r_SM_Main.s_TX_Data_Bits\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_TX_Data_Bits~q\);

-- Location: LCCOMB_X6_Y5_N22
\Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\r_SM_Main.s_Parity_Check~q\ & (!\i_Parity_Sel[1]~input_o\ & \LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Parity_Check~q\,
	datab => \i_Parity_Sel[1]~input_o\,
	datad => \LessThan1~2_combout\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X6_Y5_N12
\Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\Selector19~1_combout\) # ((!\i_Parity_Sel[1]~input_o\ & (\r_SM_Main.s_TX_Data_Bits~q\ & \Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datab => \r_SM_Main.s_TX_Data_Bits~q\,
	datac => \Selector19~1_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~2_combout\);

-- Location: FF_X6_Y5_N13
\r_SM_Main.s_Parity_Check\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector19~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_SM_Main.s_Parity_Check~q\);

-- Location: LCCOMB_X6_Y5_N8
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\o_Busy~reg0_q\ & ((\r_SM_Main.s_Parity_Check~q\) # ((\r_SM_Main.s_TX_Data_Bits~q\) # (\r_SM_Main.s_TX_Stop_Bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Parity_Check~q\,
	datab => \r_SM_Main.s_TX_Data_Bits~q\,
	datac => \o_Busy~reg0_q\,
	datad => \r_SM_Main.s_TX_Stop_Bit~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X6_Y5_N28
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # (\r_SM_Main.s_TX_Start_Bit~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector0~0_combout\,
	datad => \r_SM_Main.s_TX_Start_Bit~q\,
	combout => \Selector0~1_combout\);

-- Location: FF_X6_Y5_N29
\o_Busy~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_Busy~reg0_q\);

-- Location: LCCOMB_X6_Y5_N26
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\r_SM_Main.s_TX_Stop_Bit~q\) # ((\r_SM_Main.s_TX_Start_Bit~q\) # ((\r_SM_Main.s_TX_Data_Bits~q\) # (\r_SM_Main.s_Parity_Check~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_TX_Stop_Bit~q\,
	datab => \r_SM_Main.s_TX_Start_Bit~q\,
	datac => \r_SM_Main.s_TX_Data_Bits~q\,
	datad => \r_SM_Main.s_Parity_Check~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X6_Y5_N30
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\r_SM_Main.s_Cleanup~q\) # ((\r_SM_Main~8_combout\) # ((\Selector2~0_combout\ & \r_TX_Done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \r_SM_Main.s_Cleanup~q\,
	datac => \r_TX_Done~q\,
	datad => \r_SM_Main~8_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X6_Y5_N31
r_TX_Done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_TX_Done~q\);

-- Location: IOIBUF_X0_Y9_N8
\i_Parity_Sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_Parity_Sel(0),
	o => \i_Parity_Sel[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\i_TX_Data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(2),
	o => \i_TX_Data[2]~input_o\);

-- Location: LCCOMB_X5_Y5_N30
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\i_TX_Start~input_o\ & !\r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_TX_Start~input_o\,
	datad => \r_SM_Main.s_Idle~q\,
	combout => \Selector17~1_combout\);

-- Location: FF_X5_Y5_N23
\r_TX_Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[2]~input_o\,
	sload => VCC,
	ena => \Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(2));

-- Location: IOIBUF_X5_Y0_N22
\i_TX_Data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(0),
	o => \i_TX_Data[0]~input_o\);

-- Location: LCCOMB_X5_Y5_N26
\r_TX_Data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_TX_Data[0]~feeder_combout\ = \i_TX_Data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_TX_Data[0]~input_o\,
	combout => \r_TX_Data[0]~feeder_combout\);

-- Location: FF_X5_Y5_N27
\r_TX_Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \r_TX_Data[0]~feeder_combout\,
	ena => \Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(0));

-- Location: IOIBUF_X13_Y0_N15
\i_TX_Data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(3),
	o => \i_TX_Data[3]~input_o\);

-- Location: FF_X5_Y5_N9
\r_TX_Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[3]~input_o\,
	sload => VCC,
	ena => \Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(3));

-- Location: IOIBUF_X1_Y0_N15
\i_TX_Data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(1),
	o => \i_TX_Data[1]~input_o\);

-- Location: FF_X5_Y5_N29
\r_TX_Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[1]~input_o\,
	sload => VCC,
	ena => \Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(1));

-- Location: LCCOMB_X5_Y5_N8
\r_Parity_Value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Parity_Value~0_combout\ = r_TX_Data(2) $ (r_TX_Data(0) $ (r_TX_Data(3) $ (r_TX_Data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Data(2),
	datab => r_TX_Data(0),
	datac => r_TX_Data(3),
	datad => r_TX_Data(1),
	combout => \r_Parity_Value~0_combout\);

-- Location: IOIBUF_X0_Y8_N15
\i_TX_Data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(4),
	o => \i_TX_Data[4]~input_o\);

-- Location: FF_X5_Y5_N15
\r_TX_Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[4]~input_o\,
	sload => VCC,
	ena => \Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(4));

-- Location: IOIBUF_X0_Y7_N1
\i_TX_Data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(6),
	o => \i_TX_Data[6]~input_o\);

-- Location: FF_X5_Y5_N7
\r_TX_Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[6]~input_o\,
	sload => VCC,
	ena => \Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(6));

-- Location: IOIBUF_X0_Y6_N22
\i_TX_Data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(5),
	o => \i_TX_Data[5]~input_o\);

-- Location: FF_X5_Y5_N11
\r_TX_Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[5]~input_o\,
	sload => VCC,
	ena => \Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(5));

-- Location: IOIBUF_X1_Y0_N22
\i_TX_Data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_TX_Data(7),
	o => \i_TX_Data[7]~input_o\);

-- Location: FF_X5_Y5_N31
\r_TX_Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_TX_Data[7]~input_o\,
	sload => VCC,
	ena => \Selector17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_TX_Data(7));

-- Location: LCCOMB_X5_Y5_N10
\r_Parity_Value~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_Parity_Value~1_combout\ = r_TX_Data(4) $ (r_TX_Data(6) $ (r_TX_Data(5) $ (r_TX_Data(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Data(4),
	datab => r_TX_Data(6),
	datac => r_TX_Data(5),
	datad => r_TX_Data(7),
	combout => \r_Parity_Value~1_combout\);

-- Location: LCCOMB_X5_Y5_N14
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = \i_Parity_Sel[0]~input_o\ $ (\r_Parity_Value~0_combout\ $ (\r_Parity_Value~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[0]~input_o\,
	datab => \r_Parity_Value~0_combout\,
	datad => \r_Parity_Value~1_combout\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X5_Y5_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (r_Bit_Index(1) & (((r_Bit_Index(0))))) # (!r_Bit_Index(1) & ((r_Bit_Index(0) & (r_TX_Data(5))) # (!r_Bit_Index(0) & ((r_TX_Data(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Data(5),
	datab => r_Bit_Index(1),
	datac => r_TX_Data(4),
	datad => r_Bit_Index(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X5_Y5_N6
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (r_Bit_Index(1) & ((\Mux0~0_combout\ & (r_TX_Data(7))) # (!\Mux0~0_combout\ & ((r_TX_Data(6)))))) # (!r_Bit_Index(1) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(1),
	datab => r_TX_Data(7),
	datac => r_TX_Data(6),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X5_Y5_N4
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ((\r_SM_Main.s_TX_Data_Bits~q\ & (r_Bit_Index(2) & \Mux0~1_combout\))) # (!\r_SM_Main.s_Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_SM_Main.s_Idle~q\,
	datab => \r_SM_Main.s_TX_Data_Bits~q\,
	datac => r_Bit_Index(2),
	datad => \Mux0~1_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X5_Y5_N28
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (r_Bit_Index(1) & (((r_Bit_Index(0))))) # (!r_Bit_Index(1) & ((r_Bit_Index(0) & ((r_TX_Data(1)))) # (!r_Bit_Index(0) & (r_TX_Data(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Data(0),
	datab => r_Bit_Index(1),
	datac => r_TX_Data(1),
	datad => r_Bit_Index(0),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X5_Y5_N18
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (r_Bit_Index(1) & ((\Mux0~2_combout\ & (r_TX_Data(3))) # (!\Mux0~2_combout\ & ((r_TX_Data(2)))))) # (!r_Bit_Index(1) & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_TX_Data(3),
	datab => r_Bit_Index(1),
	datac => r_TX_Data(2),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X5_Y5_N16
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\r_SM_Main.s_TX_Stop_Bit~q\) # ((!r_Bit_Index(2) & (\r_SM_Main.s_TX_Data_Bits~q\ & \Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_Bit_Index(2),
	datab => \r_SM_Main.s_TX_Stop_Bit~q\,
	datac => \r_SM_Main.s_TX_Data_Bits~q\,
	datad => \Mux0~3_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X5_Y5_N2
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~0_combout\) # ((\Selector1~1_combout\) # ((\o_TX_Serial~reg0_q\ & !\r_CLK_Count[0]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_TX_Serial~reg0_q\,
	datab => \Selector1~0_combout\,
	datac => \r_CLK_Count[0]~9_combout\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X5_Y5_N0
\Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\Selector1~2_combout\) # ((!\i_Parity_Sel[1]~input_o\ & (\r_SM_Main.s_Parity_Check~q\ & \Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_Parity_Sel[1]~input_o\,
	datab => \r_SM_Main.s_Parity_Check~q\,
	datac => \Selector1~3_combout\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~4_combout\);

-- Location: FF_X5_Y5_N1
\o_TX_Serial~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \Selector1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_TX_Serial~reg0_q\);

ww_o_Busy <= \o_Busy~output_o\;

ww_o_TX_Done <= \o_TX_Done~output_o\;

ww_o_TX_Serial <= \o_TX_Serial~output_o\;
END structure;


