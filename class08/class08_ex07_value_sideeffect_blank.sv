//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class08_ex07_value_sideeffect_blank.sv
// Date  : 2026-04-08
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex07_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   logic req;
   logic ack;
   logic [7:0] data;

   //////////////////////////////////////////////////////////
   // HINT: pass-by-value 방식의 task를 정의합니다
   //   output은 task 종료 후에야 반영됨
   //////////////////////////////////////////////////////////
   // Comment #1 : pass-by-value task
   //    output은 task 종료 후에야 반영됨




   // End Comment

   //////////////////////////////////////////////////////////
   // HINT: side-effect 방식의 task를 정의합니다
   //   모듈 변수를 직접 읽고 쓰는 방식
   //////////////////////////////////////////////////////////
   // Comment #2 : side-effect task
   //    모듈 변수를 직접 읽고 쓰는 side-effect 방식




   // End Comment

   initial begin
      req = 1;

      $display("cpu_drive_bad: call");
      ack = 0;
      cpu_drive_bad(8'hff, req, ack, data);

      repeat(5) @(posedge clk);
      data = 8'hxx;

      $display("cpu_drive_side: call");
      ack = 0;
      cpu_drive_side(8'hff);

      @(posedge clk);
      $finish;
   end

endmodule
