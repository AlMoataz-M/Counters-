module async_up_counter #(parameter n = 4) (
    input clk, reset_n, T,
    output [n-1:0] q
);
// wire [n:0] Q;
// assign Q[0] = T;
// assign Q[n] = q[n-1];
wire [n:0] t;
assign t[0] = T;
generate 
genvar k;
    for(k=0; k <n; k=k+1)
    begin: stage 
        // T_FF  (.clk(clk), .T(Q[k]), .q(Q[k+1]), .reset_n(reset_n));
        T_FF  (.clk(clk), .T(t[k]), .q(q[k]), .reset_n(reset_n));
        assign t[k+1] = t[k] & q[k];
    
    end
endgenerate



endmodule