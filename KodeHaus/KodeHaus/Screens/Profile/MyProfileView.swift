//
//  NameTitle.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/4/24.
//

import SwiftUI

struct MyProfileView: View {
    
    @Environment(\.colorScheme) var colorScheme  //dark mode
    
    var body: some View {
        
        ZStack {
            Color(colorScheme == .dark ? .black : .btnGray1)
            
            ScrollView {
                VStack {
                    //Background image
                    Image("pink-bkgrd")
                        .resizable()
                        .frame(width: 450, height: 200)
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.top)
                    //Profile Image
                    Image("bulldog-glasses")
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
                
                VStack{
                    VStack(spacing: 4) {
                        //Name
                        Text("Jane Doe")
                            .font(.system(size: 26))
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                        //Tech Role
                        Text("iOS Software Engineer")
                            .font(.system(size: 16))
                            .multilineTextAlignment(.center)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                    }
                        //Location
                        HStack(spacing: 2) {
                            Image(colorScheme == .dark ? "location-wht-50" : "location-blk-50" )
                            Text("Minneapolis, MN ")
                                .font(.system(size: 15))
                                .multilineTextAlignment(.center)
                    }
                    HStack {
                        //Edit Profile Button
                        Button(action: {
                            print("Edit Button tapped")
                        }) {
                            PrimaryBtnSmall(title: "Edit Profile", color1: Color.magenta1, color2: Color.pink)
                        }
                        Image(systemName: "gear")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.magenta1)
                            //.padding(15)
                            .frame(width:50, height: 50)
                        
                    }// Hstack
                } // end Profile VStack
                .offset(y: -135)
                
                VStack(spacing: 15) {
                    //Tech Stack
                    SectionView(title: "Tech Stack", subtitle: "Swift, SwiftUI, Xcode, Firebase")
                    //Previous Experience
                    SectionView(title: "Previous Experience", subtitle: "Ecommerce, Digital Marketing, Web Design, Email Development, UX/UI Design")
                    //Hobbies
                    SectionView(title: "Hobbies", subtitle: "Traveling, Pickleball, Hiking, Exploring new restaurants")
                }
                .offset(y: -120)
                
            } // end ScrollView
        } // end Zstack
        .ignoresSafeArea()
    }
}

#Preview {
    MyProfileView()
}
