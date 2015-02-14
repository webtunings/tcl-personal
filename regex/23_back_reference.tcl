set str "abcabcd"
abcabcd
set pattern {(ab).*\1}
(ab).*\1
regexp -inline -all $pattern $str
abcab ab