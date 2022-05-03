module Bitwise #(parameter N=32)(A,B,AND,OR,NOR);
input [N-1:0]A,B;
output [N-1:0]AND,OR,NOR;
genvar i;
generate
for(i=0;i<N;i=i+1)begin
assign AND[i]=A[i]&B[i];
assign OR[i]=A[i]|B[i];
assign NOR[i]=~(A[i]|B[i]);
end
endgenerate
endmodule