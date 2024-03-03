//
//  TabViews.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/10/24.
//

import SwiftUI

struct KodeHausTabView: View {
    var body: some View {
        
        TabView {
            
            ProfileViewPink()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
         
        }
      

    }
}

#Preview {
    KodeHausTabView()
}
