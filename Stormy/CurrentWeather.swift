//
//  CurrentWeather.swift
//  Stormy
//
//  Created by Azhar Islam on 02/12/2019.
//  Copyright © 2019 Treehouse. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeather {
    let temperature: Double
    let humidity: Double
    let precipProbability: Double
    let summary: String
    let icon: String
}

extension CurrentWeather {
    var iconImage: UIImage {
        switch icon {
        case "clear-day": return #imageLiteral(resourceName: "clear-day.png")
        case "clear-night": return #imageLiteral(resourceName: "clear-night.png")
        case "rain": return #imageLiteral(resourceName: "rain@3x.png")
        case "snow": return #imageLiteral(resourceName: "snow.png")
        case "sleet": return #imageLiteral(resourceName: "sleet.png")
        case "wind": return #imageLiteral(resourceName: "wind.png")
        case "fog": return #imageLiteral(resourceName: "fog.png")
        case "cloudy": return #imageLiteral(resourceName: "cloudy.png")
        case "partly-cloudy-day": return #imageLiteral(resourceName: "partly-cloudy.png")
        case "cloudy-night": return #imageLiteral(resourceName: "cloudy-night.png")
        default: return #imageLiteral(resourceName: "default.png")
        }
    }
}
