//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex16_1_quiz_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module tb();
   bit clk=0 ; initial forever #50 clk= ~clk;

//////////////////////////////////////////////////////////
// 아래 코드는 런타임 경고가 발생합니다.
// unique case에서 빠진 case 분기를 추가하세요.
// HINT: b = 3'b011인 경우에 대한 분기가 없습니다
//////////////////////////////////////////////////////////

   logic [2:0] a, b;

   always @(a) begin
      b = a >> 1;
      unique case (b)
         3'b000 : $display("zero");
         3'b001 : $display("one");
         3'b010 : $display("two");
      endcase
   end

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

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
