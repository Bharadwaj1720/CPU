module TB_CPU();
reg [31:0]INS,ManIn;
reg [2:0]RSM;
reg WR,reset,clk,LO;
wire OV;
wire [31:0] reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8;

CPU DUT1 (.INS(INS),.ManIn(ManIn),.LO(LO),.WR(WR),.clk(clk),.reset(reset),.OV(OV),.RSM(RSM),
.reg1(reg1),.reg2(reg2),.reg3(reg3),.reg4(reg4),.reg5(reg5),.reg6(reg6),.reg7(reg7),.reg8(reg8));
initial begin

clk = 1'b1;
reset = 1'b1;
WR=1'b0;RSM=3'b000;INS=32'b000;LO=1'b0;
ManIn=32'd0;
#50;

reset = 1'b0;

#50 WR=1'b1;RSM=3'b000;LO=1'b0;ManIn=32'd345;// Loading 345 into reg0(000)
#50 WR=1'b1;RSM=3'b001;LO=1'b0;ManIn=32'd456;// Loading 456 into reg1(001)
#50 WR=1'b1;RSM=3'b001;LO=1'b1;ManIn=32'd456;// Switching into Operating mode
INS=32'b000000_00000_00001_00010_00000_000000; // reg2 = reg0 + reg1
#50 INS=32'b000100_00000_00001_00011_00000_000000; // reg3 = reg0 - reg1
#50 INS=32'b000001_00000_00001_00100_00000_000000; // reg4 = reg0 & reg1
#50 INS=32'b000010_00000_00001_00101_00000_000000; // reg5 = reg0 | reg1
#50 INS=32'b000011_00000_00001_00110_00000_000000; // reg6 = ~(reg0 | reg1)

//#50 WR=1'b0;seti=3'b011;seto1=3'b110;seto2=3'b111;

//#50 WR=1'b1;seti=3'b000;seto1=3'b011;seto2=3'b000;
//#50 WR=1'b1;seti=3'b010;seto1=3'b010;seto2=3'b011;
//#50 WR=1'b1;seti=3'b101;seto1=3'b100;seto2=3'b101;
//#50 WR=1'b1;seti=3'b111;seto1=3'b110;seto2=3'b111;

end

always #10 clk = ~clk;
endmodule