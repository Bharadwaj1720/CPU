module Demux1x4 #(parameter N=32)(S0,S1,I,Y0,Y1,Y2,Y3);
input [N-1:0]I;
input S0,S1;
output [N-1:0]Y0,Y1,Y2,Y3;
wire [N-1:0]F0,F1;
Demux1x2 #(.N(N)) DUT1(.I(I),.S0(S1),.Y0(F0),.Y1(F1));
Demux1x2 #(.N(N)) DUT2(.I(F0),.S0(S0),.Y0(Y0),.Y1(Y1));
Demux1x2 #(.N(N)) DUT3(.I(F1),.S0(S0),.Y0(Y2),.Y1(Y3));

endmodule