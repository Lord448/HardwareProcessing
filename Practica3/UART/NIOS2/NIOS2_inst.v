	NIOS2 u0 (
		.clk_clk                                       (<connected-to-clk_clk>),                                       //                                    clk.clk
		.control_pio_external_connection_export        (<connected-to-control_pio_external_connection_export>),        //        control_pio_external_connection.export
		.dip_tx_data_pio_external_connection_export    (<connected-to-dip_tx_data_pio_external_connection_export>),    //    dip_tx_data_pio_external_connection.export
		.parsedloop_irq_external_connection_export     (<connected-to-parsedloop_irq_external_connection_export>),     //     parsedloop_irq_external_connection.export
		.reset_reset_n                                 (<connected-to-reset_reset_n>),                                 //                                  reset.reset_n
		.status_leds_pio_external_connection_export    (<connected-to-status_leds_pio_external_connection_export>),    //    status_leds_pio_external_connection.export
		.uart_irq_external_connection_export           (<connected-to-uart_irq_external_connection_export>),           //           uart_irq_external_connection.export
		.uart_rx_data_reg_external_connection_export   (<connected-to-uart_rx_data_reg_external_connection_export>),   //   uart_rx_data_reg_external_connection.export
		.uart_rx_pi_external_connection_export         (<connected-to-uart_rx_pi_external_connection_export>),         //         uart_rx_pi_external_connection.export
		.uart_rx_status_reg_external_connection_export (<connected-to-uart_rx_status_reg_external_connection_export>), // uart_rx_status_reg_external_connection.export
		.uart_tx_data_reg_external_connection_export   (<connected-to-uart_tx_data_reg_external_connection_export>),   //   uart_tx_data_reg_external_connection.export
		.uart_tx_po_external_connection_export         (<connected-to-uart_tx_po_external_connection_export>),         //         uart_tx_po_external_connection.export
		.uart_tx_start_external_connection_export      (<connected-to-uart_tx_start_external_connection_export>)       //      uart_tx_start_external_connection.export
	);

