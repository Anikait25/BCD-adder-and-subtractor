module BCD_Adder_and_Subtractor_tb;
  reg  [3:0] A;
  reg  [3:0] B;
  reg  Cin;
  reg  sub;
  wire [3:0] S;
  wire Cout;
  BCD_Adder_and_Subtractor uut (.A(A),.B(B),.Cin(Cin),.sub(sub),.S(S),.Cout(Cout));
  initial 
  begin
  A=4'b0111;B=4'b0011;sub=1;Cin=1;#10;
  A=4'b1001;B=4'b0111;sub=1;Cin=1;#10;
  A=4'b1001;B=4'b1001;sub=0;Cin=0;#10;
  A=4'd8;B=4'd5;sub=0;Cin=0;#10;
  end
endmodule
