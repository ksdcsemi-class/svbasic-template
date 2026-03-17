//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class06_ex13_quiz_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex13_problem_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

package P2;
   typedef logic [15:0] mytype2;
endpackage : P2

package P1;
   import P2::*;
   typedef enum {one, two} mytype1;
   localparam int load = 10 ;
endpackage : P1

module inc (
   input logic clk, rst, ld,
   input logic [7:0] data,
   output logic [7:0] cnt );
endmodule

//////////////////////////////////////////////////////////
// 아래 코드에서 에러를 찾아 수정하세요.
// package, import, port connection 관련 종합 퀴즈입니다.
// HINT: import 체인, 이름 충돌, 포트 연결 규칙을 확인하세요
//////////////////////////////////////////////////////////

import P1::load;

module top;
   import P1::*;
   mytype2 data;                                         // (a)
   logic [7:0] count;
   logic [7:0] cnt;                                      // (b)
   logic clk, rst, ld, load;
   typedef logic [7:0] mytype1;

   inc U1 ( clk, ld, rst, data[7:0], cnt);               // (c)
   inc U2 ( .clk, .ld, .rst, .data, .cnt);               // (d)
   inc U3 ( .* );                                        // (e)
   inc U4 ( .*, .count );                                // (f)
   inc U5 ( .*, .data(data[7:0]) );
endmodule
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
