#why curly braces in proc?
#delay any substitution in the body until the time procedure is called
set x 5
5
proc display { x } "
   puts $x
"
display $x
5
set x 6
6
display $x -> it will always print because variable x got substituted during proc definition
5
#it is like
proc add { x } "puts 5"