`include "xor_gate.v"
`include "and_gate.v"
module half_adder (
    input A,B, output S,C
);
xor_gate U1(.A(A), .B(B), .S(S));
and_gate U2(.A(A), .B(B), .C(C));
    
endmodule