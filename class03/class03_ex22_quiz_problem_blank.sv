//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex22_quiz_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command 
//    $> cd sim
//    $> xrun -f ex22_quiz_problem_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb();

   //Net,Variable Declaration
   logic       clk=0 , rstn;
   logic       sel;
   logic [7:0] d1, d2, d3, d4;
   logic [7:0] y1, y2, y3, y4;
   initial forever #50 clk= ~clk;

//////////////////////////////////////////////////////////
// 아래 코드는 조합 논리를 추론하지 못합니다.
// always_comb 블록에서 래치 추론을 방지하세요.
// HINT: else 분기가 없어 래치가 추론됩니다
//////////////////////////////////////////////////////////

   always_comb
      if( sel == 1 )
         y2<= d2 ;

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
