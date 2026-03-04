//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class06_ex07_package_ambiguity_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

package P1;
   typedef enum {start, done } mode_f;
   int c1= 5;
endpackage : P1

package P2;
   int c1= 8;
endpackage : P2

// Solution #2 :
// Explicitly Import
module mone( );
   import P1::*;
   import P2::*;
   // Comment #3 :
   //    Explicitly import C1 
   //    from package you want to always infer
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: 패키지 모호성을 해결하는 import를 추가하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
   // Comment #4 :
   //    OK - resolved
   logic [7:0] e= c1;
endmodule : mone
