//: ## Introduction to Loops
//: Loops allow us to repeat a block of code multiple times, which is super helpful when we want to avoid writing repetitive code.
//: There are three main types of loops in Swift:
//:
//: - `for-in` loops
//: - `while` loops
//: - `repeat-while` loops

//: ## For-In Loops
//: Let's start with `for-in` loops. These are great when you know how many times you want to repeat an action.

print("For-In Loop Example:")
for number in 1...10 {
    print("This is loop iteration number \(number)")
}

//: Try it yourself: Change the range (1...5) to another range, like 1...10, and observe what happens!

//: ### Exercise 1: For-In Loop
//: Modify the loop below to print the squares of numbers from 1 to 10.

for number in 1...10 {
    print("The square of \(number) is \((number)*(number))")
    // Print the square of the number
}

//: ## While Loops
//: `While` loops are used when you don't know in advance how many times the code should run. They continue looping as long as a condition is true.

print("\nWhile Loop Example:")
var counter = 1
while counter <= 8 {
    print("Counter is now \(counter)")
    counter += 1
}

//: Try it yourself: Change the condition to stop the loop when `counter` reaches 8.

//: ### Exercise 2: While Loop
//: Write a `while` loop that doubles a number until it exceeds 100.

print("\nWhile Loop Example 2:")
var value = 1
while value <= 100 {
    print("Counter is now \(value)")
    value *= 2
}

// Write your loop here

//: ## Repeat-While Loops
//: `Repeat-while` loops are similar to `while` loops, but they always execute the code at least once before checking the condition.

print("\nRepeat-While Loop Example:")
var repeatCounter = 1
repeat {
    print("This is repeat iteration \(repeatCounter)")
    repeatCounter += 1
} while repeatCounter <= 3

//: ### Exercise 3: Repeat-While Loop
//: Write a `repeat-while` loop that prints numbers starting from 10 and decreases by 2, stopping when it reaches 0 or lower.

print("\nRepeat-While Loop Example 2:")
var start = 10
repeat {
    print("This is another repeat iteration \(start)")
    start -= 2
} while start >= 0
// Write your loop here

//: ## Nested Loops
//: Loops can be nested to perform more complex tasks. Here's an example:

print("\nNested Loops Example:")
for i in 1...3 {
    for j in 1...2 {
        print("i = \(i), j = \(j)")
    }
}

//: ### Exercise 4: Nested Loops
//: Write a nested loop to print a multiplication table for numbers 1 through 5.

for i in 1...5 {
    for j in 1...12 {
        print("Product of \(i) and \(j) = \(i*j)")
    }
}

//: ## Infinite Loops and Breaking Out
//: Be careful to avoid creating infinite loops! You can also use the `break` statement to exit a loop early.

print("\nBreaking Out of a Loop:")
for number in 1...10 {
    print("\(number)")
    if number == 5 {
        print("Exiting loop early at \(number)")
        break
    }
}

//: ## Wrap-Up
//: Loops are powerful tools for automating repetitive tasks and handling large data sets. Practice writing different types of loops and experiment with the exercises above!

func isPrime(number: Int) -> Bool {
    if [1, 2, 3].contains(number) {
        return true
    }
    
    for i in 2...number/2 {
        if number % i == 0 {
            return false
        }
    }
    
    return true
}

for i in 1...100 {
    print(isPrime(number: i) ? "\(i) is prime" : "\(i) is not prime")
}
