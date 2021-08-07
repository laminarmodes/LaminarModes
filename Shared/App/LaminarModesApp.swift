//
//  LaminarModesApp.swift
//  Shared
//
//  Created by Anya Traille on 7/8/21.
//

import SwiftUI

@main
struct LaminarModesApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(Reference()) //TODO: Temporary Persistence (Remove this later)
        }
    }
}
