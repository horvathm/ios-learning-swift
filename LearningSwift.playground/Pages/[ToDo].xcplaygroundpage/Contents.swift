let a = 5
let b = 10
let myResult = a + b

type(of: myResult)


print("1", "2", "3")


var optionalVariable: Int?
optionalVariable = 70
var unwrapped = optionalVariable!
print(unwrapped)


var arrayOfInt = [1, 3, 5, 6, ]
var arrayOfString = ["a", "bb", "ccc" ]

print(arrayOfString.count)
print(arrayOfString[2])
arrayOfString.append("dddd")

var myArray: [String]
var myIntArray: [Int] = []


// there is no casting when doing operations




// If you don’t need to compute the property but still need to provide code that’s run before and after setting a new value, use willSet and didSet

/*
var square: Square {
    willSet {
        triangle.sideLength = newValue.sideLength
    }
}*/

// ?
//let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
//let sideLength = optionalSquare?.sideLength


// Type aliases
typealias AudioSample = UInt16


/// Assertions, preconditions
/*
 -  Assertions are checked only in debug builds,
 -  Swift standard library
 -  assertion fails, terminating the application.
 - Use a precondition whenever a condition has the potential to be false, but must definitely be true for your code to continue execution
 - checks index isn’t out of bounds, or to check that a function has been passed a valid value
*/

let age = -3
assert(age >= 0, "A person's age can't be less than zero.")

if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

var index = -1
precondition(index > 0, "Index must be greater than zero.")  //  preconditionFailure()
