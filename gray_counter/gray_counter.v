`include "b2g.v"
module gray_counter (
    input clk,rst_n, output [3:0]q
);
reg [3:0]b;
always @(posedge clk)
begin
   if(~rst_n)
   b<=4'b0000;
   else
   b<=b+4'b0001;
end
b2g U1(.x(b), .y(q));
    
endmodule