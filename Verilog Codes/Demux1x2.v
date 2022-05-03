module Demux1x2 #(parameter N=32)(S0,I,Y0,Y1);
input S0;
input [N-1:0]I;
output [N-1:0]Y0,Y1;
wire [N-1:0]S0n;
wire [N-1:0]SS0;
assign SS0={(N){S0}};
//not(S0n,S0);
NOT #(.N(N)) DUT1(.A(SS0),.NOT(S0n));
//and(Y0,S0n,I);
AND #(.N(N)) DUT2(.A(S0n),.B(I),.AND(Y0));
//and(Y1,S0,I);
AND #(.N(N)) DUT3(.A(SS0),.B(I),.AND(Y1));
endmodule