//
//  DarkSkyAPIClient.swift
//  Stormy
//
//  Created by Azhar Islam on 09/12/2019.
//  Copyright © 2019 Treehouse. All rights reserved.
//

//single responsibility class
//to interact with API and get back the weather in a popualaed model instance

import Foundation

class DarkSkyAPIClient {
    
    fileprivate let darkSkyApiKey = "e70b30a8cb9e09507623e63b74030481"
    
    lazy var baseURL: URL = {
        return URL(string: "https://api.darksky.net/forecast/\(darkSkyApiKey)/")!
    }()
    
    let downloader = JSONDownloader()
    
    typealias CurrentWeatherCompletion = (CurrentWeather?, DarkSkyError?) -> Void)
    func getCurrentWeather(coordinate: Coordinate, completionHandler completion: @escaping CurrentWeatherCompletion) -> Void) {
        
    }
}
