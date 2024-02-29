//
//  TextField.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/28/24.
//

import SwiftUI

extension View {
    
    //TEXTFIELD STYLES
    func textFieldStyling() -> some View {
        self
            .keyboardType(.emailAddress)
            .textInputAutocapitalization(.none)
            .disableAutocorrection(true)
            .textFieldStyle(.plain)
            .multilineTextAlignment(.leading)
    }
    
    
    //PLACEHOLDER TEXT
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
