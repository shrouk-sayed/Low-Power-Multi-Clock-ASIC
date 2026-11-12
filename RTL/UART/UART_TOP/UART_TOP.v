module UART_TOP #(parameter DWIDTH = 8)(
 input   wire       RST,
 input   wire       TX_CLK,
 input   wire       RX_CLK,
 input   wire       RX_IN_S,
 input   wire [DWIDTH-1:0] TX_IN_P, 
 input   wire       	   TX_IN_V,   
 input   wire [5:0] 	   Prescale, 
 input   wire       	   PAR_EN,
 input   wire       	   PAR_TYP,
 output  wire [DWIDTH-1:0] RX_OUT_P, 
 output  wire       	   RX_OUT_V,
 output  wire       	   TX_OUT_S,
 output  wire       	   TX_OUT_V,
 output  wire       	   Parity_Error,
 output  wire       	   Stop_Error
);


UART_TX #(.DWIDTH(DWIDTH)) u0_UART_TX (
.clk(TX_CLK),
.rst(RST),
.P_DATA(TX_IN_P),
.Data_Valid(TX_IN_V),
.PAR_EN(PAR_EN),
.PAR_TYP(PAR_TYP), 
.TX_OUT(TX_OUT_S),
.busy(TX_OUT_V)
);
 
 
UART_RX #(.DWIDTH(DWIDTH)) u0_UART_RX (
.CLK(RX_CLK),
.RST(RST),
.RX_IN(RX_IN_S),
.prescale(Prescale),
.PAR_EN(PAR_EN),
.PAR_TYP(PAR_TYP),
.P_DATA(RX_OUT_P), 
.data_valid(RX_OUT_V),
.Parity_Error(Parity_Error),
.Stop_Error(Stop_Error)
);
 


endmodule 