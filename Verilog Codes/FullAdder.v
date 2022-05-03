module FullAdder(A,B,C,Sum,Cout);
input A,B,C;
output Sum,Cout;
wire sum1,cout1,cout2;
HalfAdder DUT1(.A(A),.B(B),.Cout(cout1),.Sum(sum1));
HalfAdder DUT2(.A(sum1),.B(C),.Cout(cout2),.Sum(Sum));
xor DUT3(Cout,cout1,cout2);
//assign Cout=cout1^cout2;
endmodule