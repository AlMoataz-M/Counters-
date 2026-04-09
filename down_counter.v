module down_counter #(bits = 4)(
    input clk, reset,
    output [bits - 1 : 0] q
);

reg [bits-1:0] q_next, q_reg;

always @(posedge clk, negedge reset)
begin
    if(!reset)
        q_reg <= {bits{1'b0}};
    else
        q_reg <= q_next;
end


always @(*)
begin
    q_next = q_reg - 1;    
end
assign q = q_reg;

endmodule