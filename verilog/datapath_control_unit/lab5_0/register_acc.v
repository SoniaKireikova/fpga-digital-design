module register_acc 
#(
parameter N = 8
)
(
input wire Clk, 
input wire [1:0] c_acc, 
output wire [N-1:0] z
);

//declaration 
reg [N-1:0] r_state; 
reg [N-1:0] r_next;

//register 
always @(posedge Clk) 
r_state <= r_next; 

//next-state logic 
always @* 
case (c_acc) 
	2'b01: 
		r_next = 0; 
	2'b10: 
		r_next = r_state + 1; 
	default: 
		r_next = r_state; 
endcase 

//output logic 
assign z = r_state; 

endmodule 
