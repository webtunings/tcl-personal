#infinite loop - curly braces required
set x 5
5
while { $x > 0 } { incr x -1; puts "test"}
test
test
test
test
test

set x 5
5
while $x>0 { incr x -1; puts "test"}
=> same as while 5>0 { incr x -1; puts "test"}
#tcl will substitute for $x before while is called 5>0 is a constant expression
