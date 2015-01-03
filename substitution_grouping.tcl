puts stdout "test"
puts stderr test123

expr 033 + 033
54

033 is octal - equivalent decimal is 27

expr 0xff + 0xff
510

0xff - hexadecimal - decimal=255

#substitution left to right (innermost first)
set len [expr [string length test] + 5]
==> set len [expr 4 + 5]
==> set len 9

#better performance with curly braces
set len [expr {[string length test] + 5}]


#variable substitution
#command substitution
#backslash substitution

#continue long commands on multiple lines
set tl [expr { [string length test] + \
[string length test123] }]


#grouping with double quotes and braces

#variable and command substitution
puts "length of $str is [string length $str]"
length of test is 4

#no substitution
puts {length of $str is [string length $str]}
length of $str is [string length $str]


#square brackets do not group

#grouping decision are made before substitutions are performed

set x 5
5
set y 7
7
puts $x+$y=[expr { $x + $y }]
5+7=12
puts $x + $y = [expr { $x + $y }]
wrong # args: should be "putsOrig ?-nonewline? ?channelId? string"
puts "$x + $y = [expr { $x + $y }]"
5 + 7 = 12
#phases
puts $x+$y=[expr { $x + $y }]
==> puts 5+7=[expr $x + $y]
==> puts 5+7=[expr 5 + 7]
==> puts 5+7=12


#grouping math expressions with curly braces
set x 5
5
set y 7
7
set add [expr {$x + $y}]
12
#expr does substitution inside curly braces, notmally substitution is not part of curly braces


set x 5
5
set y 7
7
set concat $x$y
57
set concat "$x $y"
5 7