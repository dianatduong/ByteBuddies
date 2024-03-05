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
            
            //HEADER START
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
                
                Text("Please enter your email and password to create an account.")
                    .font(.system(size: 18))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                
            }// end vstack
            .padding(.top, 40)
            .padding(.bottom, 80)
            //HEADER END
            
            
            //FORM FIELDS START
            VStack(spacing: 20) {
                CustomTextField(bindValue: $viewModel.emailLogin, fieldName: "Email" , color: Color.magenta1, frameHeight: 3, type: .text)

                
                CustomTextField(bindValue: $viewModel.passwordLogin, fieldName: "Password" , color: Color.magenta1, frameHeight: 3, type: .secure)
                
                Button(action: {
                    print("Create an Account button tapped!")
                    viewModel.createAccount()
                }) {
                    SecondaryBtn(title: "Create an Account")
                }
                
            } // end Vstack
            .frame(width: 350, alignment: .leading)
            //FORM FIELDS END
            
            
            //ALERTS FOR FORM FIELDS
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }
            //END ALERTS
        }
    }
}


#Preview {
    CreateAccountView()
}

