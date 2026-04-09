module T_FF_tb();
reg clk_tb, T_tb, reset_tb;
wire q_tb;

T_FF uut (.clk(clk_tb), .T(T_tb), .reset_n(reset_tb), .q(q_tb));
localparam T = 20;
always
begin
    clk_tb = 1'b1;
    #(T/2);

    clk_tb = 1'b0;
    #(T/2);
end

always
begin
    reset_tb = 1'b0;
    #5;
    reset_tb = 1'b1;
    T_tb = 1'b1;
    #50;

    T_tb = 1'b0;
    #50;

    T_tb = 1'b1;
    #5000;

end




endmodule