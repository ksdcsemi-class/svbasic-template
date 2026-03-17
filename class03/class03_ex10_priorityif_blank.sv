//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex10_priorityif_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command 
//    $> cd sim
//    $> xrun -f ex10_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb();
	logic       en_a, en_b, en_c;
	logic [1:0] fullc;
	logic [2:0] pri;
	logic [7:0] a, b, c, y1, y2;

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: priority if로 fullness 보장
//////////////////////////////////////////////////////////
	// Comment #1 :
	//    Runtime warning if one enable not active





//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

	initial begin
	   //Initialization
	   a=8'd1; b=8'd2; c= 8'd3;
	   en_a= 1; en_b=0; en_c=0;
	   //Test : en_a, en_b, en_c
	   #10; en_a= 1; en_b=1; en_c=0;
	   #10; en_a= 0; en_b=0; en_c=0;
	   #10; en_a= 1; en_b=0; en_c=0;
	   //End-of-Simulation
	   #10 $finish;
	end

endmodule : tb
