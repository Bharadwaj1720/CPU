module NOT #(parameter N=32)(A,NOT);
input [N-1:0]A;
output [N-1:0]NOT;
genvar i;
generate
for(i=0;i<N;i=i+1)begin
not DUT1(NOT[i],A[i]);
end
endgenerate
endmodule