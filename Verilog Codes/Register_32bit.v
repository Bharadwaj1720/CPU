module Register_32bit(D,Q,clk,reset);
input [31:0]D;
output [31:0]Q;
input clk,reset;
genvar i;
generate
for(i=0;i<8;i=i+1) begin
Register_4bit DUT(.Q(Q[4*i+3:4*i]),.D(D[4*i+3:4*i]),.clk(clk),.reset(reset));
end
endgenerate

endmodule