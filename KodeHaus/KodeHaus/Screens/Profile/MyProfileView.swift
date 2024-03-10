//
//  NameTitle.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/4/24.
//

import SwiftUI
import PhotosUI

struct MyProfileView: View {
    
    @Environment(\.colorScheme) var colorScheme  //dark mode
    @State private var isProfileViewPresented = false
    
    @State private var profileImage: UIImage?
    @State private var photosPickerItem: PhotosPickerItem?
    
    
    @State private var userInput = "hello"
    
    
    
    var body: some View {
        
        ZStack {
            Color(colorScheme == .dark ? .black : .btnGray1)
            
            ScrollView {
                
                VStack {
                    //Background image
                    PhotosPicker(selection: $photosPickerItem, matching: .images) {
                        if let image = profileImage {
                            Image(uiImage: image)
                                .resizable()
                                .frame(width: 450, height: 200)
                                .aspectRatio(contentMode: .fit)
                                .edgesIgnoringSafeArea(.top)
                            
                        } else {
                            Image("pink-bkgrd")
                                .resizable()
                                .frame(width: 450, height: 200)
                                .aspectRatio(contentMode: .fit)
                                .edgesIgnoringSafeArea(.top)
                        }
                    }

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
                .onChange(of: photosPickerItem) { _, _ in
                    Task {
                        if let photosPickerItem, //if it is not empty
                           let data = try? await photosPickerItem.loadTransferable(type: Data.self) { // get data from the photosPickerItem using async await
                            if let image = UIImage(data: data) {
                                profileImage = image
                            }
                        }
                        photosPickerItem = nil
                    }
                }
                
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
                    
                    // Edit Profile Button
                    NavigationLink(destination: EditProfileView()) {
                        PrimaryBtn100(title: "Edit Profile", color1: Color.magenta1, color2: Color.pink)
                            .padding(.top, 5)
                    }
                    
                } // end Profile VStack
                .offset(y: -135)
                
                VStack(spacing: 15) {
                    
                    //Tech Stack
                    SectionView(title: "Tech Stack", userInput: "Swift, SwiftUI, Xcode, Firebase")
                    //Previous Experience
                    SectionView(title: "Previous Experience", userInput: "Ecommerce, Digital Marketing, Web Design, Email Development, UX/UI Design")
                    //Hobbies
                    SectionView(title: "Hobbies", userInput: "Traveling, Pickleball, Hiking, Exploring new restaurants")
                }
                .offset(y: -120)
                .frame(width:350)
                
            } // end ScrollView
        } // end Zstack
        .ignoresSafeArea()
    }
}

#Preview {
    MyProfileView()
}
