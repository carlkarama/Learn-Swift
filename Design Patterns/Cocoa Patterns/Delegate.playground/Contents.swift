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
    
    func requestBoards() {
        TrelloServiceGet.sharedInstance.getBoardsRef { (res, data) in
            
            if res == nil, let dataEx = data
                for(_, elemData) in data.enumerated() {
                let initi = TrelloBoardModel(dict: elemData)
                print(initi.id)
                self.boardsArr.append(initi)
                DispatchQueue.main.async {
                    self.boardsCollectionView.delegate = self
                    self.boardsCollectionView.dataSource = self
                    self.boardCollectionView.reloadData()
                }
            }
            
        }
    }
}


let sender = SenderClass()
let delegate = DelegateClass()

sender.delegate = delegate
sender.sendDelegateMessage()



