module shifter_reverse 
(
input wire [7:0] in, 
input wire lr,
output reg [7:0] out
); 

wire [7:0] revese_0, right_1, reverse_2, out_r;


reverse step_1 
(
.in(in),
.out(revese_0)
);  

shifter_right step_2 
(
.in(revese_0), 
.out(right_1)
); 

reverse step_3 
(
.in(right_1), 
.out(reverse_2)
);

shifter_right right_step 
(
.in(in), 
.out(out_r)
); 

always @* 
begin 
case (lr)
1'b0: out = reverse_2; 
1'b1: out = out_r; 
endcase 
end 
endmodule  
