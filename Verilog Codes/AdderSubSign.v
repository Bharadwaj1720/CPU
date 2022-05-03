module AdderSubSign #(parameter N=32)(A,B,C,S,O);
input wire [N-1:0]A,B;
output wire [N-1:0]C;
wire k;
input S;
output O;
wire [N+1:0]Cin;

assign Cin[0]=S;
genvar i;
generate
for(i=0;i<N;i=i+1) begin:FullAdder
FullAdder DUT_1(.A(A[i]),.B(B[i]^S),.C(Cin[i]),.Cout(Cin[i+1]),.Sum(C[i]));

end
endgenerate
//FullAdder DUT_2(.A(A[N-1]),.B(D[N-1]),.C(Cin[N]),.Cout(Cin[N+1]),.Sum(C[N]));
//FullAdder DUT_2(.A(A[N-1]),.B(B[N-1]^S),.C(Cin[N]),.Cout(Cin[N+1]),.Sum(k));
xor DUT3(O,Cin[N],Cin[N-1]);
endmodule