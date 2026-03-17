//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class06_ex04_port_rules_problem_blank.sv
// Date  : 2026-03-13
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex04_problem_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

//////////////////////////////////////////////////////////
// 위 코드의 컴파일 에러를 수정하세요.
// HINT: ordered와 .*, .name과 .*는 함께 사용할 수 없습니다
//////////////////////////////////////////////////////////
   // Comment #1 : Rules for Using .name and .*

   // Ordered and dot-star (Wrong)
   counter U1 ( clock, reset, .* );

   // dot-name and dot-star (Wrong)
   counter U2 ( .clk, .rst, .* );
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: .*, .name, .* + named 포트 연결 3가지
//////////////////////////////////////////////////////////
   // dot-name and named (OK to use)


   // dot-star and named (OK to use)

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
