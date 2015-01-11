set myList { {x y} {y z} {a b} {a x} {b a} {c d}}
 {x y} {y z} {a b} {a x} {b a} {c d}

lsort -index end $myList
{b a} {a b} {c d} {a x} {x y} {y z}
lsort -index 0 $myList
{a b} {a x} {b a} {c d} {x y} {y z}
lsort -index 1 $myList
{b a} {a b} {c d} {a x} {x y} {y z}
lsort -index 4 $myList
element 4 missing from sublist "x y"