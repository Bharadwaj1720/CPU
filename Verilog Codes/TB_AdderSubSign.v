module TB_AdderSubSign();
parameter N=32;
reg [N-1:0]A,B;
reg S;
wire [N-1:0]C;
wire O;
AdderSubSign #(.N(N)) DUT(.A(A),.B(B),.S(S),.C(C),.O(O));
initial begin
A=32'd124;B=32'd43;S=1'b0;
#10 A=-32'd124;B=32'd43;S=1'b0;
#10 A=32'd124;B=-32'd43;S=1'b1;
#10 A=32'd124;B=32'd43;S=1'b1;


end
endmodule