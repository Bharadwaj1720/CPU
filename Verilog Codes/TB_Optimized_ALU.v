module TB_Optimized_ALU();
parameter N=32;
reg [N-1:0]A,B;
reg [2:0]OP;
wire [N-1:0]C;
wire OV;
Optimized_ALU #(.N(N)) DUT1(.A(A),.B(B),.C(C),.OP(OP),.OV(OV));
initial begin
    A=32'd345;B=32'd234;OP=3'b000;
#10 A=32'd213;B=32'd345;OP=3'b000;
#10 A=32'd672;B=32'd85;OP=3'b001;
#10 A=32'd341;B=32'd943;OP=3'b001;
#10 A=32'd437;B=32'd768;OP=3'b010;
#10 A=32'd922;B=32'd346;OP=3'b010;
#10 A=32'd962;B=32'd123;OP=3'b011;
#10 A=32'd424;B=32'd254;OP=3'b011;
#10 A=32'd67;B=32'd24;OP=3'b100;
#10 A=32'd215;B=32'd267;OP=3'b100;
end

endmodule