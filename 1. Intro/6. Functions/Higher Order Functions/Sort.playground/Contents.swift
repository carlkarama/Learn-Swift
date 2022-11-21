import UIKit
import Foundation

var names = ["Bear", "Kyle", "Jenna", "Andrew"]

// sort is a higher order function because it takes a closure as a parameter and returns a function
names.sort(by: >)

// assinging the sort crosses out the potential to use other methods that don't have a return type
let sortedNames = names.sorted(by: <)
 
print(names)
 
