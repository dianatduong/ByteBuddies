//
//  PrimaryBtn-Small.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/6/24.
//

import SwiftUI

struct PrimaryBtnSmall: View {
    
    var title: LocalizedStringKey
    var color1: Color
    var color2: Color
    
    
    var body: some View {
        
        
        Button(action: {
            // Handle button tap
        }) {
            Text(title)
                .font(.system(size: 16))
                .foregroundColor(.white)
            
                .bold()
            
            
                .frame(width: 155, height: 40)
                .background(LinearGradient(colors: [color1, color2],
                                           startPoint: .leading,
                                           endPoint: .trailing))
                .cornerRadius(28)
        }
        .padding(.vertical, 10)
    }
}

#Preview {
    PrimaryBtnSmall(title: "Example", color1: Color.magenta1, color2: Color.pink)
}
