// Introduction to Optionals

// Task 1: Declaring Optionals
// Step 1: Declare an optional String named "favoriteMovie"

var favoriteMovie: String?
print("Favorite Movie: \(favoriteMovie)")
favoriteMovie = "Inception"
print("Favorite Movie: \(favoriteMovie)")

// Step 2: Print "favoriteMovie" to see what happens when it has no value

// Step 3: Assign a value to "favoriteMovie" and print it again


// Task 2: Unwrapping Optionals with if let

if let unwrappedMovie = favoriteMovie {
    print("My favorite movie is \(unwrappedMovie)")
} else {
    print("I don't have a favorite movie.")
}

// Step 1: Using if let to safely unwrap "favoriteMovie" and print it


// Step 2: Set "favoriteMovie" to nil and try unwrapping it again


// Task 3: Using Guard to Unwrap Optionals

func greetUser(name: String?) {
    guard let unwrappedName = name else {
        print("Hello, guest!")
        return
    }
    print ("Hellow, \(unwrappedName)!")
}
greetUser(name: "Alice")
greetUser(name: nil)

// Step 1: Write a function that takes an optional String (name) and prints a welcome message


// Test the function with a name


// Test the function with nil


// Task 4: Optional Chaining

struct Book {
    var title: String
    var author: String?
}

let myBook = Book(title: "The Great Gatsby", author: "F. Scott Fitzgeerald")
if let authorName = myBook.author {
    print("Author: \(authorName)")
} else {
    print("Author information is missing.")
}

let anonymousBook = Book(title: "Mystery Novel", author: nil)
if let authorName = anonymousBook.author {
    print("Author: \(authorName)")
} else {
    print("Author information missing.")
}


// Step 1: Create a struct called "Book" with a title (String) and author (String?)



// Step 2: Declare an instance of "Book" with a title and an author


// Step 3: Print the author's name using optional chaining


// Step 4: Declare another instance of "Book" without an author and print author name


