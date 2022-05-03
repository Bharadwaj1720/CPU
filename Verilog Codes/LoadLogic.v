module LoadLogic(WR,clk,LO,RS,RD,MaOr,AlOr,O1,O2,O3);
input WR,clk,LO;
input [2:0]RS,RD;
input [31:0]MaOr,AlOr;
output O1;
output [2:0]O2;
output [31:0]O3;
reg clkn;
//assign clkn = ~clk;

Mux_2x1 #(.N(1))  DUT2(.a(WR),.b(clk),.s(LO),.y(O1));
Mux_2x1 #(.N(3))  DUT3(.a(RS),.b(RD),.s(LO),.y(O2));
Mux_2x1 #(.N(32)) DUT4(.a(MaOr),.b(AlOr),.s(LO),.y(O3));



endmodule