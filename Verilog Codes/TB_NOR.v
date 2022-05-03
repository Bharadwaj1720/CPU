module TB_NOR();
parameter N=32;
reg [N-1:0]A,B;
wire [N-1:0]NOR;
NOR #(.N(N)) DUT1(.A(A),.B(B),.NOR(NOR));

initial begin
A=32'd312;B=32'd521;



end
endmodule