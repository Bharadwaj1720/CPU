module TB_Mux_2x1();
parameter N=32;
reg [N-1:0]A,B;
wire [N-1:0]C;
reg s;
Mux_2x1 #(.N(N)) DUT(.a(A),.b(B),.s(s),.y(C));
initial begin
A=32'd312;B=32'd521;s=1'b0;
#10 A=32'd312;B=32'd521;s=1'b1;


end


endmodule