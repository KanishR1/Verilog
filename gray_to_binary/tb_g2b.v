`timescale 1ps/1ps
module tb_g2b;
    reg [3:0]y;
    wire [3:0]x;
    g2b DUT(.x(x), .y(y));

    integer i;
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,tb_g2b);
        for(i=0; i<16 ;i=i+1)
        begin
            y = i;
            #10;
        end
        $finish();
    end
    initial $monitor("y = %b, x = %b",y,x);
endmodule