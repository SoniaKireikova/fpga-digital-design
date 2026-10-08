module right_shifter 
(input wire [7:0]in,
output wire [7:0]out 
); 
assign out[7] = in[0]; 
assign out[6:0] = in[7:1];
 
endmodule
