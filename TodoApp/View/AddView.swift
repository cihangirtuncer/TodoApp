//
//  AddView.swift
//  TodoApp
//
//  Created by Cihangir Tuncer on 2.11.2022.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText : String = ""
    var body: some View {
        ScrollView{
            VStack{
                TextField(text: $textFieldText) {
                    Text("Type something here...")
                }
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("SAVE")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                }
                .background(Color.accentColor)
                .cornerRadius(10)
                .buttonStyle(.borderless)

            }
            .padding(14)
        }
        .navigationTitle("Add an Item")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AddView()
        }
    }
}
