module Swapping();
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
WR=1'b0;RSM=3'b000;LO=1'b0;
ManIn=32'd0;
INS=32'b0;
#50;

reset = 1'b0;
//Initially CPU is in Load mode
#50 WR=1'b1;RSM=3'b000;LO=1'b0;ManIn=32'd51;//Loading 51 in reg1(000) . Lets call this value as 'a'
#50 WR=1'b1;RSM=3'b001;LO=1'b0;ManIn=32'd32;//Loading 32 in reg2(001) . Lets call this value as 'b'
#50 WR=1'b1;RSM=3'b001;LO=1'b1;ManIn=32'd456; // Switting to Operating mode
INS=32'b000000_00000_00001_00000_00000_000000; // a=a+b
#20 INS=32'b000100_00000_00001_00001_00000_000000; // b=a-b
#20 INS=32'b000100_00000_00001_00000_00000_000000; // a=a-b
#20 WR=1'b1;RSM=3'b010;LO=1'b0;ManIn=32'd0;


end

always #10 clk = ~clk;
endmodule