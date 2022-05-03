module TB_RippleCarrySign();
parameter N=32;
reg [N-1:0]A,B;
reg Cin;
wire Cout;
//wire [N:0]Sum;
wire [N-1:0]Sum;

RippleCarrySign #(.N(N)) DUT1(.A(A),.B(B),.Sum(Sum),.Cin(Cin),.Cout(Cout));
initial begin

A=32'd153;B=32'd415;Cin=1'b0;
#10 A=32'd133;B=32'd542;Cin=1'b0;

#10 A=-32'd153;B=32'd415;Cin=1'b0;
#10 A=32'd133;B=-32'd542;Cin=1'b0;

end
endmodule