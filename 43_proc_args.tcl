proc test { a {b 2} args } {
puts $a
puts $b
puts $args
puts "length= [llength $args]"
}


test 1
1
2

length= 0

test 1 3
1
3

length= 0

test 1 3 5
1
3
5
length= 1

test 1 3 5 6
1
3
5 6
length= 2

test 1 3 5 6 7
1
3
5 6 7
length= 3

test 1 3 {5 6 7}
1
3
{5 6 7}
length= 1
 
test 1 4 {5 6 7} {a b}
1
4
{5 6 7} {a b}
length= 2

test 1 4 {{5 6 7} {a b}}
1
4
{{5 6 7} {a b}}
length= 1


test 1 4 [list x y z]
1
4
{x y z}
length= 1