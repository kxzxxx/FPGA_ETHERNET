module ethernet(

    input wire rst_n,
    input wire clk_50,

    output e_mdc,
    inout e_mdio,
	 
    //input wire e_rxc,                       //125Mhz ethernet gmii rx clock
    //input wire e_rxdv,
    //input wire e_rxer,
    //input wire [7:0] e_rxd,

    //output wire e_txc,             //25Mhz ethernet mii tx clock
    output wire e_gtxc,                   //25Mhz ethernet gmii tx clock
    //output wire e_txen,
    //output wire e_txer,

    input wire rgmii_rx_clk,
    input wire [3:0] rgmii_rx_data,
    input wire rgmii_rx_dv,             //rx_ctl

    output wire rgmii_tx_clk,
    output wire [3:0] rgmii_tx_data,
    output wire rgmii_tx_en    //tx_ctl


    //output wire [7:0] e_txd,

    //input  wire phy_sgmii_rx_p,
    //output wire phy_sgmii_tx_p,
    //output wire phy_reset_n //reset phy


    );


    wire e_rxc;         
    wire e_rxdv;
    wire e_rxer;
    wire [7:0] e_rxd;

    wire e_txc;     
    wire [7:0] e_txd;
    wire e_txen;
    wire e_txer;

    wire mdio_oen;
    wire mdio_in;
    wire mdio_out;

//RGMII to GMII

    util_gmii_to_rgmii u0util_gmii_to_rgmii(
        .rgmii_rd(rgmii_rx_data),
        .rgmii_rx_ctl(rgmii_rx_dv),
        .rgmii_rxc(rgmii_rx_clk),

        .rgmii_td(rgmii_tx_data),
        .rgmii_tx_ctl(rgmii_tx_en),
        .rgmii_txc(rgmii_tx_clk),


        .gmii_rx_d(e_rxd), 
        .gmii_rx_dv(e_rxdv),
        .gmii_rx_er(e_rxer), 
        .gmii_rx_clk(e_rxc),


        .gmii_tx_d(e_txd), 
        .gmii_tx_en(e_txen),
        .gmii_tx_er(e_txer), 
        .gmii_tx_clk(e_txc)



    );

    //inital
    reg[7:0] cnt;
    reg reset_n;  

    
    always@(posedge rgmii_rx_clk or negedge rst_n)
    begin
        if(!rst_n) begin
            cnt <= 0;
            reset_n <= 1'b0;
        end
        else begin
            if(cnt < 8'b1111_1111) begin
                cnt <= cnt+1'b1;
                reset_n <= 1'b0;
            end
            else begin
                cnt <= cnt;
                reset_n <= 1'b1; 
            end
        end
    end

    assign e_mdio = (reset_n && mdio_oen)? 1'bz : mdio_out;
    assign mdio_in = (reset_n && mdio_oen)? e_mdio : 1'bz;

 	eth_mdio u0mdio (
		.clk             (clk_50),             //       clock.clk
		.reset           (!reset_n),           // clock_reset.reset
		.csr_write       (),       //         csr.write
		.csr_read        (),        //            .read
		.csr_address     (),     //            .address
		.csr_writedata   (),   //            .writedata
		.csr_readdata    (),    //            .readdata
		.csr_waitrequest (), //            .waitrequest
		.mdc             (e_mdc),             //        mdio.mdc
		.mdio_in         (mdio_in),         //            .mdio_in
		.mdio_out        (mdio_out),        //            .mdio_out
		.mdio_oen        (mdio_oen)         //            .mdio_oen
	);



                    
    //SGMII to GMII
    //tse u0sgmii (
    //.clk            (ref_clk_p),            //   input,   width = 1, control_port_clock_connection.clk

    //.gmii_rx_dv     (e_rxdv),     //  output,   width = 1,               gmii_connection.gmii_rx_dv
    //.gmii_rx_d      (e_rxd),      //  output,   width = 8,                              .gmii_rx_d
    //.gmii_rx_err    (e_rxer),    //  output,   width = 1,                              .gmii_rx_err
    //.gmii_tx_en     (e_txen),     //   input,   width = 1,                              .gmii_tx_en
    //.gmii_tx_d      (e_txd),      //   input,   width = 8,                              .gmii_tx_d
    //.gmii_tx_err    (e_txer),    //   input,   width = 1,                              .gmii_tx_err


    //.rx_clk         (e_rxc),         //  output,   width = 1,  pcs_receive_clock_connection.clk
    //.reset_rx_clk   (),   //   input,   width = 1,  pcs_receive_reset_connection.reset

    //.ref_clk        (ref_clk_p),        //   input,   width = 1,  pcs_ref_clk_clock_connection.clk
    //.tx_clk         (e_txc),         //  output,   width = 1, pcs_transmit_clock_connection.clk
    //.reset_tx_clk   (),   //   input,   width = 1, pcs_transmit_reset_connection.reset
    //.reset          (),          //   input,   width = 1,              reset_connection.reset
    //.rx_recovclkout (), //  output,   width = 1,     serdes_control_connection.export

    //.rxp            (phy_sgmii_rx_p),            //   input,   width = 1,             serial_connection.rxp_0
    //.txp            (phy_sgmii_tx_p)            //  output,   width = 1,                              .txp_0


    //);

    wire [31:0] ram_wr_data;
    wire [31:0] ram_rd_data;
    wire [8:0] ram_wr_addr;
    wire [8:0] ram_rd_addr;

    assign e_gtxc=e_txc;
    
    wire [31:0] datain_reg;

    wire [3:0] tx_state;
    wire [3:0] rx_state;
    wire [15:0] rx_total_length;          //rx 的IP包的长度
    wire [15:0] tx_total_length;          //tx 的IP包的长度
    wire [15:0] rx_data_length;           //rx 的UDP的数据包长度
    wire [15:0] tx_data_length;           //rx 的UDP的数据包长度

    wire data_receive;
    reg ram_wr_finish;

    reg [31:0] udp_data [6:0];                        //存储发送字符
    reg ram_wren_i;
    reg [8:0] ram_addr_i;
    reg [31:0] ram_data_i;
    reg [4:0] i=0;

    wire data_o_valid;
    wire wea;
    wire [8:0] addra;
    wire [31:0] dina;

    //assign e_gtxc = rgmii_tx_clk;

    assign wea=ram_wr_finish?data_o_valid:ram_wren_i;
    assign addra=ram_wr_finish?ram_wr_addr:ram_addr_i;
    assign dina=ram_wr_finish?ram_wr_data:ram_data_i;


    assign tx_data_length=data_receive?rx_data_length:16'd36;
    assign tx_total_length=data_receive?rx_total_length:16'd56;



// eth route




////////udp发送和接收程序///////////////////
udp u1(
	.reset_n(reset_n),
	.e_rxc(e_rxc),
	.e_rxd(e_rxd),
	.e_rxdv(e_rxdv),
	.data_o_valid(data_o_valid),                    //数据接收有效信号,写入RAM/
	.ram_wr_data(ram_wr_data),                      //接收到的32bit数据写入RAM/
	.rx_total_length(rx_total_length),              //接收IP包的总长度/
    //.mydata_num(),                        //for chipscope test
	.rx_state(rx_state),                            //for chipscope test
	.rx_data_length(rx_data_length),                //接收IP包的数据长度/
	.ram_wr_addr(ram_wr_addr),
	.data_receive(data_receive),

	.e_txen(e_txen),
	.e_txd(e_txd),
	.e_txer(e_txer),
	.ram_rd_data(ram_rd_data),                      //RAM读出的32bit数据/
	.tx_state(tx_state),                            //for chipscope test
    //.datain_reg(datain_reg),                        //for chipscope test
	.tx_data_length(tx_data_length),                //发送IP包的数据长度/
	.tx_total_length(tx_total_length),              //接发送IP包的总长度/
	.ram_rd_addr(ram_rd_addr)

	);


//////////ram用于存储以太网接收到的数据或测试数据///////////////////
ram_2p ram_inst
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
begin     //定义发送的字符
    udp_data[0]<={"H","E","L","L"};	//H		E		L		L
    udp_data[1]<={"O"," ","W","O"};	//O		空格	W		O
    udp_data[2]<={"R","L","D","\n"};//R		L		D		转行
    udp_data[3]<={"X","i","a","o"};	//X		i		a		o
    udp_data[4]<={"m","e","i","g"};	//m		e		i		g
    udp_data[5]<={"e","_","f","p"};	//e		_		f		p
    udp_data[6]<={"g","a"," ","\n"};//g		a	   空格	换行
end


//////////写入默认发送的数据//////////////////
always@(negedge e_rxc)
begin
    if(!reset_n)
    begin
        ram_wr_finish<=1'b0;
        ram_addr_i<=0;
        ram_data_i<=0;
        i<=0;
    end
    else begin
        if(i==7) begin
            ram_wr_finish<=1'b1;
            ram_wren_i<=1'b0;
        end
        else begin
            ram_wren_i<=1'b1;
            ram_addr_i<=ram_addr_i+1'b1;
            ram_data_i<=udp_data[i];
            i<=i+1'b1;
        end
    end
end

endmodule
