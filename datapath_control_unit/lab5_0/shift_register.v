module shift_register 
#(
parameter N = 8
)
(
input wire [1:0] c_sh_rg, 
input wire Clk, 
input wire [N-1:0] in, 
output wire [N-1:0]x
); 

//declaration 
reg [N-1:0] r_next; 
reg [N-1:0] r_state; 

//register 
always @(posedge Clk) 
	begin 
	r_state <= r_next; 
	end 
//next-state logic 

always @* 
	begin //always
	case (c_sh_rg)
		2'b01: 
			r_next = in; 
		2'b10: 
			r_next = {1'b0 , r_state [N-1:1]}; 
		default: 
			r_next = r_state; 
	endcase 
	end //always

//output logic 
assign x = r_state; 
endmodule 