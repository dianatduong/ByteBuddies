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
    @State private var isProfileViewPresented = false
    @State private var userIsLoggedIn = false
    
    
    var body: some View {
        
        content
        
    } //end body
    
    
    var content: some View {
        ZStack {
            
            NavigationView {
                ScrollView {
                    
                    //HEADER START
                    VStack {
                        //App Name
                        KHName()
                        //Headline
                        Text("A community for career changers.")
                            .font(Font.system(size: 20, weight: .light))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 30)
                            .foregroundColor(.gray)
                        //Image
                        Image("LoginImage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 200)
                            .padding(.leading, 30)
                            .padding(.top, 25)
                        //Image credit
                        Text("All Illustrations by Icons 8 from Ouch!")
                            .font(.system(size: 8))
                            .foregroundColor(.gray)
                    }
                    .padding(.top, 50)
                    //.padding(.bottom, 20)
                    //HEADER END
                    

                    //TEXTFIELDS START
                    VStack(spacing: 20) {
                        
                        Spacer()
                        
                        //Email TextField
                        CustomTextField(bindValue: $viewModel.emailLogin, fieldName: "Email" , color: Color.magenta1, frameHeight: 3, type: .text)

                        //Password Field
                        CustomTextField(bindValue: $viewModel.passwordLogin, fieldName: "Password" , color: Color.magenta1, frameHeight: 3, type: .secure)
                        
                        HStack {
                            //Sign up button
                            Button(action: {
                                print("Sign Up Button")
                                showModal = true
                            }) {
                                SecondaryBtn(title: "Sign Up")
                            }
                            .sheet(isPresented: $showModal) {  //POP UP MODAL FOR CREATE AN ACCOUNT
                                CreateAccountView()
                            }
                            
                            //Login Button
                            Button(action: {
                                print("Login Button Tapped")
                                //func to check if form is valid
                                viewModel.login()
                                isProfileViewPresented = true // Set flag to present ProfileView
                            }) {
                                PrimaryBtn50(title: "Login", color1: Color.magenta1, color2: Color.magenta1)
                            }
                            .background(NavigationLink("", destination: MyProfileView(), isActive: $isProfileViewPresented))
                        } //end Hstack
                        .padding(.top, 10)
                        
                        //Forgot password link
                        NavigationLink(destination: ForgotPasswordView()) {
                            Text("Forgot your password?")
                                .font(.subheadline)
                                .foregroundColor(colorScheme == .dark ? .white : .magenta1)
                                .fontWeight(.bold)
                        }
                    } // end vstack
                    .padding(.horizontal, 30)
                        
                    .onAppear {
                        Auth.auth().addStateDidChangeListener { auth, user in
                            if user != nil {
                                userIsLoggedIn.toggle()
                            }
                        }
                    }
                    //TEXTFIELDS END
                } // end scrollview
            } //end Nav View
        } // end Zstack
        
        //ALERTS FOR FORM FIELDS
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
        //ALERTS END
        
    } // end content
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}




