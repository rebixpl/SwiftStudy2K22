import UIKit

// Tuples
var name = (first: "Taylor", last:"Swift")
print(name.0)
print(name.first)

var person = (name: "Paul", age: 40, isMarried: true)
print(person.age)

name.first = "John"
print(name.first)

// Dictionaries:
let heights: [String: Double] = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73,
]
print(heights["Taylor Swift"]!)

// Dictionary default values
print(heights["John Fac", default: 21.37])

// Empty dictionary:
var emptyDict = [String:Double]()

// Empty array:
var emptyArr = [Int]()

// Empty set:
var emptySet = Set<Int>()

// Enums
enum Results {
    case failure
    case success
}

let result = Results.success
print(result)

// Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let running = Activity.running(destination: "Finish Line")
let talking = Activity.talking(topic: "AI")

print(running)

// Enum raw values:
enum Planets: Int {
    case mercury // 0
    case venus // 1
    case earth // 2
    case mars // 3
}

let earth = Planets(rawValue: 2)

enum Planets2: Int {
    case mercury = 1
    case venus // 2
    case earth // 3
    case mars // 4
}

enum Sizes: Comparable {
case small
case medium
case big
}

Sizes.medium < Sizes.small

// Conditions
let age1 : Int = 25
let age2 : Int = 14

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

// Switch
enum Weather {
    case sunny
    case rainy
    case snowy
}

let currentWeather : Weather = Weather.rainy

switch currentWeather {
    case Weather.sunny:
        print("Sunny")
    case Weather.rainy:
        print("Rainy")
    case Weather.snowy:
        print("Snowy")
}

// Range operators
let score: Int = 85

switch score {
    case 0..<50:
        print("You failed")
    case 50...86:
        print("You passed!")
    default:
        print("You did great!")
}

// For loops
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

for _ in 1...4 {
    print("play")
}

// Repeat Loops: (like do..while in other languages)
repeat {
    print("This is false")
} while false


// Exiting multiple loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// Functions
func square(number: Int){
    print(number * number)
}

square(number: 9)

// How can you return two or more values from a function?
func getUser(id: Int) -> (first: String, last: String){
    id == 1 ? (first: "James", last:"Bombaryla") : (first: "John", last: "II")
}

let user = getUser(id: 1)
print(user.first)

// Parameter labels:
func sayHello(to name: String){
    print("Hello \(name)!")
}

sayHello(to: "Richard")
