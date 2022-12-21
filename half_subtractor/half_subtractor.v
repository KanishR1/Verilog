/*
This type of assigning is called procedural continuous assignment.
It is supported by some of the compilers.

https://stackoverflow.com/questions/1641184/verilog-can-you-put-assign-statements-within-always-or-begin-end-statements

module half_subtractor (
    input A,B, output reg Br, D
);
    always @(A,B)
    begin
    assign D = A^B;
    assign Br = (~A)&B;
    end
endmodule
*/
module half_subtractor (
    input A,B, output Br, D
);
    assign D = A^B;
    assign Br = (~A)&B;
endmodule