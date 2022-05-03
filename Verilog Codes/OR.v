module OR #(parameter N=32)(A,B,OR);
input [N-1:0]A,B;
output [N-1:0]OR;
genvar i;
generate
for(i=0;i<N;i=i+1)begin

or DUT1(OR[i],A[i],B[i]);

end
endgenerate
endmodule