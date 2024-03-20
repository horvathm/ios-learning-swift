///
/// Dictionaries
///

// Dictionary Literal Format
var airlines = ["TWA": "Totally Wanker Airlines",
                "SWA": "South West Airlines"]

// Emtpy dictionary
var periodicElements: [String: String]
periodicElements = [:]


// Usage - nil check #1
if let airline = airlines["TWA"] {
    print(airline)
}

// Usage - Create a new one
airlines["DWA"] = "Discovery Airlines"

// Usage - 3 ways to handle optionals
print(airlines["DWA"] ?? "Not found")   // fallback
print(airlines["SWA"] as Any)           // ?
print(airlines["TWA"]!)                 // force unwrap


// returns nil if not exists
print(airlines["NOTFOUND"])

// clear by setting nil
airlines["DWA"] = nil

// usefull properties
airlines.isEmpty
airlines.values
airlines.count

// iterate through
for airline in airlines {
    print(airline)
}

// iterate through #2
for (code, airline) in airlines {
    print(code)
}
