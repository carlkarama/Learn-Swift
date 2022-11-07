//
//  Landmark.swift
//  Landmark
//
//  Created by Carl Karama on 7/11/22.
//

import Foundation
import SwiftUI

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
