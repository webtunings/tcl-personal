
array set test { first 1 second 2 third 3}

proc reverse { arr } {
upvar $arr reversedArray

foreach {index value} [array get reversedArray] {
 unset reversedArray($index)
 set reversedArray($value) $index 
}
}

reverse test

parray test
test(1) = first
test(2) = second
test(3) = third

reverse test

parray test
test(first)  = 1
test(second) = 2
test(third)  = 3