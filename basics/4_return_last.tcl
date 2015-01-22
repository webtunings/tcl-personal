#if return is not specified tcl returns the value of the last command
set x 5
5
set y 7
7
proc add { x y } {
  expr { $x + $y}
}
add $x $y
12
proc add { x y } {
  return [expr { $x + $y}]
}
add $x $y
12

