module fsm_tb;
parameter s0 = 2'b00, 
			 s1 = 2'b01,
			 s2 = 2'b10,
		    s3 = 2'b11,
			 //outputs
			 y0 = 2'b00,
			 y1 = 2'b01,
			 y2 = 2'b10, 
			 //inputs 
			 x0 = 3'b001,
			 x1 = 3'b010, 
			 x2 = 3'b100;  
reg clk, reset; 
reg [2:0] x; 
wire [1:0] y;
wire[1:0] r_state, r_next; 



fsm #(
    .s0(s0),
    .s1(s1),
    .s2(s2),
    .s3(s3),
    .x0(x0),
    .x1(x1),
    .x2(x2),
    .y0(y0),
    .y1(y1),
    .y2(y2)
)uut0(
.clk(clk), 
.reset(reset),
.x(x),
.y(y), 
.r_state(r_state), 
.r_next(r_next) 
); 
integer takt; 
initial 
begin //initial
reset = 1'b0; 
clk = 1'b0; 
#5 reset = 1'b1; 
#10 reset = 1'b0; 
#5 for(takt = 0; takt < 10; takt = takt +1) 
begin //for
case (takt) 
0:  x = x0; 
1:  x = x2;
2:  x = x0;
3:  x = x1;
4:  x = x0;
5:  x = x1;
6:  x = x1;
7:  x = x0;
8:  x = x1; 
9:  x = x1; 

endcase
#5 clk = 1'b1; 
//#25 clk = 1'b1;
#10 clk = 1'b0; 
#20; 
end //for
//$finish;
end //initial
endmodule