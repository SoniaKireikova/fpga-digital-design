module pwm 
(
input wire [3:0] w, 
input wire clk, 
output wire out
); 
//t1 = w/16

//declaration 
reg [3:0]  d_reg, d_next; 

//body
//register 
always @(posedge clk)
begin 
d_reg <= d_next; 
end

//next-state logic 
always @* 
begin // d: 1 2 3 ... 14 15 0 1 2 3  
if (d_reg == 15) 
d_next = 0; 
else 
d_next = d_reg + 1;  

end
//output logic 
assign out = (d_reg < (16 -w)) ? 1'b0 : 1'b1; 

endmodule 