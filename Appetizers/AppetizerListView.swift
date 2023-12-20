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
            List(MockData.appetizers) {appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍔 Appetizers")
        }

    }
}

#Preview {
    AppetizerListView()
}
