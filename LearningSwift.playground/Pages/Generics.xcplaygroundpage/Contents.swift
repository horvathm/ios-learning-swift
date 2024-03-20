///
/// Generics
///

/*
 - You can make generic forms of functions and methods, as well as classes, enumerations, and structures.
 */

// Generics
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result: [Item] = []
    for _ in 0..<numberOfTimes {
         result.append(item)
    }
    return result
}

makeArray(repeating: "knock", numberOfTimes: 4)

// Use where right before the body to specify a list of requirements
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool    // Writing <T: Equatable> is the same as writing <T> ... where T: Equatable.
where T.Element: Equatable, T.Element == U.Element
{
for lhsItem in lhs {
    for rhsItem in rhs {
        if lhsItem == rhsItem {
            return true
        }
    }
}
return false
}

anyCommonElements([1, 2, 3], [3])
