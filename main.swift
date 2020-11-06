
import Swift
// Prints "Hello, world!"

print("Hello, World!")

// Variables 
var myVariable = 42

print("myVariable", myVariable)

myVariable = 50
print("myVariable", myVariable)

let myConstant = 42
print("myConstant", myConstant)


let implicitInteger = 70
print("implicitInteger", implicitInteger)

let implicitDouble = 70.0
print("implicitDouble", implicitDouble)

let explicitDouble: Double = 70
print("explicitDouble", explicitDouble)


print("Type conversion")
// If you need to convert a value to a different type, explicitly make an instance of the desired type.
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

print("widthLabel", widthLabel)
print("")

print("String values")

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

print("appleSummary", appleSummary) 
print("fruitSummary", fruitSummary)

print("Multi line strings")
let quotation = """
I said "I have \(apples) apples,"
"I have \(oranges) oranges,"
and then I said "I have \(apples + oranges) pieces of fruit."
"""
print("quotation", quotation)
print("")

print("Arrays")

var shoppingList = ["catfish", "water", "tulips"]

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

for (name, jobs) in occupations{
    print(name, jobs)
}

print("")
shoppingList.append("blue paint")
print(shoppingList)

// To create an empty array or dictionary, use the initializer syntax.
let emptyArray = [String](repeating: "", count: 64)

// Use this initializer to avoid intermediate reallocations of a dictionary’s storage buffer
//  when you know how many key-value pairs you are adding to a dictionary after creation.
let emptyDictionary = [String: Float](minimumCapacity: 12)

print("")

print("Control Flow")

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

// An optional value either contains a value or contains nil to indicate 
// that a value is missing. Write a question mark (?) after the type of a value to mark the value as optional


var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
    print(greeting)
}
else{  // in case the optional is nil
    print("No greeting")
}

// Another way to handle optional values is to provide a default value using the ?? operator. 
// If the optional value is missing, the default value is used instead

let nickname: String? = nil
let fullName: String = "John Wick"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting)

// Switches support any kind of data and a wide variety of comparison operations

let vegetable: String = "red pepper"

switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}

print("")


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
var largest_kind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largest_kind = kind 
        }
    }
}
print(largest)
print(largest_kind)

// Use while to repeat a block of code until a condition changes. 
// The condition of a loop can be at the end instead, ensuring that the loop is run at least once.

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
// Prints "128"


// You can keep an index in a loop by using ..< to make a range of indexes.

var total = 0
for i in 0..<4 {
    total += i
}
print(total)
// Prints "6"

func greet(person : String, on day: String) -> String{
    return "Hellp \(person), today is \(day)"
}

print(greet(person: "Bob", on: "Monday")) 


func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int, avg: Int) {
    var min: Int = scores[0]
    var max: Int = scores[0]
    var sum: Int = 0
    var avg: Int = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    avg = (sum/scores.count)
    return (min, max, sum, avg)
}

let statistics = calculateStatistics(scores: [5, 3, 17, 8, 98, 100, 3, 9, 7])

print("Sum: ", statistics.sum)
// Prints "250"
print("Max: ", statistics.max)
// Prints "100"
print("Min: ", statistics.min)
// Prints "3"
print("Avg: ", statistics.avg)
// Prints "27"

