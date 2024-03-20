///
/// Functions
///

/*
 - Functions are a first-class type. This means that a function can return another function as its value.
 - Functions are actually a special case of closures: blocks of code that can be called later.
 */

// Plain function with no arg and return value
func showMessage() -> Void {
    print("message")
}

// Plain function invocation
showMessage()

// Function with arg & invocation
func showMessage(message: String) {
    // parameters treated as a constant, they're immutable
    print(message)
}

showMessage(message: "param message")   // argument label

// Function with return value
func getData() -> Int {
    
    return 5
}

print(getData())
_ = getData()   // compiler warns if value is not used. Swift likes to be explicit about everything

// Argument labels (nickname, ignore)
func showMessage(_ a: String, bbb b: String, c: Int) {      // intentionally ignore label for 'a' or add 'bbb' as a nickname
    print("some input were given (\(a), \(b), \(c))")
}

showMessage("a", bbb: "bbb", c: 4)

// Functions can be nested. Nested functions have access to variables that were declared in the outer function.
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

// Return a function
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)



// A function as an argument
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

