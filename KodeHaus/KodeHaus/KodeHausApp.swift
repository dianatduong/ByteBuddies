//
//  KodeHausApp.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/10/24.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth

@main
struct KodeHausApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            LoginView()
            
                .onAppear {
                    createUser()
                }

        }
    }
    
    func createUser() {
        
        Auth.auth().createUser(withEmail: "dduong013@gmail.com", password: "password123") { authResult, error in
            
            if let result = authResult {
                print(result.user.email)
            } else {
                print("Error")
            }
        }
        
    }
}



class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

