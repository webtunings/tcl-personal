set list1 {1 2 3}
1 2 3
set list2 {4 5 6}
4 5 6
set mixed [concat $list1 $list2]
1 2 3 4 5 6
puts $mixed
1 2 3 4 5 6
llength $mixed
6 