module greater 
(
input wire [12:0] in_1, in_2,  
output reg gt
);
wire sign_1, sign_2; 
//знак
assign sign_1 = in_1[12];
assign sign_2 = in_2[12];

//экспонента 
wire[3:0] exp_field_1, exp_field_2;  
assign exp_field_1 = in_1[11:8]; 
assign exp_field_2 = in_2[11:8]; 

//мантисса 
wire[7:0] sign_field_1, sign_field_2; 
assign sign_field_1 = in_1[7:0]; 
assign sign_field_2 = in_2[7:0]; 

//выделяю целую часть, она равна [7:(8-exp_field)]
//это надо перенести в иф и сделать условие для эксп = 0000 
// 011100 011  0111000 1 
wire [7:0] integer_1; 
wire [7:0] integer_2; 

assign integer_1 = sign_field_1 >> (8-exp_field_1); 
assign integer_2 = sign_field_2 >> (8-exp_field_2); 

//assign integer_1 = sign_field_1 [7:(8-exp_field_1)]; 

//дробная часть 

wire [7:0] fractional_1; 
wire [7:0] fractional_2; 

assign fractional_1 = sign_field_1 << exp_field_1; 
assign fractional_2 = sign_field_2 << exp_field_2;
always @* 
	begin 

	if (sign_1 < sign_2) 
		begin
		gt = 1; 
		end
	else if (sign_1 > sign_2) 
		begin 
		gt = 0;
		end 
	//сравниваем целую часть 
	else if (sign_1 == 0 && sign_2 == 0 && integer_1 > integer_2) 
		begin
		gt = 1; 
		end 
	else if (sign_1 == 0 && sign_2 == 0 && integer_1 < integer_2)
		begin 
		gt = 0; 
		end 
	else if (sign_1 == 1 && sign_2 == 1 && integer_1 > integer_2)
		begin 
		gt = 0; 
		end 
	else if (sign_1 == 1 && sign_2 == 1 && integer_1 < integer_2)
		begin 
		gt = 1; 
		end 
	//если целая часть равна 
	else if (sign_1 == 0 && sign_2 == 0 && fractional_1 > fractional_2)
		begin 
		gt = 1; 
		end 
	else if (sign_1 == 0 && sign_2 == 0 && fractional_1 < fractional_2) 
		begin 
		gt = 0; 
		end 
	else if (sign_1 ==1 && sign_2 == 1 && fractional_1 > fractional_2) 
		begin 
		gt =0; 
		end 
	else if (sign_1 ==1 && sign_2 == 1 && fractional_1 < fractional_2) 
		begin 
		gt =1; 
		end 
	else 
		begin 
		gt = 0; 
		end 
	
	end 
endmodule 