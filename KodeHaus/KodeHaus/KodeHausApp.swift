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
    
    @StateObject var viewModel = LoginViewModel()
    @State private var selectedTab: Tab = .house
    
    init() {
        UITabBar.appearance().isHidden = true
    }

    var body: some Scene {
        WindowGroup {
            EditProfileView()
            
            
        }
        
        
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    // Firebase
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

