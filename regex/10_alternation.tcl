set pattern {test|code}
test|code

set str "test123 code123 teab cod"
test123 code123 teab cod

regexp -inline -all $pattern $str
test code