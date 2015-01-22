set myList [list "tcl programming" "praveen kumar" ]
{tcl programming}{praveen kumar}
lsort $myList
{praveen kumar} {tcl programming}
lsort -increasing $myList
{praveen kumar} {tcl programming}
lsort -decreasing $myList
{tcl programming} {praveen kumar}
 