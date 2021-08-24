import UIKit

var sum = 0
var a = 10
var b = 20
sum = a+b

//string interpolation
print("The Answer is \(sum)")

//terminator - will use for specific value
print("The message is", terminator: " - ")
print(sum)

//seperator - will use for a range of values
print(1,2,3,4,8,9, separator: " :: ")
print(1.0, 2, 7.2)

//Constants and variables
var str = "Ajay"
var str2 = "Bandi"
print(str2,str,separator:", ")
print(str2, terminator: ", ")
print(str)

//Constants (let) and variables (var)
var p = 76
var q = 22
p = p-q
print(p)

let r = 20.0
//r = r+q
let PI = 3.14
var area = PI*r*r
print("The Area of Circle: \(area)")

 
