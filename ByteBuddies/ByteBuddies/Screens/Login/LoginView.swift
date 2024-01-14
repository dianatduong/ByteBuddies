//
//  LoginView.swift
//  ByteBuddies
//
//  Created by Diana Duong on 1/10/24.
//


import SwiftUI

struct LoginView: View {
    
    @State private var emailLogin = ""
    @State private var passwordLogin = ""
    
    @State private var nameSignup = ""
    @State private var userNameSignup = ""
    @State private var passwordSignup = ""
    
    @State private var selectedLogin = ""
    
    var loginOptions = ["Login", "Sign Up"]
    
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [Color.cyan, Color.paleYellow], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
           
                    
            
            VStack {
                

                Text("[kowd] Haven")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                
                
                VStack(spacing: 15){
                    VStack {
                        Picker("Select how to sign in", selection: $selectedLogin) {
                            ForEach(loginOptions, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                    }

                    
                    Section() {
                        TextField("Email", text: $emailLogin)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                        
                        TextField("Password", text: $passwordLogin)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                        
                        Button(action: {
                            print("Login Button Tapped")
                        }) {
                            Text("Login")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.cyan)
                                .cornerRadius(8)
                        }
                        
                        Text("or")
                        
                        Button(action: {
                            print("Continue with LinkedIn")
                        }) {
                            Text("Continue with LinkedIn")
                                .font(.subheadline)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.cyan)
                                .cornerRadius(8)
                        }
                    } //end Section
                    
                    Section {
                        Text("Forgot your password?")
                            .font(.subheadline)
                            .foregroundColor(.cyan)
                            .fontWeight(.bold)
                    }
                } //end vstack
                .frame(width: 320, height: 360)
                .padding(20)
                .background(Color.white.opacity(0.4))
                .cornerRadius(10)
                .padding(.top, 15)
            } // end vstack
        }
    }
}
                
     
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


//insets, geometry reader - dynamic heights, uiscreens, SegmentedController
