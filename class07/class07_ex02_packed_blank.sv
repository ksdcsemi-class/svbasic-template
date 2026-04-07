//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class07_ex02_packed_blank.sv
// Date  : 2026-04-07
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex02_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   //////////////////////////////////////////////////////////
   // HINT: 2-byte packed 배열과 보조 변수를 선언합니다
   //   spi_frame [1:0][7:0], cmd [7:0], payload [23:0]
   //////////////////////////////////////////////////////////
   // Comment #1 : SPI 프레임 packed 배열 선언



   // End Comment

   initial begin
      //////////////////////////////////////////////////////////
      // HINT: packed 배열의 벡터 연산을 수행합니다
      //   init, shift, invert, padding, truncation
      //////////////////////////////////////////////////////////
      // Comment #2 : 벡터 연산
      //    init, shift, invert, padding, truncation

      @(posedge clk);
      $display("#2 init=%h", spi_frame);      // 0001

      @(posedge clk);
      $display("#2 shift=%h", spi_frame);     // 0002

      @(posedge clk);
      $display("#2 invert=%h", spi_frame);    // fffd

      @(posedge clk);
      $display("#2 pad=%h", spi_frame);       // 00aa

      @(posedge clk);
      $display("#2 trunc=%h", spi_frame);
      // End Comment
      // #2 init=0001
      // #2 shift=0002
      // #2 invert=fffd
      // #2 pad=00aa
      // #2 trunc=5555

      @(posedge clk);
      $finish;
   end

endmodule
