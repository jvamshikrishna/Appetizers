//
//  Appetizer.swift
//  Appetizers
//
//  Created by Vamshi krishna Jillapally on 12/19/23.
//

import Foundation

struct Appetizer: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let carbs: Int
    let protein: Int
    let calories: Int
        
}

// we create a response inth format of json request ho w it is being pulled, json data has request with arrays in it
struct AppetizerResponse {
    let request: [Appetizer]
}


struct MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Test Appetizer",
                                           description: "Test Description",
                                           price: 9.99,
                                           imageURL: "",
                                           carbs: 99,
                                           protein: 99,
                                           calories: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
