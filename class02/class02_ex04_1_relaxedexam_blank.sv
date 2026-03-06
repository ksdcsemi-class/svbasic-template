//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class02_ex04_1_relaxedexam_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

// Comment #1:
//    y is "logic" in ablock, 
//       assigned in a procedural block
//    a, b are "logic" module input
module ablock (
   output logic y,
   input  logic a, b );

   always @(*)
      y<= a && b;
endmodule

// Comment #2:
//    y is "logic" in bblock,
//       assigned by a continuous assignment
//    a, b are "logic" module input
module bblock (
   output logic y,
   input  logic a, b );

   assign y= a || b;
endmodule

module tb();
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: SystemVerilog 방식 — 모든 신호를 logic으로 선언하고, ablock(AND)/bblock(OR) 인스턴스를 연결하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
endmodule
