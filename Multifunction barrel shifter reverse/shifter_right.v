module shifter_right 
(
input wire [7:0] in, 
output wire [7:0] out
); 
assign out = {in[0],in[7:1]}; 
endmodule 