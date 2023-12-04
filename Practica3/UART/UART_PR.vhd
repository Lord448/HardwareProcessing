library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
USE WORK.COMANDOS_LCD_REVC.ALL;

entity UART_PR is
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
end entity;

architecture rtl of UART_PR is

	-----------------------------------------------------------------
    ---------------SEÑALES DE LA LCD (NO BORRAR)---------------------
    TYPE RAM IS ARRAY (0 TO 128) OF STD_LOGIC_VECTOR(8 DOWNTO 0);  --
    
    SIGNAL INST : RAM;
    
    COMPONENT PROCESADOR_LCD_REVC is
        PORT (
            CLK : IN STD_LOGIC;
            VECTOR_MEM : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            INC_DIR : OUT INTEGER RANGE 0 TO 1024;
            CORD : IN STD_LOGIC;
            CORI : IN STD_LOGIC;
            RS : OUT STD_LOGIC;
            RW : OUT STD_LOGIC;
            DELAY_COR : IN INTEGER RANGE 0 TO 1000;
            BD_LCD : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);			    
            ENA  : OUT STD_LOGIC;									
            C1A,C2A,C3A,C4A : IN STD_LOGIC_VECTOR(39 DOWNTO 0);       
            C5A,C6A,C7A,C8A : IN STD_LOGIC_VECTOR(39 DOWNTO 0);       
            DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)						
        );
    end  COMPONENT PROCESADOR_LCD_REVC;

    COMPONENT CARACTERES_ESPECIALES_REVC is
        PORT( 
            C1,C2,C3,C4:OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
            C5,C6,C7,C8:OUT STD_LOGIC_VECTOR(39 DOWNTO 0);
            CLK : IN STD_LOGIC
    );
	end COMPONENT CARACTERES_ESPECIALES_REVC;

    SIGNAL DIR : INTEGER RANGE 0 TO 2048 := 0;
    SIGNAL VECTOR_MEM_S : STD_LOGIC_VECTOR(8 DOWNTO 0);
    SIGNAL RS_S, RW_S, E_S : STD_LOGIC;
    SIGNAL DATA_S : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL DIR_S : INTEGER RANGE 0 TO 2048;
    SIGNAL DELAY_COR : INTEGER RANGE 0 TO 1000;
    SIGNAL C1S,C2S,C3S,C4S : STD_LOGIC_VECTOR(39 DOWNTO 0);
    SIGNAL C5S,C6S,C7S,C8S : STD_LOGIC_VECTOR(39 DOWNTO 0);
    ---------------------------------------------------------
    --------------AGREGA TUS SEÑALES AQUÍ--------------------

	--Copyright (C) 2023  Intel Corporation. All rights reserved.
	--Your use of Intel Corporation's design tools, logic functions 
	--and other software and tools, and any partner logic 
	--functions, and any output files from any of the foregoing 
	--(including device programming or simulation files), and any 
	--associated documentation or information are expressly subject 
	--to the terms and conditions of the Intel Program License 
	--Subscription Agreement, the Intel Quartus Prime License Agreement,
	--the Intel FPGA IP License Agreement, or other applicable license
	--agreement, including, without limitation, that your use is for
	--the sole purpose of programming logic devices manufactured by
	--Intel and sold by Intel or its authorized distributors.  Please
	--refer to the applicable agreement for further details, at
	--https://fpgasoftware.intel.com/eula.
	component PLL
	PORT
	(
		areset		: IN STD_LOGIC  := '0';
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC 
	);
	end component;

	component NIOS2 is
		port (
			clk_clk                                       : in  std_logic                     := 'X';             -- clk
			control_pio_external_connection_export        : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			dip_tx_data_pio_external_connection_export    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			parsedloop_irq_external_connection_export     : in  std_logic                     := 'X';             -- export
			reset_reset_n                                 : in  std_logic                     := 'X';             -- reset_n
			start_timer_external_connection_export        : out std_logic;                                        -- export
			status_leds_pio_external_connection_in_port   : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- in_port
			status_leds_pio_external_connection_out_port  : out std_logic_vector(3 downto 0);                     -- out_port
			uart_rx_data_reg_external_connection_export   : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			uart_rx_external_connection_export            : in  std_logic                     := 'X';             -- export
			uart_rx_pi_external_connection_export         : out std_logic_vector(31 downto 0);                    -- export
			uart_rx_status_reg_external_connection_export : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			uart_tx_data_reg_external_connection_export   : out std_logic_vector(7 downto 0);                     -- export
			uart_tx_external_connection_export            : in  std_logic                     := 'X';             -- export
			uart_tx_po_external_connection_export         : out std_logic_vector(31 downto 0);                    -- export
			uart_tx_start_external_connection_export      : out std_logic                                         -- export
		);
	end component NIOS2;

	component HexToAscii is
		port (
			Number : in  std_logic_vector(3 downto 0);
			Char   : out std_logic_vector(7 downto 0)
		);
	end component;

	component UART is
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
	end component UART;

	--TODO Return to 1ms Parsed loop
	constant PSCCountsFor1ms   : integer := 500000; -- 10ms /20ns

	-- UART Registers
	signal r_TX_Done  		 : std_logic;
	signal r_RX_Done  	     : std_logic;
	signal r_TX_Data  		 : std_logic_vector(7 downto 0);
	signal r_RX_Data  		 : std_logic_vector(7 downto 0);
	signal r_UART_Status_Reg : std_logic_vector(1 downto 0);
	signal r_TX_Start    	 : std_logic;
	signal r_RX_Error 		 : std_logic;
	signal r_TX_Busy  		 : std_logic;

	-- SoftProcessor Registers
	signal r_Parse_Count       : integer range 0 to PSCCountsFor1ms := 0;
	signal r_Parse_Pulse_Width : integer range 0 to PSCCountsFor1ms := 0;
	signal r_32Bit_TX          : std_logic_vector(31 downto 0);
	signal r_32Bit_RX          : std_logic_vector(31 downto 0);
	signal r_Control_Port      : std_logic_vector(3 downto 0);
	signal r_Status_Leds       : std_logic_vector(3 downto 0);
	signal r_Start_Timer	   : std_logic := '0';
	signal r_Parsed_Loop       : std_logic;
	signal r_PLL_CLK		   : std_logic;

	-- LCD Registers
	signal r_Ascii_TX : std_logic_vector(63 downto 0);
	signal r_Ascii_RX : std_logic_vector(63 downto 0);
	signal r_LCD_RX   : std_logic_vector(63 downto 0);
	signal r_LCD_TX   : std_logic_vector(63 downto 0);

	--General registers
	signal r_LedPSC   : std_logic := '1';

begin

	    -----------------------------------------------------------
    ------------COMPONENTES PARA LCD (NO BORRAR)---------------
    u_PROCESADOR : PROCESADOR_LCD_REVC 
        PORT MAP (
            CLK  => i_CLK,
            VECTOR_MEM => VECTOR_MEM_S,
            RS  => RS_S,
            RW  => RW_S,
            ENA => E_S,
            INC_DIR => DIR_S,
            DELAY_COR => DELAY_COR,
            CORD => '0', -- Right Shift selected
            CORI => '1',
            C1A =>C1S,
            C2A =>C2S,	
            C3A =>C3S,	
            C4A =>C4S,	
            C5A =>C5S,	
            C6A =>C6S,	
            C7A =>C7S,	
            C8A =>C8S,	
            DATA  => DATA_S 
    );

    u_CARACTERES : CARACTERES_ESPECIALES_REVC 
        PORT MAP (
            C1 =>C1S,
            C2 =>C2S,
            C3 =>C3S,	
            C4 =>C4S,
            C5 =>C5S,
            C6 =>C6S,	
            C7 =>C7S,
            C8 =>C8S,	
            CLK => i_CLK	
    );

    DIR <= DIR_S;									
    VECTOR_MEM_S <= INST(DIR);
    RS <= RS_S;										
    RW <= RW_S;										
    ENA <= E_S;										
    DATA_LCD <= DATA_S;
    DELAY_COR <= 600; --Modificar esta variable para la velocidad del corrimiento.

    -------------------------------------------------------------------
    -----------------ABAJO ESCRIBE TU C�DIGO EN VHDL-------------------
	r_UART_Status_Reg(0) <= r_TX_Busy;
	r_UART_Status_Reg(1) <= r_RX_Error;
	r_Control_Port		 <= not i_Control_Port; --Active High
	o_Status_Leds(3)		  <= not r_Start_Timer;  --Active High
	o_Status_Leds(2)		  <= not r_LedPSC;
	o_Status_Leds(1 downto 0) <= not r_Status_Leds(1 downto 0);

	PLL_inst : PLL PORT MAP (
		areset	 => not i_Reset,
		inclk0	 => i_CLK,
		c0	 => r_PLL_CLK
	);

	U_SoftProcessor : component NIOS2
	port map (
		clk_clk                                       => r_PLL_CLK,
		reset_reset_n                                 => i_Reset,
		control_pio_external_connection_export        => r_Control_Port,
		dip_tx_data_pio_external_connection_export    => i_TX_Data,
		parsedloop_irq_external_connection_export     => r_Parsed_Loop,
		status_leds_pio_external_connection_in_port   => r_Status_Leds,
		status_leds_pio_external_connection_out_port  => r_Status_Leds,
		uart_rx_data_reg_external_connection_export   => r_RX_Data,
		uart_rx_pi_external_connection_export         => r_32Bit_RX,
		uart_rx_status_reg_external_connection_export => r_UART_Status_Reg,
		uart_tx_data_reg_external_connection_export   => r_TX_Data,
		uart_tx_po_external_connection_export         => r_32Bit_TX,
		uart_tx_start_external_connection_export      => r_TX_Start,
		uart_rx_external_connection_export            => r_RX_Done,
		uart_tx_external_connection_export            => r_TX_Done,
		start_timer_external_connection_export        => r_Start_Timer
	);

	U_UART : UART
	port map(
		i_CLK        => i_CLK,
		i_Parity_Sel => "10",
		o_TX_Serial  => o_TX,
		i_RX_Serial  => i_RX,
		o_TX_Done    => r_TX_Done,
		o_RX_Done    => r_RX_Done,
		i_TX_Data    => r_TX_Data,
		o_RX_Data    => r_RX_Data,
		i_TX_Start   => r_TX_Start,
		o_RX_Error   => r_RX_Error,
		o_TX_Busy    => r_TX_Busy
	);
	

	p_ParsedLoopTimer : process (i_CLK, r_Start_Timer) -- 50MHz - 20ns
	-- Timer PSC @ 1ms
  	begin
		if r_Start_Timer = '1' then
			if rising_edge(i_CLK) then
				if r_Parse_Count < PSCCountsFor1ms/2 then  --State off 
					r_Parse_Count <= r_Parse_Count + 1;
					r_Parsed_Loop <= '0';
				else 
					if r_Parse_Pulse_Width < PSCCountsFor1ms/2 then --State on
						r_Parse_Pulse_Width <= r_Parse_Pulse_Width + 1;
						r_Parsed_Loop <= '1';
					else
						r_Parse_Count <= 0;
						r_Parse_Pulse_Width <= 0;
						r_Parsed_Loop <= '0';
					end if;
				end if;
			end if;
		else
			r_Parse_Count <= 0;
			r_Parse_Pulse_Width <= 0;
			r_Parsed_Loop <= '0';
		end if;	
	end process;

	r_LedPSC <= r_Parsed_Loop;

	tx1 : HexToAscii port map(r_32Bit_TX(3 downto 0), r_Ascii_TX(7 downto 0));
	tx2 : HexToAscii port map(r_32Bit_TX(7 downto 4), r_Ascii_TX(15 downto 8));
	tx3 : HexToAscii port map(r_32Bit_TX(11 downto 8), r_Ascii_TX(23 downto 16));
	tx4 : HexToAscii port map(r_32Bit_TX(15 downto 12), r_Ascii_TX(31 downto 24));
	tx5 : HexToAscii port map(r_32Bit_TX(19 downto 16), r_Ascii_TX(39 downto 32));
	tx6 : HexToAscii port map(r_32Bit_TX(23 downto 20), r_Ascii_TX(47 downto 40));
	tx7 : HexToAscii port map(r_32Bit_TX(27 downto 24), r_Ascii_TX(55 downto 48));
	tx8 : HexToAscii port map(r_32Bit_TX(31 downto 28), r_Ascii_TX(63 downto 56));

	rx1 : HexToAscii port map(r_32Bit_RX(3 downto 0), r_Ascii_RX(7 downto 0));
	rx2 : HexToAscii port map(r_32Bit_RX(7 downto 4), r_Ascii_RX(15 downto 8));
	rx3 : HexToAscii port map(r_32Bit_RX(11 downto 8), r_Ascii_RX(23 downto 16));
	rx4 : HexToAscii port map(r_32Bit_RX(15 downto 12), r_Ascii_RX(31 downto 24));
	rx5 : HexToAscii port map(r_32Bit_RX(19 downto 16), r_Ascii_RX(39 downto 32));
	rx6 : HexToAscii port map(r_32Bit_RX(23 downto 20), r_Ascii_RX(47 downto 40));
	rx7 : HexToAscii port map(r_32Bit_RX(27 downto 24), r_Ascii_RX(55 downto 48));
	rx8 : HexToAscii port map(r_32Bit_RX(31 downto 28), r_Ascii_RX(63 downto 56));

	r_LCD_TX <= r_Ascii_TX;
	r_LCD_RX <= r_Ascii_RX;

	INST(0)  <= LCD_INI("00");
    INST(1)  <= CHAR(MT);
    INST(2)  <= CHAR(MX);
    INST(3)  <= CHAR_ASCII(X"3A");
    INST(4)  <= POS(2,1);
    INST(5)  <= CHAR(MR);
    INST(6)  <= CHAR(MX);
    INST(7)  <= CHAR_ASCII(X"3A");
    INST(8)  <= BUCLE_INI(1);

    --TX
    INST(9)  <= POS(1,5);
    INST(10) <= CHAR_ASCII(r_LCD_TX(7 downto 0)); -- 4
    INST(11) <= CHAR_ASCII(r_LCD_TX(15 downto 8)); -- 8
    INST(12) <= CHAR_ASCII(r_LCD_TX(23 downto 16)); -- 16
    INST(13) <= CHAR_ASCII(r_LCD_TX(31 downto 24)); -- 20
    INST(14) <= CHAR_ASCII(r_LCD_TX(39 downto 32)); -- 24
    INST(15) <= CHAR_ASCII(r_LCD_TX(47 downto 40)); -- 28
    INST(16) <= CHAR_ASCII(r_LCD_TX(55 downto 48)); -- 30
    INST(17) <= CHAR_ASCII(r_LCD_TX(63 downto 56)); -- 32
    --RX
    INST(18) <= POS(2,5);
    INST(19) <= CHAR_ASCII(r_LCD_RX(7 downto 0)); -- 4
    INST(20) <= CHAR_ASCII(r_LCD_RX(15 downto 8)); -- 8
    INST(21) <= CHAR_ASCII(r_LCD_RX(23 downto 16)); -- 16
    INST(22) <= CHAR_ASCII(r_LCD_RX(31 downto 24)); -- 20
    INST(23) <= CHAR_ASCII(r_LCD_RX(39 downto 32)); -- 24
    INST(24) <= CHAR_ASCII(r_LCD_RX(47 downto 40)); -- 28
    INST(25) <= CHAR_ASCII(r_LCD_RX(55 downto 48)); -- 30
    INST(26) <= CHAR_ASCII(r_LCD_RX(63 downto 56)); -- 32
    INST(27) <= BUCLE_FIN(1);
    INST(28) <= CODIGO_FIN(1);

end architecture;