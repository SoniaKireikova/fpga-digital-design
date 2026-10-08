module shift_right 
#(
parameter R = 16
)
(
input wire [(R-1):0] in ,  
output wire [(R-1):0] out  
); 
 assign out = {in[0], in[R-1 : 1]}; 
endmodule 
