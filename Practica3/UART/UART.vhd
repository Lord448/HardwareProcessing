library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity UART is
    generic (
        g_CLKS_PER_BIT : integer := 434 --For 115200 Baudios @ 50MHz
    );
    port (
        i_CLK        : in  std_logic;
        i_Parity_Sel : in  std_logic_vector(1 downto 0);
        o_TX_Serial  : out std_logic;
        i_RX_Serial  : in  std_logic;
        o_TX_Done    : out std_logic;
        o_RX_Done    : out std_logic;
        i_TX_Data    : in  std_logic_vector(7 downto 0);
        o_RX_Data    : out std_logic_vector(7 downto 0);
        i_TX_Start   : in  std_logic;
        o_RX_Error   : out std_logic;
        o_TX_Busy    : out std_logic  --1 When the peripherial is sending data, 0 when is ready to send
    );
end entity UART;

architecture rtl of UART is

    type t_SM_TX is (s_Idle_RX_TX, s_Start_Bit_TX, s_Data_Bits_TX, 
                     s_Parity_Check_TX, s_Stop_Bit_TX, s_Cleanup_TX);

    type t_SM_RX is (s_Idle_RX, s_Start_Bits_RX, s_Data_Bits_RX,
                     s_Stop_Bit_RX, s_Parity_Check_RX, s_Cleanup_RX, s_Error_RX);

    type t_Parity is (t_Even, t_Odd, t_None);

    signal r_Parity             : t_Parity;
    signal r_SM_TX              : t_SM_TX := s_Idle_RX_TX;
    signal r_SM_RX              : t_SM_RX := s_Idle_RX;

    --Registers for TX
    signal r_TX_CLK_Count       : integer range 0 to g_CLKS_PER_BIT-1 := 0;
    signal r_TX_Bit_Index       : integer range 0 to 7 := 0; --8 Bits Total
    signal r_TX_Data            : std_logic_vector(7 downto 0) := (others => '0');
    signal r_TX_Done            : std_logic := '0';
    signal r_TX_Parity_Value    : std_logic;
    --Registers for RX
    signal r_RX_Bit             : std_logic := '1';
    signal r_RX_Bit_R           : std_logic := '1';
    signal r_RX_CLK_Count       : integer range 0 to g_CLKS_PER_BIT := 0;
    signal r_RX_Bits_to_Wait    : integer range 0 to 10;
    signal r_RX_Frame_Bit_Count : integer range 0 to 7 := 0;
    signal r_RX_Bit_Index       : integer range 0 to 10 := 0;
    signal r_RX_Data            : std_logic_vector(7 downto 0) := (others => '0');
    signal r_RX_Done            : std_logic := '0';
    signal r_RX_Error           : std_logic := '0';
    signal r_RX_Parity_Value    : std_logic;

begin

    with i_Parity_Sel select r_Parity <=
    t_Even when "00",
    t_Odd when "01",
    t_None when others;

    -------------------------------------------------------
    --                    UART TX  
    -------------------------------------------------------

    p_UART_TX: process(i_CLK)
    begin
        if rising_edge(i_CLK) then
            case r_SM_TX is
                when s_Idle_RX_TX => 
                    o_TX_Busy <= '0';
                    o_TX_Serial <= '1';
                    r_TX_Done   <= '0';
                    r_TX_CLK_Count <= 0;
                    r_TX_Bit_Index <= 0;

                    if i_TX_Start = '1' then
                        r_TX_Data <= i_TX_Data;
                        r_SM_TX <= s_Start_Bit_TX;
                    else
                        r_SM_TX <= s_Idle_RX_TX;
                    end if;

                when s_Start_Bit_TX =>
                    o_TX_Busy <= '1';
                    o_TX_Serial <= '0';

                    --wait g_CLKS_PER_BIT-1 clock cycles for start bit to finish
                    if r_TX_CLK_Count < g_CLKS_PER_BIT-1 then
                        r_TX_CLK_Count <= r_TX_CLK_Count + 1;
                        r_SM_TX   <= s_Start_Bit_TX;
                    else
                        r_TX_CLK_Count <= 0;
                        r_SM_TX   <= s_Data_Bits_TX;
                    end if;

                when s_Data_Bits_TX =>
                    o_TX_Serial <= r_TX_Data(r_TX_Bit_Index);

                    if r_TX_CLK_Count < g_CLKS_PER_BIT-1 then
                        r_TX_CLK_Count <= r_TX_CLK_Count + 1;
                        r_SM_TX   <= s_Data_Bits_TX;
                    else 
                        r_TX_CLK_Count <= 0;
                        --Check if we have sent all the bits
                        if r_TX_Bit_Index < 7 then
                            r_TX_Bit_Index <= r_TX_Bit_Index + 1;
                            r_SM_TX   <= s_Data_Bits_TX;
                        else 
                            r_TX_Bit_Index <= 0;
                            case r_Parity is
                                when t_None => 
                                    r_SM_TX <= s_Stop_Bit_TX;
                                when others =>
                                    r_SM_TX <= s_Parity_Check_TX;
                            end case;
                        end if;
                    end if;

                when s_Parity_Check_TX =>
                    case r_Parity is
                        when t_None =>
                            r_SM_TX <= s_Stop_Bit_TX;
                        when others =>
                            o_TX_Serial <= r_TX_Parity_Value;
                            if r_TX_CLK_Count < g_CLKS_PER_BIT-1 then
                                r_TX_CLK_Count <= r_TX_CLK_Count + 1;
                                r_SM_TX <= s_Parity_Check_TX;
                            else
                                r_TX_CLK_Count <= 0;
                                r_SM_TX <= s_Stop_Bit_TX;
                            end if;
                    end case;

                --Send out Stop bit. Stop bit = 1
                when s_Stop_Bit_TX =>
                    o_TX_Serial <= '1';

                    --wait g_CLKS_PER_BIT-1 clock cycles for stop bit to finish
                    if r_TX_CLK_Count < g_CLKS_PER_BIT-1 then
                        r_TX_CLK_Count <= r_TX_CLK_Count + 1;
                        r_SM_TX   <= s_Stop_Bit_TX;
                    else
                        r_TX_Done   <= '1';
                        r_TX_CLK_Count <= 0;
                        r_SM_TX   <= s_Cleanup_TX;
                    end if;
                
                --Stay here 1 clock
                when s_Cleanup_TX =>
                    o_TX_Busy <= '0';
                    r_TX_Done   <= '1';
                    r_SM_TX   <= s_Idle_RX_TX;

                when others =>
                    r_SM_TX <= s_Idle_RX_TX;
            end case;
        end if;
    end process p_UART_TX;

    with r_Parity select r_TX_Parity_Value <=
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

    o_TX_Done <= r_TX_Done;

    -------------------------------------------------------
    --                    UART RX 
    -------------------------------------------------------

    p_PIPELINE : process (i_CLK)
    begin
        if rising_edge (i_CLK) then
            r_RX_Bit_R <= i_RX_Serial;
            r_RX_Bit   <= r_RX_Bit_R;
        end if;
    end process p_PIPELINE;

    p_UART_RX : process(i_CLK)
    begin
        if rising_edge(i_CLK) then
            case r_SM_RX is
                when s_Idle_RX =>
                    r_RX_Done <= '0';
                    r_RX_CLK_Count <= 0;
                    r_RX_Bit_Index <= 0;

                    if r_RX_Bit = '0' then
                        r_SM_RX <= s_Start_Bits_RX;
                    else
                        r_SM_RX <= s_Idle_RX;
                    end if; 
                
                when s_Start_Bits_RX =>
                    if r_RX_CLK_Count = (g_CLKS_PER_BIT-1)/2 then
                        if r_RX_Bit = '0' then
                            r_RX_CLK_Count <= 0;
                            r_SM_RX   <= s_Data_Bits_RX;
                        else
                            r_SM_RX   <= s_Idle_RX;
                        end if;
                    else
                        r_RX_CLK_Count <= r_RX_CLK_Count + 1;
                        r_SM_RX   <= s_Start_Bits_RX;
                    end if;
                    
                when s_Data_Bits_RX =>
                    if r_RX_CLK_Count < g_CLKS_PER_BIT then
                        r_RX_CLK_Count <= r_RX_CLK_Count + 1;
                        r_SM_RX <= s_Data_Bits_RX;
                     else
                        r_RX_CLK_Count            <= 0;
                        r_RX_Data(r_RX_Bit_Index) <= r_RX_Bit;
                        if r_RX_Bit_Index < 7 then
                            r_RX_Bit_Index <= r_RX_Bit_Index + 1;
                            r_SM_RX   <= s_Data_Bits_RX;
                        else
                            case r_Parity is
                                when t_None =>
                                    r_SM_RX <= s_Stop_Bit_RX;
                                when others =>
                                    r_SM_RX <= s_Parity_Check_RX;
                            end case;
                        end if;
                    end if;

                when s_Parity_Check_RX =>
                    --Change bit index to execute the sampling process
                    r_RX_Bit_Index <= 10; --10 to identify parity check state
                    if r_RX_CLK_Count < g_CLKS_PER_BIT-1 then
                        r_RX_CLK_Count <= r_RX_CLK_Count + 1;
                        r_SM_RX <= s_Parity_Check_RX;
                    else
                        if r_RX_Parity_Value = r_RX_Bit then
                            r_SM_RX <= s_Stop_Bit_RX;                            
                        else
                            r_SM_RX <= s_Error_RX;
                        end if;
                    end if;
                
                when s_Stop_Bit_RX =>
                    r_RX_Bit_Index <= 0;
                    if r_RX_CLK_Count < g_CLKS_PER_BIT then
                        r_RX_CLK_Count <= r_RX_CLK_Count + 1;
                        r_SM_RX   <= s_Stop_Bit_RX;
                    else
                        --o_RX_Byte   <= r_RX_Bit;
                        r_RX_Done   <= '1';
                        r_RX_CLK_Count <= 0;
                        r_SM_RX   <= s_Cleanup_RX;                            
                    end if;

                when s_Cleanup_RX =>
                    r_SM_RX   <= s_Idle_RX;
                    r_RX_Done   <= '0';
                    r_RX_Error  <= '0';
                
                when s_Error_RX =>
                    r_RX_Error <= '1';
                    if r_RX_Bit_Index = 10 then --Error in parity check
                        if r_RX_CLK_Count < g_CLKS_PER_BIT then
                            r_RX_CLK_Count <= r_RX_CLK_Count + 1;
                            r_SM_RX   <= s_Error_RX;
                        else
                            r_RX_CLK_Count <= 0;
                            r_SM_RX <= s_Cleanup_RX;
                        end if;
                    else --Error in data receive
                        if r_RX_CLK_Count < g_CLKS_PER_BIT then
                            r_RX_CLK_Count <= r_RX_CLK_Count + 1;
                            r_SM_RX   <= s_Error_RX;
                        else
                            r_RX_CLK_Count <= 0;
                            r_RX_Frame_Bit_Count <= r_RX_Frame_Bit_Count + 1;

                            case r_Parity is
                                when t_None =>
                                    r_RX_Bits_to_Wait <= 6 - r_RX_Bit_Index;
                                when others =>
                                    r_RX_Bits_to_Wait <= 7 - r_RX_Bit_Index;
                            end case;

                            if r_RX_Frame_Bit_Count = r_RX_Bits_to_Wait then
                                r_RX_Frame_Bit_Count <= 0;
                                r_SM_RX <= s_Cleanup_RX;
                            else
                                r_SM_RX <= s_Error_RX;
                            end if;
                        end if;
                    end if;

                when others =>
                    r_SM_RX <= s_Idle_RX;
            
            end case;
        end if;
    end process p_UART_RX;

    with r_Parity select r_RX_Parity_Value <=
    (r_RX_Data(0) XOR 
    r_RX_Data(1) XOR 
    r_RX_Data(2) XOR 
    r_RX_Data(3) XOR 
    r_RX_Data(4) XOR 
    r_RX_Data(5) XOR 
    r_RX_Data(6) XOR 
    r_RX_Data(7)) when t_Even,
    (r_RX_Data(0) XNOR 
    r_RX_Data(1) XNOR
    r_RX_Data(2) XNOR
    r_RX_Data(3) XNOR 
    r_RX_Data(4) XNOR
    r_RX_Data(5) XNOR
    r_RX_Data(6) XNOR
    r_RX_Data(7)) when t_Odd,
    'Z' when others;

    o_RX_Done  <= r_RX_Done;
    o_RX_Error <= r_RX_Error;
    o_RX_Data  <= r_RX_Data;
    
end architecture rtl;