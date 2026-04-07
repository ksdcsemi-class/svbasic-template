//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class08_ex08_ref_constref_blank.sv
// Date  : 2026-04-08
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex08_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   logic req;
   logic ack;
   logic [7:0] data;

   //////////////////////////////////////////////////////////
   // HINT: ref 키워드로 pass-by-reference task를 정의합니다
   //   task automatic 선언 필요
   //////////////////////////////////////////////////////////
   // Comment #1 : pass-by-reference task
   //    ref — 입출력 모두 실시간 반영, automatic 필수




   // End Comment

   //////////////////////////////////////////////////////////
   // HINT: const ref로 읽기 전용 참조를 정의합니다
   //   const ref 인자에 할당하면 컴파일 에러
   //////////////////////////////////////////////////////////
   // Comment #2 : const ref task
   //    const ref — 입력만 실시간 참조, 출력(data_ready 등)에는 사용 불가




   // End Comment

   initial begin
      req = 1;

      $display("cpu_drive_ref: call");
      ack = 0;
      cpu_drive_ref(8'hff, req, ack, data);

      repeat(5) @(posedge clk);
      data = 8'hxx;

      $display("cpu_drive_const_ref: call");
      ack = 0;
      cpu_drive_const_ref(8'hff, req, ack, data);

      @(posedge clk);
      $finish;
   end

endmodule
