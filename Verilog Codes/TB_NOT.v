module TB_NOT();
parameter N=32;
reg [N-1:0]A;
wire [N-1:0]NOT;
NOT #(.N(N)) DUT1(.A(A),.NOT(NOT));

initial begin
A=32'd312;



end
endmodule