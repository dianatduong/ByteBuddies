//
//  CreateAccountView.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/6/24.
//

import SwiftUI


struct CreateAccountView: View {
    
    @State var emailLogin = ""
    @State var passwordLogin = ""
    
    
    var body: some View {
        
   

        VStack {
            KHName()
            
            Text("Welcome to KodeHaus!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .foregroundColor(.black)
                .padding(.top, 80)
                .padding(.bottom, 10)
            
            Text("Enter your email and password to create an account.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
           
        }
        .padding(.top, 40)
        .padding(.bottom, 80)
        
        VStack {
            TextField("Email", text: $emailLogin)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.none)
                .disableAutocorrection(true)
                .foregroundColor(.black)
                Rectangle()
                    .frame(height: 3)
                    .foregroundColor(Color.magenta)
                    .padding(.bottom, 30)

            SecureField("Password", text: $passwordLogin)
                .foregroundColor(.black)
                Rectangle()
                    .frame(height: 3)
                    .foregroundColor(Color.magenta)
                    .padding(.bottom, 20)
            }
        .frame(width: 350, alignment: .leading)
            
        Spacer()
        
            Button(action: {
                   print("Button tapped!")
            }) {
               SecondaryBtn(title: "Create an Account")
        }
        
       
    }
    
}


#Preview {
    CreateAccountView()
}
