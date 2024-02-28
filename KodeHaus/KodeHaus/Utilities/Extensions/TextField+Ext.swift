//
//  TextField.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/28/24.
//

import SwiftUI

extension View {
    
    func textFieldStyling() -> some View {
        self
            .textInputAutocapitalization(.none)
            .disableAutocorrection(true)
            .textFieldStyle(.plain)
            .multilineTextAlignment(.leading)
    }
    
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
