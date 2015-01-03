proc fact { x } {
 if { $x == 1} { 
     return 1 
   } else {
      set x [expr { $x * [fact [incr x -1] ] } ]
  }
}
