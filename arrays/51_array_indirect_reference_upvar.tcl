set test(first) 1
1
set test(second) 2
2
set test(third) 3
3

parray test
test(first)  = 1
test(second) = 2
test(third)  = 3


upvar 0 test alias

parray alias
alias(first)  = 1
alias(second) = 2
alias(third)  = 3

set alias(fourth) 4
4

parray alias
alias(first)  = 1
alias(fourth) = 4
alias(second) = 2
alias(third)  = 3

parray test
test(first)  = 1
test(fourth) = 4
test(second) = 2
test(third)  = 3

set arrayName test
test

upvar 0 $arrayName secondAlias

parray secondAlias
secondAlias(first)  = 1
secondAlias(fourth) = 4
secondAlias(second) = 2
secondAlias(third)  = 3

set secondAlias(fifth) 5
5

parray test
test(fifth)  = 5
test(first)  = 1
test(fourth) = 4
test(second) = 2
test(third)  = 3

parray alias
alias(fifth)  = 5
alias(first)  = 1
alias(fourth) = 4
alias(second) = 2
alias(third)  = 3

parray secondAlias
secondAlias(fifth)  = 5
secondAlias(first)  = 1
secondAlias(fourth) = 4
secondAlias(second) = 2
secondAlias(third)  = 3