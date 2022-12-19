import UIKit
import Foundation


protocol Delegate {
    
    func delegateMethod()
}

public class DelegateClass: Delegate {
    
    func delegateMethod() {
        // perform something
    }
}

class SenderClass {
    
    var delegate: Delegate?
    
    func sendDelegateMessage() {
        delegate?.delegateMethod()
    }
}


let sender = SenderClass()
let delegate = DelegateClass()

sender.delegate = delegate
sender.sendDelegateMessage()



