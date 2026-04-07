//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class08_ex05_argument_passing_blank.sv
// Date  : 2026-04-08
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex05_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   int val = 21;

   //////////////////////////////////////////////////////////
   // HINT: default argument가 있는 task를 정의합니다
   //   ANSI C 스타일로 인자에 기본값 지정
   //////////////////////////////////////////////////////////
   // Comment #1 : default argument task
   //    ANSI C 스타일 — default 인자 값 지정




   // End Comment

   //////////////////////////////////////////////////////////
   // HINT: 모든 인자에 default 값을 지정하는 task를 정의합니다
   //   호출 시 괄호 생략 가능
   //////////////////////////////////////////////////////////
   // Comment #2 : default for every argument
   //    모든 인자에 default — 괄호 생략 가능




   // End Comment

   initial begin
      //////////////////////////////////////////////////////////
      // HINT: default argument를 활용한 task 호출
      //   빈 인자(,)로 default 값 적용
      //////////////////////////////////////////////////////////
      // Comment #3 : default argument 호출
      //    빈 인자(,) 시 default 값 적용



      // End Comment

      @(posedge clk);

      //////////////////////////////////////////////////////////
      // HINT: .name(value) 형식으로 인자를 전달합니다
      //   named binding — 순서 무관
      //////////////////////////////////////////////////////////
      // Comment #4 : Argument Binding by Name
      //    .name(value) 형식으로 인자 전달 — 순서 무관




      // End Comment

      @(posedge clk);

      //////////////////////////////////////////////////////////
      // HINT: 모든 인자에 default가 있으면 괄호 생략 가능
      //   read_a() 또는 read_a 모두 허용
      //////////////////////////////////////////////////////////
      // Comment #5 : 모든 인자 default — 괄호 생략
      //    모든 인자에 default 있으면 () 또는 괄호 자체 생략 가능


      // End Comment

      @(posedge clk);
      $finish;
   end

endmodule
