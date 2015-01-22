set pattern {ab*}
ab*
set str "abcdef"
abcdef
regexp -inline -all $pattern $str
ab
set str "abbbbbbbcdef"
abbbbbbbcdef
regexp -inline -all $pattern $str
abbbbbbb
set str "acdef"
acdef
regexp -inline -all $pattern $str
a