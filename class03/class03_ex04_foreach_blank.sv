//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class03_ex04_foreach_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module tb();

	int intarr [7:0];
	int arr2d [7:0][2:0];

	initial begin
//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: foreach로 intarr 배열을 순회하며
//   intarr[i]= 7-i 대입 후 $display
//////////////////////////////////////////////////////////
	   // Comment #1 :
	   //    iterates left bound to right bound
	   //    - Equivalent code ----------------
	   //       for (int i=7;i>=0; i=i-1)





//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: foreach로 arr2d 2D 배열을 순회하며
//   arr2d[k][l]= k*l 대입 후 $display
//////////////////////////////////////////////////////////
	   // Comment #2 :
	   //    Two loop variables for a 2D array creates nested loops
	   //    - Equivalent code ----------------
	   //       for (int k=7;k>=0; k=k-1)
	   //       begin
	   //          for( int l=2;l>=0; l=l-1)
	   //             arr2d[k][l]= k*l;
	   //             $display("array k= %d, l= %d",k,l);
	   //             #10;
	   //          end
	   //       end





//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

	end

endmodule : tb
