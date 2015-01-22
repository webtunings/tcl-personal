set pattern {t.}
t.
set str "abcdtaf test"
abcdtaf test
regexp $pattern $str match
1
puts $match
ta

set str "abcd test"
abcd test
regexp $pattern $str match
1
puts $match
te

set str "abcdtaf test"
abcdtaf test
regexp -all $pattern $str match
2
puts $match
te

regexp -inline -all $pattern $str match
regexp match variables not allowed when using -inline

regexp -inline -all $pattern $str
ta te

set resultList [regexp -inline -all $pattern $str]
ta te
puts $resultList
ta te
llength $resultList
2