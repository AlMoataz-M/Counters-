`timescale 1ns/1ps
module async_up_counter_tb();
parameter N = 4;
reg clk_tb, reset_tb, T_tb;
wire [N-1:0] Q;

async_up_counter #(N) uut (.clk(clk_tb), .reset_n(reset_tb), .T(T_tb), .q(Q));
localparam T = 20;
always
begin
    clk_tb = 1'b0;
    #(T/2);

    clk_tb = 1'b1;
    #(T/2);    
end

always
begin
    reset_tb = 1'b0;
    #5;
    reset_tb = 1'b1;
    T_tb= 1'b1;
    #500;



    $stop;    
end


endmodule