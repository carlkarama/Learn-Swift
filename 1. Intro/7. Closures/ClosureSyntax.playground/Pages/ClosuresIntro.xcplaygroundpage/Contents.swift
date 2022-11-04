//: [Previous](@previous)

import Foundation

/**
 * @note closures allow you to pass functions around as variables
 * @source https://www.hackingwithswift.com/quick-start/beginners/how-to-create-and-use-closures
 * @summary closures allow us to customise code 
 */

//Anonymous Function example
let sayHello = {
    print("Hello closure")
}

sayHello()

// when assigning closures to a variable, you don't need to add the paranethesis to the function
let hello = sayHello

hello()


// Example 2
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)


/**
 * Here we want to have more control on the sort. Imagine Suzanne is the team captain and you want her to be first
 * So we are going to pass this function in another function
 */
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)

// prints out suzanne first
print(captainFirstTeam)

/**
 So far you've seen
    - Functions being passed into variables
    - Functions passed into other functions
  But say we could combine the above two together below
 @code in keyword marks the start of the closure
 */

let captainFirstTeam3 = team.sorted(by: { ( name1: String, name2: String ) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})
