module UART_TX #(parameter DWIDTH = 8)(
 input   [DWIDTH-1:0] P_DATA,
 input         		  Data_Valid,
 input         		  PAR_EN,
 input         		  PAR_TYP,
 input         		  clk,
 input         		  rst,
 output        		  TX_OUT,
 output        		  busy
);

// internal wires 
wire ser_done, ser_en, ser_data;
wire [1:0] mux_sel;
wire par_bit;

// serializer instantiation
serializer u_serializer (
 .P_DATA(P_DATA),
 .ser_en(ser_en),
 .Data_Valid(Data_Valid),
 .busy(busy),
 .clk(clk),
 .rst(rst),
 .ser_done(ser_done),
 .ser_data(ser_data)
);

// parity calculator instantiation
parity_calc u_parity_calc (
 .P_DATA(P_DATA),
 .Data_Valid(Data_Valid),
 .busy(busy),
 .PAR_EN(PAR_EN),
 .PAR_TYP(PAR_TYP),
 .clk(clk),
 .rst(rst),
 .par_bit(par_bit)
);

// MUX instantiation
MUX u_mux (
 .mux_sel(mux_sel),
 .ser_data(ser_data),
 .par_bit(par_bit),
 .clk(clk),
 .rst(rst),
 .TX_OUT(TX_OUT)
);

// FSM instantiation
FSM u_fsm (
 .Data_Valid(Data_Valid),
 .PAR_EN(PAR_EN),
 .ser_done(ser_done),
 .clk(clk),
 .rst(rst),
 .ser_en(ser_en),
 .mux_sel(mux_sel),
 .busy(busy)
);

endmodule
