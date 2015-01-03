set x 1
set y 2

proc testGlobal { } {
global x
global y
puts $x
puts $y
}
