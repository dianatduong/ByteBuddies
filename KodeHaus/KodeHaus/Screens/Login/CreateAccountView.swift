//
//  CreateAccountView.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/6/24.
//

import SwiftUI


struct CreateAccountView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        

        VStack {
            KHName()
            
            Text("Welcome to KodeHaus!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .foregroundColor(.black)
                .padding(.top, 80)
                .padding(.bottom, 5)
            
            Text("Enter your email and password to create an account.")
                .font(.system(size: 20))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.leading, 50)
                .padding(.trailing, 50)
           
        }
        .padding(.top, 40)
        .padding(.bottom, 80)
        
        VStack {
            TextField("Email", text: $viewModel.emailLogin)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.none)
                .disableAutocorrection(true)
                .foregroundColor(.black)
                Rectangle()
                    .frame(height: 3)
                    .foregroundColor(Color.magenta)
                    .padding(.bottom, 30)

            SecureField("Password", text: $viewModel.passwordLogin)
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
                viewModel.createAccount()
            }) {
               SecondaryBtn(title: "Create an Account")
        }
        //implementing the alerts for the form fields
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}


#Preview {
    CreateAccountView()
}
