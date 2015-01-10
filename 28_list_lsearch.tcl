set myList { abc def ghi jkl}
 abc def ghi jkl
lsearch $myList d*
1
lsearch $myList g*
2
lsearch $myList h*
-1
lsearch $myList a*
0
lsearch $myList k*
-1
lsearch $myList j*
3
lsearch -exact $myList k*
-1
lsearch -exact $myList j*
-1
lsearch -exact $myList jk
-1
lsearch -exact $myList jk*
-1
lsearch -exact $myList jkl
3
set myList {abc abc abc}
abc abc abc
lsearch -exact $myList abc
0
lsearch -exact -inline $myList abc
abc
lsearch -exact -inline -all $myList abc
abc abc abc
set myList {ab abc abcd abcde}
ab abc abcd abcde
lsearch -inline -all $myList a*
ab abc abcd abcde
lsearch -inline -all $myList ab*
ab abc abcd abcde
lsearch -inline -all $myList abc*
abc abcd abcde
lsearch -inline -all $myList abcd*
abcd abcde
lsearch -inline -all $myList abcde*
abcde
lsearch -inline -all $myList abcdef
lsearch -inline -all $myList abcdef*
lsearch -inline -all -not $myList a*
lsearch -inline -all -not $myList ab*
puts $myList
ab abc abcd abcde
lsearch -not $myList 123
0
lsearch -inline -all -not $myList 123
ab abc abcd abcde
lsearch -inline -all -not $myList a
ab abc abcd abcde
lsearch -inline -all -not $myList a*
lsearch -inline -all -not $myList abc*
ab
lsearch -inline -all -not $myList abcd*
ab abc
lsearch -inline -all -not $myList abcde*
ab abc abcd
lsearch -inline -all -not -start 0 $myList abcd*
ab abc
lsearch -inline -all -not $myList abcd*
ab abc
lsearch -inline -all -not -start 1 $myList abcd*
abc