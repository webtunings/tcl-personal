#why upvar is required to pass an array
#array is passed by name and we know that if we pass anything by just name we need to use upvar to get the reference

parray test
test(first)  = 1
test(second) = 2
test(third)  = 3

proc testArray {arr } {
parray arr
}
testArray test
"arr" isn't an array

proc testArray { arr } {
 parray $arr
}
testArray test
"test" isn't an array

proc testArray { arr } {
upvar $arr referenceArray
parray referenceArray
}
testArray test
referenceArray(first)  = 1
referenceArray(second) = 2
referenceArray(third)  = 3


proc testArray { arr } {
upvar $arr referenceArray
set referenceArray(newKey) "new value"
}
testArray test
new value

parray test
test(first)  = 1
test(newKey) = new value
test(second) = 2
test(third)  = 3

#referenceArray was local to proc only. Although it was used locally inside proc to modify the array
parray referenceArray
"referenceArray" isn't an array
