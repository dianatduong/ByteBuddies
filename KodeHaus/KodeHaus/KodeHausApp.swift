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
    
    @StateObject var viewModel = LoginViewModel()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        
        WindowGroup {
           MyProfileView()
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
