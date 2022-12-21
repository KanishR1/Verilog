`timescale 1ps/1ps
module tb_half_subtractor;
    reg A,B;
    wire Br,D;
    half_subtractor DUT(.A(A), .B(B), .Br(Br), .D(D));

    integer i;
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,tb_half_subtractor);
        for(i=0; i<4 ;i=i+1)
        begin
            {A,B} = i;
            #10;
        end
        $finish();
    end
    initial $monitor("A = %b, B = %b, Br = %b, D = %b",A,B,Br,D);
endmodule