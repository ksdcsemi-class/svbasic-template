//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class06_ex01_verilog_port_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

// Comment #0 : Example module
module counter(
        input  logic       clk, rst, ld,
        input  logic [7:0] data,
        output logic [7:0] cnt,
        output logic       val );

   // Place Code

endmodule

module tb1;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

   // Comment #1 : Ordered port connections
   counter U1( clk, rst, ld, data, cnt, val);

endmodule

module tb2;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

   // Comment #2 : Badly ordered
   counter U2( clk, ld, rst, data, cnt, val);

endmodule

module tb3;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

   // Comment #3 : Named port connections
   counter U3( .clk(clk), .rst(rst), .ld(ld), .data(data), .cnt(cnt), .val(val) );

endmodule

module tb4;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

   // Comment #4 : .name
   counter U4( .clk, .rst, .ld, .data, .cnt, .val );

endmodule

module tb5;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

   // Comment #5 : .name and named
   counter U5( .clk, .rst(reset), .ld(load), .data, .cnt, .val );

endmodule

module tb6;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

   // Comment #6 : .*
   counter U6( .* );

endmodule

module tb7;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

   // Comment #7 : .name
   counter U7( .clk, .rst, .ld, .data, .cnt, .val );

endmodule

module tb8;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

   // Comment #8 : .* and named
   counter U8( .*, .rst(reset), .ld(load) );

endmodule

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: 이 블록의 에러를 찾아 수정하세요
//////////////////////////////////////////////////////////
module tb9;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

   // Comment #9 : Rules for Using .name and .*
   //    Ordered and dot-star (Wrong)
   counter U9 ( clock, reset, .* );

endmodule

module tb10;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

   // Comment #10 : Rules for Using .name and .*
   //    dot-name and dot-star (Wrong)
   counter U10 ( .clk, .rst, .* ); 

endmodule
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
module tb11;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

   // Comment #11 : Rules for Using .name and .*
   //    dot-name and named (OK to use)
   counter U11 ( .clk, .data, .cnt, .val, .rst(reset), .ld(load) );

endmodule

module tb12;
   logic       clk, rst, ld;
   logic [7:0] data;
   logic [7:0] cnt;
   logic       val;
   logic       reset, load;

   // Comment #12 : Rules for Using .name and .*
   //    dot-star and named (OK to use)
   counter U12 ( .*, .ld(load), .data(data[15:8]), .val() );

endmodule
