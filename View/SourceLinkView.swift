//
//  SourceLinkView.swift
//  Fruits
//
//  Created by software on 29/06/2023.
//

import SwiftUI

struct SourceLinkView: View {
    //MARK: - Properties
    var title:String
    var linkTitle:String
    var link:String
    var image:String
    
    //MARK: - Body
    var body: some View {
        GroupBox(){
            HStack{
                Text(title)
                Spacer()
                Link(linkTitle, destination: URL(string: link)!)
                Image(systemName: image)
            }//HStack
        }//GroupBox
    }
}


//MARK: - Preview
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(title: "Content Source", linkTitle: "Wikepedia", link: "https://wikipedia.com", image: "arrow.up.right.square")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
