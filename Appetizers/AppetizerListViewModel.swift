//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Vamshi krishna Jillapally on 12/21/23.
//

import Foundation

final class AppetizerListViewModel: ObservableObject{
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers()
    {
        NetworkManager.shared.getAppetizers { result in
            
            DispatchQueue.main.async // this make this as main thread
            {
                switch result
                {
                case.success(let appetizers):
                    self.appetizers = appetizers
                case.failure(let error):
                    print(error.localizedDescription)
                }
            }

        }
    }
}
