module fsm
#(
//states 
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
			 x2 = 3'b100
)
(
input wire clk,reset,  
input wire[2:0] x, 
output reg [1:0] y, 
output reg[1:0] r_state, r_next 
);

//declaration
//reg[1:0] r_state, r_next;
 

// state register
always @(posedge clk, posedge reset)
if (reset)
r_state <= s0;
else
r_state <= r_next; 

//next-state logic 
always @*
begin 
case(r_state)
s0: 
	begin //s0
	if(x == x0)
		r_next = s0; 
	else if (x == x1)
		r_next = s1; 
	else if (x == x2)
		r_next = s3; 
	else r_next = s0; 
	end//s0
s1: 
	begin //s1
	if(x == x0)
		r_next = s1; 
	else if (x == x1)
		r_next = s2; 
	else if (x == x2)
		r_next = s0; 
	else r_next = s1; 
	end//s1
s2:
	begin //s2
	if(x == x0)
		r_next = s2; 
	else if (x == x1)
		r_next = s3; 
	else if (x == x2)
		r_next = s1; 
	else r_next = s2; 
	end//s2
s3: 
	begin //s3
	if(x == x0)
		r_next = s3; 
	else if (x == x1)
		r_next = s0; 
	else if (x == x2)
		r_next = s2; 
	else r_next = s3; 
	end//s3
endcase
end //always

//output logic 
always @*
begin 
if (r_state==s0 && x==x2)
y = y2; 
else if (r_state==s3 && x==x1)
y = y1; 
else 
y = y0; 
end

endmodule

