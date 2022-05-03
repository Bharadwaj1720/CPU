module Mux_2x1 #(parameter N = 32) (a,b,s,y);
input [N-1:0]a;
input [N-1:0]b;
input s;
output [N-1:0]y;
wire [N-1:0]S;
wire [N-1:0]F1,F2,F3;
assign S={(N){s}};
AND #(.N(N)) DUT1(.A(b),.B(S),.AND(F1));
NOT #(.N(N)) DUT2(.A(S),.NOT(F2));
AND #(.N(N)) DUT3(.A(a),.B(F2),.AND(F3));
OR  #(.N(N)) DUT4(.A(F1),.B(F3),.OR(y));

//assign y=s?b:a;
endmodule