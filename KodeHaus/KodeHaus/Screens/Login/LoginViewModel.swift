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
    //@Published var confirmPasswordLogin = ""
    
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
    
    func loginValid() {
        guard isValidForm else { return }
        
        print("Login successful")
    }
    
    func newAccountValid() {
        guard isValidForm else { return }
        
        print("Create new account successful")
    }
    
    func loginAuth() {
        Auth.auth().signIn(withEmail: emailLogin, password: passwordLogin) { result, error in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("success")
            }
        }
    } // end func
    
    func newAccountAuth() {
        Auth.auth().createUser(withEmail: emailLogin, password: passwordLogin) { result, error in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("success")
            }
        }
    } // end func
    
}
