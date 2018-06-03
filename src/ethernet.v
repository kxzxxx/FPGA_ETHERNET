module ethernet(
    input rst_n,
    input clk_50,
    input ref_clk_p,

    input sample_clk,

    //output e_mdc,
    //inout  e_mdio,

    //output reg [7:0] o_led,
    input  wire phy_sgmii_rx_p,
    output wire phy_sgmii_tx_p
    //output wire phy_reset_n //reset phy


    );



  wire e_rxc;                       //125Mhz ethernet gmii rx clock
  wire e_rxdv;
  wire e_rxer;
  wire [7:0] e_rxd;

  wire e_txc;              //25Mhz ethernet mii tx clock
  //wire e_gtxc;                    //25Mhz ethernet gmii tx clock
  wire e_txen;
  wire e_txer;
  wire [7:0] e_txd;
                    
//SGMII to GMII
tse u0sgmii (
		.clk            (clk_50),            //   input,   width = 1, control_port_clock_connection.clk 50-100Mhz

		.gmii_rx_dv     (e_rxdv),     //  output,   width = 1,               gmii_connection.gmii_rx_dv
		.gmii_rx_d      (e_rxd),      //  output,   width = 8,                              .gmii_rx_d
		.gmii_rx_err    (e_rxer),    //  output,   width = 1,                              .gmii_rx_err
		.gmii_tx_en     (e_txen),     //   input,   width = 1,                              .gmii_tx_en
		.gmii_tx_d      (e_txd),      //   input,   width = 8,                              .gmii_tx_d
		.gmii_tx_err    (e_txer),    //   input,   width = 1,                              .gmii_tx_err

		.rx_clk         (e_rxc),         //  output,   width = 1,  pcs_receive_clock_connection.clk
		//.reset_rx_clk   (),   //   input,   width = 1,  pcs_receive_reset_connection.reset

		.ref_clk        (ref_clk_p),        //   input,   width = 1,  pcs_ref_clk_clock_connection.clk
		.tx_clk         (e_txc),         //  output,   width = 1, pcs_transmit_clock_connection.clk
		//.reset_tx_clk   (),   //   input,   width = 1, pcs_transmit_reset_connection.reset
		//.reset          (),          //   input,   width = 1,              reset_connection.reset
		//.rx_recovclkout (), //  output,   width = 1,     serdes_control_connection.export

		.rxp            (phy_sgmii_rx_p),            //   input,   width = 1,             serial_connection.rxp_0
		.txp            (phy_sgmii_tx_p)            //  output,   width = 1,                              .txp_0


	);

    wire [31:0] ram_wr_data;
    wire [31:0] ram_rd_data;
    wire [8:0] ram_wr_addr;
    wire [8:0] ram_rd_addr;

    wire [15:0] rx_total_length;          //rx 的IP包的长度
    wire [15:0] tx_total_length;          //tx 的IP包的长度
    wire [15:0] rx_data_length;           //rx 的UDP的数据包长度
    wire [15:0] tx_data_length;           //rx 的UDP的数据包长度

    wire data_receive;
    reg ram_wr_finish;

    reg [31:0] udp_data [6:0];                        //存储发送字符
    reg ram_wren_ing;
    reg [8:0] ram_addr_i;
    reg [31:0] ram_data_i;
    reg [4:0] iterator_0=0;

    wire data_o_valid;
    wire wea;
    wire [8:0] addra;
    wire [31:0] dina;

    assign wea=ram_wr_finish?data_o_valid:ram_wren_ing;
    assign addra=ram_wr_finish?ram_wr_addr:ram_addr_i;
    assign dina=ram_wr_finish?ram_wr_data:ram_data_i;

    assign tx_data_length=data_receive?rx_data_length:16'd36;
    assign tx_total_length=data_receive?rx_total_length:16'd56;

    init_rst u0init(
        .rst_n(rst_n),
        .clk(ref_clk_p),
        .reset_n(reset_n)
    );


////////udp发送和接收程序///////////////////
udp u1(
	.reset_n(reset_n),
	.e_rxc(e_rxc),
	.e_rxd(e_rxd),
	.e_rxdv(e_rxdv),
	.data_o_valid(data_o_valid),                    //数据接收有效信号,写入RAM/
	.ram_wr_data(ram_wr_data),                      //接收到的32bit数据写入RAM/
	.rx_total_length(rx_total_length),              //接收IP包的总长度/
	.rx_data_length(rx_data_length),                //接收IP包的数据长度/
	.ram_wr_addr(ram_wr_addr),
	.data_receive(data_receive),

	.e_txen(e_txen),
	.e_txd(e_txd),
	.e_txer(e_txer),
	.ram_rd_data(ram_rd_data),                      //RAM读出的32bit数据/
	.tx_data_length(tx_data_length),                //发送IP包的数据长度/
	.tx_total_length(tx_total_length),              //接发送IP包的总长度/
	.ram_rd_addr(ram_rd_addr)

	);


//////////ram用于存储以太网接收到的数据或测试数据///////////////////
ram_2p ram_in
(
	.data(dina),
	.clock(e_rxc),
	.rdaddress(ram_rd_addr),
	.wraddress(addra),
	.wren(wea),
	.q(ram_rd_data)
);

/********************************************/
//存储待发送的字符
/********************************************/
always @(*)
begin
    //定义发送的字符
    udp_data[0]<={"H","E","L","L"};
    udp_data[1]<={"O"," ","W","O"};
    udp_data[2]<={"R","L","D","!"};
    udp_data[3]<={" ","Z","h","a"};
    udp_data[4]<={"n","g"," ","l"};
    udp_data[5]<={"i","n","g","y"};
    udp_data[6]<={"o","u","!","\n"};
end


//////////写入默认发送的数据//////////////////
always@(negedge e_rxc)
begin
    if(!reset_n)
    begin
        ram_wr_finish<=1'b0;
        ram_addr_i<=0;
        ram_data_i<=0;
        iterator_0<=0;
    end
    else begin
        if(iterator_0==7) begin
            ram_wr_finish<=1'b1;
            ram_wren_ing<=1'b0;
        end
        else begin
            ram_wren_ing<=1'b1;
            ram_addr_i<=ram_addr_i+1'b1;
            ram_data_i<=udp_data[iterator_0];
            iterator_0<=iterator_0+1'b1;
        end
    end
end

endmodule
