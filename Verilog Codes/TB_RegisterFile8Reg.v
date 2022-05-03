module TB_RegisterFile8Reg();
reg [31:0]Input;
reg [2:0]seti,seto1,seto2;
reg WR,reset,clk;
wire [31:0] Output1,Output2;

RegisterFile8Reg DUT1 (.Input(Input),.seti(seti),.seto1(seto1),.seto2(seto2),.WR(WR),.reset(reset),.clk(clk),.Output1(Output1),.Output2(Output2));
initial begin

Input = 32'd567;
clk = 1'b1;
reset = 1'b1;
WR=1'b0;seti=3'b000;seto1=3'b000;seto2=3'b000;
#50;

reset = 1'b0;
#50 WR=1'b0;seti=3'b000;seto1=3'b000;seto2=3'b000;
#50 WR=1'b0;seti=3'b001;seto1=3'b010;seto2=3'b011;
#50 WR=1'b0;seti=3'b010;seto1=3'b100;seto2=3'b101;
#50 WR=1'b0;seti=3'b011;seto1=3'b110;seto2=3'b111;

#50 WR=1'b1;seti=3'b000;seto1=3'b011;seto2=3'b000;
#50 WR=1'b1;seti=3'b010;seto1=3'b010;seto2=3'b011;
#50 WR=1'b1;seti=3'b101;seto1=3'b100;seto2=3'b101;
#50 WR=1'b1;seti=3'b111;seto1=3'b110;seto2=3'b111;

end

always #10 clk = ~clk;
endmodule