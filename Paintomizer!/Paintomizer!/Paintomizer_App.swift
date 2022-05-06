//
//  Paintomizer_App.swift
//  Paintomizer!
//
//  Created by Benjamin Ethan Levy on 5/6/22.
//

import SwiftUI

@main
struct Paintomizer_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
