//
//  ListView.swift
//  TodoApp
//
//  Created by Cihangir Tuncer on 2.11.2022.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel : ListVieModel
    var body: some View {
        List{
            ForEach(listViewModel.items) { item in
                ListRowView(item:item)
                    .onTapGesture {
                        withAnimation(.linear){
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
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
        .environmentObject(ListVieModel())
    }
}


