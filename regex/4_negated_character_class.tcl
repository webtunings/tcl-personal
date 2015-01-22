set pattern {[^0-9a-z]}
[^0-9a-z]
set str "abc1ABc 1234EF*+()"
abc1ABc 1234EF*+()
regexp -all -inline $pattern $str
A B { } E F * + ( )
regexp -all $pattern $str
9