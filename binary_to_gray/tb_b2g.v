`timescale 1ps/1ps
module tb_b2g;
    reg [3:0]x;
    wire [3:0]y;
    b2g DUT(.x(x), .y(y));

    integer i;
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,tb_b2g);
        for(i=0; i<16 ;i=i+1)
        begin
            x = i;
            #10;
        end
        $finish();
    end
    initial $monitor("x = %b, y = %b",x,y);
endmodule