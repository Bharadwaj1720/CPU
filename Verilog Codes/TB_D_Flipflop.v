module TB_D_Flipflop();
reg D,reset,clk;
wire Q;

D_Flipflop DUT1 ( .D(D), .clk(clk), .reset(reset), .Q(Q));
initial begin

D = 1'b0;
clk = 1'b1;
reset = 1'b1;
#100;

reset = 1'b0;
#200;
forever #50 D = ~ D;
end

always #10 clk = ~clk;
endmodule