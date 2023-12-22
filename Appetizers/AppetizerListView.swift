//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Vamshi krishna Jillapally on 12/18/23.
//

import SwiftUI

struct AppetizerListView: View {
    @State var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.appetizers) {appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍔 Appetizers")
        }
        .onAppear{
            viewModel.getAppetizers()
        }
        

    }    

}

#Preview {
    AppetizerListView()
}
