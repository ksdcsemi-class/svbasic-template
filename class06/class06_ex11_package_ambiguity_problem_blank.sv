//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class06_ex11_package_ambiguity_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex11_problem_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

package P1;
   typedef enum {start, done} mode_f;
   int c1= 5;
endpackage : P1

package P2;
   int c1= 8;
endpackage : P2

//////////////////////////////////////////////////////////
// 아래 코드는 컴파일 에러가 발생합니다.
// 패키지 모호성(ambiguity)을 해결하세요.
// HINT: explicit import
//////////////////////////////////////////////////////////

// Comment #1 : Wildcard import danger — P1, P2 both define c1, ambiguity on c1
module mone( );
   import P1::*;
   import P2::*;
   logic [7:0] d= c1;
   logic [7:0] e= P2::c1;
endmodule : mone
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

module tb;
   mone u_mone();
   initial begin
      #1;
      $display("%0d %0d", u_mone.d, u_mone.e);
   end
endmodule : tb
