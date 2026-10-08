module led 
(
input wire clk, reset,  
input wire [3:0] hex0, hex1, hex2, hex3, 
input wire [3:0] dp, 
input wire [3:0] w,
output reg [3:0] en, 
output reg [7:0] sseg, 
output reg [23:0] msb 
); 


pwm pwm_unit 
(.w(w), .out(out_pwm), .clk(clk)); 

//declapation 
wire out_pwm; 
reg [23:0] msb_fr_reg, msb_fr_next; 
reg [3:0] sseg_in;  
reg [3:0] en_reg, en_next; 
reg dp_in; 
 

//register 
always @(posedge clk, posedge reset )
begin 
if (reset) 
begin
en_reg <= 4'b1110; 
msb_fr_reg <= 0;  
end 
else 
begin 
msb_fr_reg <= msb_fr_next; 
en_reg <= en_next; 
end 
end

//next_state logic

always @* 
begin 

msb_fr_next = msb_fr_reg + 1; 
en_next = {en_reg[2:0], en_reg[3]}; //1110 -> 1101 

end


//output logic 
always @*
begin 
en = en_reg; 
case (msb_fr_reg[23:22]) 
	2'b00 :
		begin 
		//СДЕЛАТЬ ЛОГИКУ ПО КОТОРОЙ en МЕНЯЕТСЯ ПРАВИЛЬНО И СДЕЛАТЬ 
		en = (out_pwm == 0) ? 4'b1111 : 4'b1110; 
		sseg_in = hex0;
		dp_in = dp[0]; 
		end
	2'b01 : 
		begin 
		en = (out_pwm == 0) ? 4'b1111 : 4'b1101; 
		sseg_in = hex1; 
		dp_in = dp[1]; 
		end
	2'b10 : 
		begin 
		en =(out_pwm == 0) ? 4'b1111 : 4'b1011; 
		sseg_in = hex2; 
		dp_in = dp[2]; 
		end 
	2'b11 : 
		begin 
		en = (out_pwm == 0) ? 4'b1111 :4'b0111; 
		sseg_in = hex3; 
		dp_in = dp[3]; 
		end
	endcase
	
end

always @* 
	begin 
	case (sseg_in) 
		4'h0 : sseg[6:0] = 7'b0000001;
		4'h1 : sseg[6:0] = 7'b1001111; 
		4'h2 : sseg[6:0] = 7'b0010010; 
		4'h3 : sseg[6:0] = 7'b0000110; 
		4'h4 : sseg[6:0] = 7'b1001100;
		4'h5 : sseg[6:0] = 7'b0100100; 
		4'h6 : sseg[6:0] = 7'b0100000; 
		4'h7 : sseg[6:0] = 7'b0001111; 
		4'h8 : sseg[6:0] = 7'b0000000; 
		4'h9 : sseg[6:0] = 7'b0000100; 
		4'ha : sseg[6:0] = 7'b0001000; 
		4'hb : sseg[6:0] = 7'b1100000; 
		4'hc : sseg[6:0] = 7'b0110001; 
		4'hd : sseg[6:0] = 7'b1000010; 
		4'he : sseg[6:0] = 7'b0110000; 
	default : sseg[6:0] = 7'b0111000; 
	endcase
	sseg[7] = dp_in; 
	msb = msb_fr_reg; 
	end 
endmodule 