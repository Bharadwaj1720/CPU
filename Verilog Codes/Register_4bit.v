module Register_4bit(D,Q,clk,reset);
input [3:0]D;
output [3:0]Q;
input clk,reset;
genvar i;
generate
for(i=0;i<4;i=i+1) begin
D_Flipflop DUT(.Q(Q[i]),.D(D[i]),.clk(clk),.reset(reset));
end
endgenerate

endmodule