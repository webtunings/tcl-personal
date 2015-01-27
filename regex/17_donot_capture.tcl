set str "praveen kumar"
praveen kumar
set pattern {(?:p.*) kumar}
(?:p.*) kumar
regexp $pattern $str match subMatch1
1
puts $match
praveen kumar
puts $subMatch1

