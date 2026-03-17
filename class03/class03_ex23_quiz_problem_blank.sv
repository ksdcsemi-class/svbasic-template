//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex23_quiz_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command 
//    $> cd sim
//    $> xrun -f ex23_quiz_problem_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 아래 코드는 런타임 경고가 발생합니다.
// priority casez에서 누락된 case 분기를 추가하세요.
// HINT: data= 4~7 또는 unknown bit일 때 매칭되는 분기가 없습니다
//////////////////////////////////////////////////////////

module block1( input bit [2:0] data);

   always @(data)
      priority casez (data)
         3'b00? : $display("0 or 1");
         3'b0?? : $display("2 or 3");
      endcase

endmodule

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

module tb();

   logic       clk=0, rstn;
   logic       sel, sel2;
   logic [7:0] a, b, c, d, y1, y2, y3, y4;
   initial forever #50 clk= ~clk;

   block1 u_block1( a );

   initial begin
      rstn=0; a= 1; sel=0; 
      @(negedge clk) ;
      @(negedge clk) ;
      #1 rstn= 1;
      repeat(8) begin
         @(posedge clk) ;
         #1; a= a+1;
         #1; sel= 1;
      end
      #10 $finish;
   end

endmodule : tb
