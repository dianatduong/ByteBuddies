//
//  defaultButton.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/22/24.
//

import SwiftUI

struct PrimaryBtn: View {
    
    var title: LocalizedStringKey
    var color1: Color
    var color2: Color
    
    var body: some View {
        
        Text(title)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .padding()
            .frame(width:350, height:50)
            .background {
                   RoundedRectangle(cornerRadius: 28, style:.continuous)
                       .fill(LinearGradient(colors: [color1, color2], 
                                            startPoint: .leading,
                                            endPoint: .trailing))
        }
    }
}

#Preview {
    PrimaryBtn(title: "Login", color1: Color.magenta1, color2: Color.hotPink)
}
