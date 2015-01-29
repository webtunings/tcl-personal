set str "abcabcabc"
abcabcabc

#greedy
set pattern {.*c}
.*c
regexp $pattern $str match
1
puts $match
abcabcabc

#non greedy
set pattern {.*?c}
.*?c
regexp $pattern $str match
1
puts $match
abc