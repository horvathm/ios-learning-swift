///
/// Closures
///

/*
 - closures let us take lines of code and group it together to use elswhere in our program
 - function is a type of closure
 - functions can be defined to pass a closure argument
 - in the developer documentation there are methods where the argument is like "(Element) -> String" or "((Element) -> Bool) -> Bool)"
 - code in a closure has access to things like variables and functions that were available in the scope where the closure was created, even if the closure is in a different scope when it’s executed
 */

struct Book {
    var title: String
    var author: String
    var pages: Int
}

let book1 = Book.init(title: "1984", author: "George Orwell", pages: 235)
let book2 = Book.init(title: "The Shwsank Redemption", author: "Stephen King", pages: 442)
let book3 = Book.init(title: "Hamlet", author: "Shakespeare", pages: 120)
let book4 = Book.init(title: "Winnie The Pooh", author: "E. H. Shepard", pages: 58)

let books = [book1, book2, book3, book4]
var numbers = [20, 19, 7, 12]

// Function passed as a parameter
let sortedByTitle = books.sorted(by: compareBooks)

func compareBooks(firstBook: Book, secondBook: Book) -> Bool {
    if firstBook.title <= secondBook.title {
        return true
    } else {
        return false
    }
}

// closure expression inline with input definition #1
sortedByTitle.forEach({
    (book: Book)
    in                      // input section
    print(book.title)
})

// closure expression inline with input definition #2
numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

// closure expression inline with input definition with implicit type
let mappedNumbers = numbers.map({ number in 3 * number })   // Single statement closures implicitly return the value of their only statement
print(mappedNumbers)

// closure expression inline with indexed arguments
let longBooks = books.filter({
    if $0.pages > 200 {         // Arguments can be used like this way too
        return true
    }
    
    return false
})

longBooks.forEach({print($0)})

// trailing closure (closure passed as the last argument to a function can appear immediately after the parentheses)
let max = books.max(by:) { $0.pages <= $1.pages }?.pages
let min = books.min(){$0.pages <= $1.pages}?.pages

// trailing closure (When a closure is the only argument to a function, you can omit the parentheses entirely)
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)


