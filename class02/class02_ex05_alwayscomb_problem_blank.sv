//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class02_ex05_alwayscomb_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module ablock (
   output logic y,
   input  logic sel, sel2,
   input  logic a, b, c, d );

//////////////////////////////////////////////////////////
// 아래 코드는 컴파일 에러가 발생합니다.
// always_comb 대신 Verilog 방식 always @(감도리스트)로 수정하세요.
// HINT: always_comb는 변수당 하나의 드라이버만 허용합니다
//////////////////////////////////////////////////////////

   // Comment #1 : Compilation Error
   //    always_comb allows
   //    only a single driver on logic op
   
   logic out;

   always_comb
      if( sel )
         out= a;
      else
         out= b;

   always_comb
      if( sel2 )
         out= c;
      else
         out= d;
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

endmodule

module tb();

	logic a_in, b_in, c_in, d_in;
	logic sel, sel2;
	logic y_out;

	ablock u_duta(
	        .y(y_out), .sel(sel), .sel2(sel2),
	        .a(a_in), .b(b_in), .c(c_in), .d(d_in));

	initial begin
	   a_in = 0;
	   b_in = 0;
	   c_in = 0;
	   d_in = 0;
	   sel  = 0;
	   sel2 = 0;
	#10;
	   a_in = 0;
	   b_in = 1;
	   c_in = 0;
	   d_in = 0;
	   sel  = 0;
	   sel2 = 0;
	#10;
	   a_in = 1;
	   b_in = 0;
	   c_in = 0;
	   d_in = 0;
	   sel  = 0;
	   sel2 = 0;
	#10;
	   a_in = 1;
	   b_in = 1;
	   c_in = 0;
	   d_in = 0;
	   sel  = 0;
	   sel2 = 0;
	#10;
	   $finish;
	end

endmodule
