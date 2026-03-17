//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class06_ex08_explicit_import_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex08_problem_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 아래 코드는 컴파일 에러가 발생합니다.
// import 충돌과 스코프 문제를 수정하세요.
// HINT: c1 재선언 제거, P1::stop 사용
//////////////////////////////////////////////////////////

// Comment #1 : ERROR — local c1 clashes with P1::c1, stop requires P1::stop

package P1;
   localparam int c1 = 10;
   typedef enum {start, stop} mode_t;
endpackage : P1

module mone(input logic clk);
   import P1::c1;
   import P1::mode_t;
   logic [7:0] c1;
   mode_t mode;
   always_ff @(posedge clk) mode <= mode.next();
   initial begin
      $display("c1 = %0d, stop = %0d", c1, stop);
   end
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

endmodule : mone

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: CUS import, module mtwo, local c1
// Comment #2 : CUS import — local takes precedence
//////////////////////////////////////////////////////////





//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

// Testbench
module tb;
   import P1::*;
   logic clk = 0;
   always #5 clk = ~clk;
   mone U1(.clk);
   mtwo U2();
   initial begin
      repeat (2) begin
         @(posedge clk);
         #1;
         $display("[mone] mode = %s (%0d)", U1.mode.name(), U1.mode);
      end
      $display("[mtwo] c1   = %0d (local, overrides CUS P1::c1=%0d)", U2.c1, c1);
      $finish;
   end
endmodule
