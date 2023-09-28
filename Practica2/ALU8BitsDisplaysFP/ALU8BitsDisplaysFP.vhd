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
        o_DispPoint : out std_logic
    );
end entity ALU8BitsDisplaysFP;

architecture rtl of ALU8BitsDisplaysFP is
    
    component DisplayDriverALU4_4FP is
        port (
            i_CLK       : in  std_logic;
            i_Number    : in  std_logic_vector(7 downto 0);
            o_Displays  : out std_logic_vector(3 downto 0);
            o_Segments  : out std_logic_vector(6 downto 0);
            o_DispPoint : out std_logic
        );
    end component DisplayDriverALU4_4FP;

    signal r_Result : std_logic_vector(7 downto 0);

begin
    
    DisplayDriver : DisplayDriverALU4_4FP port map(
        i_CLK       => i_CLK,
        i_Number    => r_Result,
        o_Displays  => o_Displays,
        o_Segments  => o_Segments,
        o_DispPoint => o_DispPoint
    );

    with i_OpSel select
        r_Result <= i_NumA + i_NumB when "00",
                    i_NumA - i_NumB when "10",
                    i_NumA(3 downto 0) * i_NumB(3 downto 0) when others;
    
end architecture rtl;