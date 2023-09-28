library IEEE;
use IEEE.std_logic_1164.all;

--Designed only for CycloneIV displays
entity BCDto7Segs is
    port (
        i_DispPoint       : in  std_logic;                     --Display point enable
        i_ChipEn          : in  std_logic;                     --Chip enable (works with PNP transistors)
        i_Number          : in  std_logic_vector(3 downto 0);  --Number that will be displayed
        o_DisplaySegments : out std_logic_vector(6 downto 0);  --Display segments vector
        o_DispEnable      : out std_logic;                     --Out pin to enable the display (works with i_ChipEn)
        o_DispPoint       : out std_logic                      --Turns up or down the display point (works with i_DispPoint)
    );
end entity BCDto7Segs;

architecture rtl of BCDto7Segs is
    --Segments connection on board
    --a  - 128
    --b  - 121 
    --c  - 125 
    --d  - 129
    --e  - 132
    --f  - 126
    --g  - 124   
    --dp - 127
    --Enable Disp 1 - 133
    --Enable Disp 2 - 135
    --Enable Disp 3 - 136
    --Enable Disp 4 - 137
begin

    with i_Number select
        o_DisplaySegments <= "1000000" when "0000",
                             "1111001" when "0001",
                             "0100100" when "0010",
                             "0110000" when "0011",
                             "0011001" when "0100",
                             "0010010" when "0101",
                             "0000010" when "0110",
                             "1111000" when "0111",
                             "0000000" when "1000",
                             "0011000" when "1001",
                             "0001000" when "1010",
                             "0000011" when "1011",
                             "1000110" when "1100",
                             "0100001" when "1101",
                             "0000110" when "1110",
                             "0001110" when others;

    o_DispEnable  <= not i_ChipEn;

    o_DispPoint <= i_DispPoint;

end architecture;