//
//  Smalll-DefaultButton.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/5/24.
//

import SwiftUI

struct IconBtnSmall: View {
    
    var icon: String
    var title: LocalizedStringKey
    var color1: Color
    var color2: Color

    
    var body: some View {
        
        
        Button(action: {
                 // Handle button tap
             }) {
                 HStack {
                     Image(icon)
                     
                     Text(title)
                         .font(.system(size: 16))
                         .foregroundColor(.white)
                     
                         .bold()
                     
                 }
                 .frame(width: 155, height: 40)
                 .background(LinearGradient(colors: [color1, color2],
                                            startPoint: .leading,
                                            endPoint: .trailing))
                 .cornerRadius(28)
                 
             }
            
        
    }
}

#Preview {
    IconBtnSmall(icon: "message-50", title: "Message", color1: Color.magenta1, color2: Color.pink)
}
