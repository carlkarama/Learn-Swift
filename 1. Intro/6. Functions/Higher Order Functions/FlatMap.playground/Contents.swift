import UIKit
import Foundation

/**
 * Flat map is what CompactMap used to be called.
 * So, FlatMap is what CompactMap used to be called in previous versions of Swift.
 * Now, it's called CompactMap for all the collections, but FlatMap is still around.
 * You can call FlatMap on Optionals. You can think of it as a single element mapping,
 * or a single element compact mapping actually, because you can return nil.
 * So you have an Optional and you want to get something out of it, but you may return a nil, you can use FlatMap. To be honest, I don't use it that often, but I definitely want to cover it.
 */

// A simple use case of flatMap is returning the total number of characters in the string below if it's an optional
let someVal: String? = "some string"

let someMap = someVal.flatMap { (name) -> Int? in
    return name.count > 5 ? name.count : nil
}


print(someMap)
