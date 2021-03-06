//
//  ContentView.swift
//  Shared
//
//  Created by Erxhan Selmani on 05/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            SearchView()
            EmergenciesView()
            AppointmentsView()
            ProfileView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
