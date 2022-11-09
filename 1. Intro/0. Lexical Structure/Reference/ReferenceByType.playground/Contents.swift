import Foundation

/**
 * When it comes to using a class, data is copied by reference, meaning data has a single copy.
 * A good example is below changing the object firstName to Yang will alter the carl object.
 * The first attempt at printing carl object will output "Carl Karama" and the second attempt will output "Yang Karama"
 * Since yang  and carl access the same memory, the alteration of one object affects the other
 */
class User {
    
    var firstName: String
    var lastName: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var carl = User(firstName: "Carl", lastName: "Karama")
print(carl.fullName)

var yang = carl
yang.firstName = "Yang"

print(carl.fullName)
