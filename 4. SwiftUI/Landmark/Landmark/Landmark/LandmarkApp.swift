//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Carl Karama on 7/11/22.
//

import SwiftUI

@main
struct LandmarkApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
