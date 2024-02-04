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
           
            VStack {
                Image("pink-bkgrd")
                    .resizable()
                    .frame(width:420, height:200)
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.top)

                Spacer()
            }
                  
           
           
                 
        } // end ZStack
    }
}

#Preview {
    ProfileView()
}
