`include "half_adder.v"
module full_adder (
    input A,B,Cin, output S,C
);
    wire s1,c1,c2;

    half_adder U1(.A(A), .B(B), .S(s1), .C(c1));
    half_adder U2(.A(s1), .B(Cin), .S(S), .C(c2));
    assign C = c1|c2;
endmodule