//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex16_0_quiz3_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module tb();
   bit clk=0; initial forever #50 clk= ~clk;

   logic       rstn;
   logic [7:0] d1;
   logic [7:0] y1;

   // ///////////////////////////////////// 
   // What is wrong with these examples?
   // How could you correct them?

   // ------------------------------------------
   // SOLUTION : procedure never triggered when rst=1 so never reset
   always_ff @(posedge clk iff rstn == 0 )
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: 리셋 조건을 올바르게 작성하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
         y1<= d1;

   // Sequences
   initial begin
      rstn=0;
      d1= 1;
      @(negedge clk) ;
      @(negedge clk) ;
      #1 rstn= 1;
      repeat(8) begin
         @(posedge clk) ;
         #1; d1= d1+1;
      end
      #10 $finish;
   end

endmodule : tb
