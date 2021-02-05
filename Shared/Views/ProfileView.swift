//
//  ProfileView.swift
//  TestSwiftUI (iOS)
//
//  Created by Erxhan Selmani on 05/02/2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        AuthView {
            Text("Profile")
        }
        .tabItem {
            Image(systemName: "person")
            Text("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
