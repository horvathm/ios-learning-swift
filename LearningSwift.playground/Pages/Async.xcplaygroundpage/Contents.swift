///
/// Concurrency & async
///

/*
 -
 
 */


// mark method async with 'async'
func fetchUserID(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    return 501
}

// mark async call with 'await'
func fetchUsername(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    if userID == 501 {
        return "John Appleseed"
    }
    return "Guest"
}

// async let to call an asynchronous function, letting it run in parallel with other asynchronous code. When you use the value it returns, write await
func connectUser(to server: String) async {
    async let userID = fetchUserID(from: server)
    async let username = fetchUsername(from: server)
    let greeting = await "Hello \(username), user ID \(userID)"
    print(greeting)
}


// Use Task to call asynchronous functions from synchronous code, without waiting for them to return.
Task {
    await connectUser(to: "primary")
}


// Use task groups to structure concurrent code.
let userIDs = await withTaskGroup(of: Int.self) { group in
    for server in ["primary", "secondary", "development"] {
        group.addTask {
            return await fetchUserID(from: server)
        }
    }    
    
    var results: [Int] = []
    for await result in group {
        results.append(result)
    }
    return results
}
