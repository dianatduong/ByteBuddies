//
//  ProfileViewBlue.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/3/24.
//

import SwiftUI

struct ProfileViewBlue: View {
    
    @Environment(\.colorScheme) var colorScheme  //dark mode

    var body: some View {
        
        ZStack {
            Color(colorScheme == .dark ? .black : .btnGray1)
            
               ScrollView {
               
                       VStack {
                           Image("blue-bkgrd")
                               .resizable()
                               .frame(width: 450, height: 200)
                               .aspectRatio(contentMode: .fit)
                               .edgesIgnoringSafeArea(.top)
                           
                           Image("pug-blanket")
                               .resizable()
                               .aspectRatio(contentMode: .fill)
                               .frame(width: 160, height: 160)
                               .clipShape(Circle())
                               .overlay(
                                Circle()
                                    .stroke(LinearGradient(colors: [Color.blue, Color.blue3],
                                                           startPoint: .leading,
                                                           endPoint: .trailing), lineWidth: 5)
                               )
                               .offset(y: -140)
                       } //end Vstack
                       
                   VStack(spacing: 10) {
                           VStack {
                               Text("Josh Doe")
                                   .font(.system(size: 26))
                                   .fontWeight(.heavy)
                                   .multilineTextAlignment(.center)
                                   .foregroundColor(colorScheme == .dark ? .white : .black)
                               
                               Text("Android Software Engineer")
                                   .font(.system(size: 16))
                                   .multilineTextAlignment(.center)
                                   .foregroundColor(colorScheme == .dark ? .white : .black)
                               
                               HStack(spacing: 2) {
                                   Image(colorScheme == .dark ? "location-wht-50" : "location-blk-50" )
                                   Text("Seattle, WA ")
                                       .font(.system(size: 15))
                                       .multilineTextAlignment(.center)
                               }
                           }
                       
                           VStack {
                                 HStack(spacing: 15) {
                                     SmallBtnIcon(icon: "message-50", title: "Message", color1: Color.blue, color2: Color.blue3)
                                     SmallBtnIcon(icon: "follow-50", title: "Follow", color1: Color.blue, color2: Color.blue3)
                                 }
                             }
                           .padding(.top, 10)
                       } // end Profile VStack
                       .offset(y: -135)
                       
                   VStack(spacing: 15) {
                       SectionView(title: "Tech Stack", subtitle: "Java, Kotlin, XML")
                       
                       SectionView(title: "Previous Experience", subtitle: "Restaurant & Hospitality")
                       
                       SectionView(title: "Hobbies", subtitle: "Hiking, Snowboarding, Playing drums  ")
                       
                       
                   }
                   .offset(y: -120)
                   
               } // end ScrollView
            } // end Zstack
        .ignoresSafeArea()
    }
}

#Preview {
    ProfileViewBlue()
}
