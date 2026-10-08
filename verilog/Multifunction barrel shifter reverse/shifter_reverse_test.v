module shifter_reverse_test; 
reg [7:0] in; 
wire [7:0] out; 
reg lr; 

shifter_reverse uut 
(
.in(in), 
.out(out), 
.lr(lr)
); 
integer i; 
reg [8:0] all; 
	initial begin 
	all = {lr, in}; 
	for (i=0; i < 512; i=i+1)
		begin 
		all = i; 
		lr = all[8]; 
		in = all [7:0]; 
		#10; 
		end 
	end 
endmodule 
		
