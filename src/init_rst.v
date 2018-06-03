module init_rst(
    input rst_n,
    input clk,
    output reg reset_n
);
    //inital
    reg [7:0] cnt;

    always@(posedge clk or negedge rst_n)
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
endmodule