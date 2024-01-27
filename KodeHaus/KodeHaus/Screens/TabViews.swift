//
//  TabViews.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/10/24.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        
        TabView {
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }

    }
}

#Preview {
    AppetizerTabView()
}
