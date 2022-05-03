module CPU(INS,LO,WR,RSM,ManIn,clk,reset,OV,reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8);
input LO,WR,clk,reset,OV;
input [2:0]RSM;
input[31:0] INS,ManIn;
output [31:0] reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8;
wire [2:0]RS,RT,RD,OP;
assign OP=INS[28:26];
assign RS=INS[23:21];
assign RT=INS[18:16];
assign RD=INS[13:11];
wire [31:0]AluOut,RF1,RF2;
wire LoadO1;
wire [2:0]LoadO2;
wire [31:0]LoadO3;
LoadLogic DUT1(.LO(LO),.WR(WR),.clk(clk),.RS(RSM),.RD(RD),
		.MaOr(ManIn),.AlOr(AluOut),.O1(LoadO1),
		.O2(LoadO2),.O3(LoadO3));



RegisterFile8Reg DUT2(.Input(LoadO3),.seti(LoadO2),.WR(LoadO1),
		      .seto1(RS),.seto2(RT),.clk(clk),.reset(reset),
		      .Output1(RF1),.Output2(RF2),.out1(reg1),.out2(reg2),.out3(reg3),
		.out4(reg4),.out5(reg5),.out6(reg6),.out7(reg7),.out8(reg8));


Optimized_ALU DUT3(.A(RF1),.B(RF2),.C(AluOut),.OP(OP),.OV(OV));

endmodule