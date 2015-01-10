#like arr[2] = xxxxx


set myList [list a b c]
a b c
puts $myList
a b c
lset myList 1 "1 2"
a {1 2} c
puts $myList
a {1 2} c
lset myList 0 [list 1 2]
{1 2} {1 2} c
lset myList 3 {1 2}
list index out of range
lset myList 2 {3 4}
{1 2} {1 2} {3 4}
lset myList 1 0 {a b}
{1 2} {{a b} 2} {3 4}
lset myList 1 0 c d
bad index "c": must be integer or end?-integer?
lset myList 1 0 "c d"
{1 2} {{c d} 2} {3 4}
lset myList 1 1 [list e "f g"]
{1 2} {{c d} {e {f g}}} {3 4}
llength $myList
3
lset myList 1 1 1 0 h
{1 2} {{c d} {e {h g}}} {3 4}