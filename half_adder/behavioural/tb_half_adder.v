`timescale 1ps/1ps
module tb_half_adder;
    reg A,B;
    wire S,C;
    half_adder DUT(.A(A), .B(B), .C(C), .S(S));

    integer i;
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,tb_half_adder);
        for(i=0; i<4 ;i=i+1)
        begin
            {A,B} = i;
            #10;
        end
        $finish();
    end
    initial $monitor("A = %b, B = %b, C = %b, S = %b",A,B,C,S);
endmodule