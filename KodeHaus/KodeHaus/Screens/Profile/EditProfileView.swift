//
//  UpdateProfileView.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/4/24.
//

import SwiftUI

import SwiftUI

struct EditProfileView: View {
    @State private var profileImage: Image? = Image("bulldog-glasses")
    @State private var fullName = ""
    @State private var techRole = ""
    @State private var location = ""
    
    @State private var primaryColor = Color.magenta1
    @State private var secondaryColor = Color.pink
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Edit Profile")
                    .font(Font.system(size: 20, weight: .bold))
                    .padding(.top, 20)
                
                VStack {
                    
                    // Profile Picture
                    Section {
                        HStack(spacing: 40) {
                            
                            profileImage?
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 130, height: 130)
                                .clipShape(Circle())
                            
                            VStack(spacing: 10) {
                                Button(action: {
                                    // Add action to change profile picture
                                }) {
                                    Text("Edit picture")
                                        .font(Font.system(size: 16, weight: .bold))
                                        .foregroundColor(.blue)
                                }
                                
                                Button(action: {
                                    // Add action to change profile picture
                                }) {
                                    Text("Delete picture")
                                        .font(Font.system(size: 16, weight: .bold))
                                        .foregroundColor(.blue)
                                }
                            }
                        }
                        .padding(.vertical, 12)
                    }
                   
                }
                
                
                
                VStack(spacing: 20) {
                    VStack(spacing: 14) {
                        
                        //Personal Info
                        Section {
                            Text("Personal Info:")
                                .textCase(.uppercase)
                                .font(Font.system(size: 16, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 0)
                                .padding(.bottom, 5)
                            
                            CustomTextField(bindValue: $fullName, fieldName: "Name" , color: Color.btnGray1, frameHeight: 2, type: .text)
                            
                            CustomTextField(bindValue: $techRole, fieldName: "Tech Role" , color: Color.btnGray1, frameHeight: 2, type: .text)
                            
                            CustomTextField(bindValue: $location, fieldName: "City/State" , color: Color.btnGray1, frameHeight: 2, type: .text)
                        }
                    }
                    .padding(.top, 20)
                    
                    
                    
                    VStack{
                        
                        //Color Profile
                        Section {
                            
                            Text("Color theme:")
                                .textCase(.uppercase)
                                .font(Font.system(size: 16, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 0)
                                .padding(.bottom, 5)
                                      
                            VStack(spacing: 14)  {
                                
                                ColorPicker("Primary Color", selection: $primaryColor)
                                    .foregroundColor(Color.gray)
                                
                                ColorPicker("Secondary Color", selection: $secondaryColor)
                                    .foregroundColor(Color.gray)
                                
                                PrimaryBtnSmall(title: "Example", color1: primaryColor, color2: secondaryColor)
                            }
                        }
                        .font(Font.system(size: 18))
                    }
                    .padding(.vertical, 30)
                }
                .frame(width: 350)
                Spacer()
            }
            
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}

