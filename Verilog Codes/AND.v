module AND #(parameter N=32)(A,B,AND);
input [N-1:0]A,B;
output [N-1:0]AND;
genvar i;
generate
for(i=0;i<N;i=i+1)begin
and DUT1(AND[i],A[i],B[i]);
end
endgenerate
endmodule