module test_shifter;

reg [7:0] in; 
wire [7:0] out; 
reg mod; 

shifter uut 
(
.out(out), 
.in(in), 
.mod(mod)
);

wire [8:0] allin ; 
assign allin = {mod, in[7:0]};
reg [8:0] all; 
integer i;

initial begin 
	all = allin; 
	for(i=0; i<512; i=i+1)
	begin 
	all = i; 
	mod = all[8]; 
	in = all[7:0]; 
	#10; 
	
	end 
end 
endmodule 
	