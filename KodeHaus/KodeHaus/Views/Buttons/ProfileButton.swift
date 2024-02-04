//
//  ProfileButton.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/4/24.
//


import SwiftUI

struct ProfileButton: View {
    
    @State var isPressed = false
    
    var title: LocalizedStringKey
    var backgroundColor: UIColor
    
    var body: some View {
        
        Text(title)
            .foregroundColor(.black)
            .fontWeight(.semibold)
            .padding()
            .background(isPressed ? Color.btnGray3.opacity(0.9) : Color.btnGray3)
            .frame(minWidth: 0, maxWidth: .infinity)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: isPressed ? 2 : 0)
            //.border(isPressed ? Color.white : Color.clear, width: 2)
            .scaleEffect(isPressed ? 0.90 : 1.0)
    
        .onTapGesture {
            isPressed.toggle()
        }
}
    
}

struct ProfileButton_Previews: PreviewProvider {
    
    static var previews: some View {
        ProfileButton(title: "Projects", backgroundColor: .btnGray1)
    }
}
