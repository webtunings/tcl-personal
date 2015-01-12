proc test {} {
  error "this is an error"
  puts "this will not be executed"
}
test
this is an error
set errorInfo
this is an error
    while executing
"error "this is an error""
    (procedure "test" line 2)
    invoked from within
"test"