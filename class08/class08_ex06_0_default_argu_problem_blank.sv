//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class08_ex06_0_default_argu_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module tb;
   int val= 21;
   // Comment #1 :
   //    default argument values in task definition
   //    ANSI C Style
   task read (int j=0, int k, int data = 1);
      $display("j= %d, k= %d, data= %d",j,k,data);
   endtask

   initial begin
      // Comment #2
      //    Invocation of task with default arguments
      read ( ,5);    // equivalent to (0, 5, 1)
      read (2,val);  // equivalent to (0, 21, 1)
      read ( ,5,7);  // equivalent to (0, 5, 7)

      
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: 함수 호출 인자를 올바르게 작성하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

endmodule
