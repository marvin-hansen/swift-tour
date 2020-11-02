
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



