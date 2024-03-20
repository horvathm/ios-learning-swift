///
/// Structs
///

/*
 - In Swift sctructs are powerful (similar to classes but no deinitializer)
 - passed by value not by reference like class do
 */

struct Appliance {
    var manufacturer: String = "default"
    var model: String = "default"
    var voltage: Int
    
    // Initializer
    init() {
        voltage = 0
    }
    
    init(_ voltage: Int) {
        self.voltage = voltage
    }
    
    // Methods
    func getDetails() -> String {
        var message = "This is the \(self.model) from \(self.manufacturer)"
        
        if self.voltage >= 220 {
            message += "Model is for European market"
        }
        
        return message
    }
}

///
/// Struct initializers
///

struct Rectangle {
    var a: Int
    var b: Int
}

// memberwise initializer if no explicit initializer exists
var rectangle = Rectangle(a: 5, b: 10)

/*
 - structs also do not support inheritance
 - structs are value types while classes are reference types
 */


///
/// Value types vs Ref types
///


/*
 - strings are value types in swift
 */

var first = "ABCD"
var second = first
second += "IJKL"
print(first)
print(second)  // it will differ since it's a copy

/*
 - struct are value types as well
 */

class CMessage {
    var internalText: String = "This is some text"
}

var firstMessage = CMessage()
var secondMessage = firstMessage
secondMessage.internalText = "This is different text"

print(firstMessage.internalText)
print(secondMessage.internalText)  // They will be the same

struct SMessage {
    var internalText: String = "This is some text"
}

var firstSMessage = SMessage()
var secondSMessage = firstSMessage
secondSMessage.internalText = "This is different text"

print(firstSMessage.internalText)
print(secondSMessage.internalText)  // they will  be different

///
/// Identity operator
///

/*
 - multiple references for the same object => '===' sign, the identity operator
*/

if (firstMessage === secondMessage) {
    print("refers to the same instance")
}

var a = CMessage()
var b = CMessage()
print (a.internalText + " = " + b.internalText)
print("but they're not identical but the '===' operator on them are \(a === b)")

/*
 - if I define class with let the reference cannot be changed, but its value if its 'var' that can be changed
 - if it's a struct defined with let, then it's a constant and everything inside it is a constant
 - In swift no intheritence by default
 - mutating keyword in the declaration of SimpleStructure to mark a method that modifies the
 */

protocol ExampleProtocol {
     var simpleDescription: String { get }
     mutating func adjust()
}

struct SimpleStructure: ExampleProtocol {
     var simpleDescription: String = "A simple structure"
     mutating func adjust() {
          simpleDescription += " (adjusted)"
     }
}
