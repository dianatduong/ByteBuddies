//
//  ProfileButton.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/4/24.
//


import SwiftUI

struct ProfileButton: View {
    
    var title: LocalizedStringKey
    var backgroundColor: UIColor
    
    var body: some View {
        
        Text(title)
            .foregroundColor(.black)
            .fontWeight(.semibold)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Color(backgroundColor))
            .clipShape(RoundedRectangle(cornerRadius: 22))
    }
}

struct ProfileButton_Previews: PreviewProvider {
    
    static var previews: some View {
        ProfileButton(title: "Projects", backgroundColor: .btnGray1)
    }
}
