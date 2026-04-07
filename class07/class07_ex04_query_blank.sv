//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class07_ex04_query_blank.sv
// Date  : 2026-04-07
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex04_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   //////////////////////////////////////////////////////////
   // HINT: SPI 메모리 배열을 선언합니다
   //   logic [7:0] spi_mem [1:1024]
   //////////////////////////////////////////////////////////
   // Comment #1 : SPI 메모리 선언
   //    logic [7:0] × [1:1024] 혼합 배열



   // End Comment

   initial begin

      @(posedge clk);

      //////////////////////////////////////////////////////////
      // HINT: 쿼리 함수로 차원과 범위를 조회합니다
      //   $dimensions, $unpacked_dimensions, $left, $right
      //////////////////////////////////////////////////////////
      // Comment #2 : 쿼리 함수 — 차원과 범위
      //    $dimensions, $unpacked_dimensions, $left, $right




      // End Comment
      // #2 dim=2
      // #2 udim=1
      // #2 left=1
      // #2 right=1024

      @(posedge clk);

      //////////////////////////////////////////////////////////
      // HINT: 2차원 인덱스 범위와 방향을 조회합니다
      //   $left(,2), $right(,2), $high, $low, $increment
      //////////////////////////////////////////////////////////
      // Comment #3 : 쿼리 함수 — 2차원 범위와 방향
      //    $left(,2), $right(,2), $high, $low, $increment




      // End Comment
      // #3 left2=7
      // #3 right2=0
      // #3 high=7
      // #3 low=0
      // #3 inc=-1

      @(posedge clk);
      $finish;
   end

endmodule
