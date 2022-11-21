import UIKit
import Foundation

/**
    Higher-Order Functions: A function that takes one or more closures as a function and returns a closures
 */





/**
 * Passing closures as a type
 */

func stringify(val1: String, val2: Int) -> String {
    return val1 + "\(val2)"
}

func usesStringFactory(stringFunc: (String, Int) -> String) -> String {
    return stringFunc("Number: ", 11)
}
 
let aFunc: (String, Int) -> String = stringify

// we can use the direct call to stringify
print(usesStringFactory(stringFunc: stringify))

// we can assign stringify to a variable aFunc and print that out instead
print(usesStringFactory(stringFunc: aFunc))


/**
 Type Aliases for Types
    - A way to reduce the verbose nature of closures.
 */

typealias CombinesToStrings = (String, Int) -> String

func stringify2(val1: String, val2: Int) -> String {
    return val1 + "\(val2)"
}

func usesStringFactory2(stringFunc2: CombinesToStrings) -> String {
    return stringFunc2("Number: ", 11)
}

let aFunc2: CombinesToStrings = stringify2

print(usesStringFactory2(stringFunc2: stringify2))
print(usesStringFactory2(stringFunc2: aFunc2))
