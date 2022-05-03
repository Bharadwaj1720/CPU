module Decoder8x3(S,EN,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
input [2:0]S;
input EN;
output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
wire EN1,EN2;
Decoder2x1 DUT1 (.S(S[2]),.EN(EN),.Y0(EN1),.Y1(EN2));
Decoder4x2 DUT2 (.S(S[1:0]),.EN(EN1),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3));
Decoder4x2 DUT3 (.S(S[1:0]),.EN(EN2),.Y0(Y4),.Y1(Y5),.Y2(Y6),.Y3(Y7));

endmodule