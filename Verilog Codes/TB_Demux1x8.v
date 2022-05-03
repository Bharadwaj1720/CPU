module TB_Demux1x8();
parameter N=32;
reg [N-1:0]I;
reg [2:0]S;
wire [N-1:0]Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
Demux1x8 #(.N(N)) DUT1(.I(I),.S0(S[0]),.S1(S[1]),.S2(S[2]),.Y0(Y0),
	    .Y1(Y1),.Y2(Y2),.Y3(Y3),.Y4(Y4),.Y5(Y5),.Y6(Y6),.Y7(Y7));

initial begin
    I=32'd12321; S=3'b000;
#10 I=32'd12321; S=3'b001;
#10 I=32'd12321; S=3'b010;
#10 I=32'd12321; S=3'b011;
#10 I=32'd12321; S=3'b100;
#10 I=32'd12321; S=3'b101;
#10 I=32'd12321; S=3'b110;
#10 I=32'd12321; S=3'b111;


end
endmodule
