module TB_Register_4bit();
reg [3:0]D;
reg reset,clk;
wire [3:0]Q;

Register_4bit DUT1 ( .D(D), .clk(clk), .reset(reset), .Q(Q));
initial begin

D = 4'b0;
clk = 1'b1;
reset = 1'b1;
#100;

reset = 1'b0;
#200;
forever #50 D = D+1;
end

always #10 clk = ~clk;




endmodule