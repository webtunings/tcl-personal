set str 900
900
string is integer -strict $str
1
set str abc
abc
string is integer -strict $str
0
string is alnum -strict $str
1
set str 900
900
string is alnum -strict $str
1
set str 900abc
900abc
string is alnum -strict $str
1
string is boolean -strict $str
0
set str 0
0
string is boolean -strict $str
1
set str 1
1
string is boolean -strict $str
1
set str true
true
string is boolean -strict $str
1
set str false
false
string is boolean -strict $str
1
set str false123
false123
string is boolean -strict $str
0
set str 89
89
string is digit -strict $str
1
string is double -strict $str
1
set str true
true
string is false -strict $str
0
set str false
false
string is false -strict $str
1