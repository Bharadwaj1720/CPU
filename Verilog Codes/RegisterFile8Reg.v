module RegisterFile8Reg(Input,seti,seto1,seto2,clk,reset,WR,Output1,Output2,out1,out2,out3,out4,out5,out6,out7,out8);
input[31:0]Input;
input [2:0]seti,seto1,seto2;
input clk,reset,WR;
output [31:0]Output1,Output2;
wire [31:0]in1,in2,in3,in4,in5,in6,in7,in8;
output [31:0]out1,out2,out3,out4,out5,out6,out7,out8;
wire and1,and2,and3,and4,and5,and6,and7,and8;
wire Dc1,Dc2,Dc3,Dc4,Dc5,Dc6,Dc7,Dc8;
Register_32bit DUT1 (.D(in1),.Q(out1),.clk(clk),.reset(reset));
Register_32bit DUT2 (.D(in2),.Q(out2),.clk(clk),.reset(reset));
Register_32bit DUT3 (.D(in3),.Q(out3),.clk(clk),.reset(reset));
Register_32bit DUT4 (.D(in4),.Q(out4),.clk(clk),.reset(reset));
Register_32bit DUT5 (.D(in5),.Q(out5),.clk(clk),.reset(reset));
Register_32bit DUT6 (.D(in6),.Q(out6),.clk(clk),.reset(reset));
Register_32bit DUT7 (.D(in7),.Q(out7),.clk(clk),.reset(reset));
Register_32bit DUT8 (.D(in8),.Q(out8),.clk(clk),.reset(reset));



Mux_8x1 DUT9(.a(out1),.b(out2),.c(out3),.d(out4),.e(out5),.f(out6),.g(out7),.h(out8),.s0(seto1[0]),.s1(seto1[1]),.s2(seto1[2]),.y(Output1));
Mux_8x1 DUT10(.a(out1),.b(out2),.c(out3),.d(out4),.e(out5),.f(out6),.g(out7),.h(out8),.s0(seto2[0]),.s1(seto2[1]),.s2(seto2[2]),.y(Output2));


Mux_2x1 DUT11(.a(out1),.b(Input),.s(and1),.y(in1));
Mux_2x1 DUT12(.a(out2),.b(Input),.s(and2),.y(in2));
Mux_2x1 DUT13(.a(out3),.b(Input),.s(and3),.y(in3));
Mux_2x1 DUT14(.a(out4),.b(Input),.s(and4),.y(in4));
Mux_2x1 DUT15(.a(out5),.b(Input),.s(and5),.y(in5));
Mux_2x1 DUT16(.a(out6),.b(Input),.s(and6),.y(in6));
Mux_2x1 DUT17(.a(out7),.b(Input),.s(and7),.y(in7));
Mux_2x1 DUT18(.a(out8),.b(Input),.s(and8),.y(in8));





Decoder8x3 DUT19(.S(seti),.EN(1'b1),.Y0(Dc1),.Y1(Dc2),.Y2(Dc3),.Y3(Dc4),.Y4(Dc5),.Y5(Dc6),.Y6(Dc7),.Y7(Dc8));



and DUT20(and1,WR,Dc1);
and DUT21(and2,WR,Dc2);
and DUT22(and3,WR,Dc3);
and DUT23(and4,WR,Dc4);
and DUT24(and5,WR,Dc5);
and DUT25(and6,WR,Dc6);
and DUT26(and7,WR,Dc7);
and DUT27(and8,WR,Dc8);



endmodule