#spaces not required b/w square brackets

set x [expr {3+4}][expr {2+2}]
74
set x [expr {3+4}] [expr {2+2}]
wrong # args: should be "set varName ?newValue?"
set x "[expr {3+4}] [expr {2+2}]"
7 4