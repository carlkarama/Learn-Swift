import UIKit

class Car {
    
    var model: String
    
    init(model: String) {
        self.model = model
    }
    
    static func maker() {
        print("Self with capital implementation")
    }
}

struct Car2 {
    var model: String
    
    func maker() {
        print("self with lowercase implementation")
    }
}


// accessing the static implementation
Car.maker()

// accessing the instance of the class implementation
var car = Car(model: "XTF-5")

print(car.model)


var car2 = Car2(model: "XTF-6")

print(car2.model)
