module sseg (
    input  wire [3:0] Din,
    input  wire       Enable,

    output reg        a,
    output reg        b,
    output reg        c,
    output reg        d,
    output reg        e,
    output reg        f,
    output reg        g,
    output reg        h
);

always @(*) begin


    a = 1'b1;
    b = 1'b1;
    c = 1'b1;
    d = 1'b1;
    e = 1'b1;
    f = 1'b1;
    g = 1'b1;
    h = 1'b1;

    if (~Enable) begin
        h = 1'b0;
    end
    else begin
     case (Din)
            4'b0000: 
				begin
                a = 1'b0;
                b = 1'b0;
                c = 1'b0;
                d = 1'b0;
                e = 1'b0;
                f = 1'b0;
            end
            4'b0001: 
				begin
                b = 1'b0;
                c = 1'b0;
            end

            // 2
            4'b0010: 
				begin
                a = 1'b0;
                b = 1'b0;
                d = 1'b0;
                e = 1'b0;
                g = 1'b0;
            end

            // 3
            4'b0011:
				begin
                a = 1'b0;
                b = 1'b0;
                c = 1'b0;
                d = 1'b0;
                g = 1'b0;
            end

            // 4
            4'b0100: 
				begin
                b = 1'b0;
                c = 1'b0;
                f = 1'b0;
                g = 1'b0;
            end

            // 5
            4'b0101: 
				begin
                a = 1'b0;
                c = 1'b0;
                d = 1'b0;
                f = 1'b0;
                g = 1'b0;
            end

            // 6
            4'b0110: 
				begin
                a = 1'b0;
                c = 1'b0;
                d = 1'b0;
                e = 1'b0;
                f = 1'b0;
                g = 1'b0;
            end

            // 7
            4'b0111: begin
                a = 1'b0;
                b = 1'b0;
                c = 1'b0;
            end

            // 8
            4'b1000: begin
                a = 1'b0;
                b = 1'b0;
                c = 1'b0;
                d = 1'b0;
                e = 1'b0;
                f = 1'b0;
                g = 1'b0;
            end

            // 9
            4'b1001: begin
                a = 1'b0;
                b = 1'b0;
                c = 1'b0;
                d = 1'b0;
                f = 1'b0;
                g = 1'b0;
            end

            
            default: begin
                a = 1'b1;
                b = 1'b1;
                c = 1'b1;
                d = 1'b1;
                e = 1'b1;
                f = 1'b1;
                g = 1'b1;
            end

        endcase
    end

end

endmodule