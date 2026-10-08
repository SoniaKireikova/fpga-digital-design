module fsm_tb; 
reg clk, reset; 
reg [1:0] x; 
wire [1:0] y;
wire[1:0] r_state, r_next; 

fsm_mealy uut0(
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
#5 for(takt = 0; takt < 13; takt = takt +1) 
begin //for
case (takt) 
0:  x = 2'b00; 
1:  x = 2'b01;
2:  x = 2'b10;
3:  x = 2'b10;
4:  x = 2'b00;
5:  x = 2'b10;
6:  x = 2'b10;
7:  x = 2'b01;
8:  x = 2'b00;
9:  x = 2'b01;
10: x = 2'b01;
11: x = 2'b01;
12: x = 2'b00;
endcase
#5 clk = 1'b1; 
//#25 clk = 1'b1;
#10 clk = 1'b0;
#20; 
end //for
$finish;
end //initial
endmodule

