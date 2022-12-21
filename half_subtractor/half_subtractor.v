module half_subtractor (
    input A,B, output Br, D
);
    assign D = A^B;
    assign Br = (~A)&B;
endmodule