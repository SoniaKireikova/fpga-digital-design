module bcd 
(
input wire [11:0] in, 
output reg [11:0] out
); 
reg [3:0] first_in, second_in, third_in; 
always @* 
	begin 
	first_in = in[11:8]; 
	second_in = in[7:4]; 
	third_in = in[3:0]; 
	
	if(third_in < 9) 
		begin 
		third_in = third_in + 1'b1; 
		end 
	else if (second_in < 9) 
		begin 
		third_in = 4'b0000; 
		second_in = second_in + 1'b1; 
		end 
	else if (first_in < 9)
		begin 
		third_in = 4'b0000; 
		second_in = 4'b0000; 
		first_in = first_in + 1'b1; 	
		end
	else 
		begin 
		third_in = 4'b0000; 
		second_in = 4'b0000;
		first_in = 4'b0000; 
		end
		out = {first_in, second_in, third_in}; 
	end 
	

endmodule 