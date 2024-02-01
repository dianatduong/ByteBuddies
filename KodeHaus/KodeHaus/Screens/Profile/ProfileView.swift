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
                  // Background view
                  Color.blue.edgesIgnoringSafeArea(.all)
                  
                  // Overlay text
                  Text("Hello, SwiftUI!")
                      .font(.largeTitle)
                      .foregroundColor(.white)
                      .offset(y: -50)
              }
        
       // NavigationView {
          //  Text("My Profile")
               // .navigationTitle("My Profile")
       // }
    }
}

#Preview {
    ProfileView()
}
