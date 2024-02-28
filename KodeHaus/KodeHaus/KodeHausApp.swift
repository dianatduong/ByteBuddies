//
//  KodeHausApp.swift
//  KodeHaus
//
//  Created by Diana Duong on 1/10/24.
//

import SwiftUI
import Firebase

@main
struct KodeHausApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}

