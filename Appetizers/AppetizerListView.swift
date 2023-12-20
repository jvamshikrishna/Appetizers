//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Vamshi krishna Jillapally on 12/18/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView{
            List(MockData.appetizers, id: \.id) {
                appetizer in
                Text(appetizer.name)
            }
            .navigationTitle("🍔 Appetizers")
        }

    }
}

#Preview {
    AppetizerListView()
}
