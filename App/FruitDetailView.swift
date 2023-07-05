//
//  FruitDetailView.swift
//  Fruits
//
//  Created by software on 29/06/2023.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - Properties
    var fruit:Fruit
    
    //MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack(alignment: .leading, spacing: 20) {
                    //Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment:.center, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[0])
                        
                        //Nutritional value
                        FruitNutrientsView(fruit: fruit)
                        
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        
                        //Nutrients
                        
                        //Sub Headline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //Link
                        SourceLinkView(title: "Content Source", linkTitle: "Wikepedia", link: "https://wikipedia.com", image: "arrow.up.right.square")
                            .padding(.horizontal,10)
                            .padding(.vertical,40)
                    }//VStack
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                }//VStack
                .navigationBarHidden(true)
            }//ScrollView
            .edgesIgnoringSafeArea(.top)
        }//Navigation View
        .navigationViewStyle(.stack)
    }
}

//MARK: - Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
