import UIKit

/**
 *
 * Closures allow you to pass functions like variables
 *
 * @notes
 * Before solving a problem, identify what you are actually solving
 */

struct Item {
    var itemID: UUID // how would you best work with an int
    var price: Double
    var description: String
}


var items:[Item] = [
    Item(itemID: UUID(), price: 1, description: "Headphones"),
    Item(itemID: UUID(), price: 1, description: "Bag"),
    Item(itemID: UUID(), price: 1, description: "Mouse")
]

let text  = addItems3(to: &items, [
    Item(itemID: UUID(), price: 12.50, description: "Shoe"),
    Item(itemID: UUID(), price: 13.30, description: "Doll"),
    Item(itemID: UUID(), price: 10.00, description: "Suitcase"),
])

text.forEach { e in
    print(e)
}

//func addItems2(to whichArray: Array<Item>, _ items: [String]) {
//    var tempArray = whichArray
//    items.forEach { item in
//        let _item = Item(itemID: UUID(), price: 1, description: item)
//        tempArray.append(_item)
//    }
//
//    print(tempArray.count, whichArray.count)
//}
//
//print("Prints array of items not updated: \(items.count)")

/**
 *create a function that returns 6 items instead of 3
 */
func addItems3(to whichArray: inout Array<Item>, _ items: [Item]) -> [Item] {
    
    items.forEach { item in
        whichArray.append(Item(itemID: UUID(), price: 12, description: item.description))
    }
    
    //print(tempArray.count, whichArray.count)
    return whichArray
}

//print("Prints array of items updated: \(items.count)")
