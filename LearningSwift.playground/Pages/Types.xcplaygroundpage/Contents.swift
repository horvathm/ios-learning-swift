///
/// Types
///

/*
 - Int, Double, Bool, String, Set, Dictionary, Array, Character
 - Swift is a type-safe language
 - Unicode char set can be used
 - UInt8, Int32 ... 8,16,32,64
 */

///
/// String
///

/*
 - constant strings are not mutable
 - Stromg os a value type
 - String and character comparisons in Swift aren’t locale-sensitive.
    canonically equivalent = same linguistic meaning and appearance, even if they’re composed from different Unicode scalars behind the scenes
 
 */

// String interpolation
let trackName = "Enter Sandman"
var artist = "Metallica"
let duration = 228
print( "Now playing \(trackName) by \(artist) which is \(duration / 60):\(duration % 60) long.")

artist.startIndex
artist.endIndex
artist.indices
artist.insert("!", at: artist.endIndex)
artist.remove(at: artist.index(before: artist.endIndex))

// Multi line string interpolation ( use '\' if don't want linebreaks included, can be indented to match the surrounding code
// no linebreak in the back or front only if you explicitely add one empty line
let apples = 3
let oranges = 5
let quotation = """
        Even though there's whitespace to the left, \
        the actual lines aren't indented.
            Except for this line.
        Double quotes (") can appear without being escaped.

        I still have \(apples + oranges) pieces of fruit.
        """

// Special character escaping \0 (null character), \\, \t, \n, \r \", \' and unicode scalar \u{n},

// extended delimiters: include special characters in a string without invoking their effect.
let threeMoreDoubleQuotationMarks = #"""
Here are three more \n double \n quotes: """
"""#

// empty string
var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
print(emptyString.isEmpty)
print(emptyString.count)

///
/// Characters
///

/*
 - characters can be appended to strings without any issue
 */

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)


///
/// Integers
///

/*
 - On a 64-bit platform, Int is the same size as Int64. On 32 -> 32. Similar with UInt
 - UInt8, Int32 ... 8,16,32,64
 - Int is preferred for interopability
 - binary 0b prefix
 - octal 0o prefix
 - hexadecimal 0x prefix
 - number formatting with '_' and '0'-s are allowed: 000123.2, 1_000_000.000_1
 */

UInt8.max
UInt8.min

///
/// Floating point numbers
///

/*
 - Double represents a 64-bit floating-point number.
 - Float represents a 32-bit floating-point number.
 - Double has a precision of at least 15 decimal digits, whereas the precision of Float can be as little as 6 decimal digits
 - Double is preferred
 - Exponent example: 1.25e-2
 */

///
/// Constants
///

/*
 - value of a constant doesn’t need to be known at compile time, but you must assign it a value exactly once
 */

let c: Int
c = 10      // compile time error. Immutable value may be initialized only once

///
/// Variables
///

var v: Int

///
/// Optionals
///

/*
 - optional value either contains a value or contains nil to indicate that a value is missing.
 - nil-coalescing operator (??).
 - force unwrapping
 - implicitly unwrapped optionals (String!)
 */

var optionalName: String? = nil
var greeting = "Hello!"

if let name = optionalName {
    greeting += ", \(name)"
} else {
    greeting += ", unknown"
}

if let optionalName {
    // shorter form without assignment
}

print(greeting)

///
/// Implicitly unwrapped optionals
///

/*
 implicitly unwrapped optionals:
 -  optional will always have a value, after that value is first set
 - an optional’s value is confirmed to exist immediately after the optional is first defined and can definitely be assumed to exist at every point thereafter.
 - primary use of implicitly unwrapped optionals in Swift is during class initialization
 - don't use an implicitly unwrapped optional when there’s a possibility of a variable becoming nil at a later point
 - implicitly unwrapped optional is a normal optional behind the scenes, but can also be used like a non-optional value, without the need to unwrap the optional value each time it’s accessed
 - If an implicitly unwrapped optional is nil and you try to access its wrapped value, you’ll trigger a runtime error
 - use a normal optional type if you need to check for a nil value during the lifetime of a variable
 */

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // Requires explicit unwrapping


let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // Unwrapped automatically

let optionalString = assumedString

// declare multiple variables
var x = 0.0, y = 0.0, z = 0.0
var red, green, blue: Double

