module heart 
(
input wire clk, 
output reg [3:0] en, 
output reg [6:0] sseg 
); 

//declaration 
reg[19:0] r_reg, r_next; 
reg [1:0] counter_reg, counter_next;
reg[18:0] tick_reg, tick_next;  

//register 
always @(posedge clk) 
begin 
r_reg <= r_next; 
counter_reg <= counter_next; 
tick_reg <= tick_next; 
end

//next-state logic 
always @* 
begin 
tick_next = tick_reg + 1;  
 if (r_reg == 20'd694444) 
	begin 
	r_next = 0; 
	counter_next = counter_reg + 1'b1; 
	end 
else if (counter_reg == 2'd3)
	begin 
	r_next = r_reg + 1; 
	counter_next = 0;
	end
else 
	begin 
	r_next = r_reg + 1;
	counter_next = counter_reg; 	
	end 
end

//output logic 
always @* 
begin 
	case (counter_reg) 
		2'b00 : 
		begin 
			case (tick_reg[18])
				1'b0: 
					begin 
					en = 4'b1011; 
					sseg = 7'b1001111; 
					end
				1'b1: 
					begin 
					en = 4'b1101; 
					sseg = 7'b1111001; 
					end
			endcase
		end
		
		2'b01: 
		begin 
			case (tick_reg[18])
				1'b0: 
				begin 
				en = 4'b1011; 
				sseg = 7'b1111001;
				end 
				1'b1: 
				begin 
				en = 4'b1101; 
				sseg = 7'b1001111;
				end 
			endcase 
		end 
		default: 
		begin 
			case (tick_reg[18]) 
				1'b0: 
					begin 
					en = 4'b0111; 
					sseg = 7'b1111001;
					end 
				1'b1: 
					begin 
					en = 4'b1110; 
					sseg = 7'b1001111;
					end 
			endcase 
		end 
		endcase 
			
			
		end
	
	
endmodule

