#upvar associates a local variable in a scope up the TCL call stack
#pass the name of variable in procedure instead of value
#example incr x -> not incr $x

set x 5
proc test { x } {
 upvar $x y
 set y [expr { $y + 10 }]
 return $y
}

test x
15
set x
15
test x
25
set x
25
test x
35
puts $x
35