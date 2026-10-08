module seven_segment 
(
input wire [3:0] hex, 
output reg [7:0] sseg
); 

always @* 
begin 
case (hex)
4'h0 : sseg [7:0] = 8'b00000001; 
4'h1 : sseg [7:0] = 8'b01001111; 
4'h2 : sseg [7:0] = 8'b00010010; 
4'h3 : sseg [7:0] = 8'b00000110; 
4'h4 : sseg [7:0] = 8'b01001100; 
4'h5 : sseg [7:0] = 8'b00100100; 
4'h6 : sseg [7:0] = 8'b00100000; 
4'h7 : sseg [7:0] = 8'b00001111; 
4'h8 : sseg [7:0] = 8'b00000000; 
4'h9 : sseg [7:0] = 8'b00000100; 
4'ha : sseg [7:0] = 8'b00001000; 
4'hb : sseg [7:0] = 8'b01100000; 
4'hc : sseg [7:0] = 8'b00110001; 
4'hd : sseg [7:0] = 8'b01000010; 
4'he : sseg [7:0] = 8'b00110000; 
default : sseg [7:0] = 8'b00111000; 
endcase 
end 
endmodule  
