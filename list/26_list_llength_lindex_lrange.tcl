set myList [list 100 200 {300 400}]
100 200 {300 400}
llength $myList
3
lindex $myList 0
100
lindex $myList 1
200
lindex $myList 3
lindex $myList 2
300 400
lindex [lindex $myList 2] 0
300
lindex [lindex $myList 2] 1
400
lindex $myList end
300 400
lindex $myList end - 1
bad index "-": must be integer or end?-integer?
lindex $myList end-1
200
lindex $myList end-2
100
lindex $myList end-3
lindex $myList [expr [llength $myList] -1 ] 
300 400
lindex $myList [expr [llength $myList] -2 ]
200
lrange $myList 0 end
100 200 {300 400}
lrange $myList 0 end-1
100 200
lrange $myList 0 1
100 200
lrange $myList 0
wrong # args: should be "lrange list first last"
lrange $myList 0 2
100 200 {300 400}