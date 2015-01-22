proc test {} {
 error "this is an error" "this is part of errorInfo"
 puts "this will not be executed"
}
test
this is an error
set errorInfo
this is part of errorInfo
    (procedure "test" line 1)
    invoked from within
"test"