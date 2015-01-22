set pattern {[][{}]}
[][{}]
set str "{abc} \[123\]"
{abc} [123]
regexp -all -inline $pattern $str
\{ \} {[} \]
regexp -all $pattern $str
4

lindex [regexp -inline -all $pattern $str] 0
{
lindex [regexp -inline -all $pattern $str] 1
}
lindex [regexp -inline -all $pattern $str] 2
[
lindex [regexp -inline -all $pattern $str] 3
]