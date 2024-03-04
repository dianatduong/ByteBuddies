//
//  UpdateProfileView.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/4/24.
//

import SwiftUI

struct UpdateProfileView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var selectedState = "California" 
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Profile Pic")) {
                        // Profile pic related content
                    }
                    Section(header: Text("Background Pic")) {
                        // Background pic related content
                    }
                    Section(header: Text("Personal Info")) {
                        TextField("Name", text: $name)
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        
                        StatePicker()
                    }
                }
            }
            .navigationTitle("Edit Profile")
        }
    }
}

struct UpdateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateProfileView()
    }
}
