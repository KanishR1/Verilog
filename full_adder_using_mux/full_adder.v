`include "mux4.v"
module full_adder (
    input A,B,Cin, output S,C
);
    mux4 U1(.I({Cin,~Cin,~Cin,Cin}),.S({A,B}), .Y(S));
    mux4 U2(.I({1'b1,{2{Cin}},1'b0}),.S({A,B}), .Y(C));

endmodule