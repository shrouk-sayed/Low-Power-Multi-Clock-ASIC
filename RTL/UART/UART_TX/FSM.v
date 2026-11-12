module FSM(
 input  wire       Data_Valid,
 input  wire       PAR_EN,
 input  wire       ser_done,
 input  wire       clk,
 input  wire       rst,
 output reg        ser_en,
 output reg  [1:0] mux_sel,
 output reg        busy
);

// state encoding

localparam IDLE =3'b000;
localparam START_BIT =3'b001;
localparam DATA =3'b011;
localparam PARITY_BIT =3'b010;
localparam STOP_BIT =3'b110;

reg [2:0] current_state, next_state;

reg busy_c;

// state transition
always @(posedge clk or negedge rst)
 begin
  if(! rst)
   begin
	current_state <= IDLE;
   end
  else
   begin
	current_state <= next_state;
   end
 end
 
//register output 
always @ (posedge clk or negedge rst)
 begin
  if(!rst)
   begin
    busy <= 1'b0 ;
   end
  else
   begin
    busy <= busy_c ;
   end
 end

// next state logic 
always @(*)
 begin
  case(current_state)
   IDLE: begin
	if(Data_Valid)
	 begin
	  next_state = START_BIT;
	 end
	else
	 begin
	  next_state = IDLE;
	 end
    end
    START_BIT: begin
	  next_state = DATA;
    end
    DATA: begin
	  if(ser_done)
	   begin
	      next_state = (PAR_EN) ? PARITY_BIT : STOP_BIT;
	   end
	  else
	   begin	
	      next_state = DATA;
	   end
    end
    PARITY_BIT: begin
		next_state = STOP_BIT;
    end
    STOP_BIT: begin
		next_state = IDLE;
    end
    default: next_state = IDLE;
  endcase
 end
 
// output logic
always @(*)
 begin
  ser_en = 1'b0;
  mux_sel = 2'b00;
  busy_c = 1'b0;
  case(current_state)
   IDLE: begin
	  ser_en = 1'b0;
	  mux_sel = 2'b11;
	  busy_c = 1'b0;
    end
    START_BIT: begin
	  mux_sel = 2'b00;
	  busy_c = 1'b1;
    end
    DATA: begin
	  mux_sel = 2'b01;
	  ser_en = (!ser_done) ? 1'b1 : 1'b0;
	  busy_c = 1'b1;
    end
    PARITY_BIT: begin
	  mux_sel = 2'b10;
	  busy_c = 1'b1;
    end
    STOP_BIT: begin
	  mux_sel = 2'b11;
	  busy_c = 1'b1;
    end
	default: begin
	  ser_en = 1'b0;
	  mux_sel = 2'b00;
	  busy_c = 1'b0;
	end
  endcase
 end
 
endmodule
