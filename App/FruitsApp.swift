//
//  FruitsApp.swift
//  Fruits
//
//  Created by software on 21/06/2023.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding:Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnBoardingView()
                
            }else{
                ContentView()
            }
            
        }
    }
}
