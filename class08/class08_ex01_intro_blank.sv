//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class08_ex01_intro_blank.sv
// Date  : 2026-04-07
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex01_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   bit clk = 0; initial forever #50 clk = ~clk;

   logic [7:0] data_in;
   logic [7:0] addr;
   logic       read;
   logic       write;

   //////////////////////////////////////////////////////////
   // HINT: Verilog 스타일 task를 정의합니다
   //   begin/end 블록과 input/output 포함
   //////////////////////////////////////////////////////////
   // Comment #1 : task 정의
   //    Verilog 스타일 task — begin/end, input/output 포함





   // End Comment

   //////////////////////////////////////////////////////////
   // HINT: Verilog 스타일 function을 정의합니다
   //   begin/end 블록 포함, ~word로 비트 반전
   //////////////////////////////////////////////////////////
   // Comment #2 : function 정의
   //    Verilog 스타일 function — begin/end 포함





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
