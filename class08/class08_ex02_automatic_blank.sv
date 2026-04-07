//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class08_ex02_automatic_blank.sv
// Date  : 2026-04-07
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex02_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   logic trig;

   //////////////////////////////////////////////////////////
   // HINT: automatic function과 task를 정의합니다
   //   재귀 호출과 재진입을 위해 automatic 필수
   //////////////////////////////////////////////////////////
   // Comment #1 : automatic function & task
   //    재귀 호출과 재진입을 위해 automatic 필수





   // End Comment

   //////////////////////////////////////////////////////////
   // HINT: always와 initial에서 동시 호출합니다
   //   각각 독립 스택으로 동작
   //////////////////////////////////////////////////////////
   // Comment #2 : automatic 서브루틴 병렬 호출
   //    always와 initial에서 동시 호출 — 각각 독립 스택





   // End Comment

endmodule
