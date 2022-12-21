module half_adder (
    input A,B, output reg S,C
);
always @(*) begin
    S = A^B;
    C = A&B;
    
end
endmodule