//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex13_0_always_comb_problem_blank.sv
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
// HINT: always_comb으로 sel에 따라 y1 선택
//////////////////////////////////////////////////////////
	// Comment #1 : OK





//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 아래 코드는 컴파일 에러가 발생합니다.
// y2에 대한 multiple driver 에러를 수정하세요.
// HINT: always_comb 블록 두 개가 같은 변수 y2를 구동합니다
//////////////////////////////////////////////////////////
	// Comment #2 : Compilation Error
	//    multiple driver
	always_comb
	   if( sel == 1 )
	      y2= a;
	   else
	      y2= b;

	always_comb
	   if( sel == 1 )
	      y2= c;
	   else
	      y2= d;
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
