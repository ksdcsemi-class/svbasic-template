//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex16_0_quiz6_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

// ///////////////////////////////////// 
// What is wrong with these examples?
// How could you correct them?

// ------------------------------------------
// SOLUTION : Runtime warnings when data= 6 to 7
// or any data bit is unknown
module block2( input bit [2:0] data);
   always @(data)
      unique case (data)
         0,1 : $display("Block2: 0 or 1");
         2,3 : $display("Block2: 2 or 3");
         4,5 : $display("Block2: 2 or 3");
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: default 분기를 추가하세요
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
endmodule

module tb();

   logic       clk= 0, rstn;
   logic       sel, sel2;
   logic [2:0] a;
   initial forever #50 clk= ~clk;

   block2 u_block2( a );

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
