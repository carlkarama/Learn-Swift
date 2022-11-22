import UIKit
import Foundation

/**
 * Filter is about removing items from collection.
 *
 */

var names: [String] = ["Kylie", "Jane", "Bob", "Clarence", "Charlie"]

// return true to keep the item
let longerNames = names.filter { (name) -> Bool in
    return name.count > 4
}


/**
 * Use the properties of an object to formulate the desired output
 */

var numbers = [1,2,4,5,2,5,3]

let greaterThanNumbers = numbers.filter { (number) -> Bool in
    return number > 4
}
