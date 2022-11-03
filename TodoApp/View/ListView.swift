//
//  ListView.swift
//  TodoApp
//
//  Created by Cihangir Tuncer on 2.11.2022.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
    ItemModel(title: "Hello", isCompleted: true),
    ItemModel(title: "What are you going", isCompleted: false),
    ItemModel(title: "Todo app", isCompleted: false),
    ItemModel(title: "This is app", isCompleted: true),
    ItemModel(title: "Awesome", isCompleted: false),
    ItemModel(title: "Mobile Application world", isCompleted: true)
    ]
    var body: some View {
        List{
            ForEach(items) { item in
                ListRowView(item:item)
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


