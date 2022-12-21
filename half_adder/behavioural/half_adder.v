module half_adder (
    input A,B, output reg S,C
);
always @* begin
    if(A==B)
    S =  0;
    else
    S=1;
end    
always @* begin
    if(A==1 && B==1)
    C=1;
    else
    C=0;
end
endmodule