set pattern {[wW]elcome}
[wW]elcome
set str "welcome Welcome Welcomeeeee welcomeeeeee WElcome"
welcome Welcome Welcomeeeee welcomeeeeee WElcome
regexp -all -inline $pattern $str
welcome Welcome Welcome welcome

set pattern {[0-9]23}
[0-9]23
set str "a23 123 923 bc423 6233"
a23 123 923 bc423 6233
regexp -inline -all $pattern $str
123 923 423 623