import UIKit


struct User {
    
    var nickname: String?
}

let newUser = User()

// if let example
func showSpecialGreetingIfNeeded() {
    
    if let nickName = newUser.nickname {
        // do operation if they have a nickname
    }
}

// guard example
func showSpecialGreetingIfNeeded2() {
    
    // also known as an early return
    // checking if the username even exists
    guard let nickname != nil else { return }
}

// guard example 2

func showSpecialGreetingIfNeeded3() {
    guard let nickname = newUser.nickname else { return }
}

