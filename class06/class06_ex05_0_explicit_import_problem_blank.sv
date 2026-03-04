//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class06_ex05_0_explicit_import_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

// Comment #0 : Package
package P1;
   localparam int c1= 10;
   typedef enum {start, stop} mode_t;
endpackage : P1

module mone( );
   import P1::c1;
   import P1::mode_t;
   mode_t mode;
   initial begin
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: import 충돌과 스코프를 해결하세요 (P1:: 사용)
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
endmodule : mone

// Comment #3 : CUS import
import P1::c1;
module mtwo( );

   // Comment #4 :
   //    Local c1 take precedence
   logic [7:0] c1;

endmodule : mtwo
