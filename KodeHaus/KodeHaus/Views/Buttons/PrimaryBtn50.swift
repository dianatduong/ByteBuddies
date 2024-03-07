//
//  defaultButton.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/22/24.
//

import SwiftUI

struct PrimaryBtn50: View {
    
    var title: LocalizedStringKey
    var color1: Color
    var color2: Color
    
    
    var body: some View {
        
        Text(title)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .padding()
            .frame(width: 175, height: 50)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(LinearGradient(colors: [color1, color2], startPoint: .leading, endPoint: .trailing))
            )
    }
}

#Preview {
    PrimaryBtn50(title: "Login", color1: Color.magenta1, color2: Color.hotPink)
}
