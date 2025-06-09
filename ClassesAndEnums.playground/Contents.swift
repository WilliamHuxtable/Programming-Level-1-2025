// MARK: - Welcome to Classes & Enums
// Let's explore the basics of Swift classes and enums!
// Follow along with the tasks below and modify the code to see how it works.

// MARK: - Classes

// Example: A simple Car class
class Car {
    var make: String
    var model: String
    var year: Int

    // Initializer to set up the car
    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
    }

    // Method to describe the car
    func description() -> String {
        return "\(year) \(make) \(model)"
    }

}

// TASK 1: Create a Person class
// TODO: Create a class called "Person" with:
// - Properties: name (String), age (Int)
// - A method called "greet()" that prints "Hello, my name is [name]."

// Uncomment below and complete!
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func greet() -> String {
        return ("Hello, my name is \(name) and I am \(age) years old!")
    }
    
    func suggestActivity(weather: Weather) -> String {
        switch weather{
        case.sunny:
            return "You should take a nice walk outside."
        case.cloudy:
            return "You should play some indoor basketball."
        case.rainy:
            return "You should watch some TV."
        case.stormy:
            return "You should take a nap."
        }
    }
}

let person = Person(name: "Ali", age: 17)
print(person.greet())
print(person.suggestActivity(weather: .sunny))
// MARK: - Enums

// Example: Direction enum
enum Direction {
    case north
    case south
    case east
    case west
}

// Use an enum instance
let currentDirection = Direction.north
print("We are heading \(currentDirection).")

// TASK 2: Create a Weather enum
// TODO: Define an enum called "Weather" with cases:
// - sunny, rainy, cloudy, stormy
// Write a function that gives advice based on the weather using a switch statement.

// Uncomment below and complete!
enum Weather {
    case sunny, rainy, cloudy, stormy
}

let weatherAdvice: Weather = .rainy

switch weatherAdvice {
    case.sunny:
        print("We should play outside!")
    case.rainy:
        print("We should not play outside.")
    case.cloudy:
        print("We should maybe play outside")
    case.stormy:
        print("We should definitely not play outside.")
}




// MARK: - Combining Classes & Enums

// Example: Using enums in a class
class Journey {
    var destination: String
    var direction: Direction

    init(destination: String, direction: Direction) {
        self.destination = destination
        self.direction = direction
    }

    func journeyDetails() -> String {
        return "Heading \(direction) to \(destination)."
    }
}

// TASK 3: Combine Person and Weather
// TODO: Add a method to "Person" that suggests an activity based on the weather.
// Use the "Weather" enum as a parameter.





// MARK: - Advanced: Inheritance

// Example: Subclassing a class
class ElectricCar: Car {
    var batteryLife: Int

    init(make: String, model: String, year: Int, batteryLife: Int) {
        self.batteryLife = batteryLife
        super.init(make: make, model: model, year: year)
    }

    override func description() -> String {
        return "\(super.description()) with \(batteryLife)% battery life."
    }
}

// TASK 4: Create a subclass of Person
// TODO: Subclass "Person" to create "Student":
// - Add a property called "grade".
// - Override the "greet()" method to include the grade in the greeting.
