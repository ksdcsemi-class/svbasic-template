//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex16_3_quiz_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module tb();
   bit clk=0; initial forever #50 clk= ~clk;

   logic       rstn;
   logic [7:0] d1;
   logic [7:0] y1;

//////////////////////////////////////////////////////////
// 아래 코드는 리셋이 동작하지 않습니다.
// iff 조건과 리셋 로직을 수정하세요.
// HINT: rstn==0일 때만 트리거되므로 rstn==1이면 리셋이 실행되지 않습니다
//////////////////////////////////////////////////////////

   always_ff @(posedge clk iff rstn == 0 )
      if( rstn )
         y1<= 8'd0;
      else
         y1<= d1;

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

   initial begin
      rstn=0;
      d1= 1;
      @(negedge clk) ;
      @(negedge clk) ;
      #1 rstn= 1;
      repeat(8) begin
         @(posedge clk) ;
         #1; d1= d1+1;
      end
      #10 $finish;
   end

endmodule : tb
