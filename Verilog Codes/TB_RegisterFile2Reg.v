module TB_RegisterFile2Reg();
reg [31:0]Input;
reg seti,seto1,seto2;
reg WR,reset,clk;
wire [31:0] Output1,Output2;

RegisterFile2Reg DUT1 (.Input(Input),.seti(seti),.seto1(seto1),.seto2(seto2),.WR(WR),.reset(reset),.clk(clk),.Output1(Output1),.Output2(Output2));
initial begin

Input = 32'd567;
clk = 1'b1;
reset = 1'b1;
WR=1'b0;seti=1'b0;seto1=1'b0;seto2=1'b1;
#50;

reset = 1'b0;
#50;
    WR=1'b0;seti=1'b0;seto1=1'b0;seto2=1'b1;
#50 WR=1'b0;seti=1'b1;seto1=1'b0;seto2=1'b1;
#50 WR=1'b1;seti=1'b0;seto1=1'b0;seto2=1'b1;
#50 WR=1'b1;seti=1'b1;seto1=1'b0;seto2=1'b1;

end

always #10 clk = ~clk;
endmodule