set list1 {a b c d e}
set list2 {x y z}

foreach p $list1 q $list2 {
  puts "$p $q"
}
a x
b y
c z
d 
e