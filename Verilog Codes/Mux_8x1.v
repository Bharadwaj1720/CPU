module Mux_8x1 #(parameter N=32)(a,b,c,d,e,f,g,h,s0,s1,s2,y);
input [N-1:0]a,b,c,d,e,f,g,h;
input s0,s1,s2;
output [N-1:0]y;

wire [N-1:0]f_1,f_2;

Mux_4x1 #(.N(N)) Mux_abcd(.a(a),
			  .b(b),
			  .c(c),
  			  .d(d),
			  .s0(s0),
			  .s1(s1),
			  .y(f_1));

Mux_4x1 #(.N(N)) Mux_efgh(.a(e),
			  .b(f),
			  .c(g),
  			  .d(h),
			  .s0(s0),
			  .s1(s1),
			  .y(f_2));

Mux_2x1 #(.N(N)) Mux_f_1f_2(.a(f_1),
			.b(f_2),
			.y(y),
			.s(s2));

endmodule