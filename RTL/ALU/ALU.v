module ALU #( parameter OPER_WIDTH = 8, FUN_WIDTH = 4, OUT_WIDTH = OPER_WIDTH*2)(
	input      [OPER_WIDTH-1:0] A,
	input      [OPER_WIDTH-1:0] B,
	input      [FUN_WIDTH-1:0]  ALU_FUN,
	input						EN,
	input 	          			clk,
	input						rst,
	output reg [OUT_WIDTH-1:0]  ALU_OUT,
	output reg                  OUT_VALID
);

	reg [OUT_WIDTH-1:0] out_alu_comb;
	reg 				out_valid_comb;
	
	always @(posedge clk or negedge rst)
		begin
		 if(!rst)
		  begin
			ALU_OUT <= 'b0;
			OUT_VALID <= 1'b0;
		  end
		 else
		  begin
			ALU_OUT <= out_alu_comb;
			OUT_VALID <= out_valid_comb;
		  end
		end

	always @(*)
		begin
		 out_alu_comb = 'b0;
		 out_valid_comb = 1'b0;
		 if(EN)
		  begin
			out_valid_comb = 1'b1;
			case(ALU_FUN)
				4'b0000:
					begin
						out_alu_comb = A + B;
					end
				4'b0001:
					begin
						out_alu_comb = A - B;
					end
				4'b0010:
					begin
						out_alu_comb = A * B;
					end
				4'b0011:
					begin
						out_alu_comb = A / B;
					end
				4'b0100:
					begin
						out_alu_comb = A & B;
					end
				4'b0101:
					begin
						out_alu_comb = A | B;
					end
				4'b0110:
					begin
						out_alu_comb = ~(A & B);
					end
				4'b0111:
					begin
						out_alu_comb = ~(A | B); 
					end
				4'b1000:
					begin
						out_alu_comb = A ^ B;
					end
				4'b1001:
					begin
						out_alu_comb = ~(A ^ B);
					end
				4'b1010:
					begin
						if (A == B)
							out_alu_comb = 16'b1;
						else
							out_alu_comb = 16'b0;
					end
				4'b1011:
					begin
						if (A > B)
							out_alu_comb = 16'b10;
						else
							out_alu_comb = 16'b0;
					end
				4'b1100:
					begin
						if (A < B)
							out_alu_comb = 16'b11;
						else
							out_alu_comb = 16'b0;
					end
				4'b1101:
					begin
						out_alu_comb = A >> 1;
					end
				4'b1110:
					begin
						out_alu_comb = A << 1;
					end
				default:
					begin
						out_alu_comb = 16'b0;
					end
			endcase
		  end
		 else
		  begin
		    out_valid_comb = 1'b0;
		  end
		end

endmodule 
