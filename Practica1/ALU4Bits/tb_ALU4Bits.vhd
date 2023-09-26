Library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.numeric_std.all;


entity tb_ALU4Bits is
end entity tb_ALU4Bits;

architecture rtl of tb_ALU4Bits is
    constant PERIOD      : time := 1 ns;
    signal INA, INB, RES : std_logic_vector(3 downto 0) := (others => '0');
    signal SEL           : std_logic_vector(1 downto 0) := (others => '0');
    signal r_RES         : std_logic_vector(3 downto 0) := (others => '0');

    component ALU4Bits is
        port (
            INA : in  std_logic_vector(3 downto 0);
            INB : in  std_logic_vector(3 downto 0);
            SEL : in  std_logic_vector(1 downto 0);
            RES : out std_logic_vector(3 downto 0)
        );
    end component ALU4Bits;

begin
    
    --Instatiation
    U1 : ALU4Bits port map(
        INA => INA,
        INB => INB,
        SEL => SEL,
        RES => r_RES
    );
    
    stim_proc: process
    begin
		for i in 0 to 3 loop
            for j in 0 to 15 loop
                for k in 0 to 15 loop
                    INA <= std_logic_vector( to_unsigned(j, INA'length)); --Casting integer to logic vector
                    INB <= std_logic_vector( to_unsigned(k, INB'length)); --Casting integer to logic vector
                    SEL <= std_logic_vector( to_unsigned(i, SEL'length)); --Casting integer to logic vector
                    wait for PERIOD; 
                end loop;
            end loop;
        end loop;
        wait;
    end process;
    
    RES <= not r_RES;

end architecture rtl;
