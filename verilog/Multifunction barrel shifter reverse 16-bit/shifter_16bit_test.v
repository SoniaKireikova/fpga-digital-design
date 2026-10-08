module shifter_16bit_test; 
parameter N = 16; 
reg [N-1 : 0] in; 
wire [N-1 : 0] out; 
reg lr; 
reg [N : 0] all;
integer i, a; 


shifter_16bit #(.N(N)) uut 
(.in(in), .out(out), .lr(lr)); 

initial begin 
a = 2**N; 
all = {lr, in}; 
for (i=0; i < a; i = i+1) 
begin 
all = i; 
in = all[N-1:0]; 
lr = all[N]; 
#10;
end 
end 
endmodule


