#outside proc a and b are global
#inside proc a and b are local

set a 100
set b 200

proc test { a } {
 set b 300
 puts $a
 puts $b
}

test $a
100
300

test $b
200
300

test 500
500
300