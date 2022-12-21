module xor_nand (
    input A,B, output F
);
    wire x,y,z;
    assign x = ~(A&B);
    assign y = ~(A&x);
    assign z = ~(x&B);
    assign F = ~(y&z);
endmodule