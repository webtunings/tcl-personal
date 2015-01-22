set str "test123
test234
test345
test456"
test123
test234
test345
test456

set pattern {.*\n}
.*\n
regexp -all -inline $pattern $str
{test123
test234
test345
}
regexp -all $pattern $str
1
puts $str
test123
test234
test345
test456
set pattern {[^\n]*\n}
[^\n]*\n
regexp -all $pattern $str
3
regexp -all -inline $pattern $str
{test123
} {test234
} {test345
}
regexp $pattern $str match
1
puts $match
test123