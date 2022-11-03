//
//  ListRowView.swift
//  TodoApp
//
//  Created by Cihangir Tuncer on 2.11.2022.
//

import SwiftUI

struct ListRowView: View {
    let item : ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? Color.green : Color.red)
            Text(item.title)
                .font(.headline)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1  = ItemModel(title: "", isCompleted: false)
    static var item2  = ItemModel(title: "ssss", isCompleted: false)
    static var previews: some View {
        Group{
            ListRowView(item : item1)
            ListRowView(item : item2)

        }
        
    }
}
