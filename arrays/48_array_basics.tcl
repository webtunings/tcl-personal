
for { set i 0 } { $i <=10 } { incr i } {
  set test($i) [expr { $i * $i} ]
}

parray test
test(0)  = 0
test(1)  = 1
test(10) = 100
test(2)  = 4
test(3)  = 9
test(4)  = 16
test(5)  = 25
test(6)  = 36
test(7)  = 49
test(8)  = 64
test(9)  = 81

puts $test(0)
0
set i 5
5
puts $test($i)
25