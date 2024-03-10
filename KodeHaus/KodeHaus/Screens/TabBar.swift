//
//  TabViews.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/10/24.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case message
    case person
    case leaf
    case gearshape
}



struct TabBar: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    
                    Spacer()
                    
                    //use fill image when selected
                    Image(systemName: selectedTab  == tab ? fillImage : tab.rawValue)
                    
                        //enlarge icon when selected
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                    
                        .foregroundColor(selectedTab == tab ? .red : .gray)
                    
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
                
            } // end Hstack
            .frame(width: nil, height: 60)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        }
    }
}

#Preview {
    TabBar(selectedTab: .constant(.message))
}
