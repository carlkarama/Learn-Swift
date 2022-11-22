import UIKit
import Foundation

/**
 * Combines Map and Filter on a collection.
 * Let's say you have your array of names, and you want to map them to the lengths, but only for the ones that are longer than four. This is where CompactMap kicks in.
 * We'll first do the old fashioned way then implement a more efficient way
 */

var names = ["Jeu", "Catos", "Miguel", "Lopez"]

// we want to first remove elements from the collection names that are less than 4
let longerNames = names.filter { (name) -> Bool in
    return name.count < 4
}

// then we want to convert the filtered instances that remain into ints
let lengths = names.map { (name) -> Int in
    return name.count
}

// we take the converted collection and display them
print(lengths)

// Now looking at the above method, it's a bit tedious and this can be simplified into one line
let length2 = names.compactMap { (name) -> Int? in
    return name.count > 4 ? name.count : nil
}


