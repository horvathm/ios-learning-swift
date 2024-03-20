///
/// Properties
///

/*
 - properties are stored properties in struct, enum, class
 - we can also define calculated properties
 - backing property is needed
*/

class Player {
    private var name: String
    var bonus: Int
    var penalty: Int
    var collectedItems: Int
    
    var score: Int {    // let is not allowed for computed properties even if there isn't any setter
        get {
            return collectedItems * 10 + bonus - penalty // cannot assign to get only property
        }
    }
    
    var formattedName: String {
        get {
            name.uppercased()
        }
        set {
            self.name = newValue   // newValue is the input
        }
    }
    
    init(_ name: String) {
        self.name = name
        self.bonus = 0
        self.penalty = 0
        self.collectedItems = 0
    }
}

let player = Player("Tim")

player.collectedItems = 1
player.bonus = 2
player.penalty = 1

print(player.score)
print(player.formattedName)

player.formattedName = "new name"
print(player.formattedName)
