module Demux1x8 #(parameter N=32)(S0,S1,S2,I,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
input [N-1:0]I;
input S0,S1,S2;
output [N-1:0]Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
wire [N-1:0]F0,F1;
Demux1x2 #(.N(N)) DUT1(.I(I),.S0(S2),.Y0(F0),.Y1(F1));
Demux1x4 #(.N(N)) DUT2(.I(F0),.S1(S1),.S0(S0),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3));
Demux1x4 #(.N(N)) DUT3(.I(F1),.S1(S1),.S0(S0),.Y0(Y4),.Y1(Y5),.Y2(Y6),.Y3(Y7));

endmodule