//
//  LoginViewModel.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/1/24.
//


import SwiftUI

final class LoginViewModel: ObservableObject {
    
    @Published var emailLogin = ""
    @Published var passwordLogin = ""
    
    @Published var alertItem: AlertItem?
   
    //error handling
    var isValidForm: Bool {
        //check to see if these fields are empty
        guard !emailLogin.isEmpty else {
            //alert for invalid Form
            alertItem = AlertContext.invalidForm
            //if any of these fields are empty
            return false
        }
        //check to see if email is valid
        guard emailLogin.isValidEmail else {
            //alert for invalid Email
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true //if pass
    }
    
    func loginAccount() {
        guard isValidForm else { return }
        
        print("Login successful")
    }
    
    func createAccount() {
        guard isValidForm else { return }
        
        print("Create new account successful")
    }
    
}
