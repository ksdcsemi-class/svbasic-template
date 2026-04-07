//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class08_ex06_returnout_blank.sv
// Date  : 2026-04-07
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex06_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   logic [2:0] result;

   //////////////////////////////////////////////////////////
   // HINT: HALT(000)이면 return으로 즉시 종료합니다
   //   return 0으로 값 반환
   //////////////////////////////////////////////////////////
   // Comment #1 : function with return
   //    HALT(000)이면 return으로 즉시 종료 — 값 반환




   // End Comment

   //////////////////////////////////////////////////////////
   // HINT: result=0이면 return으로 즉시 종료합니다
   //   조건 분기 후 return으로 즉시 빠져나감
   //////////////////////////////////////////////////////////
   // Comment #2 : task with return
   //    result=0이면 return으로 즉시 종료 — 값 없음




   // End Comment

   // Test Sequence
   initial begin
      result = execute(3'b101);  // LDA → 5
      display_result(result);
      @(posedge clk);

      result = execute(3'b000);  // HALT → return 0
      display_result(result);
      @(posedge clk);

      result = execute(3'b010);  // ADD → 2
      display_result(result);

      @(posedge clk);
      $finish;
   end

endmodule
