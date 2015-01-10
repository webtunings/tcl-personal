#2 elements
set x {1 2}
1 2
set y \$test
$test

#3 elements
set list1 [list $x "a b" $y]
{1 2} {a b} {$test}

#2 elements
set list2 [list $list1 $x]
{{1 2} {a b} {$test}} {1 2}
