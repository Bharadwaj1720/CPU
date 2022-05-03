module D_FlipflopFeed (In,clk,reset,Q);
input In,clk,reset;
output  Q;
wire D,Qbar;
not DUT1(Qbar,Q);
or  DUT2(D,In,Qbar);
D_Flipflop DUT3(.D(D),.Q(Q),.clk(clk),.reset(reset));
endmodule