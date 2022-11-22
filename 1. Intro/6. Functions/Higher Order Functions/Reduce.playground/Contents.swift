import UIKit
import Foundation

/**
 * Takes a collection and produces a value.
 * This could mean it sums, concatenates, finds the max, min, oldest, newest, match etc
 */

var names = ["Bear", "Kyle", "Jenna", "Andrew", "Asd"]

// start value: "" -> Empty string
// NB: result needs to be the same type as your start value and ongoing value
let reduceVal = names.reduce("") { (ongoing, val1) -> String in
    return ongoing + val1 + " "
}

print(reduceVal)
