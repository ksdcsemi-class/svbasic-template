//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class06_ex07_package_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex07_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: typedef enum, localparam
// Comment #1 : Package — typedef, localparam
//////////////////////////////////////////////////////////





//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: explicit, wildcard, resolved import
// Comment #2 : Import styles (explicit, wildcard, resolved)
//////////////////////////////////////////////////////////





//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

// Testbench
module tb;
   import mytypes::*;
   logic clk = 0;
   always #5 clk = ~clk;

   mone U1(.clk);
   mtwo U2(.clk);
   mthree U3(.clk);

   initial begin
      $display("N_MODES = %0d", N_MODES);
      repeat (N_MODES) begin
         @(posedge clk);
         #1;
         $display("[explicit] mode = %s (%0d)", U1.mode.name(), U1.mode);
         $display("[wildcard] mode = %s (%0d)", U2.mode.name(), U2.mode);
         $display("[resolved] mode = %s (%0d)", U3.mode.name(), U3.mode);
      end
      $finish;
   end
endmodule
