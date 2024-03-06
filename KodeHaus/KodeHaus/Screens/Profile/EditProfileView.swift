//
//  UpdateProfileView.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/4/24.
//

import SwiftUI

struct EditProfileView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var location = ""
    
    var body: some View {
        

        
        VStack {
            
            Section {
                Image("bulldog-glasses")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 160, height: 160)
                    .clipShape(Circle())
                
                Text("Edit picture")
                    .padding(.top, 10)
                    .font(Font.system(size: 18, weight: .bold))
                    .foregroundColor(.magenta1)
            }
           
            
            VStack(spacing: 20) {
                Section {
                    
                    CustomTextField(bindValue: $name, fieldName: "Name" , color: Color.btnGray1, frameHeight: 2, type: .text)
                    
                    CustomTextField(bindValue: $email, fieldName: "Email" , color: Color.btnGray1, frameHeight: 2, type: .text)
                    
                    CustomTextField(bindValue: $location, fieldName: "City/State" , color: Color.btnGray1, frameHeight: 2, type: .text)
                }
               
                
                
                Section {
                    Text("Profile Design")
                        .foregroundColor(Color.magenta1)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(Font.system(size: 18, weight: .bold))
                       

                }
                .padding(.top, 20)
                
                Spacer()

                // StatePicker()
            } //end vstack
            .padding(.top, 20)
        }
        .frame(width: 350)
        

    }
}


struct UpdateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateProfileView()
    }
}
