//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : ex05_blank.f
// Date  : 2026-04-08
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

// execution command
//    $> xrun -f ex05_blank.f -input ../../shm.tcl

// Lab files
../class08_ex05_argument_passing_blank.sv

// Simulation Options
+access+rwc

//////////////////////////////////////////////////////////
// Expected Result
//////////////////////////////////////////////////////////
// (xrun.log)
//    - "read: j=0 k=5 data=1", "read: j=2 k=21 data=1", "read: j=0 k=5 data=7"
//    - "read: j=4 k=21 data=7", "read: j=2 k=21 data=1", "read: j=0 k=3 data=1", "read: j=4 k=3 data=7"
//    - "read_a: j=0 k=2 data=1" (x2)
//////////////////////////////////////////////////////////
