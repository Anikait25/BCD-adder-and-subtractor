module BCD_Subtractor(A,B,Cin,S,C);
input [3:0]A,B;
input Cin;
output [3:0]S;
output C;
wire [3:0]B_c;
assign B_c = 4'd9 - B;
BCD_Adder b1(.A(A),.B(B_c),.Cin(1'b1),.S(S),.C(C));
endmodule