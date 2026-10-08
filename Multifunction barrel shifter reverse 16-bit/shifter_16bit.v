module shifter_16bit 
#(
parameter N = 16
)
(
input wire [N-1 : 0] in, 
input wire lr, 
output reg [N-1 : 0] out
); 

wire [N-1:0] left_out, right_out; 

shift_left #(.R(N))  left (
.in(in), .out(left_out)
); 

shift_right  #(.R(N)) right(
.in(in), .out(right_out)
); 



always @* 
begin 
case (lr)
1: out = right_out; 
0: out = left_out;
endcase 
end 
endmodule 

