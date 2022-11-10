import UIKit
import Foundation


// create search function that returns a boolean

public func search(song track: String) -> Int {
    
    let songlist: [String] = ["Cannot wait", "Fullstop", "Ye"]
    let tempTrack = track
    
    for searchingTrack in songlist {
        if searchingTrack == tempTrack {
            return 1
        }
    }
    return 0
}

// create a variable that stores the letter we'll use to search through our song list

var track = "Ye vs The People"

// create a variable that can store the function

let foundSong = search(song: track)

//
let add: (Int, Int) -> Int = { $0 + $1 }


// remove function name that you are passing in
