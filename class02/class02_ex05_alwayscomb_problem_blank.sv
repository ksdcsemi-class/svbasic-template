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

   // Comment #1 : Verilog-Style
   //    a variable to multiple procedures
   logic out;

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: always_comb 대신 적절한 감도 리스트를 작성하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
         out= a;
      else
         out= b;

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: always_comb 대신 적절한 감도 리스트를 작성하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
         out= c;
      else
         out= d;

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
