library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HexToAscii is
    port (
        Number : in  std_logic_vector(3 downto 0);
        Char   : out std_logic_vector(7 downto 0)
    );
end entity;

architecture rtl of HexToAscii is
begin

    with Number select char <=
        X"30" when "0000",
        X"31" when "0001",
        X"32" when "0010",
        X"33" when "0011",
        X"34" when "0100",
        X"35" when "0101",
        X"36" when "0110",
        X"37" when "0111",
        X"38" when "1000",
        X"39" when "1001",
        X"41" when "1010",
        X"42" when "1011",
        X"43" when "1100",
        X"44" when "1101",
        X"45" when "1110",
        X"46" when others;

end architecture;
