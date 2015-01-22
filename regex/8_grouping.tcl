set pattern {(abc)+}
(abc)+
set str "abcabcab aabc abababcabcabc"
abcabcab aabc abababcabcabc
regexp -all $pattern $str
3
regexp -all -inline $pattern $str
abcabc abc abc abc abcabcabc abc

index 0 to 5
0- actual match
1 - submatch corresponding to parenthesis
2- actual match
3- submatch corresponding to parenthesis
4- actual match
5- submatch corresponding to parenthesis