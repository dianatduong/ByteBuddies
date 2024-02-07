//
//  Alerts.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/31/24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}
    

struct AlertContext {
        
    // MARK: Login Alerts
    static let invalidEmail     = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please ensure your email is correct."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidPassword    = AlertItem(title: Text("Invalid Password"),
                                            message: Text("Please ensure your password is correct."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidForm      = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please ensure all fields in the form have been completed."),
                                            dismissButton: .default(Text("OK")))
    
}

