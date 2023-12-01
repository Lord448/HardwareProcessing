
module NIOS2 (
	clk_clk,
	control_pio_external_connection_export,
	dip_tx_data_pio_external_connection_export,
	parsedloop_irq_external_connection_export,
	reset_reset_n,
	status_leds_pio_external_connection_export,
	uart_rx_data_reg_external_connection_export,
	uart_rx_external_connection_export,
	uart_rx_pi_external_connection_export,
	uart_rx_status_reg_external_connection_export,
	uart_tx_data_reg_external_connection_export,
	uart_tx_external_connection_export,
	uart_tx_po_external_connection_export,
	uart_tx_start_external_connection_export,
	start_timer_external_connection_export);	

	input		clk_clk;
	input	[3:0]	control_pio_external_connection_export;
	input	[7:0]	dip_tx_data_pio_external_connection_export;
	input		parsedloop_irq_external_connection_export;
	input		reset_reset_n;
	output	[3:0]	status_leds_pio_external_connection_export;
	input	[7:0]	uart_rx_data_reg_external_connection_export;
	input		uart_rx_external_connection_export;
	output	[31:0]	uart_rx_pi_external_connection_export;
	input	[1:0]	uart_rx_status_reg_external_connection_export;
	output	[7:0]	uart_tx_data_reg_external_connection_export;
	input		uart_tx_external_connection_export;
	output	[31:0]	uart_tx_po_external_connection_export;
	output		uart_tx_start_external_connection_export;
	output		start_timer_external_connection_export;
endmodule
