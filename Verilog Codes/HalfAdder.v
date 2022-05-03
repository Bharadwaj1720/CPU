module HalfAdder(A,B,Sum,Cout);
input A,B;
output Sum,Cout;
xor DUT1(Sum,A,B);
and DUT2(Cout,A,B);
//assign Sum=A^B;
//assign Cout=A&B;
endmodule