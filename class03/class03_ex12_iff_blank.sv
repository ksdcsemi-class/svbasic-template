//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex12_iff_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command 
//    $> cd sim
//    $> xrun -f ex12_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

module tb();
	bit clk=0; initial forever #50 clk= ~clk;

	logic       rstn, enable, s_wait;
	logic [2:0] cnt;
	logic [7:0] a, b, c, y1, y2, y3, y4;
	logic [7:0] arr2d[0:15] = '{0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: iff 래치, HW equivalent, RTL Usage
//////////////////////////////////////////////////////////
	// Comment #1 : Various usage of iff
	//	iff latch — Creates Latch in Synthesis

	// HW equivalent — same latch without iff

	// Typical RTL Usage

//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: negedge clk iff(!s_wait)로 TB 사용
//////////////////////////////////////////////////////////
	// Comment #2 : Typical TB Usage





//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

	initial begin
	   a=0; rstn=0; enable=0; s_wait=1;

	   @(negedge clk) rstn= 1;
	   repeat(8) begin
	      @(posedge clk) ;
	      #1; a= a+1;
	      #1; enable= 1;
	          s_wait= 0;
	   end

	   #100 $finish;
	end

endmodule : tb
