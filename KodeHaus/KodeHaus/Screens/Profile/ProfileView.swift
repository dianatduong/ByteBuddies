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
            Color.btnGray1// Set the background color for the entire screen

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
                                    .stroke(LinearGradient(colors: [Color.magenta, Color.pink],
                                                           startPoint: .leading,
                                                           endPoint: .trailing), lineWidth: 5)
                               )
                               .offset(y: -100)
                       } //end Vstack
                       
                   VStack(spacing: 10) {
                           VStack {
                               Text("Jane Doe")
                                   .font(.system(size: 35))
                                   .fontWeight(.heavy)
                                   .multilineTextAlignment(.center)
                               
                               Text("iOS Software Engineer")
                                   .font(.system(size: 18))
                                   .multilineTextAlignment(.center)
                               
                               HStack(spacing: 2) {
                                   Image("location-50")
                                   Text("Minneapolis, MN ")
                                       .font(.system(size: 15))
                               }
                               .padding(.top, -2)
                           }
                       
                           VStack {
                                 HStack(spacing: 15) {
                                     SmallDefaultButton(icon: "message-50", title: "Message")
                                     SmallDefaultButton(icon: "follow-50", title: "Follow")
                                 }
                             }
                           .padding(.top, 10)
                       } // end Profile VStack
                       .offset(y: -100)
                       
                   VStack {
                       SectionView(title: "Tech Stack", subtitle: "Swift, SwiftUI, UIKit, Firebase, XCode")
                   }
                   .offset(y: -80)
                   
                   VStack {
                       SectionView(title: "Hobbies", subtitle: "Traveling, Pickleball, Explore new restaurants and coffee shops, Hiking")
                   }
                   .offset(y: -70)
                   
               } // end ScrollView
            } // end Zstack
        .ignoresSafeArea()
    }
}

#Preview {
    ProfileView()
}
