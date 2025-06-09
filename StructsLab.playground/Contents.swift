// Step 1: Define the Book struct
// Add properties here (title, author, publicationYear)

struct Book {
    let title: String
    let author: String
    let publicationYear: Int
    
    func describe() {
        print("The book \(self.title) written by \(self.author) was published in \(self.publicationYear)")
    }
}


// Step 2: Create an instance of Book
// Set values for title, author, and publication year

var myBook = Book(title: "Swift Programming", author: "Apple", publicationYear: 2020)


// Step 3: Add a function to the Book struct
// This method should describe the book


// Step 4: Call the describe() function
          
myBook.describe()
          
// Mini Build Challenge: Define the Movie struct and movieInfo function
// Define the Movie struct
// Add properties for title, director, and release year
// Add the movieInfo() function

struct Movie {
    var title: String
    var director: String
    var releaseYear: Int
    
    func describe() {
        print("The movie \(self.title) directed by \(self.director) was published in \(self.releaseYear)")
    }
}


var Movie1 = Movie(title: "Swift Programming", director: "Apple", releaseYear: 2020)
Movie1.describe()
