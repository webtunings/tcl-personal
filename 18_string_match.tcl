#these are not regular expression

string match p* praveen
1
string match p* raveen
0
string match p* kumar praveen
bad option "p*": must be -nocase
string match p* "kumar praveen"
0
string match ?? xy
1
string match ?? xyz
0
string match ??? xyz
1
string match ? x
1
string match { [xy]} "x"
0
string match { [xy] } "x"
0
(prakumar) 44 % string match { [xy] } x
0
string match {[xy]} x
1
string match {[xy]} y
1
string match {[xy]} xy
0
string match {[xy]*} xy
1
string match {[xy]*} xy123
1
string match {[xy]*} x123
1
string match {[xy]*} y123
1
string match {[xy]*} xxy123
1
string match {[a-zA-Z]} a
1
string match {[a-zA-Z]} A
1
string match {[a-zA-Z]} 1
0
string match {[a-zA-Z]} 9
0
string match {[a-zA-Z]\?} 9
0
string match {[a-zA-Z]\?} a
0
string match {[a-zA-Z]\?} a?
1