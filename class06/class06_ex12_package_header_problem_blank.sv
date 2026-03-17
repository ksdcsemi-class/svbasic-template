//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class06_ex12_package_header_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex12_problem_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

package P1;
   typedef enum {start, done} mode_t;
endpackage : P1

//////////////////////////////////////////////////////////
// 아래 코드는 컴파일 에러가 발생합니다.
// import 위치를 수정하여 mode_t가 인식되도록 하세요.
// HINT: module header에서 import
//////////////////////////////////////////////////////////

// Comment #1 : ERROR — mode_t not yet defined,
//    import must come before port list
module mone( input mode_t mode);
   import P1::*;
endmodule : mone
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

module tb;
   import P1::*;
   mode_t mode = start;
   mone u_mone(.mode(mode));
   initial begin
      #1;
      $display("%s", mode.name());
   end
endmodule : tb
