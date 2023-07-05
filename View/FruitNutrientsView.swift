//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by software on 30/06/2023.
//

import SwiftUI


struct FruitNutrientsView: View {
    //MARK: - Properties
    var fruit:Fruit
    var nutrients = ["Energy","Sugar","Fat","Protiens","Vitamins","Minerals"]
    
    
    //MARK: - Body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100 gm"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical,5)
                    
                    HStack{
                        Image(systemName: "info.circle")
                            .foregroundColor(fruit.gradientColors[1])
                        Text("\(nutrients[item]) : \(fruit.nutrition[item])")
                            .multilineTextAlignment(.leading)
                    }
                    
                    
                }
                .padding(.leading,5)
            }//Disclosure Box
            
            
        }//GroupBox
       
    }
}


//MARK: - Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitData[0])
            .previewLayout(.fixed(width: 375, height: 480))
    }
}
