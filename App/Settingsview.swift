//
//  Settingsview.swift
//  Fruits
//
//  Created by software on 01/07/2023.
//

import SwiftUI

struct Settingsview: View {
    //MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding:Bool = true
    
    //MARK: - Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack(spacing: 20) {
                    
                    //MARK: -Section 1
                    GroupBox(label:
                       SettingsLabelView(labelText: "Fruit", labelimage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center,spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(10)
                            Text("Most fruits are natuarally low in fat,sodium & calories.None have cholestreol.Fruits are sources of many essential nutrientsincluding postassium ,ditery fiber,vitamins and much more.")
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        
                        
                    }
                    //MARK: -Section 2
                    
                    GroupBox(label:SettingsLabelView(labelText: "CUSTOMIZATION", labelimage: "paintbrush")){
                        Divider().padding(.vertical,5)
                        Text("If you wish you can restart the application by toggle the switch in the box.That way it starts the onboarding process and you will see the welcome screen again")
                            .padding(.vertical,5)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn:$isOnboarding){
                            if isOnboarding {
                                Text("restarted".uppercased())
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("restart".uppercased())
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.secondary)
                            }
                        }//Toggle
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                        )
                    }
                    //MARK: -Section 3
                    GroupBox(label:SettingsLabelView(labelText: "APPLICATION", labelimage: "")){
                        Divider().padding(.vertical,5)
                        
                            SettingsRowView(name: "Developer", content:"Dan Ashok")
                        SettingsRowView(name: "Designer", content: "Abc Design")
                        SettingsRowView(name: "Compatibility", content: "iOS 16")
                        SettingsRowView(name: "Website",linkLabel: "apple.com",linkDestination:"developer.apple.com/account")
                        SettingsRowView(name: "Twitter",linkLabel: "twitter.com",linkDestination:"developer.apple.com/account")
                        SettingsRowView(name: "SwiftUI", content: "                 2.0")
                        SettingsRowView(name: "Version", content: "              1.0.3")
                            
                    }//2nd Group Box
                    
                }
                
            }//Scroll View
            .navigationTitle("Settings")
            .navigationBarItems(trailing:
                                    Button(action:{
                presentationMode.wrappedValue.dismiss()
                print("Dismiss Settings view")
            }){
                Image(systemName: "xmark")
            }
            )
            
        }//Navigation View
        
    }
}

//MARK: - Preview
struct Settingsview_Previews: PreviewProvider {
    static var previews: some View {
        Settingsview()
    }
}
