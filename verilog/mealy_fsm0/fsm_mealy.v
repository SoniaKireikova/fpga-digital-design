module fsm_mealy
(
input wire clk,reset,  
input wire[1:0] x, 
output reg [1:0] y, 
output reg[1:0] r_state, r_next 
);
//next-states
//localparam s0 = 2'b00; 
//localparam s1 = 2'b01;
//localparam s2 = 2'b10;
//localparam s3 = 2'b11;
//declaration
//reg[1:0] r_state, r_next; 

// state register
always @(posedge clk, posedge reset)
if (reset)
r_state <= 2'b00;
else
r_state <= r_next; 

//next-state logic 
always @*
begin 
case(x)
2'b01 : r_next = r_state + 2'b01; 
2'b10 : r_next = r_state +2'b11; 
default: r_next = r_state; 
endcase
end

//output logic 
always @*
begin 
if (r_state==2'b00 && x==2'b10)
y = 2'b10; 
else if (r_state==2'b11 && x==2'b01)
y = 2'b01; 
else 
y = 2'b00; 
end

endmodule

