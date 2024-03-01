//
//  DataManager.swift
//  KodeHaus
//
//  Created by Diana Duong on 3/1/24.
//

import SwiftUI
import Firebase

class DataManager: ObservableObject {
    
    @Published var users: [User] = []
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        users.removeAll()
        
        let db = Firestore.firestore() //db = database
        let ref = db.collection("Users") //ref = reference
        
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
        } //end ref
        
        if let snapshot = snapshot {
            for document in snapshot.documents {
                let data = document.data()
                
                let id = data["id"] as? String ?? ""
                let fullName = data["fullName"] as? String ?? ""
                let emailAddress = data["emailAddress"] as? String ?? ""
                
                let user = User(id: id, fullName: fullName, emailAddress: emailAddress)
                self.users.append(user)
            }
        }
        
    } //end fetchUsers()
    
}
