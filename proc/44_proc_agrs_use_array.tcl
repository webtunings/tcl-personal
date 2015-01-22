proc test { a {b 2} args } {
puts $a
puts $b

set internal(debug) true
set internal(name) praveen

array set internal $args

parray internal
}

test 1
1
2
internal(debug) = true
internal(name)  = praveen

test 1 4
1
4
internal(debug) = true
internal(name)  = praveen

test 1 4 debug false
1
4
internal(debug) = false
internal(name)  = praveen

test 1 4 debug false name praveen
1
4
internal(debug) = false
internal(name)  = praveen

test 1 4 debug false name different
1
4
internal(debug) = false
internal(name)  = different

test 1 4 debug false name different extraArgument "I am extra"
1
4
internal(debug)         = false
internal(extraArgument) = I am extra
internal(name)          = different