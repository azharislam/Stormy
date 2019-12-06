//
//  JSONDownloader.swift
//  Stormy
//
//  Created by Azhar Islam on 06/12/2019.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation

class JSONDownloader {
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    func jsonTask(with request: URLRequest) -> URLSessionDataTask {
        let task = session.dataTask(with: request) { data, response, error in
            print(data)
        }
        return task
    }
}
