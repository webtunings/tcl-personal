set str "praveen kumar"
praveen kumar
set pattern {(p.*) kumar}
(p.*) kumar
regexp $pattern $str match firstName
1
puts $match
praveen kumar
puts $firstName
praveen