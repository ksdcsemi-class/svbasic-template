//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class07_ex03_mixed_blank.sv
// Date  : 2026-04-07
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex03_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   //////////////////////////////////////////////////////////
   // HINT: Verilog memory와 혼합 packed/unpacked 배열을
   //   선언합니다
   //   spi_mem [7:0] × [0:255], spi_reg [3:0][7:0] × [3:0]
   //////////////////////////////////////////////////////////
   // Comment #1 : 배열 선언
   //    Verilog memory + 혼합 packed/unpacked



   // End Comment

   initial begin
      //////////////////////////////////////////////////////////
      // HINT: element 단위로 값을 할당한 뒤
      //   packed 차원별로 읽어봅니다
      //////////////////////////////////////////////////////////
      // Comment #2 : spi_reg[i] 인덱싱
      //    unpacked 인덱스로 32-bit element 접근


      @(posedge clk);
      $display("#2 [0]=%h [2]=%h", spi_reg[0], spi_reg[2]);
      // End Comment
      // #2 [0]=01020304 [2]=090a0b0c

      // Comment #3 : spi_reg[i][j] 인덱싱
      //    packed 첫 번째 차원으로 8-bit 접근

      @(posedge clk);
      $display("#3 reg[3][2]=%h", spi_reg[3][2]);
      // End Comment
      // #3 reg[3][2]=bb

      // Comment #4 : spi_reg[i][j][k] 인덱싱
      //    packed 두 번째 차원으로 single bit 접근

      @(posedge clk);
      $display("#4 reg[3][2][1]=%b", spi_reg[3][2][1]);
      // End Comment
      // #4 reg[3][2][1]=1

      @(posedge clk);
      $finish;
   end

endmodule
