module Mux_4x1 #(parameter N = 32)(a,b,c,d,s0,s1,y);

input [N-1:0]a;
input [N-1:0]b;
input [N-1:0]c;
input [N-1:0]d;
input s0;
input s1;
output [N-1:0]y;

wire [N-1:0]f_1;
wire [N-1:0]f_2;

Mux_2x1 #(.N(N)) Mux_ab(.a(a),
			.b(b),
			.y(f_1),
			.s(s0));

Mux_2x1 #(.N(N)) Mux_cd(.a(c),
			.b(d),
			.y(f_2),
			.s(s0));

Mux_2x1 #(.N(N)) Mux_f_1f_2(.a(f_1),
			    .b(f_2),
			    .y(y),
			    .s(s1));

endmodule 
