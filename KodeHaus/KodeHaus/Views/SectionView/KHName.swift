//
//  KHName.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/6/24.
//

import SwiftUI

struct KHName: View {
    
    var body: some View {
        
        Text("Kode")
            .foregroundColor(Color.magenta1)
            .font(Font.system(size: 40, weight: .bold))
            +
        Text("Haus")
            .foregroundColor(Color.blue1)
            .font(Font.system(size: 40, weight: .light))
    }
}


#Preview {
    KHName()
}
