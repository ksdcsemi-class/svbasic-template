//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class08_ex03_beginend_blank.sv
// Date  : 2026-04-07
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex03_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   logic [7:0] data_in;
   logic [7:0] addr;
   logic       read;
   logic       write;

   //////////////////////////////////////////////////////////
   // HINT: SV task에서 begin/end를 생략합니다
   //   endtask : write_mem 으로 named end 명시
   //////////////////////////////////////////////////////////
   // Comment #1 : SV task — begin/end 생략
   //    endtask : write_mem 으로 블록 이름 표기





   // End Comment

   //////////////////////////////////////////////////////////
   // HINT: SV function에서 begin/end를 생략합니다
   //   endfunction : invert 으로 named end 명시
   //////////////////////////////////////////////////////////
   // Comment #2 : SV function — begin/end 생략
   //    endfunction : invert 으로 블록 이름 표기





   // End Comment

   initial begin
      write_mem(8'hA0, 8'h55, data_in, addr);
      @(posedge clk);
      $display("Simulation with write Mem");

      invert(8'hA5);
      @(posedge clk);
      $display("Invert(8'hA5)");

      invert(8'hF0);
      @(posedge clk);
      $display("Invert(8'hF0)");

      $finish;
   end

endmodule
