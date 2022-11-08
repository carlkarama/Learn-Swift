import UIKit

/// @source https://www.hackingwithswift.com/new-syntax-swift-2-guard
/// @note Swift's guard keyword lets us check an optional exists and exit the current scope if it doesn't, which makes it perfect for early returns in methods.
/// You use optionals in cases where the value might be empty


let age: Int = 10

func checkAge(age: Int) -> Bool {
    guard age > 18 else {
        return false
    }
    return true
}



