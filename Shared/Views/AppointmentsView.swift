//
//  AppointmentsView.swift
//  TestSwiftUI (iOS)
//
//  Created by Erxhan Selmani on 05/02/2021.
//

import SwiftUI

struct AppointmentsView: View {
    var body: some View {
        Text("Appointments")
            .tabItem {
                Image(systemName: "calendar")
                Text("Appointments")
            }
    }
}

struct AppointmentsView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentsView()
    }
}
