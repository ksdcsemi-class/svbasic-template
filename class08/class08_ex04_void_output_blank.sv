//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class08_ex04_void_output_blank.sv
// Date  : 2026-04-07
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex04_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   int         errcnt;
   logic       trig;
   logic [7:0] a, b, sum;
   logic       cry;
   integer c;

   //////////////////////////////////////////////////////////
   // HINT: void function을 정의합니다
   //   반환값 없는 function — void 키워드
   //////////////////////////////////////////////////////////
   // Comment #1 : void function
   //    반환값 없는 function — void 키워드





   // End Comment

   //////////////////////////////////////////////////////////
   // HINT: function 정의와 void'() 캐스트를 작성합니다
   //   반환값 무시 시 void'() 캐스트 필요
   //////////////////////////////////////////////////////////
   // Comment #2 : function + void 캐스트
   //    반환값 무시 시 void'() 캐스트 필요





   // End Comment

   //////////////////////////////////////////////////////////
   // HINT: function에서 output 인자를 사용합니다
   //   output 인자로 carry 비트 반환
   //////////////////////////////////////////////////////////
   // Comment #3 : function with output
   //    output 인자로 carry 비트 반환





   // End Comment

   //////////////////////////////////////////////////////////
   // HINT: void function에서 output 인자를 사용합니다
   //   output 인자로 결과 반환
   //////////////////////////////////////////////////////////
   // Comment #4 : void function with output
   //    void function에서 output 인자로 결과 반환





   // End Comment

   initial begin
      trig = 0;
      errcnt = 3;  display_error(errcnt);
      @(posedge clk);
      errcnt = 0;  display_error(errcnt);
      @(posedge clk);
      trig = 1;
      @(posedge clk);
      trig = 0;
      @(posedge clk);

      a=1; b=2;
      sum = addcarry(a, b, cry);
      @(posedge clk);
      $display("addcarry: a=%0d b=%0d carry=%0d sum=%0d", a, b, cry, sum);

      a=2; b=5;
      add(a, b, c);
      @(posedge clk);
      $display("add: a=%0d b=%0d c=%0d", a, b, c);

      @(posedge clk);
      $finish;
   end

endmodule
