#almost like join 2 list, joining 2 list doesn't make it 2 element list only. all higher level elements comes at top layer
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