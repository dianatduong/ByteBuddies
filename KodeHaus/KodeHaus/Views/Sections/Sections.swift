//
//  Sections.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/4/24.
//

import SwiftUI

struct Sections: View {
    
    var title: LocalizedStringKey
    
    var body: some View {
        
        Text(title)
            .font(.headline)
            .multilineTextAlignment(.leading)
            .padding(.leading, 5)
        
        VStack {
        }
            .frame(width: 360, height: 120)
            .background(Color.btnGray1)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
    }
}



struct Sections_Previews: PreviewProvider {
    
    static var previews: some View {
        Sections(title: "Technologies")
    }
}
