#linsert and lreplace doesn't modify original list
#lset and lappend modifies original list

set myList [list 100 200 {300 400}]
100 200 {300 400}
linsert $myList 0 1
1 100 200 {300 400}
linsert $myList end 2
100 200 {300 400} 2
puts $myList
100 200 {300 400}
linsert $myList 2 {a b}
100 200 {a b} {300 400}
linsert $myList 2 [list c d]
100 200 {c d} {300 400}


lreplace $myList 0 0 {a b}
{a b} 200 {300 400}
puts $myList
100 200 {300 400}
lreplace $myList 0 1 {a b}
{a b} {300 400}
lreplace $myList 0 end {a b}
{a b}
puts $myList
100 200 {300 400}
lreplace $myList end end {a b}
100 200 {a b}
puts $myList
100 200 {300 400}
lreplace $myList 0 0
200 {300 400}
lreplace $myList 1 1
100 {300 400}
lreplace $myList end end
100 200
lreplace $myList 2 2
100 200

#delete first element
puts $myList
100 200 {300 400}
set myList [lreplace $myList 0 0]
200 {300 400}
puts $myList
200 {300 400}