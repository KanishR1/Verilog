`timescale 1ps/1ps
module tb_gray_counter;
    reg clk,rst_n;
    wire [3:0]q;

    gray_counter DUT(.clk(clk), .rst_n(rst_n), .q(q));
    initial begin
        clk = 1'b0;
        forever #5 clk = !clk;
    end

    initial $monitor("B = %b, Q = %b",DUT.b,q);
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,tb_gray_counter);
        rst_n = 0;
        #10;
        rst_n = 1;
        #200;
        $finish;
    end
endmodule