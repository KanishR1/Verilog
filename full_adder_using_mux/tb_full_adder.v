`timescale 1ps/1ps
module tb_full_adder;
    reg A,B,Cin;
    wire S,C;
    full_adder DUT(.A(A), .B(B), .Cin(Cin), .C(C), .S(S));
    
    integer i;
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,tb_full_adder);
        for(i=0; i<8 ;i=i+1)
        begin
            {A,B,Cin} = i;
            #10;
        end
        $finish();
    end
    initial $monitor("A = %b, B = %b, Cin = %b, C = %b, S = %b",A,B,Cin,C,S);
endmodule