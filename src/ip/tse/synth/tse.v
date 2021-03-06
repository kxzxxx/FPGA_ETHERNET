// tse.v

// Generated using ACDS version 18.0 219

`timescale 1 ps / 1 ps
module tse (
		input  wire [4:0]  reg_addr,       //                  control_port.address
		output wire [15:0] reg_data_out,   //                              .readdata
		input  wire        reg_rd,         //                              .read
		input  wire [15:0] reg_data_in,    //                              .writedata
		input  wire        reg_wr,         //                              .write
		output wire        reg_busy,       //                              .waitrequest
		input  wire        clk,            // control_port_clock_connection.clk
		output wire        gmii_rx_dv,     //               gmii_connection.gmii_rx_dv
		output wire [7:0]  gmii_rx_d,      //                              .gmii_rx_d
		output wire        gmii_rx_err,    //                              .gmii_rx_err
		input  wire        gmii_tx_en,     //                              .gmii_tx_en
		input  wire [7:0]  gmii_tx_d,      //                              .gmii_tx_d
		input  wire        gmii_tx_err,    //                              .gmii_tx_err
		output wire        rx_clk,         //  pcs_receive_clock_connection.clk
		input  wire        reset_rx_clk,   //  pcs_receive_reset_connection.reset
		input  wire        ref_clk,        //  pcs_ref_clk_clock_connection.clk
		output wire        tx_clk,         // pcs_transmit_clock_connection.clk
		input  wire        reset_tx_clk,   // pcs_transmit_reset_connection.reset
		input  wire        reset,          //              reset_connection.reset
		output wire        rx_recovclkout, //     serdes_control_connection.export
		input  wire        rxp,            //             serial_connection.rxp_0
		output wire        txp,            //                              .txp_0
		output wire        led_crs,        //         status_led_connection.crs
		output wire        led_link,       //                              .link
		output wire        led_panel_link, //                              .panel_link
		output wire        led_col,        //                              .col
		output wire        led_an,         //                              .an
		output wire        led_char_err,   //                              .char_err
		output wire        led_disp_err    //                              .disp_err
	);

	tse_altera_eth_tse_180_4odqu6q eth_tse_0 (
		.reg_addr       (reg_addr),       //   input,   width = 5,                  control_port.address
		.reg_data_out   (reg_data_out),   //  output,  width = 16,                              .readdata
		.reg_rd         (reg_rd),         //   input,   width = 1,                              .read
		.reg_data_in    (reg_data_in),    //   input,  width = 16,                              .writedata
		.reg_wr         (reg_wr),         //   input,   width = 1,                              .write
		.reg_busy       (reg_busy),       //  output,   width = 1,                              .waitrequest
		.clk            (clk),            //   input,   width = 1, control_port_clock_connection.clk
		.gmii_rx_dv     (gmii_rx_dv),     //  output,   width = 1,               gmii_connection.gmii_rx_dv
		.gmii_rx_d      (gmii_rx_d),      //  output,   width = 8,                              .gmii_rx_d
		.gmii_rx_err    (gmii_rx_err),    //  output,   width = 1,                              .gmii_rx_err
		.gmii_tx_en     (gmii_tx_en),     //   input,   width = 1,                              .gmii_tx_en
		.gmii_tx_d      (gmii_tx_d),      //   input,   width = 8,                              .gmii_tx_d
		.gmii_tx_err    (gmii_tx_err),    //   input,   width = 1,                              .gmii_tx_err
		.rx_clk         (rx_clk),         //  output,   width = 1,  pcs_receive_clock_connection.clk
		.reset_rx_clk   (reset_rx_clk),   //   input,   width = 1,  pcs_receive_reset_connection.reset
		.ref_clk        (ref_clk),        //   input,   width = 1,  pcs_ref_clk_clock_connection.clk
		.tx_clk         (tx_clk),         //  output,   width = 1, pcs_transmit_clock_connection.clk
		.reset_tx_clk   (reset_tx_clk),   //   input,   width = 1, pcs_transmit_reset_connection.reset
		.reset          (reset),          //   input,   width = 1,              reset_connection.reset
		.rx_recovclkout (rx_recovclkout), //  output,   width = 1,     serdes_control_connection.export
		.rxp            (rxp),            //   input,   width = 1,             serial_connection.rxp_0
		.txp            (txp),            //  output,   width = 1,                              .txp_0
		.led_crs        (led_crs),        //  output,   width = 1,         status_led_connection.crs
		.led_link       (led_link),       //  output,   width = 1,                              .link
		.led_panel_link (led_panel_link), //  output,   width = 1,                              .panel_link
		.led_col        (led_col),        //  output,   width = 1,                              .col
		.led_an         (led_an),         //  output,   width = 1,                              .an
		.led_char_err   (led_char_err),   //  output,   width = 1,                              .char_err
		.led_disp_err   (led_disp_err)    //  output,   width = 1,                              .disp_err
	);

endmodule
