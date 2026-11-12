module SYS_CTRL(
 input  CLK,
 input  RST,
 
 // alu control signals
 input      [15:0] ALU_OUT,
 input 		       OUT_Valid,
 output reg	       ALU_EN,
 output reg [3:0]  ALU_FUN,
 
 // rx control signals
 input  [7:0] RX_P_Data,
 input 	 	  RX_D_VLD,
 
 // tx control signals
 output reg [7:0] TX_P_Data,
 output reg	      TX_D_VLD,

 // reg control signals
 input      [7:0] RdData,
 input 		      RdData_Valid,
 output reg [3:0] Address,
 output reg	      WrEN,
 output reg 	  RdEN,
 output reg [7:0] WrData,
 
 // fifo control signals
 input  FIFO_FULL,
 
 // clk_gate control signals
 output reg CLK_EN,
 
 // clk divider control signals
 output reg clk_div_en
);

// state encoding
localparam RECIEVE = 4'b0000;
localparam DECODE = 4'b0001;
localparam WR_ADD = 4'b0011;
localparam WR_DATA =4'b0010;
localparam RD_ADD = 4'b0110;
localparam ALU_FUN_S = 4'b0111;
localparam OP_A = 4'b0101;
localparam OP_B =4'b0100;
localparam SEND_TX = 4'b1100;
localparam SEND_FIFO = 4'b1101;

reg [3:0] current_state, next_state;

reg [3:0] addr_prev;
reg [3:0] alu_prev;



// state transition
always @(posedge CLK or negedge RST)
 begin
	if(!RST)
	 begin
		current_state <= RECIEVE;
	 end
	else
	 begin
		current_state <= next_state;
	 end
 end
 
reg [3:0] prev_state;

always @(posedge CLK or negedge RST) begin
  if(!RST)
    prev_state <= RECIEVE;
  else
    prev_state <= current_state;
end

wire state_enter_WR_DATA = (current_state == WR_DATA) && (prev_state != WR_DATA);
wire state_enter_SEND_TX = (current_state == SEND_TX) && (prev_state != SEND_TX);

// next state logic 
always @(*)
 begin
	case(current_state)
	 RECIEVE: begin
		if(RX_D_VLD)
		 begin
			next_state <= DECODE;
		 end
		else
		 begin
			next_state <= RECIEVE;
		 end
	 end
	 DECODE : begin
		if(RX_P_Data == 'hAA)
		 begin
			next_state <= WR_ADD;
		 end
		else if(RX_P_Data == 'hBB)
		 begin
			next_state <= RD_ADD;
		 end
		else if(RX_P_Data == 'hCC)
		 begin
			next_state <= OP_A;
		 end
		else if(RX_P_Data == 'hDD)
		 begin
			next_state <= ALU_FUN_S;
		 end
		else
		 begin
			next_state <= RECIEVE;
		 end
	 end
	 WR_ADD : begin
		if(RX_D_VLD)
		 begin
			next_state <= WR_DATA;
		 end
		else
		 begin
			next_state <= WR_ADD;
		 end
	 end
	 WR_DATA : begin // need to check 
		if(RX_D_VLD)
		 begin
			next_state <= DECODE;
		 end
		else
		 begin
			next_state <= WR_DATA; // try make it WrData in stead of RECIEVE
		 end
	 end
	 RD_ADD : begin
		if(RX_D_VLD) // change RdData_Valid to RX_D_VLD
		 begin
			next_state <= SEND_FIFO;
		 end
		else
		 begin
			next_state <= RD_ADD;
		 end
	 end
	 ALU_FUN_S : begin
		if(RX_D_VLD) // change OUT_Valid to RX_D_VLD
		 begin
			next_state <= SEND_FIFO;
		 end
		else
		 begin
			next_state <= ALU_FUN_S;
		 end
	 end
	 OP_A : begin
		if(RX_D_VLD)
		 begin
			next_state <= OP_B;
		 end
		else
		 begin
			next_state <= OP_A;
		 end
		//next_state <= OP_B;
	 end
	 OP_B : begin
		if(RX_D_VLD)
		 begin
			next_state <= ALU_FUN_S;
		 end
		else
		 begin
			next_state <= OP_B;
		 end
		//next_state <= ALU_FUN_S;
	 end
	 SEND_TX : begin
		if(RX_D_VLD)
		 begin
			next_state <= DECODE;
		 end
		else
		 begin
			next_state <= RECIEVE;
		 end
	 end
	 SEND_FIFO : begin
		if(!FIFO_FULL)
		 begin
			next_state <= SEND_TX;
		 end
		else
		 begin
			next_state <= SEND_FIFO;
		 end
	 end
	 default : begin
		next_state <= RECIEVE;
	 end
	endcase
 end
 
// output logic 
always @(*) 
 begin
	ALU_EN = 'b0;
	ALU_FUN = 'b0;
	TX_P_Data = 'b0;
	TX_D_VLD = 'b0;
	Address = 'b0;
	WrEN = 'b0;
	RdEN = 'b0;
	WrData = 'b0;
	CLK_EN = 'b0;
	clk_div_en ='b1;
	case(current_state)
	 RECIEVE: begin
	 
	 end
	 DECODE : begin
	 
	 end
	 WR_ADD : begin
		if(RX_D_VLD)
		 begin
			Address = RX_P_Data[3:0];
			addr_prev = Address;
		 end
	 end
	 WR_DATA : begin
		Address = addr_prev; // Keep Address 
		if(RX_D_VLD)
		 begin
			WrData = RX_P_Data;
			WrEN = 'b1;
		 end
		
	 end
	 RD_ADD : begin
		Address = RX_P_Data[3:0];
		RdEN = 'b1;
	 end
	 ALU_FUN_S : begin
		if(RX_D_VLD)
		 begin
			ALU_FUN = RX_P_Data[3:0];
			alu_prev = ALU_FUN;
		 end
		ALU_EN = 'b1;
		CLK_EN = 'b1;
	 end
	 OP_A : begin
		Address = 4'h0;
		if(RX_D_VLD)
		 begin
			WrData = RX_P_Data;
			WrEN = 'b1;
		 end
	 end
	 OP_B : begin
		Address = 4'h1;
		if(RX_D_VLD)
		 begin
			WrData = RX_P_Data;
			WrEN = 'b1;
		 end
	 end
	 SEND_TX : begin
		ALU_FUN = alu_prev;
		TX_P_Data =  (RdData_Valid) ? RdData : ALU_OUT[7:0] ;
        TX_D_VLD = 'b1;
	 end
	 SEND_FIFO : begin
		ALU_FUN = alu_prev;
		if(!FIFO_FULL & RdData_Valid)
		 begin
			WrData =  RdData;
			WrEN = 'b1;
		 end
		else
		 begin
			WrData =  ALU_OUT[7:0];
			WrEN = 'b0;
		 end
	 end
	 default : begin
		
	 end
	endcase
 end

endmodule