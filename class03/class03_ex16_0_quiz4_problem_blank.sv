//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex16_0_quiz4_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module tb();

   //Net,Variable Declaration
   logic       clk=0 , rstn;
   logic       sel;
   logic [7:0] d1, d2, d3, d4;
   logic [7:0] y1, y2, y3, y4;
   initial forever #50 clk= ~clk;

   // ///////////////////////////////////// 
   // What is wrong with these examples?
   // How could you correct them?

   // ------------------------------------------
   // SOLUTION : Does not infer combinational logic
   always_comb
      if( sel == 1 ) 
         y2<= d2 ;
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: 래치 추론을 방지하는 else 분기를 추가하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
   initial begin
      rstn=0; d2= 0; sel=0; 
      @(negedge clk) ;
      @(negedge clk) ;
      #1 rstn= 1; 
      repeat(8) begin
         @(posedge clk) ;
         #1; d2= d2+1;
         #1; sel= 1;
      end
      #10 $finish;
   end

endmodule : tb
