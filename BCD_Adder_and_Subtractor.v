module BCD_Adder_and_Subtractor(A,B,Cin,sub,S,Cout);
input [3:0]A;
input [3:0]B;
input Cin;
input sub;
output [3:0]S;
output Cout;
wire [3:0]sum_add,sum_sub;
wire carry_add,carry_sub;
BCD_Subtractor b1(.A(A),.B(B),.Cin(1'b1),.S(sum_sub),.C(carry_sub));
BCD_Adder a1(.A(A),.B(B),.Cin(Cin),.S(sum_add),.C(carry_add));
assign S = sub ? sum_sub : sum_add;
assign Cout = sub ? carry_sub : carry_add;
endmodule