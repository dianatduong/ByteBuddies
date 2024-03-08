//
//  UpdateProfileView.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/4/24.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @State private var profileImage: UIImage?
    @State private var photosPickerItem: PhotosPickerItem?
    
    @State private var fullName = ""
    @State private var techRole = ""
    @State private var location = ""
    
    @State private var primaryColor = Color.magenta1
    @State private var secondaryColor = Color.pink
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Edit Profile")
                    .font(Font.system(size: 20, weight: .semibold))
                    .ignoresSafeArea(.all)
                    .padding(.top, 1)
                
                Divider()
                    .background(.btnGray1)
                
                Section {
                    // Profile Picture
                    VStack {
                        PhotosPicker(selection: $photosPickerItem, matching: .images) {
                            if let image = profileImage {
                                Image(uiImage: image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 130, height: 130)
                                    .clipShape(Circle())
                                    .overlay(
                                        Circle()
                                            .stroke(LinearGradient(colors: [primaryColor, secondaryColor], startPoint: .leading, endPoint: .trailing), lineWidth: 5))
                            } else {
                                Image("default-img")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 130, height: 130)
                                    .padding(.leading, 20)
                                    .padding(.top, 8)
                                    .clipShape(Circle())
                                    .overlay(
                                        Circle()
                                            .stroke(LinearGradient(colors: [primaryColor, secondaryColor], startPoint: .leading, endPoint: .trailing), lineWidth: 5))
                            }
                        }
                        // Delete Picture
                        Button(action: {
                            profileImage = nil // Delete the profile picture
                        }) {
                            Text("Delete picture")
                                .font(Font.system(size: 16, weight: .bold))
                                .foregroundColor(.blue)
                                .padding(.top, 5)
                        }
                    } // End of Profile Picture VStack
                    .padding(.vertical, 20)
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
                } // End of Profile Picture Section
                
                VStack(spacing: 12) {
                    // Personal Info
                    Text("About Me:")
                        .textCase(.uppercase)
                        .font(Font.system(size: 16, weight: .semibold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 0)
                        .padding(.bottom, 5)
                    
                    // Name
                    CustomTextField(bindValue: $fullName, fieldName: "Name", color: Color.btnGray1, frameHeight: 2, type: .text)
                    
                    // Tech Role
                    CustomTextField(bindValue: $techRole, fieldName: "Tech Role", color: Color.btnGray1, frameHeight: 2, type: .text)
                    
                    // City/State
                    CustomTextField(bindValue: $location, fieldName: "City/State", color: Color.btnGray1, frameHeight: 2, type: .text)
                } // End of Personal Info Section
                .padding(.top, 10)
                
                
                VStack {
                    // Color Theme
                    Text("Color theme:")
                        .textCase(.uppercase)
                        .font(Font.system(size: 16, weight: .semibold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 0)
                        .padding(.bottom, 5)
                    
                    VStack(spacing: 12) {
                        // Primary Color picker
                        ColorPicker("Primary Color", selection: $primaryColor)
                            .foregroundColor(Color.gray)
                        // Secondary Color picker
                        ColorPicker("Secondary Color", selection: $secondaryColor)
                            .foregroundColor(Color.gray)
                    }
                } // End of Color Theme Section
                .padding(.top, 25)
                
                
                Spacer()
                
                Divider()
                    .background(.btnGray1)
                
                // Example Button
                VStack {
                    PrimaryBtn50(title: "Save Changes", color1: primaryColor, color2: secondaryColor)
                }
                .padding(.top, 15)
            } // End of Main VStack
            .frame(width: 350)
            
        } //end navView
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}

