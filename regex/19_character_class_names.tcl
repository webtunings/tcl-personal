set str "123 abc"
123 abc

set pattern {[[:alpha:]]}
[[:alpha:]]
regexp -inline -all $pattern $str
a b c

set pattern {[[:digit:]]}
[[:digit:]]
regexp -inline -all $pattern $str
1 2 3

set pattern {[[:space:]]}
[[:space:]]
regexp -inline -all $pattern $str
{ }

set pattern {[[:digit:][:alpha:]]}
[[:digit:][:alpha:]]
regexp -inline -all $pattern $str
1 2 3 a b c

set pattern {[[:alnum:]]}
[[:alnum:]]
regexp -inline -all $pattern $str
1 2 3 a b c

set pattern {\d}
\d
regexp -inline -all $pattern $str
1 2 3

set pattern {[\d]}
[\d]
regexp -inline -all $pattern $str
1 2 3

set pattern {[\d[:alpha:]]}
[\d[:alpha:]]
regexp -inline -all $pattern $str
1 2 3 a b c

set pattern {\w}
\w
regexp -inline -all $pattern $str
1 2 3 a b c


set pattern {\D}
\D
regexp -inline -all $pattern $str
{ } a b c

set pattern {[\D]}
[\D]
#\D \S and \W cannot be used inside bracketed character set
regexp -inline -all $pattern $str
couldn't compile regular expression pattern: invalid escape \ sequence

