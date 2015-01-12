catch { expr { 4/2 } } result
0
set result
2
catch { expr { 4/0 } } result
1
set result
divide by zero