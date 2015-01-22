
set test "TCL1 abcTCL123 TCL ATCL DUMMY DUMMY123"
TCL1 abcTCL123 TCL ATCL DUMMY DUMMY123

set filtered [lsearch -inline -all $test *TCL*]
TCL1 abcTCL123 TCL ATCL