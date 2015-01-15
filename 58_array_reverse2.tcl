array set test { first 1 second 2 third 3}

proc reverse { arr } {
upvar $arr reversedArray

foreach index [array names reversedArray] {
 set reversedArray([ set reversedArray($index)]) $index  
 unset reversedArray($index)
}
}

parray test
test(first)  = 1
test(second) = 2
test(third)  = 3

reverse test

parray test
test(1) = first
test(2) = second
test(3) = third