//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class02_ex04_2_variableassign_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module ablock (
   output logic y,
   input  logic a, b );

   always @(*)
      y<= a && b;
endmodule

module bblock (
   output logic y, 
   input  logic a, b );

   assign y= a || b;
endmodule

module tb();
	// Comment #1 : Compilation Error,
   //    Mutliple drivers on logic op_out
	logic  a_in, b_in;

//////////////////////////////////////////////////////////
// 아래 코드는 컴파일 에러가 발생합니다.
// op_out 선언을 수정하여 multiple driver 에러를 해결하세요.
// HINT: logic은 multiple driver를 허용하지 않습니다
//////////////////////////////////////////////////////////
	logic  op_out;

	ablock u1( .y(op_out), .a(a_in), .b(b_in));
	bblock u2( .y(op_out), .a(a_in), .b(b_in));
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
	
	initial begin
	   a_in = 0;
	   b_in = 0; #10;
	   a_in = 0;
	   b_in = 1; #10;
	   a_in = 1;
	   b_in = 0; #10;
	   a_in = 1;
	   b_in = 1; #10;
	   $finish;
	end
endmodule
