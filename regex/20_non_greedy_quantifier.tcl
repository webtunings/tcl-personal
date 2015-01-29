set str "first line
 second line
 third line
 fourth line"
first line
second line
third line
fourth line

set pattern {.+\n}
.+\n
regexp -inline -all $pattern $str
{first line
second line
third line
}
regexp -all $pattern $str
1

set pattern {.+?\n}
.+?\n
regexp -all $pattern $str
3
regexp -inline -all $pattern $str
{first line
} {second line
} {third line
}