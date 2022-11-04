import UIKit
import Foundation



/**
 *  @topic How to use trailing closures and shorthand syntax
 *  @source https://www.hackingwithswift.com/quick-start/beginners/how-to-use-trailing-closures-and-shorthand-syntax
 */


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let sorted = team.sorted { a, b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }
    return a < b
}
