module BCD
(
input wire [11:0] bcd_in, 
output wire [11:0] bcd_out
);


wire [3:0] first_num, second_num, third_num; 
wire [9:0]  next_num; 
wire [3:0] first_next , second_next, third_next; 
assign first_num = bcd_in[11:8]; 
assign second_num = bcd_in[7:4];
assign third_num = bcd_in[3:0]; 

assign  next_num = ((first_num * 100) + (second_num * 10) +(third_num)) +1; 
assign first_next = next_num / 100; 
assign second_next = (next_num % 100) / 10;
assign third_next = next_num % 10;

assign bcd_out = {first_next, second_next, third_next}; 

endmodule