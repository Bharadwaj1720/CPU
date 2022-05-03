module NOR #(parameter N=32)(A,B,NOR);
input [N-1:0]A,B;
output [N-1:0]NOR;
genvar i;
generate
for(i=0;i<N;i=i+1)begin
nor DUT1(NOR[i],A[i],B[i]);
end
endgenerate
endmodule