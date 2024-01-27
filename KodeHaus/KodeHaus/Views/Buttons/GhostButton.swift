//
//  ghostButton.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/22/24.
//

import SwiftUI

struct GhostButton: View {
    
    var title: LocalizedStringKey
    
    var body: some View {
        
        Text(title)
            .foregroundColor(.magenta)
            .fontWeight(.semibold)
            .padding()
            .frame(width:350, height:50)
            .background(
                RoundedRectangle(cornerRadius: 28)
                    .fill(Color.clear)
                    .overlay(
                        RoundedRectangle(cornerRadius: 28)
                            .stroke(LinearGradient(colors: [Color.magenta, Color.blue2], startPoint: .leading, endPoint: .trailing), lineWidth: 3)
                    )
            )
    }
}

struct GhostButton_Previews: PreviewProvider {
    
    static var previews: some View {
        GhostButton(title: "Create an Account")
    }
}


