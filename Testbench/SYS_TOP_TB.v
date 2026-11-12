`timescale 1ns/1ps
module SYS_TOP_TB();

// port declaration
 reg  RST_N;
 reg  UART_CLK;
 reg  REF_CLK;
 reg  UART_RX_IN;
 wire UART_TX_O;
 wire Parity_Error;
 wire Stop_Error;
 
// port mapping
SYS_TOP #(.DATA_WIDTH(8), .RF_ADDR(4)) U0_SYS_TOP (
 .RST_N(RST_N),
 .UART_CLK(UART_CLK),
 .REF_CLK(REF_CLK),
 .UART_RX_IN(UART_RX_IN),
 .UART_TX_O(UART_TX_O),
 .Parity_Error(Parity_Error),
 .Stop_Error(Stop_Error)
);


real REF_CLK_PERIOD = 20;
real UART_CLK_PERIOD = 271.26; // default CLK for RX
real RX_CLK_PERIOD = 1085.04; // Prescale 8
real TX_CLK_PERIOD = 8680.55; // TX CLK at Prescale 32 

wire Prescale;
assign Prescale = U0_SYS_TOP.U0_UART.Prescale;
// initial block
initial
 begin
	$dumpfile("system.vcd");
	$dumpvars;
	UART_CLK = 1'b0;
	REF_CLK = 1'b0;
	UART_RX_IN = 1'b1;
	// Reset
	RST_N = 1'b1;
	#280
	RST_N = 1'b0;
	#280
	RST_N = 1'b1;

	// TEST CASE 1
	$display("##################TEST CASE 1##################");
	// Write REG2 = 0x21 → Prescale=8, ParityEn=1, ParityType=0
	send_frame(8'hAA); // Write command
	send_frame(8'h02); // Address = REG2
	send_frame(8'h21); // Data = prescale + parity config
	#(32*UART_CLK_PERIOD);
	if(U0_SYS_TOP.U0_RegFile.REG2 == 8'h21)
	 begin
		$display("Test Case 1 {WRITE TO REG FILE} PASSED ");
		$display("REG2 = %0h ",U0_SYS_TOP.U0_RegFile.REG2);
	 end
	else
	 begin
		$display("Test Case 1 {WRITE TO REG FILE} FAILED");
		$display("REG2 = %0h ",U0_SYS_TOP.U0_RegFile.REG2);
	 end
	
	#(11*32*UART_CLK_PERIOD);
	
	// TEST CASE 2
	$display("##################TEST CASE 2##################");
	// Read From REG2
	send_frame(8'hBB); // Read command
	send_frame(8'h02); // Address = REG2
	#(32*UART_CLK_PERIOD);
	check_frame(8'h21);
	#(11*32*UART_CLK_PERIOD);
	
	
	// TEST CASE 3
	$display("##################TEST CASE 3##################");
	// ALU OPERATION WITH OP COMMAND
	send_frame(8'hCC); // ALU command
	send_frame(8'd5);  // OP_A = 5 in Address 1
	send_frame(8'd7);  // OP_B = 7 in Address 2
	send_frame(8'h00); // A + B --- 5+7=12 --- 00001100
	#(32*UART_CLK_PERIOD);
	check_frame(8'd12);
	#(11*32*UART_CLK_PERIOD);
	
	
	
	
	// TEST CASE 4
	$display("##################TEST CASE 4##################");
	// ALU OPERATION WITH OP COMMAND
	send_frame(8'hDD); // ALU command
	send_frame(8'h02); // A * B --- 5*7=35 --- 00100011
	#(32*UART_CLK_PERIOD);
	check_frame(8'd35);
	#(11*32*UART_CLK_PERIOD);
	
	#80000
	$stop;
 end
	 
task send_frame;
  input [7:0] data;
  reg parity_bit;
  integer i;
  begin
	$display("Sending data %b", data);
	UART_RX_IN = 1'b0; // start bit
	# (32*UART_CLK_PERIOD);
	parity_bit = 0;
	for (i = 0; i < 8 ; i = i + 1)
	 begin
		UART_RX_IN = data[i];
		parity_bit = parity_bit ^ data[i];
		# (32*UART_CLK_PERIOD);
		
	 end
	UART_RX_IN = parity_bit; // parity bit
	# (32*UART_CLK_PERIOD);
	UART_RX_IN = 1'b1; // stop bit
	# (32*UART_CLK_PERIOD);
  end  
 endtask
 
	 
task check_frame;
  input [7:0] expec_data;
  reg parity_bit;
  integer j;
  begin
	$display("Reading data %b", expec_data);
	
	@(posedge U0_SYS_TOP.U0_UART.TX_CLK);
	#(3*TX_CLK_PERIOD);
	#(TX_CLK_PERIOD/2);
	// CHECK START BIT
	if(UART_TX_O == 0)
	 begin
		$display("START BIT PASSED ");
	 end
	else
	 begin
		$display("START BIT FAILED");
	 end
	parity_bit = 0;
	// CHECK DATA
	for (j = 0; j < 8 ; j = j + 1)
	 begin
		#(TX_CLK_PERIOD);
		if(UART_TX_O == expec_data[j])
		 begin
			$display("BIT %0d PASSED ", j);
		 end
		else
		 begin
			$display("BIT %0d FAILED", j);
		 end
		parity_bit = parity_bit ^ expec_data[j];
		
	 end
	 
	// CHECK PARITY BIT
	#(TX_CLK_PERIOD);
	if(UART_TX_O == parity_bit)
	 begin
		$display("PARITY BIT PASSED");
	 end
	else
	 begin
		$display("PARITY BIT FAILED");
	 end
	// CHECK STOP BIT
	#(TX_CLK_PERIOD);
	if(UART_TX_O == 1)
	 begin
		$display("STOP BIT PASSED");
	 end
	else
	 begin
		$display("STOP BIT FAILED");
	 end
  end  
 endtask
 

// Clock Generation
always #(REF_CLK_PERIOD/2) REF_CLK = ~REF_CLK;
always #(UART_CLK_PERIOD/2) UART_CLK = ~UART_CLK;

endmodule
