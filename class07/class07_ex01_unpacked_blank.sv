//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class07_ex01_unpacked_blank.sv
// Date  : 2026-04-07
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex01_blank.f -input ../../../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   //////////////////////////////////////////////////////////
   // HINT: 1D/2D int, enum, unpacked byte 배열과
   //   2D 레지스터 뱅크를 선언합니다
   //   cfg_a [2:0][0:1], cfg_b [1:3][2:1],
   //   reg_bank [15:0][0:255]
   //////////////////////////////////////////////////////////
   // Comment #1 : SPI 배열 선언
   //    1D/2D int, enum, unpacked byte, 2D 레지스터 뱅크




   // End Comment

   initial begin
      @(posedge clk);
      $display("#1 size_a=%0d x %0d", $size(cfg_a,1), $size(cfg_a,2));
      $display("#1 size_b=%0d x %0d", $size(cfg_b,1), $size(cfg_b,2));
      $display("#1 size_bank=%0d x %0d", $size(reg_bank,1), $size(reg_bank,2));
      // #1 size_a=3 x 2
      // #1 size_b=3 x 2
      // #1 size_bank=16 x 256

      //////////////////////////////////////////////////////////
      // HINT: assignment pattern으로 배열을 초기화합니다
      //   default, ordered, literal
      //////////////////////////////////////////////////////////
      // Comment #2 : assignment pattern
      //    default, ordered, literal



      @(posedge clk);
      $display("#2 cfg=%0d", spi_cfg[0][0]);
      $display("#2 state=%0d", st_log[4]);
      $display("#2 tx=%h", tx_buf[0]);
      // End Comment
      // #2 cfg=0
      // #2 state=3
      // #2 tx=ff

      //////////////////////////////////////////////////////////
      // HINT: 2D assignment pattern으로 배열을 초기화합니다
      //   ordered, repeat, default
      //////////////////////////////////////////////////////////
      // Comment #3 : 2D assignment patterns
      //    ordered, repeat, default



      @(posedge clk);
      $display("#3 cfg_a=%0d", cfg_a[2][0]);
      $display("#3 cfg_b=%0d", cfg_b[1][2]);
      $display("#3 reg_bank=%0d", reg_bank[15][0]);
      // End Comment
      // #3 cfg_a=2
      // #3 cfg_b=2
      // #3 reg_bank=100

      //////////////////////////////////////////////////////////
      // HINT: 같은 크기 배열의 전체 또는 행 단위 복사
      //////////////////////////////////////////////////////////
      // Comment #4 : array copy
      //    same-dimension, partial row



      @(posedge clk);
      $display("#4 cfg_a[2][0]=%0d", cfg_a[2][0]);
      $display("#4 cfg_a[2][1]=%0d", cfg_a[2][1]);
      $display("#4 cfg_a[1][0]=%0d", cfg_a[1][0]);
      // End Comment
      // #4 cfg_a[2][0]=2
      // #4 cfg_a[2][1]=1
      // #4 cfg_a[1][0]=2

      @(posedge clk);
      $finish;
   end

endmodule
