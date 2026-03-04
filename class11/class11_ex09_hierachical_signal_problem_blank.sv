//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class11_ex09_hierachical_signal_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module mone();
    logic [7:0] data;
endmodule

module tb;
   bit clk1=0; initial forever #50 clk1= ~clk1;

   bit[7:0] rdata, data, dreg;

   mone dut();

   // Comment #2 : Corrrect 
   // data associatd with hierarchical expression
   default clocking cb1 @(posedge clk1);
      default output #3;
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: clocking block output 선언을 수정하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

   initial begin
      repeat (2) @(cb1);
      ##2;
      ##1 cb1.data <= 2'b01;
      ##1; cb1.data <= 2'b10;
      cb1.data <= ##3 dreg;
      ##5 $finish;
   end

endmodule
