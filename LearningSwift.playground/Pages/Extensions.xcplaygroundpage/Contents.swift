///
/// Extensions
///

/*
 - add new methods, properties to types
 - you can't add to structs and enums anyways with inheritance
 - add extra behavior to not just our types buy anythings
 - add functionality to an existing type, such as new methods and computed properties. You can use an extension to add protocol conformance to a type that’s declared elsewhere, or even to a type that you imported from a library or framework
*/

let albums = "Master of puppets"

albums.uppercased()

// extension to String type
extension String {  // by typing ': Protocol' you can extend it to adhere a protocol
    func removeSpaces() -> String {
        let filteredCharacters = self.filter{ $0 != " " }
        
        return String(filteredCharacters)
    }
}

// usage of the custom extension
albums.removeSpaces()


// Use defer to write a block of code that’s executed after all other code in the function, just before the function returns.
var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]


func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }


    let result = fridgeContent.contains(food)
    return result
}
if fridgeContains("banana") {
    print("Found a banana")
}
print(fridgeIsOpen)
// Prints "false"
