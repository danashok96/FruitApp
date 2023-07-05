//
//  SettingsRowView.swift
//  Fruits
//
//  Created by software on 04/07/2023.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - Properties
     var name: String
     var content: String? = nil
     var linkLabel:String? = nil
     var linkDestination:String? = nil
    
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading,spacing:5) {
            HStack(spacing: 150){
                        
                        Text(name)
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                    if content != nil {
                        Text(content!)
                    } else if(linkLabel != nil && linkDestination != nil){
                        HStack(spacing:5){
                            Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                            Image(systemName: "arrow.up.right.square")
                                .imageScale(.small)
                        }
                        
                    }else {
                        /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                    }
                        
                        
                    
                    
            }
        }
        
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer")
            .previewLayout(.sizeThatFits)
    }
}
