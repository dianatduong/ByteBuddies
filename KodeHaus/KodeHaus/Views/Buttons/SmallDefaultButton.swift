//
//  Smalll-DefaultButton.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/5/24.
//

import SwiftUI

struct SmallDefaultButton: View {
    
    var icon: String
    var title: LocalizedStringKey

    
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
                 .background(LinearGradient(colors: [Color.magenta, Color.pink],
                                            startPoint: .leading,
                                            endPoint: .trailing))
                 .cornerRadius(28)
                 
             }
            
        
    }
}

#Preview {
    SmallDefaultButton(icon: "message-50", title: "Message")
}
