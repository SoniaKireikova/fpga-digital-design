module structure
#(parameter N = 8)
(
input wire Clk,reset,  
input wire [N-1:0]in, 
input wire start, 
input wire mode,  
output wire ready, 
output wire a, b, c, d, e, f, g, h, 
output wire [N-1:0]result
);

wire [1:0] c_sh_rg, c_acc;
wire [N-1:0] x; 
//wire mode; 
//assign mode = 1;  
//wire [N-1:0]result;

sseg out_unit
(
.Din(result[3:0]),
.Enable(1'b1),
.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h)
);

shift_register #(.N(N)) sh_rg 
(
.c_sh_rg(c_sh_rg), 
.Clk(Clk), 
.in(in), 
.x(x)
); 

register_acc #(.N(N)) acc_rg 
(
.Clk(Clk), 
.c_acc(c_acc), 
.z(result)
); 

control_unit #(.N(N)) cntrl 
(
.Clk(Clk), 
.reset(reset), 
.mode(mode), 
.start(start), 
.x(x), 
.c_acc(c_acc), 
.c_sh_rg(c_sh_rg), 
.ready(ready)
); 
endmodule