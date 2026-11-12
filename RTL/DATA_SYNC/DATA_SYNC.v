module DATA_SYNC #(parameter NUM_STAGES = 2, parameter BUS_WIDTH = 8)(
 input  	[BUS_WIDTH-1:0] unsync_bus,
 input						bus_enable,
 input						CLK,
 input						RST,
 output reg [BUS_WIDTH-1:0] sync_bus,
 output reg					enable_pulse
);

reg [NUM_STAGES-1:0] sync_reg;
reg					 enable_sync_reg;
reg 				 pulse_reg;
reg 				 mux_sel;

integer i;

always @(posedge CLK or negedge RST)
 begin
	if(!RST)
	 begin
		sync_reg <= 1'b0;
		sync_bus <= 'b0;
	 end
	else 
	 begin
		sync_reg <= {sync_reg[NUM_STAGES-2:0],bus_enable};
		pulse_reg <= enable_sync_reg;
		
		enable_pulse <= mux_sel;
		case(mux_sel)
		1'b0: begin
			sync_bus <= sync_bus;
		end
		1'b1: begin
			sync_bus <= unsync_bus;
		end
		endcase
	 end
 end
 
always @(*)
 begin
	enable_sync_reg = sync_reg[NUM_STAGES-1];
	mux_sel = !pulse_reg & enable_sync_reg;
 end

endmodule