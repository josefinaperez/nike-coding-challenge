//
//  URLRequestExtension.swift
//  Top 100
//
//  Created by Josefina Perez on 15/01/2021.
//  Copyright © 2021 Josefina perez. All rights reserved.
//

import Foundation

extension URLRequest {
    
    init?(router: Router) {
        let components = URLComponents(router: router)
        guard let url = components.url else { return nil }
        self.init(url: url)
        self.httpMethod = router.method
    }
}
