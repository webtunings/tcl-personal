#reference - upvar
proc testUpvar { a b } {
 upvar $a x
 upvar $b y
 set x [expr $x * 2]
 set y [expr $y * 2]
}

set a 10
set b 20
testUpvar a b

puts $a
20
puts $b
40

######################################

array set price {
item1 50
item2 30
item3 60
}

parray price
price(item1) = 50
price(item2) = 30
price(item3) = 60


proc incrArrayElement {var key {incr 1}} {
upvar $var a
if {[info exists a($key)]} {
 incr a($key) $incr 
} else {
 set a($key) $incr
}
}

incrArrayElement price item1
51
incrArrayElement price item1
52
incrArrayElement price item1 5
57
incrArrayElement price item2 50
80
incrArrayElement price item4 10
10
incrArrayElement price item4
11
incrArrayElement price item5
1

parray price
price(item1) = 57
price(item2) = 80
price(item3) = 60
price(item4) = 11
price(item5) = 1
