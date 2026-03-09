//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex15_always_ff_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module tb();
   bit clk=0; initial forever #50 clk= ~clk;

   logic       rstn, sel, sel2;
   logic [2:0] cnt;
   logic [7:0] a, b, c, d, y1, y2, y3, y4;
   logic [7:0] arr2d[0:15];

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: always @(posedge clk) — 다중 할당, 타이밍 제어
//////////////////////////////////////////////////////////
   // Comment #1 : always @(posedge clk or negedge rstn)
   //    - multiple blocks can drive same variable (y1)
   //    - blocking timing control allowed (#1 delay)




//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 아래 코드는 컴파일 에러가 발생합니다.
// always_ff 블록의 multiple event control 에러를 수정하세요.
// HINT: always_ff는 하나의 event control만 허용합니다
//////////////////////////////////////////////////////////
   // Comment #2 : Compilation Error
   //    multip event control
   always_ff begin
      @(posedge clk);
         y3<= a +1;
      @(posedge clk);
         y3<= a -1;
   end
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
   initial begin
      rstn=0; a= 1; b=2; sel=0; 
      @(negedge clk) rstn= 1;
      repeat(8) begin
         @(posedge clk) ;
         #1; a= a+1;
         #1; sel= 1;
      end
      #10 $finish;
   end

endmodule : tb
