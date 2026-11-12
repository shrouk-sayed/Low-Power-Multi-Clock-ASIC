module MUX(
 input  wire [1:0] mux_sel,
 input  wire 	   ser_data,
 input  wire 	   par_bit,
 input  wire 	   clk,
 input  wire 	   rst,
 output reg  	   TX_OUT
);

always @(posedge clk or negedge rst)
 begin
  if(! rst)
   begin
	TX_OUT <= 1'b1;
   end
  else 
   begin
     case(mux_sel)
		2'b00: begin
			TX_OUT <= 1'b0; // start bit
		end
		2'b01: begin
			TX_OUT <= ser_data;
		end
		2'b10: begin
			TX_OUT <= par_bit;
		end
		2'b11: begin
			TX_OUT <= 1'b1; // stop bit
		end	
     endcase
   end
 end

endmodule
