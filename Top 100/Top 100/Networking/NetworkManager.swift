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
    
    class func request<T: Codable>(router: Router, completion: @escaping (Result<[String: [T]], Error>) -> ()) {
    
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
                guard let responseObject = try? JSONDecoder().decode([String:[T]].self, from: data) else { return }
                
                DispatchQueue.main.async {
                    completion(.success(responseObject))
                }
            }
        }).resume()
    }
}
