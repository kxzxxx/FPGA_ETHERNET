
module util_gmii_to_rgmii(
    output [3:0] rgmii_td,
    output rgmii_tx_ctl,
    output rgmii_txc,

    input   [3:0]  rgmii_rd,
    input   rgmii_rx_ctl,
    input   rgmii_rxc,

    input   [ 7:0]  gmii_tx_d,
    input           gmii_tx_en,
    input           gmii_tx_er,
    output          gmii_tx_clk,


    output reg [ 7:0]  gmii_rx_d,
    output reg         gmii_rx_dv,
    output reg         gmii_rx_er,
    output             gmii_rx_clk

);


    // wires
    wire  [ 7:0]    gmii_rxd_w;
    wire            rgmii_rx_ctl_w;
    wire            gmii_rx_dv_w;

    assign gmii_rx_clk = rgmii_rxc;

    always @(posedge rgmii_rxc)
    begin
        gmii_rx_d       = gmii_rxd_w;
        gmii_rx_dv     = gmii_rx_dv_w;
        gmii_rx_er     = gmii_rx_dv_w ^ rgmii_rx_ctl_w;
    end

    //recv
    ddio_in_1bit ddio_in_1bit_m0(
        .datain(rgmii_rx_ctl),
        .inclock(rgmii_rxc),
        .dataout_h(gmii_rx_dv_w),
        .dataout_l(rgmii_rx_ctl_w));

    ddio_in_4bit ddio_in_4bit_m0(
        .datain(rgmii_rd[3:0]),
        .inclock(rgmii_rxc),
        .dataout_h(gmii_rxd_w[3:0]),
        .dataout_l(gmii_rxd_w[7:4]));


    //send
    assign gmii_tx_clk = rgmii_rxc;
   
    reg   [ 7:0]    gmii_txd_r;
    reg             gmii_tx_en_r;
    reg             gmii_tx_er_r;

    reg             rgmii_tx_ctl_r;
    reg   [ 3:0]    gmii_txd_low;


    always @(posedge gmii_tx_clk)
    begin
        gmii_txd_r   <= gmii_tx_d;
        gmii_tx_en_r <= gmii_tx_en;
        gmii_tx_er_r <= gmii_tx_er;
        rgmii_tx_ctl_r <= gmii_tx_en_r ^ gmii_tx_er_r;

    end


	ddio_out_1bit ddio_out_1bit_clk (
		.datain_h (1'b1),
		.datain_l (1'b0),
        .aclr (1'b0),
		.outclock (gmii_tx_clk),
		.dataout (rgmii_txc));

	ddio_out_1bit ddio_out_1bit_ctl (
		.datain_h (gmii_tx_en_r),
		.datain_l (rgmii_tx_ctl_r),
        .aclr (1'b0),
		.outclock (gmii_tx_clk),
		.dataout (rgmii_tx_ctl));

    ddio_out_4bit ddio_out_4bit_m0(
	    .datain_h(gmii_txd_r[3:0]),
	    .datain_l(gmii_txd_r[7:4]),
	    .outclock(gmii_tx_clk),
	    .dataout(rgmii_td));

endmodule