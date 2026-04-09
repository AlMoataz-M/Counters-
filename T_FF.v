module T_FF (
    input clk, T, reset_n,
    output q
);

reg q_next, q_reg;
always @(posedge clk, negedge reset_n)
begin
    if(!reset_n)
        q_reg <= 1'b0;
    else    
        q_reg <= q_next;
end

always @(T, q_reg)
begin
    q_next = 1'bx;
    if(T)
        q_next = ~q_reg;
    else
        q_next = q_reg;
end
assign q = q_reg;

endmodule 