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
            i_Number     : in  std_logic_vector(15 downto 0); --Number with fixed point in the middle (0x00.00)
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
    signal r_Mult       : signed(15 downto 0);
    signal r_Sume       : signed(11 downto 0);
    signal r_Subs       : signed(11 downto 0);
    signal r_AdtA       : signed(11 downto 0) := (others => '0');
    signal r_AdtB       : signed(11 downto 0) := (others => '0');

    signal r_AdtAA      : signed(15 downto 0) := (others => '0');
    signal r_AdtBB      : signed(15 downto 0) := (others => '0');
    signal r_AdtMult    : signed(15 downto 0) := (others => '0');
    signal r_AdtSume    : signed(15 downto 0) := (others => '0');
    signal r_AdtSubs    : signed(15 downto 0) := (others => '0');
    signal r_ShiftedRes : std_logic_vector(15 downto 0) := (others => '0');
    

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
	
    r_AdtA(7 downto 0) <= i_NumA;

    with r_Op select r_AdtB(7 downto 0) <=
        ((not i_NumB)+1) when t_Subs,
        i_NumB when others;

    r_Sume <= r_AdtA + r_AdtB;

    r_Subs <= r_AdtA + r_AdtB;

    r_Mult <= i_NumA * i_NumB;

    --Second region
    with i_NumA(7) select r_AdtAA(15 downto 8) <=
        (others => '1') when '1',
        (others => '0') when others;

    r_AdtAA(7 downto 0) <= i_NumA;
    r_AdtBB(7 downto 0) <= i_NumB;

    with r_Op select r_Result <=
        r_AdtAA + r_AdtBB when t_Sume,
        r_AdtAA + ((not r_AdtBB)+1) when t_Subs,
        r_AdtAA(7 downto 0) * r_AdtBB(7 downto 0) when others;
	 
    --with i_OpSel select r_Result(15 downto 12) <=
    --    r_Sume(11 downto 8) when "00",    --Sume
    --    r_Subs(11 downto 8) when "01",    --Substraction
    --    r_Mult(15 downto 12) when others; --Multiplication
    --with i_OpSel select r_Result(11 downto 8) <=
    --    r_Sume(7 downto 4) when "00",     --Sume
    --    r_Subs(7 downto 4) when "01",     --Substraction
    --    r_Mult(11 downto 8) when others;  --Multiplication
    --with i_OpSel select r_Result(7 downto 4) <=
    --    r_Sume(3 downto 0) when "00",     --Sume
    --    r_Subs(3 downto 0) when "01",     --Substraction
    --    r_Mult(7 downto 4) when others;   --Multiplication
    --with i_OpSel select r_Result(3 downto 0) <=
    --    (others => '0') when "00",        --Sume
    --    (others => '0') when "01",        --Substraction
    --    r_Mult(3 downto 0) when others;   --Multiplication
                
end architecture rtl;