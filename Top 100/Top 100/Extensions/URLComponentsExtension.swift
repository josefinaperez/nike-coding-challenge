//
//  URLComponentsExtension.swift
//  Top 100
//
//  Created by Josefina Perez on 15/01/2021.
//  Copyright © 2021 Josefina perez. All rights reserved.
//

import Foundation

extension URLComponents {
    
    init(router: Router) {
        self.init()
        scheme = router.scheme
        host = router.host
        path = router.path
    }
}
