//
//  AuthManager.swift
//  TestSwiftUI (iOS)
//
//  Created by Erxhan Selmani on 05/02/2021.
//

import Foundation

class AuthManager: ObservableObject {
    @Published var error: Error? = nil
    
    func register(email: String, password: String) {
        
    }
    
    func signIn(email: String, password: String) {
        UserDefaults.standard.set("12345", forKey: "uid")
        UserDefaults.standard.set("Jérôme Alves", forKey: "displayName")
        UserDefaults.standard.set("jegnux@icloud.com", forKey: "email")
    }
    
    func signOut() {
        self.error = nil
        UserDefaults.standard.removeObject(forKey: "uid")
        UserDefaults.standard.removeObject(forKey: "displayName")
        UserDefaults.standard.removeObject(forKey: "email")
    }
}
