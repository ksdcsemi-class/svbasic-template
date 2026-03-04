//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class08_ex08_3_pass_by_constref_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

module tb;
   logic req;
   logic ack;
   logic [7:0] data;

   // Comment #1 : Input
   //    const ref instead of ref 
   task automatic cpu_drive_const_ref (
           input  logic [7:0] write_data,
           const ref logic data_valid,
           ref logic data_read,
           ref logic [7:0] cpu_data);

      #5 data_read= 1;        
      wait (data_valid ==1);  
      #20 cpu_data= write_data;
      wait (data_valid ==0);
      #20 cpu_data= 8'hzz;
      data_read= 0;

//////////////////////////////////////////////////////////
// 여기에 적으세요. (시작)
// HINT: 이 블록의 에러를 찾아 수정하세요
//////////////////////////////////////////////////////////
      // Comment #2 :
      //    const argument cannot be modified
      data_valid= 0;          
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////

   endtask : cpu_drive_const_ref

   initial begin
      $display("Start");
      fork
         begin
            cpu_drive_const_ref(8'hff, ack, req, data);
         end
         begin
            ack=0;
            wait(req==1);
            ack=1;
            #25;
            $display("data= %h",data);
            ack=0;
            wait(req==1);
            $display("data= %h",data);
         end
      join
      $display("%d",ack);
      $display("End");
   end

endmodule
