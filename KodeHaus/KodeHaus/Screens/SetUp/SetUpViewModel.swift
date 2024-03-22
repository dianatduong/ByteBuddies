//
//  SetUpView.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/22/24.
//

import SwiftUI

class SetUpViewModel: ObservableObject {
    
    @StateObject var viewModel = LoginViewModel()
    
    @Published var fullName = ""
    @Published var techRole = ""
    @Published var location = ""
    
    var body: some View {
        VStack {
            Text("Let's Setup Your Profile")
            
            VStack(spacing: 12) {
                // Personal Info
                Text("About Me:")
                    .textCase(.uppercase)
                    .font(Font.system(size: 16, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 0)
                    .padding(.bottom, 5)
                
                // Name
                CustomTextField(bindValue: $fullName, fieldName: "Name", color: Color.btnGray1, frameHeight: 2, type: .text)
                
                // Tech Role
                CustomTextField(bindValue: $techRole, fieldName: "Tech Role", color: Color.btnGray1, frameHeight: 2, type: .text)
                
                // City/State
                CustomTextField(bindValue: $location, fieldName: "City/State", color: Color.btnGray1, frameHeight: 2, type: .text)
            } // End of Personal Info Section
            .padding(.top, 10)

        }
    }
}



