//
//  LoginViewModel.swift
//  KodeHaus
//
//  Created by Diana Duong on 2/1/24.
//


import SwiftUI
import FirebaseCore
import FirebaseAuth

final class LoginViewModel: ObservableObject {
    
    @Published var emailLogin = ""
    @Published var passwordLogin = ""
    @Published var alertItem: AlertItem?
   
    // MARK: - Form Validation

    var isValidForm: Bool {
        //check to see if fields are empty
        guard !emailLogin.isEmpty else {
            //alert for invalid Form
            alertItem = AlertContext.invalidForm
            //if any of these fields are empty
            return false
        }
        
        guard !passwordLogin.isEmpty else {
            //alert for invalid Form
            alertItem = AlertContext.invalidPassword
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
    
    
    
    // MARK: - Authentication
    
    func login() {
        guard isValidForm else { return }
        
        Auth.auth().signIn(withEmail: emailLogin, password: passwordLogin) { result, error in
            if let error = error {
                print("Login error:", error.localizedDescription)
            } else {
                print("Login successful")
            }
        }
    }
    
    func createAccount() {
        guard isValidForm else { return }
        
        Auth.auth().createUser(withEmail: emailLogin, password: passwordLogin) { result, error in
            if let error = error {
                print("Create account error:", error.localizedDescription)
           } else {
               print("Account creation successful")
           }
        }
        
    }
}
