set string1 "tcl"
tcl
set string2 "tcl"
tcl
set string3 "not tcl"
not tcl
string compare $string1 $string2
0
string compare $string1 $string3
1
if { [string compare $string1 $string2] == 0 } {
 puts "strings are equal"
}
strings are equal

#equal was added in TCL 8.1
string equal $string1 $string2
1
string equal $string1 $string3
0

#eq was added in TCL 8.4
if { $string1 eq $string2 } {
 puts "Strings are equal"
}
Strings are equal 