//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class13_ex15_inheritance_constructor_example_problem_blank.sv
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

  // Comment #3 : Solution
  //    explicityly call "super.new();"
  //    which has arguments
   class goodtagframe extends frame;
      static int frmcount;
      int tag;
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: 상속 생성자를 올바르게 작성하세요 (super.new 포함)
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
         tag= frmcount;
         
      endfunction
   endclass

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: 올바른 인자로 객체를 생성하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
   initial begin
      one.addr= 0;
      $display("addr %d",one.addr);
      $finish;
   end

endmodule
