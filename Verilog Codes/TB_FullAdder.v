module TB_FullAdder();
reg A,B,C;
wire Cout,Sum;
FullAdder DUT1(.A(A),.B(B),.C(C),.Cout(Cout),.Sum(Sum));
initial begin
A=1'b0;B=1'b0;C=1'b0;
#10 A=1'b0;B=1'b0;C=1'b1;
#10 A=1'b0;B=1'b1;C=1'b0;
#10 A=1'b0;B=1'b1;C=1'b1;
#10 A=1'b1;B=1'b0;C=1'b0;
#10 A=1'b1;B=1'b0;C=1'b1;
#10 A=1'b1;B=1'b1;C=1'b0;
#10 A=1'b1;B=1'b1;C=1'b1;

end
endmodule