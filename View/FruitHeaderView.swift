//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by software on 29/06/2023.
//

import SwiftUI

struct FruitHeaderView: View {
    
    //MARK: - Properties
    var fruit:Fruit
    @State private var isAnimation: Bool = false
    
    
    //MARK: - Body
    var body: some View {
        ZStack{
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 8,x: 6,y: 8)
                .padding(.vertical,20)
                .scaleEffect(isAnimation ? 1.0:0.6)
                
        }//ZStack
        .frame(height:440)
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimation = true
            }
        }
    }
}

//MARK: - Preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
