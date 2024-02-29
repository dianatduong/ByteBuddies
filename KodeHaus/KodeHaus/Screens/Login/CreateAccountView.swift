//
//  CreateAccountView.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/6/24.
//

import SwiftUI


struct CreateAccountView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                KHName()
                
                Image("person-img")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 200)
                    .padding(.top, 5)
                
                Text("Welcome to KodeHaus!")
                    .font(.title)
                    .bold()
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                    .padding(.top, 30)
                    .padding(.bottom, 5)
                
                Text("Enter your email and password to create an account.")
                    .font(.system(size: 20))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                
            }// end vstack
            .padding(.top, 40)
            .padding(.bottom, 80)
            
            VStack {
                TextField("Email", text: $viewModel.emailLogin)
                    .textFieldStyling()
                    .placeholder(when: viewModel.emailLogin.isEmpty) {
                        Text("Email")
                            .foregroundColor(.white)
                    }
                Rectangle()
                    .frame(height: 3)
                    .foregroundColor(Color.magenta1)
                    .padding(.bottom, 30)
                
                SecureField("Password", text: $viewModel.passwordLogin)
                    .textFieldStyling()
                    .placeholder(when: viewModel.passwordLogin.isEmpty) {
                        Text("Password")
                            .foregroundColor(.white)
                    }
                Rectangle()
                    .frame(height: 3)
                    .foregroundColor(Color.magenta1)
                    .padding(.bottom, 20)
                
                Button(action: {
                    print("Button tapped!")
                    viewModel.newAccountValid()
                }) {
                    SecondaryBtn(title: "Create an Account")
                }
                
            } // end Vstack
            .frame(width: 350, alignment: .leading)
            
            
            //the alerts for the form fields
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}


#Preview {
    CreateAccountView()
}
