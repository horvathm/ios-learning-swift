///
/// Enumerations
///


/*
 - enumerations can have methods
 - By default, Swift assigns the raw values starting at zero and incrementing by one each time, but you can change this behavior by explicitly specifying values
 - You can use the abbreviated form when assigning to enumerations anytime the value’s type is already known.
 */

// method 1 to define a regular enumeration
enum MediaType{
    case movie
    case book
    case game
    case music
}

// method 2 to define a regular enumeration
enum MovieType {
    case fantasy, action, comedy, drama, scifi
}


// using an enumeration
var itemType: MediaType
itemType = MediaType.book
itemType = .game    // short form of using enum

// processing enumeration value
switch itemType {       // useful processing via switch
case .book:
    break
case .movie:
    break
case .game:
    print("it's a game")
case .music:
    break
}

// Enumerations with raw values
enum BottleSize: String {
    case half = "0.5 L"
    case standard = "0.75 L"
    case magnum = "1.5 L"
}   // enumerations with raw values
var bottleSize: BottleSize
bottleSize = .standard
print("your \(bottleSize) is \(bottleSize.rawValue)")


// Enumerations with associated values and its usage
enum MediaType2 {
    case movie (String)
    case music (Int)
    case book (String)
}

var firstItem: MediaType2 = .movie("comedy")
var secondItem: MediaType2 = .music(20)

switch firstItem {
case .movie(let genere):
    print(genere)
case .music(let bpm):
    print(firstItem.self)
default:
    break
}

// Enum with method

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king


    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

print(Rank.ace.rawValue)
print(Rank.two.rawValue)

// instantiate enumeration with rawValue
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()  // nil if cant initialize enum
}
