
module SYS_TOP # ( parameter DATA_WIDTH = 8 ,  RF_ADDR = 4 )

(
 input   wire  RST_N,
 input   wire  UART_CLK,
 input   wire  REF_CLK,
 input   wire  UART_RX_IN,
 output  wire  UART_TX_O,
 output  wire  Parity_Error,
 output  wire  Stop_Error
);

// RST signals
wire  SYNC_UART_RST;
wire  SYNC_REF_RST;

// UART CLK signal									   
wire  UART_TX_CLK;
wire  UART_RX_CLK;

// ALU CLK signal
wire  ALU_CLK ;	

// REG FILE internal signals

wire [DATA_WIDTH-1:0]  Operand_A;
wire [DATA_WIDTH-1:0]  Operand_B;
wire [DATA_WIDTH-1:0]  UART_Config;
wire [DATA_WIDTH-1:0]  DIV_RATIO;
wire                   RF_WrEn;
wire                   RF_RdEn;
wire [RF_ADDR-1:0]     RF_Address;
wire [DATA_WIDTH-1:0]  RF_WrData;
wire [DATA_WIDTH-1:0]  RF_RdData;
wire                   RF_RdData_VLD;	

// ALU internal signals
wire                    ALU_EN;
wire [3:0]              ALU_FUN; 
wire [DATA_WIDTH*2-1:0] ALU_OUT;
wire                    ALU_OUT_VLD; 								   

// CLK GATING internal signals
wire CLKG_EN;
	
// System Controller internal signals	
wire [DATA_WIDTH-1:0] DIV_RATIO_RX;
wire                  CLKDIV_EN ;

// RX internal signals
wire [DATA_WIDTH-1:0] UART_RX_OUT;
wire         		  UART_RX_V_OUT;
wire [DATA_WIDTH-1:0] UART_RX_SYNC;
wire                  UART_RX_V_SYNC;

// TX internal signals
wire [DATA_WIDTH-1:0] UART_TX_IN;
wire        		  UART_TX_VLD;
wire [DATA_WIDTH-1:0] UART_TX_SYNC;
wire        		  UART_TX_V_SYNC;

// Pulse Generator internal signals
wire UART_TX_Busy;	
wire UART_TX_Busy_PULSE;	

// FIFO internal signals
wire FIFO_FULL ;
	

		
// CLOCK DOMAIN 1

// Register File instantiation

reg_file #(.WIDTH(DATA_WIDTH), .DEPTH(16), .ADDR(RF_ADDR)) U0_RegFile (
.clk(REF_CLK),
.rst(SYNC_REF_RST),
.WrEn(RF_WrEn),
.RdEn(RF_RdEn),
.Address(RF_Address),
.WrData(RF_WrData),
.RdData(RF_RdData),
.RdData_VLD(RF_RdData_VLD),
.REG0(Operand_A),
.REG1(Operand_B),
.REG2(UART_Config),
.REG3(DIV_RATIO)
);


// ALU instantiation
 
ALU U0_ALU (
.clk(ALU_CLK),
.rst(SYNC_REF_RST),  
.A(Operand_A), 
.B(Operand_B),
.EN(ALU_EN),
.ALU_FUN(ALU_FUN),
.ALU_OUT(ALU_OUT),
.OUT_VALID(ALU_OUT_VLD)
);


// Clock Gating instantiation

clk_gating U0_CLK_GATE (
.en(CLKG_EN),
.clk(REF_CLK),
.gated_clk(ALU_CLK)
);


// System Controller instantiation

SYS_CTRL U0_SYS_CTRL (
.CLK(REF_CLK),
.RST(SYNC_REF_RST),
.RdData(RF_RdData),
.RdData_Valid(RF_RdData_VLD),
.WrEN(RF_WrEn),
.RdEN(RF_RdEn),
.Address(RF_Address),
.WrData(RF_WrData),
.ALU_EN(ALU_EN),
.ALU_FUN(ALU_FUN), 
.ALU_OUT(ALU_OUT),
.OUT_Valid(ALU_OUT_VLD),  
.CLK_EN(CLKG_EN), 
.clk_div_en(CLKDIV_EN),   
.FIFO_FULL(FIFO_FULL),
.RX_P_Data(UART_RX_SYNC), 
.RX_D_VLD(UART_RX_V_SYNC),
.TX_P_Data(UART_TX_IN), 
.TX_D_VLD(UART_TX_VLD)
);


// CLOCK DOMAIN 2


// Clock Divider for UART_TX Clock instantiation

ClkDiv #(.RATIO_WD(8))U0_ClkDiv (
.i_ref_clk(UART_CLK),             
.i_rst(SYNC_UART_RST),                 
.i_clk_en(CLKDIV_EN),               
.i_div_ratio(DIV_RATIO),           
.o_div_clk(UART_TX_CLK)             
);

// Custom Mux Clock instantiation

CLKDIV_MUX U0_CLKDIV_MUX (
.IN(UART_Config[7:2]),
.OUT(DIV_RATIO_RX)
);

//Clock Divider for UART_RX Clock instantiation

ClkDiv #(.RATIO_WD(8))U1_ClkDiv (
.i_ref_clk(UART_CLK),             
.i_rst(SYNC_UART_RST),                 
.i_clk_en(CLKDIV_EN),               
.i_div_ratio(DIV_RATIO_RX),           
.o_div_clk(UART_RX_CLK)             
);		


// UART instantiation

UART_TOP  #(.DWIDTH(DATA_WIDTH)) U0_UART (
.RST(SYNC_UART_RST),
.TX_CLK(UART_TX_CLK),
.RX_CLK(UART_RX_CLK),
.PAR_EN(UART_Config[0]),
.PAR_TYP(UART_Config[1]),
.Prescale(UART_Config[7:2]),
.RX_IN_S(UART_RX_IN),
.RX_OUT_P(UART_RX_OUT),                      
.RX_OUT_V(UART_RX_V_OUT),                      
.TX_IN_P(UART_TX_SYNC), 
.TX_IN_V(!UART_TX_V_SYNC), 
.TX_OUT_S(UART_TX_O),
.TX_OUT_V(UART_TX_Busy),
.Parity_Error(Parity_Error),
.Stop_Error(Stop_Error)                  
);


// Pulse Generator instantiation

PULSE_GEN U0_PULSE_GEN (
.clk(UART_TX_CLK),
.rst(SYNC_UART_RST),
.lvl_sig(UART_TX_Busy),
.pulse_sig(UART_TX_Busy_PULSE)
);


// synchronizers

// Reset synchronizers instantiation

RST_SYNC # (.NUM_STAGES(2)) U0_RST_SYNC (
.RST(RST_N),
.CLK(UART_CLK),
.SYNC_RST(SYNC_UART_RST)
);

RST_SYNC # (.NUM_STAGES(2)) U1_RST_SYNC (
.RST(RST_N),
.CLK(REF_CLK),
.SYNC_RST(SYNC_REF_RST)
);

//Data Synchronizer instantiation

DATA_SYNC # (.NUM_STAGES(2) , .BUS_WIDTH(8)) U0_ref_sync (
.CLK(REF_CLK),
.RST(SYNC_REF_RST),
.unsync_bus(UART_RX_OUT),
.bus_enable(UART_RX_V_OUT),
.sync_bus(UART_RX_SYNC),
.enable_pulse(UART_RX_V_SYNC)
);

// Async FIFO instantiation

ASYNC_FIFO #(.DATA_WIDTH(DATA_WIDTH)) U0_UART_FIFO (
.W_CLK(REF_CLK),
.W_RST(SYNC_REF_RST),  
.W_INC(UART_TX_VLD),
.WR_DATA(UART_TX_IN),             
.R_CLK(UART_TX_CLK),              
.R_RST(SYNC_UART_RST),              
.R_INC(UART_TX_Busy_PULSE),              
.RD_DATA(UART_TX_SYNC),             
.FULL(FIFO_FULL),               
.EMPTY(UART_TX_V_SYNC)               
);

endmodule
 