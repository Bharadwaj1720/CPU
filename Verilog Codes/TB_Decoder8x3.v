module TB_Decoder8x3();
reg [2:0]S;
reg EN;
wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
Decoder8x3 DUT (.S(S),.EN(EN),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3),.Y4(Y4),.Y5(Y5),.Y6(Y6),.Y7(Y7));
initial begin
EN=1'b0;S=3'b000;
#10 EN=1'b1;S=3'b000;
#10 EN=1'b1;S=3'b001;
#10 EN=1'b1;S=3'b010;
#10 EN=1'b1;S=3'b011;
#10 EN=1'b1;S=3'b100;
#10 EN=1'b1;S=3'b101;
#10 EN=1'b1;S=3'b110;
#10 EN=1'b1;S=3'b111;

end
endmodule