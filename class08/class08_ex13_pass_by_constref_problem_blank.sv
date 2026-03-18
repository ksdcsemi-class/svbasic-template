//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class08_ex13_pass_by_constref_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex13_problem_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;

   logic req;
   logic ack;
   logic [7:0] data;

   // Comment #1 : const ref task
   //    const ref prevents modification — compile error if assigned
   task automatic cpu_drive_const_ref (
           input     logic [7:0] data_in,
           const ref logic       data_valid,
           ref       logic       data_ready,
           ref       logic [7:0] data_out);
      #5  data_ready = 1;
      #20 data_out   = data_in;
      #20 data_out   = 8'hzz;
      data_ready = 0;
//////////////////////////////////////////////////////////
// 아래 코드는 컴파일 에러가 발생합니다.
// const ref 인자에 대한 잘못된 할당을 수정하세요.
// HINT: const ref로 선언된 인자는 수정할 수 없습니다
//////////////////////////////////////////////////////////
      data_valid = 0;
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
   endtask : cpu_drive_const_ref

   // Test Sequence
   initial begin
      req = 1;
      ack = 0;
      $display("[before] req=%b ack=%b, data=%h", req, ack, data);

      cpu_drive_const_ref(8'hff, req, ack, data);

      $display("[after]  req=%b ack=%b, data=%h", req, ack, data);
      #100;
      $finish;
   end

endmodule
