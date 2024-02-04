//
//  ProfileView.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/10/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        ZStack {
           
            VStack {
                Image("pink-bkgrd")
                    .resizable()
                    .frame(width:420, height:200)
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.top)

                Spacer()
            }
                  
            VStack {
                Image("dog-profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 160, height: 160)
                    .clipShape(Circle())
                    .overlay( //border around image
                        Circle()
                            .stroke(Color.magenta, lineWidth: 5)
                    )
                .offset(y: 55)
                Spacer()
            }
            
            VStack {
                Text("Diana Duong")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .offset(y: -120)
                
                Text("iOS Software Engineer")
                    .font(.system(size: 18))
                    .offset(y: -115)
            }
            
            VStack {
                Text("I am passionate about creating digital solutions that address real-world challenges. Let's connect!")
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    .italic()
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    .padding(.leading, 20)
                    .padding(.trailing, 20)
            }
            .frame(width: 360, height: 120)
            .background(Color.btnGray1)
            .clipShape(RoundedRectangle(cornerRadius: 22))
            .padding(.bottom, 10)
            
            VStack {
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        Button(action: {
                             print("project btn pressed")
                        }) {
                            ProfileButton(title: "Projects", backgroundColor: .btnGray2)
                        }
                        
                        Button(action: {
                            print("experiences btn pressed")
                        }) {
                            ProfileButton(title: "Experiences", backgroundColor: .btnGray3)
                        }
                        
                        Button(action: {
                            print("favorites btn pressed")
                        }) {
                            ProfileButton(title: "Favorite Resources", backgroundColor: .btnGray2)
                        }
                    }
                    .padding()
                }
                .offset(y: 105)
            }
            .padding()
            
            
            VStack(alignment: .leading) {
                Text("Technologies")
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                
                VStack {
                }
                .frame(width: 360, height: 120)
                .background(Color.btnGray1)
                .clipShape(RoundedRectangle(cornerRadius: 22))
                
            }
            .offset(y: 240)
           
            
            
        } // end ZStack
    }
}

#Preview {
    ProfileView()
}
