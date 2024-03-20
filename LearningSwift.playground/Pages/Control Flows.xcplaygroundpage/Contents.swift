var condition = true

///
/// if-else
///

if condition {         // has to be a boolean. Can't be int. Operators: ==, !=, <=, <, >=, >, &&, ||
    // do something
} else if condition {
    // do something else
} else {
    // do something else
}

///
/// Switch
///

var something = "d"

switch something {
case "a":
    // must have at least 1 statement, no fallthrough => no need for break statement
    print("a")
case "b":
    break     // use break when nothing to do
case "c", "d":  // multiple intems can be listed
    print(something)
default:    // evry case has to be covered
    print("e")
}

var somethingElse = 5

switch somethingElse{
case 1...5:         // range operator can also be used
    print(somethingElse)
case 6, 7, 8, 9, 10: // multiple matches like before
    print("6..10")
default:
    break
}

let vegetable = "red pepper"

switch vegetable {
    case let x where x.hasSuffix("pepper"): // expression
        print("Is it a spicy \(x)?")    // Prints "Is it a spicy red pepper?"
    default:
        print("Everything tastes good in soup.")
}

///
/// for loop
///

var i: Int
i = 0

var items = ["item1", "item2", "item3"]

for item in items {
    //print(item)
}

for number in 1...3 {   // closed range operator
    //print(number)
}

for number in 1..<3 {    // half-open range oeprator (used for indexing)
    //print(number)
}

// one-sided range and half-range operators also exists 1..., ...2, ..<2

for number in stride(from: 0, to: 6, by: 2) {   // stride
    print(number)
}

for number in stride(from: 0, through: 6, by: 2) {
    print(number)
}

///
/// while loop
///
while i < 3 {
    i += 1
    //print(i)
}

// repeat while

repeat {
    i -= 1
    //print(i)
} while i > 0

///
/// guard
///

func processTrack(trackName: String?, artist: String?, duration: Int?) {
    guard trackName != nil && artist != nil && duration != nil else {
        // return, break, throw or continue
        return
    }
    
    // optional bindig with guard
    guard let track = trackName else {
        return
    }
    
    //guard let <#constant#> = <#expression#> else { return <#return value#> }
    
    guard let unwrappedTrack = trackName,
          let unwrappedArtist = artist,
          let unwrappedDuration = duration else { return }
}


///
/// defer
///

// takes care of closing the resource

func someFunction() {
    
    defer {
        // closing logic
    }
}
