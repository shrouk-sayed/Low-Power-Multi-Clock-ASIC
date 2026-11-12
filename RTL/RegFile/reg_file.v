module reg_file #(parameter WIDTH = 8, DEPTH = 16, ADDR = 4 )(
	input       [WIDTH-1:0]  WrData,
	input       [ADDR-1:0]   Address,
	input             		 WrEn,
	input             		 RdEn,
	input             		 clk,
	input             		 rst,
	output reg  [WIDTH-1:0]  RdData,
	output reg 		  		 RdData_VLD,
	output      [WIDTH-1:0]  REG0,
	output      [WIDTH-1:0]  REG1,
	output      [WIDTH-1:0]  REG2,
	output      [WIDTH-1:0]  REG3
);

integer I ; 

reg [WIDTH-1:0] Reg_File [0:DEPTH-1];

always @(posedge clk or negedge rst)
 begin
  if(!rst)
   begin
    RdData_VLD <= 1'b0 ;
	RdData     <= 'b0 ;
    for (I=0 ; I < DEPTH ; I = I +1)
      begin
		if(I==2)
          Reg_File[I] <= 'b100000_01 ;
		else if (I==3) 
          Reg_File[I] <= 'b0010_0000 ;
        else
          Reg_File[I] <= 'b0 ;		 
      end
   end
  else if(WrEn && !RdEn)
	begin
	   Reg_File[Address] <= WrData;
	end
  else if(RdEn && !WrEn)
	begin
	   RdData <= Reg_File[Address];
	   RdData_VLD <= 1'b1 ;
    end  
   else
     begin
	   RdData_VLD <= 1'b0 ;
     end	 
 end
 

assign REG0 = Reg_File[0] ;
assign REG1 = Reg_File[1] ;
assign REG2 = Reg_File[2] ;
assign REG3 = Reg_File[3] ;

endmodule 
