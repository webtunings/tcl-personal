set str "<h1>test</h1>"
<h1>test</h1>
set pattern {<h1>[^<]*</h1>}
<h1>[^<]*</h1>
regexp -inline -all $pattern $str
<h1>test</h1>
set pattern {<h1>([^<]*)</h1>}
<h1>([^<]*)</h1>
regexp -inline -all $pattern $str
<h1>test</h1> test
regexp $pattern $str match text
1
puts $match
<h1>test</h1>
puts $text
test
