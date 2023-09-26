Library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;
library work;
use work.ALL;


entity ALU4Bits is
    port (
        INA : in  std_logic_vector(3 downto 0);
        INB : in  std_logic_vector(3 downto 0);
        SEL : in  std_logic_vector(1 downto 0);
        RES : out std_logic_vector(3 downto 0)
    );
end entity ALU4Bits;

architecture rtl of ALU4Bits is
    signal r_RES : std_logic_vector(3 downto 0);
begin

    with SEL select
        r_RES <= INA+INB          				 when "00",
                 INA-INB            				 when "01",
			     INA(1 downto 0) * INB(1 downto 0) when "10",
                 INA or INB       			     when others;

    RES <= not r_RES;
               
end architecture;


