module parity_calc #(parameter DWIDTH = 8)(
 input  wire [DWIDTH-1:0] P_DATA,
 input  wire       		  Data_Valid,
 input  wire	   		  busy,
 input	wire	   		  PAR_EN,
 input  wire       		  PAR_TYP,
 input  wire       		  clk,
 input  wire       		  rst,
 output reg        		  par_bit
);

// internal wires
reg [DWIDTH-1:0] data;

always @(posedge clk or negedge rst)
 begin
  if(! rst)
   begin
	data <= 'b0;
   end
  else if(Data_Valid & !busy)
   begin
	data <= P_DATA;
   end
 end
 
always @(posedge clk or negedge rst)
 begin
  if(! rst)
   begin
	par_bit <= 1'b0;
   end
  else if(PAR_EN)
   begin
	if(! PAR_TYP) // even parity
   	 begin
   	  par_bit <= ^ data;
     end
  	else  // odd parity
  	 begin
 	  par_bit <= ~ (^ data);
   	 end
   end
 end

endmodule
