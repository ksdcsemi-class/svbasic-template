//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : ex05_blank.f
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

// execution command
//    $> xrun -f ex05_blank.f -input ../../shm.tcl

// Lab files
../class06_ex05_newtype_blank.sv

// Simulation Options
+access+rwc

//////////////////////////////////////////////////////////
// Expected Result
//////////////////////////////////////////////////////////
// (xrun.log)
//    [Package] mode = run (1)
//    [CUS]     mode = active (1)
//    [Package] mode = done (2)
//    [CUS]     mode = idle (0)
//    [Package] mode = start (0)
//    [CUS]     mode = active (1)
//    [Package] mode = run (1)
//    [CUS]     mode = idle (0)
//////////////////////////////////////////////////////////
