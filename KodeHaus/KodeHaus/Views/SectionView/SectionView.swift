//
//  Sections.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/4/24.
//

import SwiftUI

struct SectionView: View {
    
    var title: String
  @State var userInput = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(title)
                .font(.system(size: 18))
                .bold()
                .padding(.bottom, 10)
            
            TextField("", text: $userInput)
                .font(.system(size: 16))
                .lineLimit(nil) // Allow the text to wrap onto the next line
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.black)
        }
        .padding(30)
        .frame(width: 400, height: 150, alignment: .leading)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

struct SectionView_Previews: PreviewProvider {
    
    static var previews: some View {
        SectionView(title: "Technologies", userInput: "hello")
    }
}
