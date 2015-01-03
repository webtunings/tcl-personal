set x 5
5
unset x
puts $x
can't read "x": no such variable
unset x
can't unset "x": no such variable
unset -nocomplain x
unset -nocomplain y
set x 5
5
set y 6
6
unset x y
puts $x
can't read "x": no such variable
puts $y
can't read "y": no such variable
