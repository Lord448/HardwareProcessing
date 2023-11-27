library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity UART is
    generic (
        g_CLKS_PER_BIT   : integer := 434 --For 115200 Baudios @ 50MHz
        --g_NUMBER_OF_BITS : integer := 8
    );
    port (
        i_TX_Data    : in  std_logic_vector(7 downto 0);
        i_Parity_Sel : in  std_logic_vector(1 downto 0);
        i_CLK        : in  std_logic;
        i_TX_Start   : in  std_logic;
        o_Busy       : out std_logic;  --1 When the peripherial is sending data, 0 when is ready to send
        o_TX_Done    : out std_logic;
        o_TX_Serial  : out std_logic
    );
end entity UART;

architecture rtl of UART is

    type t_SM_Main is (s_Idle, s_TX_Start_Bit, s_TX_Data_Bits, 
                       s_Parity_Check, s_TX_Stop_Bit, s_Cleanup);
    
    type t_Parity is (t_Even, t_Odd, t_None);

    signal r_SM_Main      : t_SM_Main := s_Idle;
    signal r_Parity       : t_Parity;
    signal r_CLK_Count    : integer range 0 to g_CLKS_PER_BIT-1 := 0;
    signal r_Bit_Index    : integer range 0 to 7 := 0; --8 Bits Total
    signal r_TX_Data      : std_logic_vector(7 downto 0) := (others => '0');
    signal r_TX_Done      : std_logic := '0';
    signal r_Parity_Value : std_logic;

begin
    p_UART_TX: process(i_CLK)
    begin
        if rising_edge(i_CLK) then
            case r_SM_Main is
                when s_IDLE => 
                    o_Busy <= '0';
                    o_TX_Serial <= '1';
                    r_TX_Done   <= '0';
                    r_Clk_Count <= 0;
                    r_Bit_Index <= 0;

                    if i_TX_Start = '1' then
                        r_TX_Data <= i_TX_Data;
                        r_SM_Main <= s_TX_Start_Bit;
                    else
                        r_SM_Main <= s_Idle;
                    end if;

                when s_TX_Start_Bit =>
                    o_Busy <= '1';
                    o_TX_Serial <= '0';

                    --wait g_CLKS_PER_BIT-1 clock cycles for start bit to finish
                    if r_Clk_Count < g_CLKS_PER_BIT-1 then
                        r_Clk_Count <= r_Clk_Count + 1;
                        r_SM_Main   <= s_TX_Start_Bit;
                    else
                        r_Clk_Count <= 0;
                        r_SM_Main   <= s_TX_Data_Bits;
                    end if;

                when s_TX_Data_Bits =>
                    o_TX_Serial <= r_TX_Data(r_Bit_Index);

                    if r_Clk_Count < g_CLKS_PER_BIT-1 then
                        r_Clk_Count <= r_Clk_Count + 1;
                        r_SM_Main   <= s_TX_Data_Bits;
                    else 
                        r_Clk_Count <= 0;
                        --Check if we have sent all the bits
                        if r_Bit_Index < 7 then
                            r_Bit_Index <= r_Bit_Index + 1;
                            r_SM_Main   <= s_TX_Data_Bits;
                        else 
                            r_Bit_Index <= 0;
                            case r_Parity is
                                when t_None => 
                                    r_SM_Main <= s_TX_Stop_Bit;
                                when others =>
                                    r_SM_Main <= s_Parity_Check;
                            end case;
                        end if;
                    end if;

                when s_Parity_Check =>
                    case r_Parity is
                        when t_None =>
                            r_SM_Main <= s_TX_Stop_Bit;
                        when others =>
                            o_TX_Serial <= r_Parity_Value;
                            if r_CLK_Count < g_CLKS_PER_BIT-1 then
                                r_Clk_Count <= r_Clk_Count + 1;
                                r_SM_Main <= s_Parity_Check;
                            else
                                r_CLK_Count <= 0;
                                r_SM_Main <= s_TX_Stop_Bit;
                            end if;
                    end case;

                --Send out Stop bit. Stop bit = 1
                when s_TX_Stop_Bit =>
                    o_TX_Serial <= '1';

                    --wait g_CLKS_PER_BIT-1 clock cycles for stop bit to finish
                    if r_Clk_Count < g_CLKS_PER_BIT-1 then
                        r_Clk_Count <= r_Clk_Count + 1;
                        r_SM_Main   <= s_TX_Stop_Bit;
                    else
                        r_TX_Done   <= '1';
                        r_Clk_Count <= 0;
                        r_SM_Main   <= s_Cleanup;
                    end if;
                
                --Stay here 1 clock
                when s_Cleanup =>
                    o_Busy <= '0';
                    r_TX_Done   <= '1';
                    r_SM_MAIN   <= s_Idle;

                when others =>
                    r_SM_Main <= s_Idle;
            end case;
        end if;
    end process p_UART_TX;

    with i_Parity_Sel select r_Parity <=
        t_Even when "00",
        t_Odd when "01",
        t_None when others;

    with r_Parity select r_Parity_Value <=
        (r_TX_Data(0) XOR 
        r_TX_Data(1) XOR 
        r_TX_Data(2) XOR 
        r_TX_Data(3) XOR 
        r_TX_Data(4) XOR 
        r_TX_Data(5) XOR 
        r_TX_Data(6) XOR 
        r_TX_Data(7)) when t_Even,
        (r_TX_Data(0) XNOR 
        r_TX_Data(1) XNOR
        r_TX_Data(2) XNOR
        r_TX_Data(3) XNOR 
        r_TX_Data(4) XNOR
        r_TX_Data(5) XNOR
        r_TX_Data(6) XNOR
        r_TX_Data(7)) when t_Odd,
        'Z' when others;
    
    --r_TX_Data(g_NUMBER_OF_BITS-1 to 7) <= (others => '0');

    o_TX_Done <= r_TX_Done;

end architecture;