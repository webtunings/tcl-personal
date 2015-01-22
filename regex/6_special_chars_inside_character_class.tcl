set pattern {[][+*?\\|()]}
[][+*?\\|()]
set str "a []{} (200) +0 \\|||||"
a {} (200) +0 \|||||
regexp -all -inline $pattern $str
( ) + \\ | | | | |
regexp -all $pattern $str
9

set str "a \[\]{} (200) +0 \\|||||"
a []{} (200) +0 \|||||
regexp -all -inline $pattern $str
{[} \] ( ) + \\ | | | | |
regexp -all $pattern $str
11