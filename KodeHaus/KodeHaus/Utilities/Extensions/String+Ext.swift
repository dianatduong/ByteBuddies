//
//  String+Ext.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/1/24.
//

import Foundation

extension String {
    
    //EMAIL FORMAT
    var isValidEmail: Bool {
        let emailFormat         = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}


