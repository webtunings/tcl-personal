set str "    abc"
    abc
set pattern {^[ \t]+}
^[ \t]+
regexp -inline -all $pattern $str
{    }
set pattern {^[ \t].+}
^[ \t].+
regexp -inline -all $pattern $str
{    abc}
set str "abc      "
abc      
set pattern {^[ \t].+}
^[ \t].+
regexp -inline -all $pattern $str