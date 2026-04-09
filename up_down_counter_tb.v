`timescale 1ns/1ps

module up_down_tb();
parameter M = 11;
reg clk, res, up;
wire [$clog2(M)-1:0] q;
wire don;

up_down_counter #(.m(M)) uut (
    .clk(clk),
    .reset(res),
    .up_down(up),
    .q(q),
    .done(don)
);

localparam T = 20;
always
begin
    clk = 1'b1;
    #(T/2);

    clk = 1'b0;
    #(T/2);
end

initial
begin
    res = 1'b0;
    up = 1'b1;
    #5;
    res = 1'b1;
    #600;
    up = 1'b0;
    #600; 	
	$stop;
end
endmodule