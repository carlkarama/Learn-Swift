import UIKit
import Foundation

var names = ["Bear", "Kyle", "Jenna", "Andrew"]

names.forEach { (name) in
    print(name)
}

names.enumerated().forEach { (tup) in
    print(tup.element + " \(tup.offset)")
}

// this exmaple decomposes the tuple
names.enumerated().forEach { (tup2) in
    let (val, num) = tup2
    print("Value: \(val)", "Num: \(num)")
}

// you can also decompose them like this
names.enumerated().forEach { (num, val) in
    print("Value: \(val)", "Num: \(num)")
}
