proc ldelete {l value} {
 set index [lsearch -exact $l $value]
 return [lreplace $l $index $index]
}

set myList {100 200 300}
100 200 300
ldelete $myList 100
200 300
ldelete $myList 200
100 300
ldelete $myList 300
100 200
puts $myList
100 200 300