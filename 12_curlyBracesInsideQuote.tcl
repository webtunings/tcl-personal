#substitution inside curly braces happens in this case

set x 5
5
set y 6
6
set z "$x {$y}"
5 {6}