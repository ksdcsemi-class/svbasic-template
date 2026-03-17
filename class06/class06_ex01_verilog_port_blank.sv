//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class06_ex01_verilog_port_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex01_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: ordered, badly ordered, named 포트 연결 3가지
//////////////////////////////////////////////////////////

   // Comment #1 : Various Verilog Port connection methods
   // Ordered port connections


   // Badly ordered


   // Named port connections


//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

endmodule

// Example module
module counter(
        input  logic       clk, rst, ld,
        input  logic [7:0] data,
        output logic [7:0] cnt,
        output logic       val );

   // Place Code

endmodule
