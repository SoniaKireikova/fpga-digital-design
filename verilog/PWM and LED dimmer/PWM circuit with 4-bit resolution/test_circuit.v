module test_circuit 
(
input wire [3:0] w, 
output wire [3:0] en, 
output wire [7:0] sseg , 
input wire clk, reset
); 
wire[3:0]d0, d1, d2, d3; 
wire [3:0] dp; 
assign reset_1 = !reset; 
assign d0 = 4'h5; 
assign d1 = 4'h6; 
assign d2 = 4'h7; 
assign d3 = 4'h8; 
assign dp = 4'b001; 

led led_unit 
(.hex0(d0), .hex1(d1), .hex2(d2), .hex3(d3), .w(w), .en(en), .sseg(sseg), .reset(reset_1), .clk(clk), .dp(dp) ); 

endmodule 
