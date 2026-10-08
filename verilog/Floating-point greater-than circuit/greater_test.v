module greater_test;

reg [12:0] in_1, in_2;
wire gt;

greater uut
(
    .in_1(in_1),
    .in_2(in_2),
    .gt(gt)
);

integer i, j;

initial begin
    for (i=0; i<8192; i=i+1)
    begin
        for (j=0; j<8192; j=j+1)
        begin
            in_1 = i;
            in_2 = j;
            #10;
        end
    end
end

endmodule