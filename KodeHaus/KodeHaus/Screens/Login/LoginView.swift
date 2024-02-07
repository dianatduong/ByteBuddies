//
//  LoginView.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/10/24.
//


import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    @State private var showModal = false

    var body: some View {
        ZStack {
            
            VStack{
                
                KHName()
                
                Text("A community for career changers.")
                    .foregroundColor(.gray)
                    .font(Font.system(size: 20, weight: .light))
                    .multilineTextAlignment(.center)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                  
                Image("LoginImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 200)
                    .padding(.top, 25)
                
                Text("All Illustrations by Icons 8 from Ouch!")
                    .foregroundColor(.gray)
                    .font(.system(size: 8))
                
                Spacer()
            }
            .padding(.top, 40)
            
            
          
            VStack {
                Spacer()
                
                Section {
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
                
                
                Button(action: {
                    print("Login Button Tapped")
                    //func to check if form is valid
                    viewModel.loginAccount()
                }) {
                    PrimaryBtn(title: "Login")
                }
                .padding(.bottom, 5)
                
                
                Button(action: {
                    print("Create an Account")
                    showModal = true
                }) {
                    SecondaryBtn(title: "Create an Account")
                        .sheet(isPresented: $showModal) {
                            CreateAccountView()
                    }
                }
               
                Text("Forgot your password?")
                    .font(.subheadline)
                    .foregroundColor(Color.magenta)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                
            } // end vstack
            .offset(y: -40)
            
        } // end Zstack
        
        //implementing the alerts for the form fields
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}
     
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
