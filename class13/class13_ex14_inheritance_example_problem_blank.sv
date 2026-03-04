//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class13_ex14_inheritance_example_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module tb;

   // Comment #1 : Base-class
   //    constructor has two arguments
   //       add, dat
   class frame;
      logic [4:0] addr;
      logic [7:0] payload;
      bit parity;
      function new (input int add, dat);
         addr= add;
         payload= dat;
         genpar();
      endfunction

      function void genpar();
         parity = ^{addr,payload};
      endfunction
   endclass

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: 이 블록의 에러를 찾아 수정하세요
//////////////////////////////////////////////////////////
  // Comment #2 : Sub-class Error
  //    Automatically inserted "super.new();"
  //    at the first line of constructor
  //    which has no arguments
   class badtagframe extends frame;
      static int frmcount;
      int tag;
      function new();
         frmcount++;
         tag= frmcount;
      endfunction

   endclass
   badtagframe one = new();
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
   frame one = new(3,16);
   initial begin
      one.addr= 0;
      $display("addr %d",one.addr);
      $finish;
   end

endmodule
