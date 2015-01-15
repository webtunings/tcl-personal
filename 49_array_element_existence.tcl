set test(first) hello
hello
set test(second) world
world
info exists test(first)
1
info exists test(second)
1
info exists test(third)
0
set test(third) 300
300
incr test(third)
301
set test(third)
301