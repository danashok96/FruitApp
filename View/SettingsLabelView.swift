//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by software on 01/07/2023.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - Properties
    var labelText:String
    var labelimage:String
    
    //MARK: - Body
    var body: some View {
        HStack {
              Text(labelText.uppercased()).fontWeight(.bold)
              Spacer()
              Image(systemName: labelimage)
            }
    }
}

//MARK: - Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruits", labelimage: "info.circle")
            .previewLayout(.sizeThatFits)
    }
}
