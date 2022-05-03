module TB_Bitwise();
parameter N=32;
reg [N-1:0]A,B;
wire [N-1:0]AND,OR,NOR;
Bitwise #(.N(N)) DUT1(.A(A),.B(B),.AND(AND),.OR(OR),.NOR(NOR));

initial begin
A=32'd312;B=32'd521;



end
endmodule