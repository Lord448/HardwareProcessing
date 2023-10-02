library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity ALU8BitsDisplaysFP is
    port (
        i_CLK       : in  std_logic;
        i_NumA      : in  std_logic_vector(7 downto 0);
        i_NumB      : in  std_logic_vector(7 downto 0);
        i_OpSel     : in  std_logic_vector(1 downto 0);
        o_Displays  : out std_logic_vector(3 downto 0);
        o_Segments  : out std_logic_vector(6 downto 0);
        o_DispPoint : out std_logic;
        o_NumSign   : out std_logic
    );
end entity ALU8BitsDisplaysFP;

architecture rtl of ALU8BitsDisplaysFP is
    
    component DisplayDriverALU4_4FP is
        port (
            i_CLK       : in  std_logic;
            i_OpSel     : in  std_logic_vector(1 downto 0);
            i_Number    : in  std_logic_vector(15 downto 0); --Number with fixed point in the middle (0x00.00)
            o_Displays  : out std_logic_vector(3 downto 0);
            o_Segments  : out std_logic_vector(6 downto 0);
            o_DispPoint : out std_logic;
            o_NumSign   : out std_logic
        );
    end component DisplayDriverALU4_4FP;

    signal r_Result     : std_logic_vector(15 downto 0);
    signal r_MultResult : std_logic_vector(15 downto 0);
    signal r_NumA       : std_logic_vector(7 downto 0);
    signal r_NumB       : std_logic_vector(7 downto 0);
    signal r_MultOp     : std_logic;

begin

    DisplayDriver : DisplayDriverALU4_4FP port map(
        i_CLK       => i_CLK,
        i_OpSel     => i_OpSel,
        i_Number    => r_Result,
        o_Displays  => o_Displays,
        o_Segments  => o_Segments,
        o_DispPoint => o_DispPoint,
        o_NumSign   => o_NumSign
    );
	 
    r_MultResult <= i_NumA * i_NumB;
	 
    --Considering 8 bit register when not multiplication
    with i_OpSel select r_Result(7 downto 0) <=
        i_NumA + i_NumB when "00",
        i_NumA - i_NumB when "01",
        r_MultResult(7 downto 0) when others;
    with i_OpSel select r_Result(15 downto 8) <=
        r_MultResult(15 downto 8) when "10",
        r_MultResult(15 downto 8) when "11",
        (others => '0') when others;
    
end architecture rtl;