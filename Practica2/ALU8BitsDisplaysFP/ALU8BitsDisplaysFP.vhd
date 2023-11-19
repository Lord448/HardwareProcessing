library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use IEEE.numeric_std.all;

entity ALU8BitsDisplaysFP is
    generic(
        g_PSC_COUNTS : integer := 100000
    );
    port (
        i_CLK        : in  std_logic;
        i_NumA       : in  signed(7 downto 0);
        i_NumB       : in  signed(7 downto 0);
        i_FixedPoint : in  std_logic_vector(3 downto 0);
        i_OpSel      : in  std_logic_vector(1 downto 0);
        o_Displays   : out std_logic_vector(3 downto 0);
        o_Segments   : out std_logic_vector(6 downto 0);
        o_DispPoint  : out std_logic;
        o_NumSign    : out std_logic
    );
end entity ALU8BitsDisplaysFP;

architecture rtl of ALU8BitsDisplaysFP is
    
    component DisplayDriverALU4_4FP is
        generic(
            g_PSC_COUNTS : integer := 100000
        );
        port (
            i_CLK        : in  std_logic;
            i_OpSel      : in  std_logic_vector(1 downto 0);
            i_Number     : in  std_logic_vector(15 downto 0);
            i_FixedPoint : in  std_logic_vector(3 downto 0);
            o_Displays   : out std_logic_vector(3 downto 0);
            o_Segments   : out std_logic_vector(6 downto 0);
            o_DispPoint  : out std_logic;
            o_NumSign    : out std_logic
        );
    end component DisplayDriverALU4_4FP;

    type t_Operations is (t_Sume, t_Subs, t_Mult);

    signal r_Op         : t_Operations;
    signal r_Result     : signed(15 downto 0);
    signal r_AdtA       : signed(15 downto 0) := (others => '0');
    signal r_AdtB       : signed(15 downto 0) := (others => '0');

begin

    DisplayDriver : DisplayDriverALU4_4FP
    generic map (
        g_PSC_COUNTS => g_PSC_COUNTS
    )
    port map(
        i_CLK        => i_CLK,
        i_OpSel      => i_OpSel,
        i_Number     => std_logic_vector(r_Result),
        i_FixedPoint => i_FixedPoint,
        o_Displays   => o_Displays,
        o_Segments   => o_Segments,
        o_DispPoint  => o_DispPoint,
        o_NumSign    => o_NumSign
    );

    with i_OpSel select r_Op <=
        t_Sume when "00",
        t_Subs when "01",
        t_Mult when others;
    
    --A
    r_AdtA(7 downto 0) <= i_NumA;

    with i_NumA(7) select r_AdtA(15 downto 8) <=
        (others => '1') when '1',
        (others => '0') when others;

    --B
    r_AdtB(7 downto 0) <= i_NumB;

    with i_NumB(7) select r_AdtB(15 downto 8) <=
        (others => '1') when '1',
        (others => '0') when others;
                
    --Operations
    with r_Op select r_Result <=
        (r_AdtA + r_AdtB) when t_Sume,
        (r_AdtA - r_AdtB) when t_Subs,
        (r_AdtA(7 downto 0) * r_AdtB(7 downto 0)) when others;
        
end architecture rtl;