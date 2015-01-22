array set test { first 1 second 2 third 3 fourth 4}

parray test
test(first)  = 1
test(fourth) = 4
test(second) = 2
test(third)  = 3

foreach index [array names test] {
  puts $test($index)
}
4
2
1
3

foreach index [array names test] {
  puts "$index = $test($index)"
}
fourth = 4
second = 2
first = 1
third = 3

foreach {index value} [array get test] {
  puts "$index = $value"
}
fourth = 4
second = 2
first = 1
third = 3