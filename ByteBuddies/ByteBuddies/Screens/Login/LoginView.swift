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
                Text("Kode")                    .foregroundColor(.magenta)                    .font(Font.system(size: 30, weight: .bold))
                    +
                Text("Haus")
                    .foregroundColor(.blue2)
                    .font(Font.system(size: 30, weight: .light))

                Spacer()
            }
            .padding(.top, 10)

            
            VStack {
                
                Spacer()
                
                Text("Share your tech journey.")
                    .foregroundColor(.gray)
                    .font(
                        .custom(
                        "Brush Script Mt Italic",
                        fixedSize: 20)
                    )
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
                }
               
                Text("Forgot your password?")
                    .font(.subheadline)
                    .foregroundColor(.magenta)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                    .padding(.bottom, 50)
                
                Spacer()
                
                Button(action: {
                    print("Create an Account")
                        }) {
                            Text("Create an Account")
                                .foregroundColor(.magenta)
                                .fontWeight(.semibold)
                                .padding()
                                .frame(width:300, height:50)
                                .background(
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.clear)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(LinearGradient(colors: [Color.magenta, Color.blue2], startPoint: .leading, endPoint: .trailing), lineWidth: 3)
                                        )
                                )
                        }
                
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
