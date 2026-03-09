//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex07_verilogcase_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module tb();

	logic [1:0] parc, fullc;
	logic [7:0] a=1, b=2, c=3, y1, y2;

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: parallel_case 합성 프라그마 사용
//////////////////////////////////////////////////////////
	// Comment #1 : parallel_case





//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: full_case 합성 프라그마 사용
//////////////////////////////////////////////////////////
	// Comment #2 : full_case





//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

	initial begin
	   parc=  5; fullc=  5;
	   #10; parc=  0; fullc=  0; #10;
	   $display("parallel case %d",y1);
	   $display("full case %d",y2);
	   #10; parc=  1; fullc=  1; #10;
	   $display("parallel case %d",y1);
	   $display("full case %d",y2);
	   #10; parc=  2; fullc=  2; #10;
	   $display("parallel case %d",y1);
	   $display("full case %d",y2);
	   #10; parc=  3; fullc=  3; #10;
	   $display("parallel case %d",y1);
	   $display("full case %d",y2);
	   #10;
	end

endmodule : tb
