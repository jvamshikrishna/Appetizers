//
//  ContentView.swift
//  Appetizers
//
//  Created by Vamshi krishna Jillapally on 12/18/23.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView{
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName:"bag")
                    Text("Order")
                }
        }.accentColor(Color("brandPrimary"))
    }
}

#Preview {
    AppetizerTabView()
}
