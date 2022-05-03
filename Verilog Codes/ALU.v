module ALU #(parameter N=32)(A,B,C,OP,OV);
input[N-1:0]A,B;
input [2:0]OP;
output [N-1:0]C;
output OV;
wire [N-1:0]ADD,SUB,AND,OR,NOR,T1,T2,T3;
//assign OV=0;
assign T1={(N){1'b0}};
assign T2={(N){1'b0}};
assign T3={(N){1'b0}};
AdderSubSign #(.N(N)) DUT1(.A(A),.B(B),.S(1'b0),.C(ADD),.O(OV));
AdderSubSign #(.N(N)) DUT2(.A(A),.B(B),.S(1'b1),.C(SUB),.O(OV));
AND #(.N(N)) DUT3(.A(A),.B(B),.AND(AND));
OR  #(.N(N)) DUT4(.A(A),.B(B),.OR(OR));
NOR #(.N(N)) DUT5(.A(A),.B(B),.NOR(NOR));
Mux_8x1 #(.N(N)) DUT6(.a(ADD),.b(SUB),.c(AND),.d(OR),.e(NOR),
	.f(T1),.g(T2),.h(T3),.s0(OP[0]),.s1(OP[1]),.s2(OP[2]),.y(C));

endmodule