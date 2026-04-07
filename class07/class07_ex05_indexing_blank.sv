//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class07_ex05_indexing_blank.sv
// Date  : 2026-04-07
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex05_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   //////////////////////////////////////////////////////////
   // HINT: unpacked 2D, packed 4-byte, enum packed 배열을
   //   선언합니다
   //////////////////////////////////////////////////////////
   // Comment #1 : 배열 선언
   //    unpacked 2D + packed 4-byte + enum packed




   // End Comment

   initial begin
      //////////////////////////////////////////////////////////
      // HINT: assignment pattern으로 초기화한 뒤
      //   arr[2][0], arr[2][1], arr[0][1] 을 출력합니다
      //////////////////////////////////////////////////////////
      // Comment #2 : unpacked 인덱싱
      //    assignment pattern 초기화 후 요소 접근


      @(posedge clk);
      $display("#2 arr[2]=%0d %0d", arr[2][0], arr[2][1]);
      $display("#2 arr[0][1]=%0d", arr[0][1]);
      // End Comment
      // #2 arr[2]=2 1
      // #2 arr[0][1]=2

      //////////////////////////////////////////////////////////
      // HINT: concatenation으로 초기화한 뒤
      //   spi_word, spi_word[0], spi_word[0][5] 를 출력합니다
      //////////////////////////////////////////////////////////
      // Comment #3 : packed 인덱싱
      //    concatenation 초기화 후 요소·비트 접근


      @(posedge clk);
      $display("#3 word=%h", spi_word);
      $display("#3 word[0]=%h", spi_word[0]);
      $display("#3 word[0][5]=%b", spi_word[0][5]);
      // End Comment
      // #3 word=09080706
      // #3 word[0]=06
      // #3 word[0][5]=0

      //////////////////////////////////////////////////////////
      // HINT: enum 배열을 concatenation으로 초기화한 뒤
      //   spi_state, spi_state[2], spi_state[5][1] 을 출력합니다
      //////////////////////////////////////////////////////////
      // Comment #4 : enum packed 인덱싱
      //    enum 요소·비트 접근과 .name() 메서드


      @(posedge clk);
      $display("#4 state=%h", spi_state);
      $display("#4 state[0]=%h %s", spi_state[0], spi_state[0].name());
      $display("#4 state[5][1]=%b", spi_state[5][1]);
      // End Comment
      // #4 state=3e94
      // #4 state[0]=0 IDLE
      // #4 state[5][1]=1

      @(posedge clk);
      $finish;
   end

endmodule
