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

    signal i_CLK        : std_logic := '0';
    signal i_NumA       : signed(7 downto 0) := (others => '0');
    signal i_NumB       : signed(7 downto 0) := (others => '0');
    signal re_NumA      : real := 0.0;
    signal i_FixedPoint : std_logic_vector(3 downto 0) := (others => '0');
    signal i_OpSel      : std_logic_vector(1 downto 0) := (others => '0');
    signal o_Displays   : std_logic_vector(3 downto 0) := (others => '0');
    signal o_Segments   : std_logic_vector(6 downto 0) := (others => '0');
    signal o_DispPoint  : std_logic := '0';
    signal o_NumSign    : std_logic := '0';

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

    re_NumA <= real(to_signed(i_NumA, i_NumA'length));

    clk_proc : process
    begin
        i_CLK <= '1';
        wait for 1 ns;
        i_CLK <= '0';
        wait for 1 ns;
    end process;
    
--    stim_proc : process
--    begin
--        for i in 0 to 255 loop
--            for j in 0 to 255 loop
--                for k in 0 to 4 loop
--                    i_NumA <= signed(to_signed(i, i_NumA'length));
--                    i_NumB <= signed(to_signed(j, i_NumB'length));
--                    i_OpSel <= std_logic_vector(to_signed(k, i_OpSel'length));
--                    wait for 1 ns;
--                end loop;
--            end loop;
--        end loop;
--        wait;
--    end process;

    stim_proc : process
    begin
        i_NumA <= "11100001";
        i_NumB <= "01110000";
        i_Opsel <= "00";
        wait for 10 ns;
        i_NumA <= "11100001";
        i_NumB <= "01110000";
        i_Opsel <= "01";
        wait for 10 ns;
        i_NumA <= "11100001";
        i_NumB <= "01110000";
        i_Opsel <= "10";
        wait for 10 ns;
        i_NumA <= "10000000";
        i_NumB <= "10000000";
        i_Opsel <= "00";
        wait for 10 ns;
        i_NumA <= "10000000";
        i_NumB <= "10000000";
        i_Opsel <= "01";
        wait for 10 ns;
        i_NumA <= "10000000";
        i_NumB <= "10000000";
        i_Opsel <= "10";
        wait for 10 ns;
        
    end process;
		
end architecture rtl;