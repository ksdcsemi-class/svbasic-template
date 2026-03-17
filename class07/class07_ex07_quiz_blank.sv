//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class07_ex07_quiz_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex07_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 아래 코드의 $display 출력 값을 예측하세요.
// packed enum 배열 접근 퀴즈입니다.
// HINT: enum 비트 표현과 packed 배열 인덱싱을 확인하세요
//////////////////////////////////////////////////////////

module tb;

   typedef enum bit [1:0] {A,B,C,D} mytype;
   mytype [6:0] pnum;

   initial begin
      pnum= {D,D,C,C,B,B,A};
      $display("%h    ", pnum);                     // (a) ?
      $display("%h, %s", pnum[2], pnum[2].name());  // (b) ?
      $display("%h    ", pnum[4:3]);                // (c) ?
      $display("%h    ", pnum[5][1]);               // (d) ?
   end

endmodule
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
