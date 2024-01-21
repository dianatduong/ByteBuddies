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
    
    
    //@State private var nameSignup = ""
   // @State private var userNameSignup = ""
    //@State private var passwordSignup = ""
    
    //@State private var selectedLogin = ""
    //var loginOptions = ["Login", "Sign Up"]
    
    
    var body: some View {
        ZStack {
            //Color.black.ignoresSafeArea()

            VStack {
                Text("[KodeHaus]")
                                .font(Font.system(size: 45, weight: .bold))
                                .foregroundColor(.magenta)
                                .padding(.bottom, 50)

                Section {
                    TextField("Email", text: $emailLogin)
                        .foregroundColor(.white)
                    Rectangle()
                        .frame(height: 3)
                        .foregroundColor(.magenta)
                        .padding(.bottom, 30)
                    
                    SecureField("Password", text: $passwordLogin)
                        .foregroundColor(.white)
                    Rectangle()
                        .frame(height: 3)
                        .foregroundColor(.magenta)
                        .padding(.bottom, 30)
                }
                .frame(width: 300)
                
                
                Button(action: {
                    print("Login Button Tapped")
                }) {
                    Text("Login")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .frame(width:300, height:50)
                        .background(LinearGradient(colors: [Color.magenta, Color.hotPink],
                                    startPoint: .leading,
                                    endPoint: .trailing))
                        .cornerRadius(28)
                       
                }.padding(.bottom, 5)
                
                Button(action: {
                    print("Create a New Account")
                        }) {
                            Text("Create a New Account")
                                .foregroundColor(.magenta)
                                .fontWeight(.semibold)
                                .padding()
                                .frame(width:300, height:50)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.clear)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(LinearGradient(colors: [Color.magenta, Color.hotPink], startPoint: .leading, endPoint: .trailing), lineWidth: 3)
                                        )
                                )
                        }
               
                Text("Forgot your password?")
                    .font(.subheadline)
                    .foregroundColor(.magenta)
                    .fontWeight(.bold)
                    .padding()
                
            } // end vstack
        } // end Zstack
    }
}
     
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


//insets, geometry reader - dynamic heights, uiscreens, SegmentedController
