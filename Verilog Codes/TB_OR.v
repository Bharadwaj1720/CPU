module TB_OR();
parameter N=32;
reg [N-1:0]A,B;
wire [N-1:0]OR;
OR #(.N(N)) DUT1(.A(A),.B(B),.OR(OR));

initial begin
A=32'd312;B=32'd521;



end
endmodule