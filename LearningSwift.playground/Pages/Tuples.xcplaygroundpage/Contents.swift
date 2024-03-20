///
/// Tuples
///

var aperture = "f1.4"
var iso = 640
let cameraType = "Canon"

// declarations
var basicTuple = (aperture, iso, cameraType)
var nextTuple = ("literal", iso, aperture, 12)

// as a return value
func getTuple() -> (String, Int) {
    return ("string", 1324)
}

// access element by ID
print(getTuple().1)

// named return value
func getOtherTuple() -> (text: String, integer: Int) {
    return ("asd", 123)
}

// access named tuple element
print(getOtherTuple().text)

// tuple response value
let (_, int) = getOtherTuple()
print(int)
