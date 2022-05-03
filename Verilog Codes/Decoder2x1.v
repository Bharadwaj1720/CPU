module Decoder2x1(S,EN,Y0,Y1);
input S,EN;
output Y0,Y1;
wire Sbar;
not DUT1(Sbar,S);
and DUT2(Y0,EN,Sbar);
and DUT3(Y1,EN,S);
endmodule