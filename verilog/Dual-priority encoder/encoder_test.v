module encoder_test; 
reg [12:0] req; 
wire [3:0] first, second; 

encoder uut 
(
.req(req), .first(first), .second(second)
); 


integer j; 
initial begin 
for (j=0; j<1024; j=j+1) 
begin 
req = j; 
#10; 
end 
end 
endmodule 