//
//  SearchView.swift
//  TestSwiftUI (iOS)
//
//  Created by Erxhan Selmani on 05/02/2021.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        Text("Search")
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
