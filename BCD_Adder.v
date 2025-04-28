module BCD_Adder(A,B,Cin,S,C);
	input [3:0]A,B;
	input Cin;
	output [3:0]S;
	output C;
	wire c1,c2;
	wire c;
	wire [3:0]corr;
	wire [3:0]s1,s2;
	parallel_adder p1(A,B,Cin,s1,c1);
	assign c = c1|(s1>4'd9);
	assign corr = c ? 4'd6: 4'd0;
	parallel_adder p2(.A(s1),.B(corr),.Cin(1'b0),.S(s2),.C(c2));
	assign C = c;
	assign S = s2;
endmodule