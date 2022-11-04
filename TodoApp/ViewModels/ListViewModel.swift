//
//  ListViewModel.swift
//  TodoApp
//
//  Created by Cihangir Tuncer on 4.11.2022.
//

import Foundation

class ListVieModel : ObservableObject{
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems(){
        let newItems = [
            ItemModel(title: "Hello", isCompleted: true),
            ItemModel(title: "What are you going", isCompleted: false),
            ItemModel(title: "Todo app", isCompleted: false),
            ItemModel(title: "This is app", isCompleted: true),
            ItemModel(title: "Awesome", isCompleted: false),
            ItemModel(title: "Mobile Application world", isCompleted: true)
            ]
        items.append(contentsOf: newItems)
    }
    func deleteItem(indexSet : IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title : String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel){
        
      //   let index = items.firstIndex(where: { (existingItem) -> Bool in
      //      return existingItem.id == item.id
      //  })
        
       if let index = items.firstIndex(where: {$0.id == item.id} ){
           items[index] = item.updateCompletion()
       }
    }
    
}
