//
//  ContentView.swift
//  Fruits
//
//  Created by software on 21/06/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    var fruits:[Fruit] = fruitData
    @State private var isShowingSettingsSheet:Bool = false
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List{
               
                ForEach(fruits) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                    }
                    
                }
            }//List
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action:{
                isShowingSettingsSheet = true
            }){
                Image(systemName: "slider.horizontal.3")
            }//Settings Btn
                .sheet(isPresented: $isShowingSettingsSheet){
                    Settingsview()
                }//Presenting Settings View
            )
            
        }//Navigation View
        .navigationViewStyle(.stack)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
