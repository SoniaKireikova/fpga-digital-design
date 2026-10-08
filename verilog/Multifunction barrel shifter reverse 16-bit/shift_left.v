module shift_left 
#(
parameter R = 16
)
(
input wire [R-1:0] in ,  
output wire [R-1:0] out
); 
 assign out = {in[R-2 : 0], in[R-1]}; 
endmodule 
