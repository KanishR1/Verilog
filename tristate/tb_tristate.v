`timescale 1ps/1ps
module tb_tristate;
    reg [3:0]data_in;
    reg en;
    wire [3:0]data_out;
    tristate DUT(.data_in(data_in), .en(en), .data_out(data_out));

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,tb_tristate);
        en  = 0;
        data_in = 5;
        #10
        en = 1;
        #10
        data_in = 7;
        #10
        en = 0;
        #10
        $finish();
    end
    initial $monitor("data_in = %b, en = %b, data_out = %b",data_in,en,data_out);
endmodule