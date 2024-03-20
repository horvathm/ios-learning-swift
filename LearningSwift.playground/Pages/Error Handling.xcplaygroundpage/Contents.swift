///
/// Error handling
///

/*
 - recoverable errors
 - undesirable but semi predictable scenarios
 - swift has no built in error class
 - swift errors can be created from any type
 - you define it
 - Error is a built in protocol
 - Use throw to throw an error and throws to mark a function that can throw an error.
 - If you throw an error in a function, the function returns immediately and the code that called the function handles the error.
 */

// Error protocol implementation
enum ServerError: Error {
    case noConnection
    case serverNotFound
    case authenticationRefused
}

// method has to be marked, error has to be thrown
func checkStatus(serverNumber: Int) throws -> String {
    switch serverNumber {
    case 1:
        print("no connection")
        throw ServerError.noConnection
    case 2:
        print("authentication failure")
        throw ServerError.authenticationRefused
    case 3:
        print("server 3 is up and running")
    default:
        print("Can't find server")
        throw ServerError.serverNotFound
    }
    
    return "Success!"
}

// checkfor errors with do-while and call with try
do {
    let result = try checkStatus(serverNumber: 1)
    
    print(result)
} catch ServerError.authenticationRefused {
    print("Auth. refused")
} catch let serverError as ServerError {
    print("Server error is: \(serverError)")
} catch {
    print(error)    // 'error' contains the error text?
}


// check for errors with optional try
let result = try? checkStatus(serverNumber: 1)

if result != nil {
    print(result!)
}
