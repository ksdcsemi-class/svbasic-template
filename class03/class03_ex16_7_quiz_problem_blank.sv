//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex16_7_quiz_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 아래 코드는 런타임 경고가 발생합니다.
// unique if 조건의 incomplete/overlap 문제를 수정하세요.
// HINT: unique if는 모든 조건을 빠짐없이, 겹침없이 커버해야 합니다
//////////////////////////////////////////////////////////

module block3( input clk, rstn, en,
               output reg [7:0] y);

   always @(posedge clk or negedge rstn)
      unique if (!rstn)
         y <= 0;
      else if (en)
         y <= y + 1;

endmodule

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

module tb();
   logic       clk=0, rstn;
   logic       sel, en;
   logic [7:0] y4;
   initial forever #50 clk= ~clk;

   block3 u_block3( clk, rstn, en, y4);

   initial begin
      rstn=0; en=0; 
      @(negedge clk) ;
      @(negedge clk) ;
      #1 rstn= 1;
      repeat(8) begin
         @(posedge clk) ;
         #1; en= 1;
      end
      #10 $finish;
   end

endmodule : tb
