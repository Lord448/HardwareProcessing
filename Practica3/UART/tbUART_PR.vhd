library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
USE WORK.COMANDOS_LCD_REVC.ALL;

entity tbUART_PR is
end entity;

architecture rtl of tbUART_PR is

    component UART_PR is
        port (
            --General
            i_CLK    	   : in  std_logic;
            i_Reset  	   : in  std_logic;
            i_RX	       : in  std_logic;
            i_TX_Data	   : in  std_logic_vector(7 downto 0);
            i_Control_Port : in  std_logic_vector(3 downto 0);
            o_Status_Leds  : out std_logic_vector(3 downto 0);
            o_TX	 	   : out std_logic;
            
            --LCD
            RS       : OUT STD_LOGIC;
            RW       : OUT STD_LOGIC;
            ENA      : OUT STD_LOGIC;
            DATA_LCD : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    end component;

    signal i_CLK    	  : std_logic := '0';
    signal i_Reset  	  : std_logic := '0';
    signal i_RX	          : std_logic := '0';
    signal i_TX_Data	  : std_logic_vector(7 downto 0) := (others => '0');
    signal i_Control_Port : std_logic_vector(3 downto 0) := (others => '0');
    signal o_Status_Leds  : std_logic_vector(3 downto 0) := (others => '0');
    signal o_TX	 	      : std_logic := '0';
    
    --LCD
    signal RS       : STD_LOGIC := '0';
    signal RW       : STD_LOGIC := '0';
    signal ENA      : STD_LOGIC := '0';
    signal DATA_LCD : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');

begin

    U1: UART_PR port map(
        i_CLK    	   => i_CLK,
        i_Reset  	   => i_Reset,
        i_RX	       => i_RX,
        i_TX_Data	   => i_TX_Data,
        i_Control_Port => i_Control_Port,
        o_Status_Leds  => o_Status_Leds,
        o_TX	 	   => o_TX,
        
        --LCD
        RS       => RS, 
        RW       => RW, 
        ENA      => ENA, 
        DATA_LCD => DATA_LCD
    );

    clk_proc : process
    begin
        i_CLK <= '1';
        wait for 20 ns;
        i_CLK <= '0';
        wait for 20 ns;
    end process;

    stim_proc : process
    begin
        
    end process;

end architecture;
