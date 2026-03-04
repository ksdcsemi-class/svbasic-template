//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex16_0_quiz7_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

// ///////////////////////////////////// 
// What is wrong with these examples?
// How could you correct them?

// ------------------------------------------
// SOLUTION : Runtime warnings when 
// - incomplete (rst==1 or en==0)
// - incomplete (rst==x or en==x)
// - overlap (rst==0 or en==1)
module block3( input clk, rstn, en, 
               output reg [7:0] y);
   always @(posedge clk or negedge rstn)
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: unique if의 문제를 해결하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
      else if (en)
         y <= y + 1;
endmodule

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
