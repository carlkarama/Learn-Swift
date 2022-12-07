import UIKit

protocol Weapons {
    var name: String { get }
}

protocol Fireable {
    var magazineSize: Int { get }
}

protocol Cuttable {
    var weight: Double { get }
    var steel: String { get }
}

struct AK47: Weapons, Fireable, Cuttable {
    
    var magazineSize: Int
    
    var weight: Double
    
    var steel: String
    
    var name: String
    
    var canFire: Bool
    
    var canCut: Bool
    
    
}

extension Weapons {
    var canFire: Bool { return self is Fireable }
    var canCut: Bool { return self is Cuttable }
}
