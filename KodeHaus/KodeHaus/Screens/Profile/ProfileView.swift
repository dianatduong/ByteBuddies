//
//  ProfileView.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/10/24.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        
        ScrollView {
            ZStack {
                VStack {
                    Image("pink-bkgrd")
                        .resizable()
                        .frame(width:420, height:200)
                        .aspectRatio(contentMode: .fit)
                }
                
                VStack {
                    Image("dog-profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 160, height: 160)
                        .clipShape(Circle())
                        .overlay( //border around image
                            Circle()
                                .stroke(Color.magenta, lineWidth: 5)
                        )
                        .offset(y: 55)
                }
                
            } // end ZStack
        } // end ScrollView
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ProfileView()
}
