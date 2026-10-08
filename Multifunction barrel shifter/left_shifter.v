module left_shifter 
(
input wire [7:0]in, 
output wire [7:0] out
);

assign out[0] = in[7]; 
assign out[7:1] = in[6:0]; 

endmodule  