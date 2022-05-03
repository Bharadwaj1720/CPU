module RippleCarrySign #(parameter N=32) (A,B,Sum,Cin,Cout);
input [N-1:0]A,B;
input Cin;
output Cout;
//output [N:0]Sum;
output [N-1:0]Sum;
wire [N+1:0]Cout1;
wire k;
assign Cout1[0]=Cin;
genvar i;
generate
for(i=0;i<N;i=i+1) begin

FullAdder DUT1(.A(A[i]),.B(B[i]),.C(Cout1[i]),.Sum(Sum[i]),.Cout(Cout1[i+1]));

end
endgenerate
//FullAdder DUT2(.A(A[N-1]),.B(B[N-1]),.C(Cout1[N]),.Cout(Cout1[N+1]),.Sum(Sum[N]));
FullAdder DUT2(.A(A[N-1]),.B(B[N-1]),.C(Cout1[N]),.Cout(Cout1[N+1]),.Sum(k));

assign Cout=Cout1[N+1];
endmodule