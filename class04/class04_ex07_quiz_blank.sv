//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class04_ex07_quiz_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex07_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;

//////////////////////////////////////////////////////////
// 아래 코드의 각 분기에서 어떤 출력이 나오는지 예측하세요.
// HINT: b++, c += b, c >>= b 의 결과를 먼저 계산하세요
//////////////////////////////////////////////////////////

   logic [3:0] a, b, c;

   initial begin
      a= 4'b00xx;
      b= 4'b0001;
      c= 4'b0100;

      b++;     // b= ?
      c += b;  // c= ?
      c >>= b; // c= ?

      $display("a= %b, b= %b", a, b);
      if( b ==? a )
         $display("branch one");
      else
         $display("branch two");

      // Answer :

      $display("c= %b", c);
      if( c inside {4'b0110, 4'b0010} )
         $display("branch three");
      else
         $display("branch four");

      // Answer :

   end

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
endmodule
