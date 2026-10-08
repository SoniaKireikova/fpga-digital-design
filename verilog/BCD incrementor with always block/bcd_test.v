module bcd_test; 
reg [11:0] in; 
wire [11:0] out; 
integer i;
bcd uut (.in(in), .out(out)); 
	initial begin 
	for(i=0; i< 4096; i=i+1) 
		begin 
		in = i; 
		#10; 
		end 
	end  
endmodule 