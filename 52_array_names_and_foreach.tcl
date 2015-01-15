set test(first) 1
1
set test(second) 2
2
set test(third) 3
3

#this return list containg all the keys or index
array names test
second first third

foreach index [array names test] {
   puts $test($index)
}
2
1
3

#note - incr $test($index) is incorrect because incr takes variable name as the argument
#see upvar.tcl for more details
foreach index [array names test] {
   incr test($index)
}

parray test
test(first)  = 2
test(second) = 3
test(third)  = 4