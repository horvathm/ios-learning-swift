///
/// Protocols
///

/*
 - sounds like it's an interface
 - Swift is a protocol oriented language
 - protocol is s set of rules or code of behavior
 - protocol is a way to formaize how a class, struct, enum should do
 - list of methods properties class, enum, struct should have
 - single inheritance allowed but it's feasible to allow multiple protocols
 */

// CustomStringConvertible protocol
class Player : CustomStringConvertible {
    var description: String
    var name: String
    var score: Int
    
    init(_ name: String, _ description: String){
        self.description = description
        self.name = name
        self.score = 0
    }
}

var p = Player("Steve", "the assigned description")

print(p)
var s = String(p)

// Custom protocol

protocol MyProtocol {
    var name: String { get set }
    
    func showMessage()
}

// Custom protocol implementation
class MyProtocolImplementation : MyProtocol {
    var name: String = ""
    
    func showMessage() {
        print("showMessage()")
    }
}


