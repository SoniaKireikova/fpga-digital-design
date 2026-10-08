module shifter 
	(
	input wire [7:0]in, 
	input wire mod, 
	output reg [7:0] out
	); 
	wire[7:0] left_out, right_out;
	
	left_shifter unit_1 
		(.in(in), .out(left_out));
		
	right_shifter unit_0 
		(.in(in), .out(right_out));
	always @*
	begin 
		case (mod) 
		1'b1: 
		begin 
		 out = left_out; 
		end 
		1'b0:
		begin 
			out = right_out; 
		end 
		endcase 
	end 
	endmodule 
			
	