set pattern {.*}
.*
set str "test test123 abc +++"
test test123 abc +++
regexp -all -inline $pattern $str
{test test123 abc +++}
regexp -all $pattern $str
1
set str ""
regexp -all $pattern $str
1
regexp -all -inline $pattern $str
{}
set str "   "
regexp -all $pattern $str
1
regexp -all -inline $pattern $str
{   }