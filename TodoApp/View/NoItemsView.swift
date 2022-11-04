//
//  NoItemsView.swift
//  TodoApp
//
//  Created by Cihangir Tuncer on 4.11.2022.
//

import SwiftUI

struct NoItemsView: View {
    @State var animate : Bool = false
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you productive person? I think you should click the add button and add a bunch of items to your todo list!")
                NavigationLink(destination: AddView()) {
                    Text("Add Something")
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? Color.red : Color.accentColor)
                        .cornerRadius(10)
                }
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    func addAnimation() {
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            withAnimation(Animation
                .easeInOut(duration: 2.0)
                .repeatForever()){
                
                animate.toggle()
            }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}
