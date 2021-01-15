//
//  NetworkManager.swift
//  Top 100
//
//  Created by Josefina Perez on 15/01/2021.
//  Copyright © 2021 Josefina perez. All rights reserved.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    class func request<T: Decodable>(router: Router, completion: @escaping (Result<T, Error>) -> ()) {
    
        guard let urlRequest = URLRequest(router: router) else { return }
        
        URLSession.shared.dataTask(with: urlRequest, completionHandler: { data, response, error in
            
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                return
            }
                
            do {
               let responseObject = try JSONDecoder().decode(T.self, from: data)
                
                DispatchQueue.main.async {
                    completion(.success(responseObject))
                }
            } catch {
                print("Unable to decode \(T.self)")
                return
            }
        }).resume()
    }
}
