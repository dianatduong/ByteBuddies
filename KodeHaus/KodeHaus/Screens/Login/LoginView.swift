//
//  LoginView.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/10/24.
//


import SwiftUI
import Firebase

struct LoginView: View {
    @Environment(\.colorScheme) var colorScheme  //dark mode
    @StateObject var viewModel = LoginViewModel()
    @State private var showModal = false //modal for CreateAcountView
    
    var body: some View {
        ZStack {
            ScrollView {
                
                //HEADER START
                VStack {
                    KHName()
                    
                    Text("A community for career changers.")
                        .font(Font.system(size: 20, weight: .light))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                        .foregroundColor(.gray)
                    
                    Image("LoginImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 200)
                        .padding(.horizontal, 30)
                        .padding(.top, 25)
                    
                    Text("All Illustrations by Icons 8 from Ouch!")
                        .font(.system(size: 8))
                        .foregroundColor(.gray)
                }
                .padding(.top, 50)
                //HEADER END
                
             
                //TEXTFIELDS START
                VStack(spacing: 20) {
                    Spacer()
                    
                    TextField("Email", text: $viewModel.emailLogin)
                        .textFieldStyling()
                    
                        Rectangle()
                            .frame(height: 3)
                            .foregroundColor(Color.magenta1)
                    
                    SecureField("Password", text: $viewModel.passwordLogin)
                        .textFieldStyling()
                    
                        Rectangle()
                            .frame(height: 3)
                            .foregroundColor(Color.magenta1)
                    
                    Button(action: {
                        print("Login Button Tapped")
                        //func to check if form is valid
                        viewModel.loginValid()
                        viewModel.loginAuth()
                    }) {
                        PrimaryBtn(title: "Login")
                    }
                    
                    Button(action: {
                        print("Create an Account")
                        showModal = true
                        viewModel.newAccountAuth()
                    }) {
                        SecondaryBtn(title: "Create an Account")
                    }
                    .sheet(isPresented: $showModal) {  //POP UP MODAL FOR CREATE AN ACCOUNT
                        CreateAccountView()
                    }
                    
                    Text("Forgot your password?")
                        .font(.subheadline)
                        .foregroundColor(colorScheme == .dark ? .white : .magenta1)
                        .fontWeight(.bold)
                        .padding(.top, 15)
                } // end vstack
                .padding(.horizontal, 30)
                //TEXTFIELDS END
                
            } //end scrollview
            
        } // end Zstack
        
        //ALERTS FOR FORM FIELDS
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
        //ALERTS END
        
    }
}
     
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}




