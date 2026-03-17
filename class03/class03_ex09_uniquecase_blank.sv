//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex09_uniquecase_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command 
//    $> cd sim
//    $> xrun -f ex09_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb();

	logic       en_a, en_b, en_c;
	logic [1:0] fullc;
	logic [7:0] a, b, c, y1, y2;

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: unique case로 fullness + uniqueness 검증
//////////////////////////////////////////////////////////
	// Comment #1 : unique case — Runtime warning when fullc=1 (duplicate)

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: unique case(1'b1)로 다중 enable 검출
//////////////////////////////////////////////////////////
	// Comment #2 : unique case — Runtime warning if multiple enables active

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

	initial begin
	   //Initialization
	   a=8'd1; b=8'd2; c= 8'd3;
	   en_a= 1; en_b=0; en_c=0;
	   fullc= 0;
	   //Test : fullc
	   #10; fullc=  1;
	   #10; fullc=  3;
	   #10; fullc=  0;
	   //Test : en_a, en_b, en_c
	   #10; en_a= 1; en_b=1; en_c=0;
	   #10; en_a= 0; en_b=0; en_c=0;
	   #10; en_a= 1; en_b=0; en_c=0;
	   #10 $finish;
	end

endmodule : tb
