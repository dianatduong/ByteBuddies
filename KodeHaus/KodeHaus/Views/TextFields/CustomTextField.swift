//
//  TextFields.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/5/24.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var bindValue: String
    var fieldName: String
    var color: Color
    var frameHeight: CGFloat
    var type: InputFieldType

    var body: some View {
        
        if type == .text {
            
            TextField(fieldName, text: $bindValue)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.none)
                .disableAutocorrection(true)
                .textFieldStyle(.plain)
                .multilineTextAlignment(.leading)
            
                .placeholder(when: bindValue.isEmpty) {
                    Text(fieldName)
                        .foregroundColor(Color.white)
                }
            Rectangle()
                .frame(height: frameHeight)
                .foregroundColor(color)
        } else {
            SecureField(fieldName, text: $bindValue)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.none)
                .disableAutocorrection(true)
                .textFieldStyle(.plain)
                .multilineTextAlignment(.leading)
            
                .placeholder(when: bindValue.isEmpty) {
                    Text(fieldName)
                        .foregroundColor(Color.white)
                }
            Rectangle()
                .frame(height: frameHeight)
                .foregroundColor(color)
            
        }
        
    }
}

struct CustomTextField_Previews: PreviewProvider {
    
    @State static var bindValue = ""

    static var previews: some View {
        CustomTextField(bindValue: $bindValue, fieldName: "Name", color: Color.magenta1, frameHeight: 3, type: .text)

    }
}


enum InputFieldType {
    case text
    case secure
}
