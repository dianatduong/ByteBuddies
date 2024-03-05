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
    @State private var selectedState = "California"
    
    var body: some View {
        
        VStack(spacing: 10){
            TextField("Name", text: $name)
                .textFieldStyling()
                .placeholder(when: name.isEmpty) {
                    Text("Name")
                        .foregroundColor(Color.btnGray3)
                }
            Rectangle()
                .frame(width: 350, height: 1)
                .foregroundColor(Color.btnGray2)
                .padding(.bottom, 20)
            
            TextField("Email", text: $email)
               
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
