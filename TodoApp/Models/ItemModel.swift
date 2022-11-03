//
//  ItemModel.swift
//  TodoApp
//
//  Created by Cihangir Tuncer on 3.11.2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title : String
    let isCompleted : Bool
}
