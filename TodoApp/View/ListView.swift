//
//  ListView.swift
//  TodoApp
//
//  Created by Cihangir Tuncer on 2.11.2022.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
    "This is awesome",
    "I like it",
    "This is so good",
    "Lets do it"
    ]
    var body: some View {
        List{
            ForEach(items, id: \.self) { item in
                ListRowView(title:item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List")
        .toolbar {
            ToolbarItem(id: "Edit", placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(id: "Add", placement: .navigationBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ListView()
        }
    }
}


