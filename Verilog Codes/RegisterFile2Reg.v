module RegisterFile2Reg(Input,seti,seto1,seto2,clk,reset,WR,Output1,Output2);
input[31:0]Input;
input seti,seto1,seto2;
input clk,reset,WR;
output [31:0]Output1,Output2;
wire [31:0]in1,in2;
wire [31:0]out1,out2;
wire and1,and2,Dc1,Dc2;
Register_32bit DUT1 (.D(in1),.Q(out1),.clk(clk),.reset(reset));
Register_32bit DUT2 (.D(in2),.Q(out2),.clk(clk),.reset(reset));
Mux_2x1 DUT3(.a(out1),.b(out2),.s(seto1),.y(Output1));
Mux_2x1 DUT4(.a(out1),.b(out2),.s(seto2),.y(Output2));
Mux_2x1 DUT5(.a(out1),.b(Input),.s(and1),.y(in1));
Mux_2x1 DUT6(.a(out2),.b(Input),.s(and2),.y(in2));
Decoder2x1 DUT7(.S(seti),.EN(1'b1),.Y0(Dc1),.Y1(Dc2));
and DUT8(and1,WR,Dc1);
and DUT9(and2,WR,Dc2);

endmodule