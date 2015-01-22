proc test { a {b 2} {c 4} } {
 return [expr { $a + $b + $c }]
}

test 1
7
test 1 3
8
test 1 3 5
9
test 1 3 5 7
wrong # args: should be "test a ?b? ?c?"
test
wrong # args: should be "test a ?b? ?c?"