 set str "1+2=3"
1+2=3
set pattern {\+}
\+
regexp -inline -all $pattern $str
+
set str "1+2=3 2+2=4 3++++"
1+2=3 2+2=4 3++++
regexp -inline -all $pattern $str
+ + + + + +
regexp -all $pattern $str
6