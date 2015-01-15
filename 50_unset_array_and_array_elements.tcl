parray test
test(first)  = hello
test(second) = world
test(third)  = 301

unset test(second)

parray test
test(first) = hello
test(third) = 301

unset test

parray test
"test" isn't an array