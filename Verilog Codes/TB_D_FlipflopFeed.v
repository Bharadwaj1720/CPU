module TB_D_FlipflopFeed();
reg In,reset,clk;
wire Q;

D_FlipflopFeed DUT1 ( .In(In), .clk(clk), .reset(reset), .Q(Q));
initial begin

In = 1'b0;
clk = 1'b1;
reset = 1'b1;
#100;

reset = 1'b0;
#200;
forever #50 In = ~ In;
end

always #10 clk = ~clk;
endmodule