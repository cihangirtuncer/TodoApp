//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Cihangir Tuncer on 2.11.2022.
//

import SwiftUI

@main
struct TodoAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()
            }
               .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
