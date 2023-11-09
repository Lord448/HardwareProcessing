library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity tb_ALU8BitsDisplaysFP is
end entity tb_ALU8BitsDisplaysFP;

architecture rtl of tb_ALU8BitsDisplaysFP is
    
    component ALU8BitsDisplaysFP is
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
    end component ALU8BitsDisplaysFP;

    type t_Nums is (t_Num1, t_Num2, t_Num3, t_Num4, t_Num5);
    type t_Ops is (t_Sum, t_Subs, t_Mult);

    signal i_CLK        : std_logic := '0';
    signal i_NumA       : signed(7 downto 0) := (others => '0');
    signal i_NumB       : signed(7 downto 0) := (others => '0');
    signal i_FixedPoint : std_logic_vector(3 downto 0) := (others => '0');
    signal i_OpSel      : std_logic_vector(1 downto 0) := (others => '0');
    signal o_Displays   : std_logic_vector(3 downto 0) := (others => '0');
    signal o_Segments   : std_logic_vector(6 downto 0) := (others => '0');
    signal o_DispPoint  : std_logic := '0';
    signal o_NumSign    : std_logic := '0';
    signal r_Nums       : t_Nums := t_Num1;
    signal r_i          : t_Nums := t_Num1;
    signal r_Ops        : t_Ops := t_Sum;

begin
    
    U1 : ALU8BitsDisplaysFP 
    generic map(
        (1)
    )
    port map(
        i_CLK        => i_CLK,
        i_NumA       => i_NumA,
        i_NumB       => i_NumB,
        i_FixedPoint => i_FixedPoint,
        i_OpSel      => i_OpSel,
        o_Displays   => o_Displays,
        o_Segments   => o_Segments,
        o_DispPoint  => o_DispPoint,
        o_NumSign    => o_NumSign
    );

    clk_proc : process
    begin
        i_CLK <= '1';
        wait for 1 ps;
        i_CLK <= '0';
        wait for 1 ps;
    end process;

    stim_proc : process
    begin
        for r_i in t_Nums loop
            r_Nums <= r_i;
            r_Ops <= t_Sum;
            wait for 10 ps;
            r_Ops <= t_Subs;
            wait for 10 ps;
            r_Ops <= t_Mult;
            wait for 10 ps;
        end loop;
        wait;
    end process;

    declarations_proc : process(r_Ops, r_Nums)
    begin
        case r_Ops is
            when t_Sum =>
                i_OpSel <= "00";
            when t_Subs =>
                i_OpSel <= "01";
            when t_Mult =>
                i_OpSel <= "11";
        end case;

        case r_Nums is
            when t_Num1 =>
                i_NumA <= "11010100";
                i_NumB <= "01010101";
            when t_Num2 =>
                i_NumA <= "11010100";
                i_NumB <= "01010101"; 
            when t_Num3 =>
                i_NumA <= "11110100";
                i_NumB <= "11110101";
            when t_Num4 =>
                i_NumA <= "11010010";
                i_NumB <= "10011010";
            when t_Num5 =>
                i_NumA <= "10010001";
                i_NumB <= "10010001";
        end case;
    end process;
		
end architecture rtl;