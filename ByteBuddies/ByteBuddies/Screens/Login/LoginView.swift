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
        ZStack(alignment: .leading) {
            
            //Color.black.ignoresSafeArea()
            

            VStack(alignment: .leading) {
                Text("Kode")                    
                    .foregroundColor(.hotPink)
                    .font(Font.system(size: 30, weight: .bold))
                    +
                Text("Haus")
                    .foregroundColor(.blue2)
                    .font(Font.system(size: 30, weight: .light))
                
                Text("A community for techies.")
                    .foregroundColor(.gray)
                    .font(
                        .custom(
                        "Brush Script Mt Italic",
                        fixedSize: 20)
                    )
                Spacer()
            }
            .padding(.top, 10)
            
            
            VStack {
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
                            .padding(.bottom, 20)
                }
                .frame(width: 350)
                
                
                Button(action: {
                    print("Login Button Tapped")
                }) {
                    DefaultButton(title: "Login")
                }
                .padding(.bottom, 10)
                
                
                Button(action: {
                    print("Create an Account")
                }) {
                    GhostButton(title: "Create an Account")
                }
               
                Text("Forgot your password?")
                    .font(.subheadline)
                    .foregroundColor(.magenta)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                
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
//where techies play
