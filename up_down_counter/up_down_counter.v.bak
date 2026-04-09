`timescale 1ns/1ps

module up_down_counter #(parameter m = 8) (
    input clk, reset, up_down, // if asserted count up  
    output [$clog2(m)-1:0] q,
    output done
);

reg [$clog2(m)-1:0] q_reg, q_next;

always @(posedge clk, negedge reset)
begin
    if(!reset)
        q_reg <= 'b0;
    else 
        q_reg <= q_next;
end
assign done = (q_reg == m-1);
always @(*)
begin
    if(up_down)
    begin
      q_next = done? 'b0 :q_reg + 1;
    end
    else
    begin
        if(q_reg == 0)
            q_next = m-1;
        else    
            q_next = done ? m-2 : q_reg - 1;

    end
end
assign q = q_reg;
endmodule