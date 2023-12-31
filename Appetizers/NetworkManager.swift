//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Vamshi krishna Jillapally on 12/20/23.
//

import Foundation

final class NetworkManager{
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    private init() {}
    
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void){
        // checking if the url is correct or not
        guard let url = URL(string: appetizerURL)
        else {
            completed(.failure(.invalidURL))
            return
        }
        
        // making network call i.e data task to dowmnload the infomration
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) 
        { data, response, error in
            if let _ = error
            {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200
            else{
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data
            else{
                completed(.failure(.invalidData))
                return
            }
            
            do{
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decodedResponse.request))
            }
            catch{
                completed(.failure(.invalidData))
            }
            
        }
        task.resume()
    }
}
