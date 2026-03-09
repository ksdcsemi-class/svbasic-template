//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex14_always_latch_problem_blank.sv
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
// HINT: always @(*) — 의도치 않은 래치, 다중 할당, 타이밍 제어
//////////////////////////////////////////////////////////
	// Comment #1 : always @(*)
	//    - unintentional latch (no else)
	//    - multiple blocks can drive same variable (y1)
	//    - timing control allowed (#1 delay)




//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 아래 코드는 컴파일 에러가 발생합니다.
// y3에 대한 Multiple Driver 에러를 수정하세요.
// HINT: always_latch 블록 두 개가 같은 변수 y3를 구동합니다
//////////////////////////////////////////////////////////
	// Comment #2 : Compilation Error
	//		Multiple Driver
	always_latch
	   if( sel == 1 )
	      y3<= c;

	always_latch
	   if( sel == 1 )
	      y3<= c;
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
