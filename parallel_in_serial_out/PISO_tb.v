`timescale 1ns/1ps
module PISO_tb();
parameter n = 4;
reg clk, reset, load;
reg [n-1:0] data_in;
wire so;

PISO #(n) uut (
    .clk(clk),
    .reset(reset),
    .load(load),
    .serial_out(so),
    .data_in(data_in)
);

localparam T = 20;
always
begin
    clk = 1'b1;
    #(T/2);

    clk = 1'b0;
    #(T/2);
end

always
begin
reset = 0;
data_in = 4'b1001;
load = 0;
@(negedge clk);

reset = 1;
load = 1;
#(T);
load = 0;
data = 0;
#500;

$stop;

end

endmodule