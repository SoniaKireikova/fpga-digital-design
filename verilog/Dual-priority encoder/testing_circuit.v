module testing_circuit 
(
input wire [11:0] req, 
output wire [7:0] sseg_first, sseg_second
); 
wire [3:0] first, second; 

encoder unit_1
(
.req(req), .first(first), .second(second)
); 

seven_segment unit_2 
(
.hex(first), .sseg(sseg_first)
);

seven_segment unit_3 
(
.hex(second), .sseg(sseg_second)
);
endmodule 