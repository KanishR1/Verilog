`timescale 1ps/1ps
module tb_xor_nand;
    reg A,B;
    wire F;
    xor_nand DUT(.A(A), .B(B), .F(F));

    integer i;
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,tb_xor_nand);
        for(i=0; i<4 ;i=i+1)
        begin
            {A,B} = i;
            #10;
        end
        $finish();
    end
    initial $monitor("A = %b, B = %b, F = %b",A,B,F);
endmodule