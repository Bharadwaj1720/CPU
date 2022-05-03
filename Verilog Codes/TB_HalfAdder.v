module TB_HalfAdder();
reg A,B;
wire Sum,Cout;
HalfAdder DUT1(.A(A),.B(B),.Sum(Sum),.Cout(Cout));
initial begin
A=1'b0;B=1'b0;
#10 A=1'b0;B=1'b1;
#10 A=1'b1;B=1'b0;
#10 A=1'b1;B=1'b1;

end

endmodule