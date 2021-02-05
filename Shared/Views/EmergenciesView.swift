//
//  EmergenciesView.swift
//  TestSwiftUI (iOS)
//
//  Created by Erxhan Selmani on 05/02/2021.
//

import SwiftUI

struct EmergenciesView: View {
    var body: some View {
        Text("Emergencies")
            .tabItem {
                Image(systemName: "exclamationmark.triangle")
                Text("Emergencies")
            }
    }
}

struct EmergenciesView_Previews: PreviewProvider {
    static var previews: some View {
        EmergenciesView()
    }
}
