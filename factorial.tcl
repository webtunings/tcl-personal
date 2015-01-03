proc factorial { x } 
{
set fact 1
while { $x > 0 } {
 set fact [expr { $fact * $x } ]
 incr x -1 
}
return $fact
}

# opening curly brace should be on the first line - workaround below

proc factorial { x } \
{
set fact 1
while { $x > 0 } {
 set fact [expr { $fact * $x } ]
 incr x -1 
}
return $fact
}