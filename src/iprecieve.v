module iprecieve(
    input clk,
    input [7:0] datain,
    input e_rxdv,
    input clr,
    output reg [47:0]  board_mac,
    output reg [47:0]  pc_mac,
    output reg [15:0]  IP_Prtcl,
    output reg [159:0] IP_layer,
    output reg [31:0]  pc_IP,
    output reg [31:0]  board_IP,
    output reg [63:0]  UDP_layer,
    //output reg [15:0]  mydata_num,
    output reg [31:0]  data_o,
    output reg         valid_ip_P,
    output reg [15:0]  rx_total_length,         //UDP frame的总长度
    output reg         data_o_valid,            //added for receive test//
    output reg [3:0]   rx_state,
    output reg [15:0]  rx_data_length,          //接收的UDP数据包的长度
    output reg [8:0]   ram_wr_addr,
    output reg         data_receive
);

reg [15:0] myIP_Prtcl;
reg [159:0] myIP_layer;
reg [63:0] myUDP_layer;
reg [31:0] mydata;
reg [2:0] byte_counter;
reg [4:0] state_cursor;
reg [95:0] mymac;
reg [15:0] data_counter;

localparam
    STATE_IDLE                = 4'd0,
    STATE_PREAMBLE            = 4'd1,
    STATE_RX_MAC              = 4'd3,
    STATE_RX_IP_PROTOCOL      = 4'd4,
    STATE_RX_IP_LAYER         = 4'd5,
    STATE_RX_UDP_LAYER        = 4'd6,
    STATE_RX_DATA             = 4'd7,
    STATE_RX_FINISH           = 4'd8;


always@(posedge clk) begin
    if(!clr) begin
        rx_state<=STATE_IDLE;
        data_receive<=1'b0;
    end
    else
        case(rx_state)
            STATE_IDLE : begin
                valid_ip_P<=1'b0;
                byte_counter<=3'd0;
                data_counter<=10'd0;
                mydata<=32'd0;
                state_cursor<=5'd0;
                data_o_valid<=1'b0;
                ram_wr_addr<=0;
                if(e_rxdv==1'b1) begin
                    if(datain==8'h55) begin                  //接收到第一个55//
                        rx_state<=STATE_PREAMBLE;
                        mydata<={mydata[23:0],datain[7:0]};
                    end
                    else
                        rx_state<=STATE_IDLE;
                end
            end
            // check if is ethernet frame
            STATE_PREAMBLE : begin
                if((datain==8'h55)&&(e_rxdv==1'b1)) begin
                    state_cursor<=state_cursor+1'b1;
                end
                else if((datain[7:0]==8'hd5)&&(state_cursor==6)&&(e_rxdv==1'b1)) begin
                    rx_state<=STATE_RX_MAC;
                end
                else begin
                    rx_state<=STATE_IDLE;
                end
            end
            //接收目标mac address和源mac address
            STATE_RX_MAC : begin
                if(e_rxdv==1'b1) begin
                    if(state_cursor<5'd11)  begin
                        mymac<={mymac[87:0],datain};
                        state_cursor<=state_cursor+1'b1;
                    end
                   else begin
                       board_mac<=mymac[87:40];
                       pc_mac<={mymac[39:0],datain};
                       state_cursor<=5'd0;
                        if((mymac[87:72]==16'h000a)&&(mymac[71:56]==16'h3501)&&(mymac[55:40]==16'hfec0))   //判断目标MAC Address是否为本FPGA
                           rx_state<=STATE_RX_IP_PROTOCOL;
                        else
                           rx_state<=STATE_IDLE;
                   end
                end
                else
                   rx_state<=STATE_IDLE;
          end
          STATE_RX_IP_PROTOCOL: begin                                              //接收2个字节的IP TYPE//
              if(e_rxdv==1'b1) begin
                    if(state_cursor<5'd1) begin
                         myIP_Prtcl<={myIP_Prtcl[7:0],datain[7:0]};
                         state_cursor<=state_cursor+1'b1;
                    end
                    else    begin
                         IP_Prtcl<={myIP_Prtcl[7:0],datain[7:0]};
                         valid_ip_P<=1'b1;
                   state_cursor<=5'd0;
                         rx_state<=STATE_RX_IP_LAYER;
                    end
                end
               else
                rx_state<=STATE_IDLE;
            end
           STATE_RX_IP_LAYER: begin               //接收20字节的udp虚拟包头,ip address
                valid_ip_P<=1'b0;
                if(e_rxdv==1'b1) begin
                    if(state_cursor<5'd19)  begin
                        myIP_layer<={myIP_layer[151:0],datain[7:0]};
                        state_cursor<=state_cursor+1'b1;
                    end
                    else begin
                        IP_layer<={myIP_layer[151:0],datain[7:0]};
                        state_cursor<=5'd0;
                        rx_state<=STATE_RX_UDP_LAYER;
                    end
                end
                else
                   rx_state<=STATE_IDLE;
            end
            STATE_RX_UDP_LAYER: begin                      //接受8字节UDP的端口号及UDP数据包长
                rx_total_length<=IP_layer[143:128];
                pc_IP<=IP_layer[63:32];
                board_IP<=IP_layer[31:0];
                if(e_rxdv==1'b1) begin
                    if(state_cursor<5'd7)   begin
                        myUDP_layer<={myUDP_layer[55:0],datain[7:0]};
                        state_cursor<=state_cursor+1'b1;
                    end
                    else begin
                        UDP_layer<={myUDP_layer[55:0],datain[7:0]};
                  rx_data_length<= myUDP_layer[23:8];                //UDP数据包的长度
                        state_cursor<=5'd0;
                        rx_state<=STATE_RX_DATA;
                    end
                end
                else
                   rx_state<=STATE_IDLE;
            end
            STATE_RX_DATA: begin                                             //接收UDP的数据
                if(e_rxdv==1'b1) begin
                    if (data_counter==rx_data_length-9) begin         //存最后的数据
                        data_counter<=0;
                        rx_state<=STATE_RX_FINISH;
                        ram_wr_addr<=ram_wr_addr+1'b1;
                        data_o_valid<=1'b1;               //写RAM
                        if(byte_counter==3'd3) begin
                            data_o<={mydata[23:0],datain[7:0]};
                            byte_counter<=0;
                        end
                            else if(byte_counter==3'd2) begin
                                data_o<={mydata[15:0],datain[7:0],8'h00};       //不满32bit,补0
                                  byte_counter<=0;
                             end
                            else if(byte_counter==3'd1) begin
                                data_o<={mydata[7:0],datain[7:0],16'h0000};     //不满32bit,补0
                                  byte_counter<=0;
                             end
                            else if(byte_counter==3'd0) begin
                                data_o<={datain[7:0],24'h000000};              //不满32bit,补0
                                  byte_counter<=0;
                             end
                        end
                        else begin
                             data_counter<=data_counter+1'b1;
                            if(byte_counter<3'd3)   begin
                                  mydata<={mydata[23:0],datain[7:0]};
                                  byte_counter<=byte_counter+1'b1;
                               data_o_valid<=1'b0;
                             end
                             else begin
                                data_o<={mydata[23:0],datain[7:0]};
                                byte_counter<=3'd0;
                                  data_o_valid<=1'b1;                        //接受4byes数据,写ram请求
                          ram_wr_addr<=ram_wr_addr+1'b1;
                      end
                  end
               end
                    else
                          rx_state<=STATE_IDLE;
             end
             STATE_RX_FINISH: begin
                    data_o_valid<=1'b0;               //added for receive test//
                     data_receive<=1'b1;
                rx_state<=STATE_IDLE;
          end
             default:rx_state<=STATE_IDLE;
        endcase
        end
endmodule
