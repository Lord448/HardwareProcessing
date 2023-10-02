library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity AdderWithCarry is
port( a:in std_logic_vector(31 downto 0);
    b:in std_logic_vector(31 downto 0);
    o:out std_logic_vector(31 downto 0));
end entity AdderWithCarry;
architecture Behavioral of AdderWithCarry is
    signal c_o : std_logic_vector(o'length downto 0);  -- Result with carry
    signal c   : std_logic;  -- Carry only
begin
    c_o <= ('0' & a) + b;  -- Result with carry; extended with '0' to keep carry 
    o <= c_o(o'range);     -- Result without carry
    c <= c_o(c_o'left);    -- Carry only
end Behavioral;