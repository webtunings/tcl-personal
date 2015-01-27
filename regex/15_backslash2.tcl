set str "\\\\abc\\\\"
\\abc\\
set pattern {\\}
\\
regexp -inline -all $pattern $str
\\ \\ \\ \\
regexp -all $pattern $str
4