//
//  AuthView.swift
//  TestSwiftUI (iOS)
//
//  Created by Erxhan Selmani on 05/02/2021.
//

import SwiftUI

struct AuthView<Content: View> : View {
    let content: Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content()
    }
    
    @StateObject private var authManager = AuthManager()
    @AppStorage("email") var userEmail: String?
    @AppStorage("uid") var uid: String?
    
    @State private var email = "jegnux@icloud.com"
    @State private var password = "12345"
    
    var body: some View {
        if (uid != nil) {
            VStack {
                content
                Text(userEmail ?? "No email")
                Button("Log out") {
                    authManager.signOut()
                }
            }
        } else {
            VStack {
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.emailAddress)
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Sign in") {
                    authManager.signIn(email: email, password: password)
                }
                if (authManager.error != nil) {
                    Text(authManager.error?.localizedDescription ?? "Error logging in")
                }
            }.padding()
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView {
            Text("Profile")
        }
    }
}
