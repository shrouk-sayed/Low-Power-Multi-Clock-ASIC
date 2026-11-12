module clk_gating(
 input en,
 input clk,
 output gated_clk
);

reg latch_out;

always @(clk or en)
 begin
	if(!clk)
		latch_out <= en;
 end 
 
assign gated_clk = latch_out & clk;
 
endmodule