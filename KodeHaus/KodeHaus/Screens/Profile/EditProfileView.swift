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
                    Section {
                        HStack(spacing: 40) {
                            // Profile Picture
                            profileImage?
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 130, height: 130)
                                .clipShape(Circle())
                            
                            VStack(spacing: 10) {
                                // Edit Picture
                                Button(action: {
                                    // Add action to change profile picture
                                }) {
                                    Text("Edit picture")
                                        .font(Font.system(size: 16, weight: .bold))
                                        .foregroundColor(.blue)
                                }
                                // Delete Picture
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
                } //end Vstack
                
                VStack(spacing: 20) {
                    VStack(spacing: 14) {
                        Section {
                            //Personal Info
                            Text("Personal Info:")
                                .textCase(.uppercase)
                                .font(Font.system(size: 16, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 0)
                                .padding(.bottom, 5)
                            
                            //Name
                            CustomTextField(bindValue: $fullName, fieldName: "Name" , color: Color.btnGray1, frameHeight: 2, type: .text)
                            //Tech Role
                            CustomTextField(bindValue: $techRole, fieldName: "Tech Role" , color: Color.btnGray1, frameHeight: 2, type: .text)
                            //City/State
                            CustomTextField(bindValue: $location, fieldName: "City/State" , color: Color.btnGray1, frameHeight: 2, type: .text)
                        }
                    }//end vstack
                    .padding(.top, 20)
                    
                    VStack {
                        Section {
                            //Color Theme
                            Text("Color theme:")
                                .textCase(.uppercase)
                                .font(Font.system(size: 16, weight: .bold))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 0)
                                .padding(.bottom, 5)
                                      
                            VStack(spacing: 14)  {
                                //Primary Color picker
                                ColorPicker("Primary Color", selection: $primaryColor)
                                    .foregroundColor(Color.gray)
                                //Secondary Color picker
                                ColorPicker("Secondary Color", selection: $secondaryColor)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        .font(Font.system(size: 18))
                    }
                    .padding(.vertical, 40)
                }//end Vstack
                .frame(width: 350)
                
                Divider()
                    .background(.gray)
                    .padding(.horizontal, 20)
                
                VStack {
                    //Example Button
                    PrimaryBtn(title: "Save Changes", color1: primaryColor, color2: secondaryColor)
                }
                .padding(.top, 15)
                
                Spacer()
                
            } //end vstack
        } //end navView
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}

