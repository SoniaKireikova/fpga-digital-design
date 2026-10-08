module banner 
(
input wire clk, 
input wire en, //enables or pauses the rotation
input wire dir, //specifies the direction
output reg [3:0] en_in, //en to sseg 
output reg [6:0]d_in
); 

//declaration 
reg [6:0] d [9:0]; //10 цифр по 4 бита каждая 0 1 2 3 4 5 ... 9 
// d[9] - получить 9-ю цифру 
// d[9][0] - получить нулевой бит девятой цифры
reg [18:0] tick_reg, tick_next; 
reg [27:0] switch_reg, switch_next; 
reg [4:0] switch_ten_reg, switch_ten_next; 
 





//register 
always @(posedge clk)
begin 
	tick_reg <= tick_next; 
	switch_reg <= switch_next; 
	switch_ten_reg <= switch_ten_next; 
end 

//next-state logic 
always @* 
begin 
	if (en && switch_reg[27:24] != 4'ha) 
		switch_next = switch_reg + 1; 
	else if (switch_reg[27:24] == 4'ha)
		switch_next = 0; 
	else 
		switch_next = switch_reg; 
	
	tick_next = tick_reg + 1; 
end 

//output logic 3210 -> 4321 -> 5432 -> 6542 -> 7654 -> 8765 -> 9876 -> 0987 -> 1098 -> 2109 
//10 состояний которые можно описать 4 битами


always @* 
begin 

	d[0] = 7'b0000001; 
	d[1] = 7'b1001111; 
	d[2] = 7'b0010010; 
	d[3] = 7'b0000110; 
	d[4] = 7'b1001100; 
	d[5] = 7'b0100100; 
	d[6] = 7'b0100000; 
	d[7] = 7'b0001111; 
	d[8] = 7'b0000000; 
	d[9] = 7'b0000100; 
	
	case (switch_reg[27:24])
		4'h0: 
			//3210
			begin
				case (tick_reg[18:17])
					2'b00 : 
						begin 
						en_in = 4'b1110; 
						d_in = d[0]; 
						end 
					2'b01 : 
						begin 
						en_in = 4'b1101; 
						d_in = d[1]; 
						end 
					2'b10: 
						begin 
						en_in = 4'b1011; 
						d_in = d[2]; 
						end
					2'b11: 
						begin 
						en_in = 4'b0111; 
						d_in = d[3]; 
						end 
					endcase 
				end 
				
			4'h1: 
				//4321
				begin 
					case (tick_reg[18:17])
						2'b00 : 
							begin 
							en_in = 4'b1110; 
							d_in = d[1]; 
							end 
						2'b01 : 
							begin 
							en_in = 4'b1101; 
							d_in = d[2]; 
							end 
						2'b10: 
							begin 
							en_in = 4'b1011; 
							d_in = d[3]; 
							end
						2'b11: 
							begin 
							en_in = 4'b0111; 
							d_in = d[4]; 
							end 
					endcase 
				end 
				
				4'h2: 
				//5432
					begin 
					case (tick_reg[18:17])
						2'b00 : 
							begin 
							en_in = 4'b1110; 
							d_in = d[2]; 
							end 
						2'b01 : 
							begin 
							en_in = 4'b1101; 
							d_in = d[3]; 
							end 
						2'b10: 
							begin 
							en_in = 4'b1011; 
							d_in = d[4]; 
							end
						2'b11: 
							begin 
							en_in = 4'b0111; 
							d_in = d[5]; 
							end 
					endcase 
				end 	
				
				4'h3 : 
				//6543
					begin 
					case (tick_reg[18:17])
						2'b00 : 
							begin 
							en_in = 4'b1110; 
							d_in = d[3]; 
							end 
						2'b01 : 
							begin 
							en_in = 4'b1101; 
							d_in = d[4]; 
							end 
						2'b10: 
							begin 
							en_in = 4'b1011; 
							d_in = d[5]; 
							end
						2'b11: 
							begin 
							en_in = 4'b0111; 
							d_in = d[6]; 
							end 
					endcase 
				end 
				
				4'h4 : 
				//7654
					begin 
					case (tick_reg[18:17])
						2'b00 : 
							begin 
							en_in = 4'b1110; 
							d_in = d[4]; 
							end 
						2'b01 : 
							begin 
							en_in = 4'b1101; 
							d_in = d[5]; 
							end 
						2'b10: 
							begin 
							en_in = 4'b1011; 
							d_in = d[6]; 
							end
						2'b11: 
							begin 
							en_in = 4'b0111; 
							d_in = d[7]; 
							end 
					endcase 
				end 
				
				4'h5: 
				//8765
					begin 
					case (tick_reg[18:17])
						2'b00 : 
							begin 
							en_in = 4'b1110; 
							d_in = d[5]; 
							end 
						2'b01 : 
							begin 
							en_in = 4'b1101; 
							d_in = d[6]; 
							end 
						2'b10: 
							begin 
							en_in = 4'b1011; 
							d_in = d[7]; 
							end
						2'b11: 
							begin 
							en_in = 4'b0111; 
							d_in = d[8]; 
							end 
					endcase 
				end 
				
				4'h6: 
				//9876
					begin 
					case (tick_reg[18:17])
						2'b00 : 
							begin 
							en_in = 4'b1110; 
							d_in = d[6]; 
							end 
						2'b01 : 
							begin 
							en_in = 4'b1101; 
							d_in = d[7]; 
							end 
						2'b10: 
							begin 
							en_in = 4'b1011; 
							d_in = d[8]; 
							end
						2'b11: 
							begin 
							en_in = 4'b0111; 
							d_in = d[9]; 
							end 
					endcase 
				end 
				
				4'h7 : 
				//0987
					begin 
					case (tick_reg[18:17])
						2'b00 : 
							begin 
							en_in = 4'b1110; 
							d_in = d[7]; 
							end 
						2'b01 : 
							begin 
							en_in = 4'b1101; 
							d_in = d[8]; 
							end 
						2'b10: 
							begin 
							en_in = 4'b1011; 
							d_in = d[9]; 
							end
						2'b11: 
							begin 
							en_in = 4'b0111; 
							d_in = d[0]; 
							end 
					endcase 
				end 
				
				4'h8 : 
				//1098
					begin 
					case (tick_reg[18:17])
						2'b00 : 
							begin 
							en_in = 4'b1110; 
							d_in = d[8]; 
							end 
						2'b01 : 
							begin 
							en_in = 4'b1101; 
							d_in = d[9]; 
							end 
						2'b10: 
							begin 
							en_in = 4'b1011; 
							d_in = d[0]; 
							end
						2'b11: 
							begin 
							en_in = 4'b0111; 
							d_in = d[1]; 
							end 
					endcase 
				end 
				
				default : 
				//2109
					begin 
					case (tick_reg[18:17])
						2'b00 : 
							begin 
							en_in = 4'b1110; 
							d_in = d[9]; 
							end 
						2'b01 : 
							begin 
							en_in = 4'b1101; 
							d_in = d[0]; 
							end 
						2'b10: 
							begin 
							en_in = 4'b1011; 
							d_in = d[1]; 
							end
						2'b11: 
							begin 
							en_in = 4'b0111; 
							d_in = d[2]; 
							end 
					endcase 
				end 
				
			
				
			endcase 
end 
endmodule
