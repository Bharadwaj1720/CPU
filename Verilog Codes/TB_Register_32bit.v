module TB_Register_32bit();
reg [31:0]D;
reg reset,clk;
wire [31:0]Q;

Register_32bit DUT1 ( .D(D), .clk(clk), .reset(reset), .Q(Q));
initial begin

D = 32'b0;
clk = 1'b1;
reset = 1'b1;
#100;

reset = 1'b0;
#200;
forever #50 D = D+1;
end

always #10 clk = ~clk;

endmodule