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
    
    fileprivate let darkSkyApiKey = "c09a843bfffde2bfa1c0bf02794aec26"
    
    lazy var baseURL: URL = {
        return URL(string: "https://api.darksky.net/forecast/\(self.darkSkyApiKey)/")!
    }()
    
    let downloader = JSONDownloader()
    
    typealias WeatherCompletionHandler = (Weather?, DarkSkyError?) -> Void
    typealias CurrentWeatherCompletion = (CurrentWeather?, DarkSkyError?) -> Void

    private func getWeather(coordinate: Coordinate, completionHandler completion: @escaping WeatherCompletionHandler) {
        
        guard let url = URL(string: coordinate.description, relativeTo: baseURL) else {
            completion(nil, .invalidUrl)
            return
        }
        
        let request = URLRequest(url: url)
        
        //GCD - Grand Central Dispatch to run UI work on main thread
        
        let task = downloader.jsonTask(with: request) { json, error in
            DispatchQueue.main.async {
                 guard let json = json else {
                               completion(nil, error)
                               return
                           }
                           
                           guard let weather = Weather(json: json) else {
                               completion(nil, .jsonParsingFailure)
                               return
                           }
                           
                           completion(weather, nil)
            }
        }
        task.resume()
    }
    
    func getCurrentWeather(at coordinate: Coordinate, completionHandler completion: @escaping CurrentWeatherCompletion) {
        getWeather(coordinate: coordinate) { weather, error in
            completion(weather?.currently, error)
        }
    }
}
