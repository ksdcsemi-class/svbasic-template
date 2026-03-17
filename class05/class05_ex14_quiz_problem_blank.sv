//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : class05_ex14_quiz_problem_blank.sv
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//
// execution command
//    $> cd sim
//    $> xrun -f ex14_problem_blank.f -input ../../shm.tcl
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
// 아래 코드에서 에러를 찾아 수정하세요.
// enum, struct, typedef 관련 종합 퀴즈입니다.
// HINT: 이름 충돌, enum 값 범위, struct 접근 방법을 확인하세요
//////////////////////////////////////////////////////////

module tb;
   typedef enum logic[1:0] {
       up=2'b00, stay=2'b01, down=2'b11
   } cstate_t;
   cstate_t cstate;

   typedef struct {
       int tag;
       cstate_t mode;
       logic [7:0]   data;
   } tagdata_t;
   tagdata_t tdata;

   typedef enum { idle, go, stop, stay, reset } mechstate_t; // (a)

   logic [7:0] slice;

   initial begin
      tdata.mode = reset;                                    // (b)

      tdata = '{tag:4, data:4, default:4};                   // (c)

      slice = tdata[7:0];                                    // (d)

      cstate= cstate + 1;                                    // (e)

      slice= cstate+1;
   end
endmodule : tb
//////////////////////////////////////////////////////////
// 여기까지 입니다. (끝)
//////////////////////////////////////////////////////////
