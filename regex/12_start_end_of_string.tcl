set str "abc"
abc
set pattern {^ab}
^ab
regexp -inline -all $pattern $str
ab
set pattern {^ab$}
^ab$
regexp -inline -all $pattern $str
set pattern {^abc$}
^abc$
regexp -inline -all $pattern $str
abc