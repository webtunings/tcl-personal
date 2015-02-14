set str "abc aabc aaabc aaaabc aaaaabc abc"
abc aabc aaabc aaaabc aaaaabc abc
set pattern {a{1}}
a{1}
regexp -inline -all $pattern $str
a a a a a a a a a a a a a a a a
set pattern {a{2}}
a{2}
regexp -inline -all $pattern $str
aa aa aa aa aa aa
set pattern {a{3}}
a{3}
regexp -inline -all $pattern $str
aaa aaa aaa
set pattern {a{4}}
a{4}
regexp -inline -all $pattern $str
aaaa aaaa
set pattern {a{5}}
a{5}
regexp -inline -all $pattern $str
aaaaa
set pattern {a{6}}
a{6}
regexp -inline -all $pattern $str

set pattern {a{3,4}}
a{3,4}
regexp -inline -all $pattern $str
aaa aaaa aaaa
set pattern {a{3,5}}
a{3,5}
regexp -inline -all $pattern $str
aaa aaaa aaaaa
set pattern {a{3,}}
a{3,}
regexp -inline -all $pattern $str
aaa aaaa aaaaa
 