import UIKit
import Foundation

/**
 * A map basically converts a collection of a certain size into another collection of the same size.
 * I look at it as a way to extract certain details from collections. e.g. Getting company names from a collection of company instances/objects
 * I've got this array of this and I sure whish I could have an array and for each one of those get that (that being the function you want to perform)
 */

var names = ["Josh", "Sam", "Greg", "Bart", "Louis"]

let lens = names.map { (name) -> Int in
    name.count
}
print(lens)
