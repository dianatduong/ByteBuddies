//
//  ProfileView.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/10/24.
//

import SwiftUI

struct ProfileView: View {

    var body: some View {
        
        ScrollView {
            ZStack {
               
                VStack {
                    
                
                    
                    VStack {
                        Image("pink-bkgrd")
                            .resizable()
                            .frame(width:450, height:200)
                            .aspectRatio(contentMode: .fit)
                    }
                    .edgesIgnoringSafeArea(.all)
                    
                    Spacer()
                    
                    VStack {
                        Image("dog-profile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 160, height: 160)
                            .clipShape(Circle())
                            .overlay( //border around image
                                Circle()
                                    .stroke(LinearGradient(colors: [Color.magenta, Color.pink],
                                                           startPoint: .leading,
                                                           endPoint: .trailing), lineWidth: 5)
                            )
                            .offset(y: -220)
                    }
                }
                
                VStack {
                    
                    VStack {
                        Text("Diana Duong")
                            .font(.system(size: 35))
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                        
                        Text("iOS Software Engineer")
                            .font(.system(size: 16))
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 12)
                    }
                    .offset(y: 170)
                    
                    //need to set character limit
                    VStack {
                        Text("‟Passionate about creating digital solutions that address real-world challenges. Let's connect!“")
                            .multilineTextAlignment(.center)
                            .font(.subheadline)
                            .italic()
                            .padding(.top, 10)
                            .padding(.bottom, 8)
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                        
                        HStack {
                            Image("location-50")
                            
                            Text("Minneapolis, MN")
                                .font(.system(size: 12))
                        }
                    }
                    .frame(width: 400, height: 120)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.bottom, 10)
                    .offset(y: 135)
                    
                    VStack {
                        HStack(spacing: 15) {
                            SmallDefaultButton(icon: "message-50", title: "Message")
                            SmallDefaultButton(icon: "follow-50", title: "Follow")
                        }
                    }
                    .overlay(
                        Rectangle()
                            .frame(width: 450, height: 1)
                            .foregroundColor(Color.gray) // Border color
                            .opacity(0.6) // Adjust opacity as needed
                            .shadow(color: Color.black.opacity(0.9), radius: 9, x: 0, y: 9) // Shadow properties
                            .offset(y: 50)
                    )
                    .offset(y: 115)
                }

          
                VStack {
                    
                    VStack(alignment: .leading, spacing: 15) {
                        Sections(title: "Technology Stack")
                        Sections(title: "Hobbies")
                        Sections(title: "Ideal Opportunities")
                    }
                }
                .offset(y: 550)
            } // end ZStack
            
        } // end ScrollView
        .edgesIgnoringSafeArea(.all)
       
       
    }
}

#Preview {
    ProfileView()
}
