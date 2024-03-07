//
//  ForgotPasswordView.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/3/24.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        
        ScrollView {
            
            //HEADER START
            VStack {
                KHName()
                
                Image("forgot-boy-img")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 200)
                    .padding(.top, 5)
                    .padding(.leading, 60)
                
                Text("Forgot Password?")
                    .font(.title)
                    .bold()
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                    .padding(.top, 30)
                    .padding(.bottom, 5)
                
                Text("Don’t worry! It happens. Please enter the email associated with your account.")
                    .font(.system(size: 18))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                
            }// end vstack
            .padding(.top, 40)
            .padding(.bottom, 80)
            //HEADER END
            
            
            //FORM FIELDS START
            VStack(spacing: 20) {
                
                CustomTextField(bindValue: $viewModel.passwordLogin, fieldName: "Password" , color: Color.magenta1, frameHeight: 3, type: .secure)
                
                Button(action: {
                    print("Sign Up button tapped!")
                    viewModel.createAccount()
                }) {
                    PrimaryBtn50(title: "Submit", color1: Color.magenta1, color2: Color.hotPink)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
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
    ForgotPasswordView()
}

