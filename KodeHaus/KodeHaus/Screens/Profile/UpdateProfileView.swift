//
//  UpdateProfileView.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/4/24.
//

import SwiftUI

struct UpdateProfileView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var location = ""
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            CustomTextField(bindValue: $name, fieldName: "Name" , color: Color.btnGray1, frameHeight: 2, type: .text)

            CustomTextField(bindValue: $email, fieldName: "Email" , color: Color.btnGray1, frameHeight: 2, type: .text)
            
            CustomTextField(bindValue: $location, fieldName: "City/State" , color: Color.btnGray1, frameHeight: 2, type: .text)
               
            Spacer()
           // StatePicker()
        } //end vstack
        .frame(width: 350)
    }
}


struct UpdateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateProfileView()
    }
}
