# 2 unique things about lappend
#it takes list name myList instead of value $myList
#by default it creates a new list if it doesn't exist

lappend myList 1 2
1 2
puts $myList
1 2
lappend myList 3 "4 5"
1 2 3 {4 5}
llength myList
1
llength $myList
4
set myList
1 2 3 {4 5}
lappend myList $myList
1 2 3 {4 5} {1 2 3 {4 5}}
llength $myList
5
