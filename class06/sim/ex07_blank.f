//////////////////////////////////////////////////////////
// KSDC Proprietary
// Course: 반도체설계검증 언어기초
// File  : ex07_blank.f
// Date  : 2026-02-28
// Author: Jongsup Baek <jongsup.baek@ksdcsemi.com>
//////////////////////////////////////////////////////////

// execution command
//    $> xrun -f ex07_blank.f -input ../../shm.tcl

// Lab files
../class06_ex07_package_blank.sv

// Simulation Options
+access+rwc

//////////////////////////////////////////////////////////
// Expected Result
//////////////////////////////////////////////////////////
// (xrun.log)
//    N_MODES = 3
//    [explicit] mode = run (1)
//    [wildcard] mode = run (1)
//    [resolved] mode = run (1)
//    [explicit] mode = done (2)
//    [wildcard] mode = done (2)
//    [resolved] mode = done (2)
//    [explicit] mode = start (0)
//    [wildcard] mode = start (0)
//    [resolved] mode = start (0)
//////////////////////////////////////////////////////////
