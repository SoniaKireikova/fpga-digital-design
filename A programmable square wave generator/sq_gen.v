module sq_gen
(
input wire [3:0] m, n, 
input wire clk	,   
output wire out
);
  
//declaration 
reg [6:0] clk_reg, clk_next; 
reg [4:0] h_reg, h_next; 

reg en_1, en_0; 

//register 
always @(posedge clk)
	begin 
	clk_reg <= clk_next;
	h_reg <= h_next;  
	end 

//next-state logic
always @* 
	begin 
	 /*
		if (clk_reg == 4) 
		begin 
			h_next = h_reg + 1; //считаем сотни 
			clk_next = 0;
		end 
		else 
			begin 
			h_next = h_reg;
			clk_next = clk_reg + 1;
			end 
		
		if (h_reg == (m + n)-1)
			h_next = 0; //
		else h_next = h_reg; 
		*/
		if (clk_reg == 4 && h_reg == ((m+n)-1))
			begin 
			h_next = 0;
			clk_next = 0; 
			end
		else if (clk_reg == 4)
			begin 
			clk_next =0; 
			h_next = h_reg + 1; 
			end 
		else 
			begin 
			clk_next = clk_reg + 1; 
			h_next = h_reg;
			end
			
	end 
	

//output logic
assign out = (h_reg < n) ? 1'b0 : 1'b1; 
endmodule