
#string comapre
# -1 small
# 1 greater
# 0 same

proc compareLastName { x y } {
   set xLastName [lindex $x end]
   set yLastName [lindex $y end]
   set result [string compare $xLastName $yLastName]   

   if { $result == 0 } {
    return [string compare $x $y] 
   } else {
    return $result
  } 

}

set myList { {x y} {y z} {a b} {a x} {b a} {c d}}
 {x y} {y z} {a b} {a x} {b a} {c d}

lsort $myList
{a b} {a x} {b a} {c d} {x y} {y z}

lsort -command compareLastName $myList
{b a} {a b} {c d} {a x} {x y} {y z}
  
