//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Cihangir Tuncer on 2.11.2022.
//

import SwiftUI

@main
struct TodoApp: App {
    let persistenceController = PersistenceController.shared
   @StateObject var listViewModel : ListVieModel = ListVieModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()
            }
               .environment(\.managedObjectContext, persistenceController.container.viewContext)
               .environmentObject(listViewModel)
        }
    }
}
