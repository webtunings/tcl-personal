set pattern {test}
test
set string "123 test123 test234"
123 test123 test234
regexp $pattern $string match
1
puts $match
test