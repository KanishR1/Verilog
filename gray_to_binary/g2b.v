module g2b (
    input [3:0]y, output [3:0]x
);
    assign x[3] = y[3];
    assign x[2] = x[3]^y[2];
    assign x[1] = x[2]^y[1];
    assign x[0] = x[1]^y[0];
endmodule