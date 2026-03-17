//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class05_ex13_newtype_declaration_region_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex13_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

// Comment #1 : Declaration in CUS
//    CUS - Compilation Unit Scope
typedef enum { start2, done2} mode2_t;

// Comment #2 : package declaration
package mytypes;
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: package 안에 typedef enum을 선언합니다
//////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
endpackage : mytypes

module mone (
   input logic [7:0]  out,
   output mode2_t mode);

   always_comb begin
      if(out == 8'h0)
         mode= start2;
      else
         mode= done2;
   end

endmodule : mone

module mtwo import mytypes::*; (
        input logic [7:0]  out,
        output mode1_t mode);

   always_comb begin
      if(out == 8'h0)
         mode= start1;
      else
         mode= done1;
   end

endmodule : mtwo

module tb ;
   import mytypes::*;
   logic [7:0] out;
   mode1_t mode1;
   mode2_t mode2;

   mtwo u1( out, mode1 );
   mone u2( out, mode2 );

   initial begin
      out= 8'h0;
      #0; $display("pkg: %d, cus: %d", mode1, mode2);
      out= 8'h1;
      #0; $display("pkg: %d, cus: %d", mode1, mode2);
   end
endmodule
