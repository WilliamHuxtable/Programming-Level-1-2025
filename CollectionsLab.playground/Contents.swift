
// Task 1: Arrays

print("Arrays")

// Step 1: Create an array of fruits (Atleast 3 elements)

var fruits = ["Apple", "Banana", "Orange"]

// Step 2: Print the array

print("1. \(fruits)")

// Step 3: Change the second fruit

fruits[1] = "Mango"
print("2. \(fruits)")

// Step 4: Add a new fruit

fruits.append("Grapes")
print("3. \(fruits)")

// Step 5: Remove the first fruit

fruits.remove(at: 0)
print("4. \(fruits)")


/*
Question 1: The second fruit in the array is now mango.
Question 2: Apple gets removed and mango becomes the first fruit.
*/



// Task 2: Dictionaries

print("Dictionaries:")

// Step 1: Create a dictionary with names and ages (Atleast 3 elements)

var friends = ["Alice": 25, "Bob": 30, "Charlie": 22]

// Step 2: Print the dictionary

print("1. \(friends)")

// Step 3: Add a new friend

friends["David"] = 27
print("2. \(friends)")

// Step 4: Update one friend's age

friends["Alice"] = 26
print("3. \(friends)")

// Step 5: Remove a friend

friends.removeValue(forKey: "Bob")

/*
Question 1: Look at the dictionary to find the friends age. Use friends["String (Name)"] = Int (Age) to change the friends age.
Question 2: The friend's age changes in the dictionary.
*/

// Task 3: Sets

print("Sets")

// Step 1: Create a set of numbers

var numbers: Set = [1, 2, 3, 4, 5]

// Step 2: Print the set

print("1. \(numbers)")

// Step 3: Try to add a duplicate number

numbers.insert(3)
print("2. \(numbers)")

// Step 4: Remove a number

numbers.remove(1)
print("3. \(numbers)")

/*
Question 1: No, you cannot have duplicates in a set.
Question 2: Nothing happens when you try to add a duplicate number.
*/

/*
Question 1: Arrays, dictionaries, and sets are all types of collections. Arrays are ordered and allow duplicate values. Dictionaries are unordered and allow duplicate key-values but not keys. Sets are unordered and don't allow duplicate values.
Question 2:
Use arrays if:
- Order matters
- You want to store duplicate values
Use dictionaries if:
- Order doesn't mattter
- You don't need duplicate values stored
- If you want key-values assigned to your values
Use sets if:
- Order doesn't matter
- You don't need duplicate values stored
 */
