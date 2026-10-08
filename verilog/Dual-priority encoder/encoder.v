module encoder 
(
input wire [11:0] req, 
output reg [3:0] first, second
);
integer i,j; 
reg [3:0] counter, counter_2; 
 
always @* 
	begin 
	counter = 0; 
	counter_2 = 0; 
	for (i=0; i<12; i=i+1)
		begin 
		if (req[i]==1) 
			begin 
			counter = i; 
			end 
		end 
	first = counter; 
	for (j=0; j<counter && j < 12; j= j+1)
		begin 
		if (req[j]==1) 
			begin 
			counter_2 = j; 
			end 
		end 
	second = counter_2; 
	end 
	
endmodule 
	
	
