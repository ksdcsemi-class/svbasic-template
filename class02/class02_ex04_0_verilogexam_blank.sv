//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class02_ex04_0_verilogexam_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

// Comment #1:
//    y is "reg" in ablock, 
//       assigned in a procedural block
//    a, b are "wire" module input
module ablock (
   output reg y,
   input  wire a, b);

   always @(*)
      y<= a && b;
endmodule

// Comment #2:
//    y is "wire" in bblock
//       assigned by a continuous assignment
//    a, b are "wire" module input
module bblock (
   output wire y,
   input  wire a, b);

   assign y= a || b;
endmodule

module tb();
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: Verilog 방식 — reg/wire를 구분하여 신호 선언하고, ablock(AND)/bblock(OR) 인스턴스를 연결하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
endmodule
