module control_unit 
#(parameter N = 8
)
(
input wire Clk, reset, 
input wire start, 
input wire mode, 
input wire [N-1:0] x, 
output reg [1:0] c_acc, c_sh_rg, 
output reg ready 
);

//deaclaration 
localparam INIT = 1'b0,
				CYCLE = 1'b1; 
				
localparam	ADD_ONE = 2'b10, 
				SHIFT = 2'b10, 
				LOAD = 2'b01, 
				HOLD = 2'b00;
reg r_state; 
reg r_next; 
integer k, next_k; 

//register 
always @(posedge Clk, posedge reset)
begin
	if(reset) 
	begin 
		r_state <= INIT;
		k <= 0;
	end
	else 
	begin 
		r_state <= r_next; 
		k <= next_k;
	end
end

//next-state logic 
always @* 
begin //always 
case (r_state) 
	INIT: 
	begin //init 
		if (start)
		begin 
			r_next = CYCLE; 
			next_k = 0; 
		end
		else 
			r_next = INIT;
			next_k = 0; 
	end //init 
	
	CYCLE: 
	begin //cycle 
		if(k==N) 
		begin 
			r_next = INIT; 
			next_k = 0; 
		end
		else 
		begin
			r_next = CYCLE; 
			next_k = k+1; 
		end
	end //cycle 
endcase
end //always

//output logic 
always @* 
begin //always
	ready = 1'b0; 
	c_sh_rg = HOLD; 
	c_acc = HOLD;
	case (r_state)
		INIT: 
		begin //init 
			if(start) 
			begin 
				c_sh_rg = LOAD; 
				c_acc = LOAD; 
			end
		end //init
		CYCLE: 
		begin 
			if(x[0] == mode) 
			begin 
				c_acc = ADD_ONE; 
				c_sh_rg = SHIFT; 
			end
			else 
			begin 
				c_acc = HOLD; 
				c_sh_rg = SHIFT; 
			end 
		end
	endcase
	if (r_state==CYCLE && k==N) 
	ready = 1'b1; 
end //always 

endmodule

