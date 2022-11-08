import UIKit
import Foundation

/// didSet and willSet are observers that track a change in value for any variable

class Preferences {
    
    // singleton instance whereby the preferences should be shared for the lifetime of the app to everyone
    static let shared = Preferences()
    
    // isPurchased property should live even after the life of the app so when the user kills the app, the variable does not change because it's stored on the disk
    var isPurchased: Bool = UserDefaults.standard.bool(forKey: "is_purchased") {
    
        didSet {
            UserDefaults.standard.set(isPurchased, forKey: "is_purchased")
        }
    }
}

struct TestSets {
    
    var price: Int {
        
        willSet {
            print("WILLSET: Will change the value from \(price) to \(newValue)")
        }
        
        didSet {
            print("DIDSET: Changed value to \(price)")
        }
    }
}


var t = TestSets(price: 0)
t.price = 15
t.price = -15

print(t.price)




