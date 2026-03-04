//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex16_0_quiz1_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module tb();
   bit clk=0 ; initial forever #50 clk= ~clk;
   logic [2:0] a, b;

   // ///////////////////////////////////// 
   // What is wrong with these examples?
   // How could you correct them?

   // ------------------------------------------
   // SOLUTION : No case branch for tmp = 3'b011
   always @(a) begin
      b = a >> 1;
      unique case (b)
         3'b000 : $display("zero");
         3'b001 : $display("one");
         3'b010 : $display("two");
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: 빠진 case 분기를 추가하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
   end

   initial begin
      a= 1;
      @(negedge clk) ;
      @(negedge clk) ;
      repeat(8) begin
         @(posedge clk) ;
         #1;
         a= a+1;
      end
      #20 $finish;
   end

endmodule : tb
