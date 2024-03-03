//
//  ProfileView.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/10/24.
//

import SwiftUI

struct ProfileView: View {
    
    @Environment(\.colorScheme) var colorScheme  //dark mode

    var body: some View {
        
        ZStack {
            Color(colorScheme == .dark ? .black : .btnGray1)
            
               ScrollView {
               
                       VStack {
                           Image("pink-bkgrd")
                               .resizable()
                               .frame(width: 450, height: 200)
                               .aspectRatio(contentMode: .fit)
                               .edgesIgnoringSafeArea(.top)
                           
                           Image("dog-profile")
                               .resizable()
                               .aspectRatio(contentMode: .fill)
                               .frame(width: 160, height: 160)
                               .clipShape(Circle())
                               .overlay(
                                Circle()
                                    .stroke(LinearGradient(colors: [Color.magenta1, Color.pink],
                                                           startPoint: .leading,
                                                           endPoint: .trailing), lineWidth: 5)
                               )
                               .offset(y: -140)
                       } //end Vstack
                       
                   VStack(spacing: 10) {
                           VStack {
                               Text("Jane Doe")
                                   .font(.system(size: 26))
                                   .fontWeight(.heavy)
                                   .multilineTextAlignment(.center)
                                   .foregroundColor(colorScheme == .dark ? .white : .black)
                               
                               Text("iOS Software Engineer")
                                   .font(.system(size: 16))
                                   .multilineTextAlignment(.center)
                                   .foregroundColor(colorScheme == .dark ? .white : .black)
                               
                               HStack(spacing: 2) {
                                   Image(colorScheme == .dark ? "location-wht-50" : "location-blk-50" )
                                   Text("Minneapolis, MN ")
                                       .font(.system(size: 15))
                                       .multilineTextAlignment(.center)
                               }
                           }
                       
                           VStack {
                                 HStack(spacing: 15) {
                                     SmallPrimaryBtn(icon: "message-50", title: "Message")
                                     SmallPrimaryBtn(icon: "follow-50", title: "Follow")
                                 }
                             }
                           .padding(.top, 10)
                       } // end Profile VStack
                       .offset(y: -135)
                       
                   VStack(spacing: 15) {
                       SectionView(title: "Tech Stack", subtitle: "Swift, SwiftUI, Xcode, Firebase")
                       
                       SectionView(title: "Hobbies", subtitle: "Traveling, Pickleball, Hiking, Exploring new restaurants")
                       
                       SectionView(title: "Previous Experience", subtitle: "Ecommerce, Digital Marketing, Web Design, Email Development, UX/UI Design")
                   }
                   .offset(y: -120)
                   
               } // end ScrollView
            } // end Zstack
        .ignoresSafeArea()
    }
}

#Preview {
    ProfileView()
}
