///
/// Actors
///

/*
 - Actors are similar to classes, except they ensure that different asynchronous functions can safely interact with an instance of the same actor at the same time.
 */

actor ServerConnection {
    var server: String = "primary"
    private var activeUsers: [Int] = []
    func connect() async -> Int {
        let userID = await fetchUserID(from: server)
        // ... communicate with server ...
        activeUsers.append(userID)
        return userID
    }
}

let server = ServerConnection()
let userID = await server.connect()
