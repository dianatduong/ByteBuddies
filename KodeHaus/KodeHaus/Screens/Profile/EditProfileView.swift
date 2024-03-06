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
    @State private var email = ""
    @State private var location = ""
    
    @State private var primaryColor = Color.magenta1
    @State private var secondaryColor = Color.pink
    
    var body: some View {
        NavigationView {
            VStack {
                
                // Profile Picture
                Section {
                    Button(action: {
                        // Add action to change profile picture
                    }) {
                        profileImage?
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 160, height: 160)
                            .clipShape(Circle())
                    }
                    Text("Edit picture")
                        .padding(.top, 10)
                        .font(Font.system(size: 18, weight: .bold))
                        .foregroundColor(.blue)
                }

                VStack(spacing: 20) {
                    VStack(spacing:10) {
                        
                        //Personal Info
                        Section(header:
                                    Text("Personal Info")
                            .textCase(.uppercase)
                        ) {
                            
                            CustomTextField(bindValue: $fullName, fieldName: "Name" , color: Color.btnGray1, frameHeight: 2, type: .text)
                            
                            CustomTextField(bindValue: $email, fieldName: "Email" , color: Color.btnGray1, frameHeight: 2, type: .text)
                            
                            CustomTextField(bindValue: $location, fieldName: "City/State" , color: Color.btnGray1, frameHeight: 2, type: .text)
                        }
                    }
                    .padding(.top, 40)
                    
 
                    VStack(spacing: 10) {
                        
                        //Color Profile
                        Section(header:
                                    Text("Select color profile:")
                                        .textCase(.uppercase)
                        ) {
                            
                            ColorPicker("Primary Color", selection: $primaryColor)
                                .foregroundColor(Color.gray)
                            
                            ColorPicker("Secondary Color", selection: $secondaryColor)
                                .foregroundColor(Color.gray)
                            
                        }
                        .font(Font.system(size: 18))
                    }
                    .padding(.top, 40)
                }
             Spacer()
            }
            .frame(width: 350)
g        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}

