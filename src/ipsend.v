module ipsend(
    input              clk,
    output reg         txen,
    output reg         txer,
    output reg [7:0]   dataout,
    input              clr,
    input      [31:0]  crc,
    input      [31:0]  datain,
    output reg         crcen,
    output reg         crcre,
    output reg         crc_valid,
    output reg [3:0]   tx_state,
    input      [15:0]  tx_data_length,
    input      [15:0]  tx_total_length,
    output reg [8:0]   ram_rd_addr
);

reg [31:0] ip_header [6:0];                  //数据段为1K

reg [7:0] preamble [7:0];                    //preamble
reg [7:0] mac_addr [13:0];                   //mac address
reg [4:0] i,j;

reg [31:0] check_buffer;
reg [31:0] time_counter;
reg [15:0] tx_data_counter;

localparam
    STATE_IDLE=4'b0000,
    STATE_START=4'b0001,
    STATE_MAKE_HEADER=4'b0010,
    STATE_PREAMBLE=4'b0011,
    STATE_SENDMAC=4'b0100,
    STATE_SEND_HEADER=4'b0101,
    STATE_SEND_DATA=4'b0110,
    STATE_APPENDCRC=4'b0111;

    always@(negedge clk)begin
        if(!clr) begin
            tx_state<=STATE_IDLE;
            //定义IP 包头
            preamble[0]<=8'h55;                 //7个前导码55,一个帧开始符d5
            preamble[1]<=8'h55;
            preamble[2]<=8'h55;
            preamble[3]<=8'h55;
            preamble[4]<=8'h55;
            preamble[5]<=8'h55;
            preamble[6]<=8'h55;
            preamble[7]<=8'hD5;

            //此段为调试主机的MAC地址
            mac_addr[0]<=8'h70;                 //目的MAC地址 70-85-C2-5E-39-7F
            mac_addr[1]<=8'h85;
            mac_addr[2]<=8'hC2;
            mac_addr[3]<=8'h5E;
            mac_addr[4]<=8'h39;
            mac_addr[5]<=8'h7F;

            //此段为FPGA系统的MAC地址
            mac_addr[6]<=8'h00;                 //源MAC地址 00-07-ED-01-FE-C0
            mac_addr[7]<=8'h07;
            mac_addr[8]<=8'hED;
            mac_addr[9]<=8'h01;
            mac_addr[10]<=8'hFE;
            mac_addr[11]<=8'hC0;

            mac_addr[12]<=8'h08;                //0800: IP包类型
            mac_addr[13]<=8'h00;

            i<=0;
        end
        else begin
            case(tx_state)
                STATE_IDLE : begin
                    crc_valid<=1'b0;
                    txer<=1'b0;
                    txen<=1'b0;
                    crcen<=1'b0;
                    crcre<=1;
                    j<=0;
                    dataout<=0;
                    ram_rd_addr<=1;
                    tx_data_counter<=0;
                    if (time_counter==32'h20000000) begin          //等待延迟
                        tx_state<=STATE_START;
                        time_counter<=0;
                    end
                    else
                        time_counter<=time_counter+1'b1;
                    end
                STATE_START : begin
                    ip_header[0]<={16'h4500,tx_total_length};        //版本号：4； 包头长度：20；IP包总长
                    ip_header[1][15:0]<=16'h4000;                    //Fragment offset
                    ip_header[1][31:16]<=ip_header[1][31:16]+1'b1;   //包序列号
                    ip_header[2]<=32'h80110000;                      //mema[2][15:0] 协议：17(UDP)
                    ip_header[3]<=32'hc0a80003;                      //192.168.0.3源地址
                    ip_header[4]<=32'hc0a80002;                      //192.168.0.2目的地址广播地址
                    ip_header[5]<=32'h1f901f90;                      //2个字节的源端口号和2个字节的目的端口号
                    ip_header[6]<={tx_data_length,16'h0000};         //2个字节的数据长度和2个字节的校验和（无）
                    tx_state<=STATE_MAKE_HEADER;
                    i<=0;
                end
                STATE_MAKE_HEADER:begin            //生成包头的校验和
                    if(i==0) begin
                        check_buffer<=
                            ip_header[0][15:0]
                            +ip_header[0][31:16];
                        i<=i+1'b1;
                    end
                    else if(i==1) begin
                        check_buffer<=
                            check_buffer
                            +ip_header[1][15:0]
                            +ip_header[1][31:16];
                        i<=i+1'b1;
                    end
                    else if(i==2) begin
                        check_buffer<=
                            check_buffer
                            +ip_header[2][15:0]
                            +ip_header[2][31:16];
                        i<=i+1'b1;
                    end
                    else if(i==3) begin
                        check_buffer<=
                            check_buffer
                            +ip_header[3][15:0]
                            +ip_header[3][31:16];
                        i<=i+1'b1;
                    end
                    else if(i==4) begin
                        check_buffer<=
                            check_buffer
                            +ip_header[4][15:0]
                            +ip_header[4][31:16];
                        i<=i+1'b1;
                    end
                    else if(i==5) begin
                            check_buffer[15:0]<=check_buffer[31:16]
                            +check_buffer[15:0];
                        i<=i+1'b1;
                    end
                    else if (i==6) begin
                        ip_header[2][15:0]<=~check_buffer[15:0];                 //header checksum
                        i<=0;
                        tx_state<=STATE_PREAMBLE;
                    end
                    else begin
                        tx_state<=STATE_IDLE;
                    end
                end
                STATE_PREAMBLE: begin                    //发送8个IP前导码:7个55, 1个d5
                    txen<=1'b1;
                    crcre<=1'b1;                            //reset crc
                    if(i==7) begin
                        dataout[7:0]<=preamble[i][7:0];
                        i<=0;
                        tx_state<=STATE_SENDMAC;
                    end
                    else begin
                        dataout[7:0]<=preamble[i][7:0];
                        i<=i+1'b1;
                    end
                end
                STATE_SENDMAC: begin                           //发送目标MAC address和源MAC address
                    crcen<=1'b1;                            //crc校验使能
                    crcre<=1'b0;
                    if(i==13) begin
                        dataout[7:0]<=mac_addr[i][7:0];
                        i<=0;
                        tx_state<=STATE_SEND_HEADER;
                    end
                    else begin
                        dataout[7:0]<=mac_addr[i][7:0];
                        i<=i+1'b1;
                    end
                end
                STATE_SEND_HEADER: begin                        //发送7个32bit的IP 包头
                    if(j==6) begin
                        if(i==0) begin
                            dataout[7:0]<=ip_header[j][31:24];
                            i<=i+1'b1;
                        end
                        else if(i==1) begin
                            dataout[7:0]<=ip_header[j][23:16];
                            i<=i+1'b1;
                        end
                        else if(i==2) begin
                            dataout[7:0]<=ip_header[j][15:8];
                            i<=i+1'b1;
                        end
                        else if(i==3) begin
                            dataout[7:0]<=ip_header[j][7:0];
                            i<=0;
                            j<=0;
                            tx_state<=STATE_SEND_DATA;
                        end
                        else
                            txer<=1'b1;
                    end
                    else begin
                        if(i==0) begin
                            dataout[7:0]<=ip_header[j][31:24];
                            i<=i+1'b1;
                        end
                        else if(i==1) begin
                            dataout[7:0]<=ip_header[j][23:16];
                            i<=i+1'b1;
                        end
                        else if(i==2) begin
                            dataout[7:0]<=ip_header[j][15:8];
                            i<=i+1'b1;
                        end
                        else if(i==3) begin
                            dataout[7:0]<=ip_header[j][7:0];
                            i<=0;
                            j<=j+1'b1;
                        end
                        else
                            txer<=1'b1;
                    end
                end
                STATE_SEND_DATA:begin                                      //发送UDP数据包
                    if(tx_data_counter==tx_data_length-9) begin       //发送最后的数据
                        tx_state<=STATE_APPENDCRC;
                        if(i==0) begin
                            dataout[7:0]<=datain[31:24];
                            i<=0;
                        end
                        else if(i==1) begin
                            dataout[7:0]<=datain[23:16];
                            i<=0;
                        end
                        else if(i==2) begin
                            dataout[7:0]<=datain[15:8];
                            i<=0;
                        end
                        else if(i==3) begin
                            dataout[7:0]<=datain[7:0];
                            i<=0;
                        end
                    end
                    else begin                                     //发送其它的数据包
                        tx_data_counter<=tx_data_counter+1'b1;
                        if(i==0) begin
                            dataout[7:0]<=datain[31:24];
                            i<=i+1'b1;
                        end
                        else if(i==1) begin
                            dataout[7:0]<=datain[23:16];
                            i<=i+1'b1;
                        end
                        else if(i==2) begin
                            dataout[7:0]<=datain[15:8];
                            i<=i+1'b1;
                            ram_rd_addr<=ram_rd_addr+1'b1;
                        end
                        else if(i==3) begin
                            dataout[7:0]<=datain[7:0];
                            i<=0;
                        end
                    end
                end
                STATE_APPENDCRC: begin                              //发送32位的crc校验
                    crcen<=1'b0;
                    crc_valid<=1'b1;
                    if(i==0) begin
                        dataout[7:0] <= {~crc[24], ~crc[25], ~crc[26], ~crc[27], ~crc[28], ~crc[29], ~crc[30], ~crc[31]};
                        i<=i+1'b1;
                    end
                    else if(i==1) begin
                        dataout[7:0]<={~crc[16], ~crc[17], ~crc[18], ~crc[19], ~crc[20], ~crc[21], ~crc[22], ~crc[23]};
                            i<=i+1'b1;
                    end
                    else if(i==2) begin
                        dataout[7:0]<={~crc[8], ~crc[9], ~crc[10], ~crc[11], ~crc[12], ~crc[13], ~crc[14], ~crc[15]};
                            i<=i+1'b1;
                    end
                    else if(i==3) begin
                        dataout[7:0]<={~crc[0], ~crc[1], ~crc[2], ~crc[3], ~crc[4], ~crc[5], ~crc[6], ~crc[7]};
                        i<=0;
                        tx_state<=STATE_IDLE;
                        crc_valid<=1'b0;
                    end
                    else begin
                        txer<=1'b1;
                    end
                end
                default:
                    tx_state<=STATE_IDLE;
            endcase
        end
    end
endmodule


