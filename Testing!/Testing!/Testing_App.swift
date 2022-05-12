//
//  Testing_App.swift
//  Testing!
//
//  Created by Benjamin Ethan Levy on 5/12/22.
//

import SwiftUI

@main
struct Testing_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
