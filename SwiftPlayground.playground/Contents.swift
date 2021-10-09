import Foundation
//The Foundation framework provides a base layer of functionality for apps and frameworks, including data storage and persistence, text processing, date and time calculations, sorting and filtering, and networking.

var myVar:String = "hello" // var variableName:variableType;

myVar = "world"
print(myVar)

var myInt:Int = 2137
print(myInt)


var anotherInt = 400; // variable type get automatically assigned based on variable value
print(anotherInt)

// CONSTANTS => let constName:constType;
let myConst:String = "hello" // We can't reassign data after the first assignment of data
print(myConst)
// myConst = "world" // ERROR: Cannot assign to value: 'myConst' is a 'let' constant

// MATH OPERATIONS
var a = 20 + 5
var b = 20 - 5
var c = 20 * 5
var d = 20 / 5
var e = 20 % 2
var f = (a * b) + (c / d)
print("f = \(f)")

f += 1
// f++ // Sadly this does not work with swift
f -= 1
f *= 2
f /= 4
print(f)

// Foundation math functions
// Absolute number
print("abs(-13) = \(abs(-13))") // => 13

// Ceiling
print("ceil(1.8) = \(ceil(1.8))") // => 2.0

// Floor
print("floor(1.6) = \(floor(1.6))") // => 1.0

// Square Root
print("sqrt(64) = \(sqrt(64))") // => 8.0
print("sqrt(234) = \(sqrt(234))") // => 15.297058540778355

// Power
print("pow(2,4) = \(pow(2,4))") // => 16

// CHALLENGE
let people:Int = 4
let subtotal:Double = 128
let tax:Double = 0.13
var split:Double = 0

split = (subtotal * (1.0 + tax)) /  Double(people)
print("split = \(split)") // => 36.16


// FUNCTIONS
//func <#name#>(<#parameters#>) -> <#return type#> {
//    <#function body#>
//}

func myFunc(a:Int) -> Int{
    let b = 20
    return a + b
}

let mySum = myFunc(a: 10)
print(mySum)

// if function returns void, we don't have to specify return type
func myFunc2(){
}
// can be also written as
func myFunc3() -> Void {
}

// Parameter with default value
func myFunc4(a:Int,b:Int = 6) -> Int {
    return a + b;
}
print(myFunc4(a: 2))


// Argument Labels
func myFunc5(firstNumber a:Int,secondNumber b:Int = 6) -> Int {
    // Internally we use 'a' and 'b' names
    return a + b;
}
// Externally we use 'firstNumber' and 'secondNumber' names
myFunc5(firstNumber: 3, secondNumber: 7)

// No parameter names
func myFunc5(_ a:Int,_ b:Int) -> Int {
    return a + b;
}

myFunc5(7, 9) // we don't have to write named parameters

