module tristate (
    input [3:0]data_in, input en, output reg [3:0]data_out
);

always @(*) begin
    if(en)
    data_out = data_in;
    else
    data_out = 4'bzzzz;
end
    
endmodule