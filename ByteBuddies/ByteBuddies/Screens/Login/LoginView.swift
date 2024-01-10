//
//  LoginView.swift
//  ByteBuddies
//
//  Created by Diana Duong on 1/10/24.
//


import SwiftUI

struct LoginView: View {
    
    @State private var userNameLogin = ""
    @State private var passwordLogin = ""
    
    @State private var nameSignup = ""
    @State private var userNameSignup = ""
    @State private var passwordSignup = ""
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                Text("Welcome to Byte Buddies!")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 20, leading: 30, bottom: 15, trailing: 20))

                Form {
                    Section(header: Text("Login")) {
                        TextField("Username", text: $userNameLogin)
                        TextField("Password", text: $passwordLogin)
                        Button(action: {
                            print("Login Button Tapped")
                        }) {
                            Text("Login")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(
                                    LinearGradient(gradient: Gradient(
                                        colors: [Color.blue, Color.green]),
                                                   startPoint: .leading,
                                                   endPoint: .trailing)
                                )
                                .cornerRadius(8)
                        }
                    }

                    Section {
                        Button(action: {
                            print("Continue with LinkedIn")
                        }) {
                            Text("Continue with LinkedIn")
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(
                                    LinearGradient(gradient: Gradient(
                                        colors: [Color.blue, Color.green]),
                                                   startPoint: .leading,
                                                   endPoint: .trailing)
                                )
                                .cornerRadius(8)
                        }
                    }
              

                Section(header: Text("Create an Account")) {
                    TextField("Name", text: $nameSignup)
                    TextField("Username", text: $userNameSignup)
                    TextField("Password", text: $passwordSignup)
                    Button(action: {
                        print("Sign Up")
                    }) {
                        Text("Sign Up")
                            .foregroundColor(.blue)
                    }
                }
                } // end Form
              
            } // end VStack
            .navigationBarTitle("", displayMode: .inline)
        } // end NavigationView

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
