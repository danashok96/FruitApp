//
//  OnBoardingView.swift
//  Fruits
//
//  Created by software on 24/06/2023.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: -Properties
    
    var fruits:[Fruit] = fruitData
    
    //MARK: -Body
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
        }//TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: -Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
