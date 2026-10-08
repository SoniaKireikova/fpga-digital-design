module conversion 
( 
input wire [7:0] int_in,
output reg [12:0] float_out
);

//сначала нужно сделать из инта флоат 
//значит нужно понять отрицательное число или положительное и преобразовать отр
reg [7:0] int_in_conversed, int_in_shifted; 
integer i, counter, j, counter_1; 
always @* 
	begin 
	counter = 0; 
	counter_1 = 0; 
	if (int_in[7] == 1) // 1 111 1011 
		begin 
		int_in_conversed = ~(int_in - 1'b1); // ~(1 111 1010) = 0000 0101
		//ищем старшую единицу у модуля числа 
		for (i = 0; i < 8; i = i+1)
			begin 
				if (int_in_conversed[i] == 1) 
				counter = i; //counter = 2
			end
		float_out[7:0] = int_in_conversed << (7 - counter); //1010 0000 
		
		float_out[12] = 1; //сохраняем минус 
		float_out[11:8] = (counter + 1); //2^(2+1) = 2^3
		end 
	else //старший бит = 0 => число положительное 0001 0101
		begin 
		for (j = 0; j < 8; j = j+1)
			begin 
				if (int_in[j] == 1) 
				counter_1 = j; //counter_1 = 4
			end
		float_out[7:0] = int_in << (7-counter_1); //1010 1000
		float_out[12] = 0; 
		float_out[11:8] = (counter_1 +1); 
		end
	end 
	endmodule 