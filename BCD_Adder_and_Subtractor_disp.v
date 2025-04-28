module BCD_Adder_and_Subtractor_disp(A,B,Cin,s,oledS,oledC);
input [3:0]A,B;
input Cin;
input s;
output [0:6]oledS,oledC;
wire [3:0]S;
wire C;
BCD_Adder_and_Subtractor bcd1(A,B,Cin,s,S,C);
display_d b1(.o_led(oledS),.A(S[3]),.B(S[2]),.C(S[1]),.D(S[0]));
display_d b2(.o_led(oledC),.D(C));
endmodule