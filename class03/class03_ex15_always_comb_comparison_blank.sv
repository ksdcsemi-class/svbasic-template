//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex15_always_comb_comparison_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command 
//    $> cd sim
//    $> xrun -f ex15_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb();
   bit clk= 0; initial forever #50 clk= ~clk;

   logic       rstn, sel, sel2;
   logic [2:0] cnt;
   logic [7:0] a, b, c, d, y1, y2, y3, y4;
   logic [7:0] arr2d[0:15];

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: always @* — 다중 할당, 타이밍 제어 포함 가능
//////////////////////////////////////////////////////////
   // Comment #1 : always @*
   //    - multiple blocks can drive same variable (y2)
   //    - timing control allowed (#1 delay)





//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: always_comb으로 조합 논리
//////////////////////////////////////////////////////////
   // Comment #2 : always_comb





//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

   initial begin
      rstn=0; a= 1; b=2; sel=0;
      @(negedge clk) rstn= 1;
      repeat(8) begin
         @(posedge clk) ;
         #1; a= a+1;
         #1; sel= 1;
      end
      #10 $finish;
end

endmodule : tb
