module Decoder4x2(S,EN,Y0,Y1,Y2,Y3);
input [1:0]S;
input EN;
output Y0,Y1,Y2,Y3;
wire EN1,EN2;
Decoder2x1 DUT1(.S(S[1]),.EN(EN),.Y0(EN1),.Y1(EN2));
Decoder2x1 DUT2(.S(S[0]),.EN(EN1),.Y0(Y0),.Y1(Y1));
Decoder2x1 DUT3(.S(S[0]),.EN(EN2),.Y0(Y2),.Y1(Y3));

endmodule