//
//  PrimaryBtn100.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/7/24.
//

import SwiftUI

struct PrimaryBtn100: View {
    
    var title: LocalizedStringKey
    var color1: Color
    var color2: Color
    
    
    var body: some View {
        
        Text(title)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .padding()
            .frame(width: 350, height: 50)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(LinearGradient(colors: [color1, color2], startPoint: .leading, endPoint: .trailing))
            )
    }
}

#Preview {
    PrimaryBtn100(title: "Login", color1: Color.magenta1, color2: Color.hotPink)
}

