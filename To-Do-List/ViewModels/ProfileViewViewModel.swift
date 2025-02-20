//
//  ProfileViewViewModel.swift
//  To-Do-List
//
//  Created by Begüm Arıcı on 16.02.2025.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class ProfileViewViewModel: ObservableObject {
    init() {}
    
    @Published var user: User? = nil
    
    func fetchUser() {
        guard let userId = Auth.auth().currentUser?.uid else {
            print("no current user found.")
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .getDocument { [weak self]
                snapshot, error in
                guard let data = snapshot?.data(), error == nil else {
                    print("no data found for user.")
                    return
                }
                DispatchQueue.main.async {
                    self?.user = User(id: data["id"] as? String ?? "",
                                      name: data["name"] as? String ?? "",
                                      email: data["email"] as? String ?? "",
                                      joined: data["joined"] as? TimeInterval ?? 0)
                    print("user fetched successfully.")
                }
            }
    }
 
    func logOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            print(error)
        }
    }
}
