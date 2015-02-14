set str "abcdeadexxabyyy"
abcdeadexxabyyy
set pattern {(ab).*(de).*\2.*\1}
(ab).*(de).*\2.*\1
regexp -inline -all $pattern $str
abcdeadexxab ab de