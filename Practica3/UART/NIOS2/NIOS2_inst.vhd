	component NIOS2 is
		port (
			clk_clk                                       : in  std_logic                     := 'X';             -- clk
			control_pio_external_connection_export        : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			dip_tx_data_pio_external_connection_export    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			parsedloop_irq_external_connection_export     : in  std_logic                     := 'X';             -- export
			reset_reset_n                                 : in  std_logic                     := 'X';             -- reset_n
			status_leds_pio_external_connection_export    : out std_logic_vector(3 downto 0);                     -- export
			uart_rx_data_reg_external_connection_export   : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			uart_rx_external_connection_export            : in  std_logic                     := 'X';             -- export
			uart_rx_pi_external_connection_export         : out std_logic_vector(31 downto 0);                    -- export
			uart_rx_status_reg_external_connection_export : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			uart_tx_data_reg_external_connection_export   : out std_logic_vector(7 downto 0);                     -- export
			uart_tx_external_connection_export            : in  std_logic                     := 'X';             -- export
			uart_tx_po_external_connection_export         : out std_logic_vector(31 downto 0);                    -- export
			uart_tx_start_external_connection_export      : out std_logic;                                        -- export
			start_timer_external_connection_export        : out std_logic                                         -- export
		);
	end component NIOS2;

	u0 : component NIOS2
		port map (
			clk_clk                                       => CONNECTED_TO_clk_clk,                                       --                                    clk.clk
			control_pio_external_connection_export        => CONNECTED_TO_control_pio_external_connection_export,        --        control_pio_external_connection.export
			dip_tx_data_pio_external_connection_export    => CONNECTED_TO_dip_tx_data_pio_external_connection_export,    --    dip_tx_data_pio_external_connection.export
			parsedloop_irq_external_connection_export     => CONNECTED_TO_parsedloop_irq_external_connection_export,     --     parsedloop_irq_external_connection.export
			reset_reset_n                                 => CONNECTED_TO_reset_reset_n,                                 --                                  reset.reset_n
			status_leds_pio_external_connection_export    => CONNECTED_TO_status_leds_pio_external_connection_export,    --    status_leds_pio_external_connection.export
			uart_rx_data_reg_external_connection_export   => CONNECTED_TO_uart_rx_data_reg_external_connection_export,   --   uart_rx_data_reg_external_connection.export
			uart_rx_external_connection_export            => CONNECTED_TO_uart_rx_external_connection_export,            --            uart_rx_external_connection.export
			uart_rx_pi_external_connection_export         => CONNECTED_TO_uart_rx_pi_external_connection_export,         --         uart_rx_pi_external_connection.export
			uart_rx_status_reg_external_connection_export => CONNECTED_TO_uart_rx_status_reg_external_connection_export, -- uart_rx_status_reg_external_connection.export
			uart_tx_data_reg_external_connection_export   => CONNECTED_TO_uart_tx_data_reg_external_connection_export,   --   uart_tx_data_reg_external_connection.export
			uart_tx_external_connection_export            => CONNECTED_TO_uart_tx_external_connection_export,            --            uart_tx_external_connection.export
			uart_tx_po_external_connection_export         => CONNECTED_TO_uart_tx_po_external_connection_export,         --         uart_tx_po_external_connection.export
			uart_tx_start_external_connection_export      => CONNECTED_TO_uart_tx_start_external_connection_export,      --      uart_tx_start_external_connection.export
			start_timer_external_connection_export        => CONNECTED_TO_start_timer_external_connection_export         --        start_timer_external_connection.export
		);

