module Optimized_ALU #(parameter N=32)(A,B,C,OP,OV);
input[N-1:0]A,B;
input [2:0]OP;
output [N-1:0]C;
output OV;
wire [N-1:0]ADD,SUB,AND,OR,NOR,T1,T2,T3;
wire [N-1:0]Y0A,Y1A,Y2A,Y3A,Y4A,Y5A,Y6A,Y7A;
wire [N-1:0]Y0B,Y1B,Y2B,Y3B,Y4B,Y5B,Y6B,Y7B;
Demux1x8 #(.N(N)) DUT7(.I(A),.S0(OP[0]),.S1(OP[1]),.S2(OP[2]),
	    .Y0(Y0A),.Y1(Y1A),.Y2(Y2A),.Y3(Y3A),.Y4(Y4A),.Y5(Y5A),.Y6(Y6A),.Y7(Y7A));

Demux1x8 #(.N(N)) DUT8(.I(B),.S0(OP[0]),.S1(OP[1]),.S2(OP[2]),
	    .Y0(Y0B),.Y1(Y1B),.Y2(Y2B),.Y3(Y3B),.Y4(Y4B),.Y5(Y5B),.Y6(Y6B),.Y7(Y7B));
//assign OV=0;
//assign T1={(N){1'b0}};
//assign T2={(N){1'b0}};
//assign T3={(N){1'b0}};
AdderSubSign #(.N(N)) DUT1(.A(Y0A),.B(Y0B),.S(1'b0),.C(ADD),.O(OV));
AdderSubSign #(.N(N)) DUT2(.A(Y4A),.B(Y4B),.S(1'b1),.C(SUB),.O(OV));
AND #(.N(N)) DUT3(.A(Y1A),.B(Y1B),.AND(AND));
OR  #(.N(N)) DUT4(.A(Y2A),.B(Y2B),.OR(OR));
NOR #(.N(N)) DUT5(.A(Y3A),.B(Y3B),.NOR(NOR));
AND #(.N(N)) DUT33(.A(Y5A),.B(Y5B),.AND(T1));
OR  #(.N(N)) DUT44(.A(Y6A),.B(Y6B),.OR(T2));
NOR #(.N(N)) DUT55(.A(Y7A),.B(Y7B),.NOR(T3));


Mux_8x1 #(.N(N)) DUT6(.a(ADD),.b(AND),.c(OR),.d(NOR),.e(SUB),
	.f(T1),.g(T2),.h(T3),.s0(OP[0]),.s1(OP[1]),.s2(OP[2]),.y(C));

endmodule