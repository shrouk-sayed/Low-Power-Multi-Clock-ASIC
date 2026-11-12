module serializer #(parameter DWIDTH = 8)(
 input  wire [DWIDTH-1:0] P_DATA,
 input  wire       		  ser_en,
 input  wire       		  Data_Valid,
 input  wire	   		  busy,
 input  wire       		  clk,
 input  wire       		  rst,
 output reg        		  ser_data,
 output reg	   	   		  ser_done
);

// internal wires
reg [DWIDTH-1:0] data;
reg [3:0] data_counter;

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
	ser_data <= 1'b0;
	ser_done <= 1'b0;
	data_counter <= 4'b0;
   end
  else if (ser_en)
   begin
	  if(data_counter < DWIDTH)
	   begin
		ser_data <= data[data_counter];
		data_counter <= data_counter + 1'b1;
		ser_done <= 1'b0;
		if(data_counter == (DWIDTH-1))
	   	 begin
	 		ser_done <= 1'b1;
	   	 end
	   end
   end 
    else begin
        data_counter <= 4'd0;
        ser_done <= 1'b0;
    end
 end

endmodule
