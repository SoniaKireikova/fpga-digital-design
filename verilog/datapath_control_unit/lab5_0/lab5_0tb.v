`timescale 1ns/1ps

module lab5_0tb;

parameter N = 8;
reg error; 
reg Clk;
reg reset;
reg start;
reg mode;
reg [N-1:0] in;
wire ready;
wire [N-1:0] result;
reg [N-1:0] expected;
integer test_number;
integer i;
 
structure #(.N(N)) uut
(
    .Clk(Clk),
    .reset(reset),
    .in(in),
    .start(start),
    .mode(mode),
    .ready(ready),
    .result(result)
);

always #10 Clk = ~Clk;
initial begin
    Clk = 0;
    reset = 0;
    start = 0;
    mode = 0;
    in = 0;
    expected = 0;
    reset = 1;
    #40;
    reset = 0;

    for (test_number = 1; test_number <= 100; test_number = test_number + 1)
	 begin //for test_number

        in = $random;
        mode = $random % 2;
        expected = 0;
        for (i = 0; i < N; i = i + 1) 
		  begin
            if (in[i] == mode)
                expected = expected + 1;
        end
        start = 1;
        @(posedge Clk);
        start = 0;
        wait (ready == 1);
        if (result == expected)
		  begin
				error = 1'b0; 
            $display(
                "TEST %3d: PASS | in=%b mode=%b result=%d expected=%d",
                test_number,
                in,
                mode,
                result,
                expected
            );

        end
        else begin
				error = 1'b1; 
            $display(
                "TEST %3d: FAIL!!!!!!!!!!! in=%b mode=%b result=%d expected=%d",
                test_number,
                in,
                mode,
                result,
                expected
            );

        end
        @(posedge Clk); 

    end //for test_number
    $stop;

end

endmodule